uint64_t sub_100538A58(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100095E9C;

  return sub_100538668(a1, v4);
}

unint64_t sub_100538AFC()
{
  result = qword_10098A720;
  if (!qword_10098A720)
  {
    type metadata accessor for ExternalUrlAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A720);
  }

  return result;
}

uint64_t sub_100538B54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100538BA8();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_100538BA8()
{
  result = qword_10098A728;
  if (!qword_10098A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098A728);
  }

  return result;
}

uint64_t sub_100538BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v21 = a4;
  v22 = a2;
  v25 = type metadata accessor for Shelf.PresentationHints();
  v23 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ComponentLayoutOptions();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_10002849C(&unk_10097DAF0, &qword_1007B2A30);
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = &v18 - v10;
  v12 = sub_10002849C(&unk_1009731D0, &qword_1007BCF00);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v18 - v14;
  ItemLayoutContext.item.getter();
  ReadOnlyLens.value.getter();
  (*(v13 + 8))(v15, v12);
  ItemLayoutContext.mutableState.getter();
  ItemLayoutContext.componentLayoutOptions.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v16 = sub_100079F24();
  (*(*(v21 + 8) + 80))(v26, v11, v22, v8, v5, v16, v24);
  swift_unknownObjectRelease();
  (*(v23 + 8))(v5, v25);
  (*(v6 + 8))(v8, v20);
  (*(v9 + 8))(v11, v19);
  return sub_100007000(v26);
}

char *sub_1005390CC()
{
  ObjectType = swift_getObjectType();
  v2 = [objc_opt_self() effectWithBlurRadius:26.0];
  v3 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v2];

  v4 = OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_blurView;
  *&v0[OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_blurView] = v3;
  v5 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorSaturate];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v5 setValue:isa forKey:kCAFilterInputAmount];

  v7 = [*&v0[v4] contentView];
  v8 = [v7 layer];

  sub_10002849C(&qword_1009701B0, qword_1007B1800);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007B10D0;
  *(v9 + 56) = sub_1005395EC();
  *(v9 + 32) = v5;
  v10 = v5;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  [v8 setFilters:v11];

  *&v0[OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_gradientView] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v29.receiver = v0;
  v29.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v16 = v12;
  [v16 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v16 setClipsToBounds:0];
  v17 = OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_gradientView;
  [v16 addSubview:*&v16[OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_gradientView]];
  [v16 addSubview:*&v16[OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_blurView]];
  v18 = [v16 layer];
  [v18 setAllowsGroupBlending:0];

  v19 = *&v16[v17];
  *&v28.a = _swiftEmptyArrayStorage;
  v20 = v19;
  specialized ContiguousArray.reserveCapacity(_:)();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:1.0];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.2];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.0];
  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  *&v20[OBJC_IVAR____TtC8AppStore12GradientView_colors] = _swiftEmptyArrayStorage;

  sub_1001C0CEC();

  v21 = *&v16[v17];
  v22 = [v21 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setStartPoint:{0.5, 1.0}];

  v23 = *&v16[v17];
  v24 = [v23 layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{0.5, 0.0}];

  v25 = *&v16[v17];
  sub_1001C0B48(&off_1008B0190);

  v26 = *&v16[v17];
  CGAffineTransformMakeRotation(&v28, -0.20943951);
  [v26 setTransform:&v28];

  return v16;
}

unint64_t sub_1005395EC()
{
  result = qword_100982738;
  if (!qword_100982738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100982738);
  }

  return result;
}

double sub_100539638(uint64_t *a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11 = *a1;
  ObjectType = swift_getObjectType();

  return sub_1005397D8(v11, a8, ObjectType, a2, a3);
}

double sub_100539698(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContingentOffer();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_100539A70(v5, a3);
  }

  else
  {
    type metadata accessor for OfferItem();
    v6 = swift_dynamicCastClass();
    if (!v6)
    {
      return result;
    }

    v8 = v6;

    sub_100539C84(v8, a3);
  }

  return result;
}

double sub_1005397D8(uint64_t a1, void *a2, void *a3, double a4, double a5)
{
  type metadata accessor for ContingentOffer();
  if (swift_dynamicCastClass())
  {

    ContingentOffer.title.getter();
    v9 = Paragraph.text.getter();

    v10 = ContingentOffer.badge.getter();
    v12 = v11;
    v13 = ContingentOffer.subtitle.getter();
    v15 = v14;
    v16 = ContingentOffer.trunkAppIcon.getter();
    if (qword_10096D5D8 != -1)
    {
      swift_once();
    }

    sub_100438080(&unk_1009CEDC8, a2, a4, a5);
    v17 = type metadata accessor for AppPromotionCardView();
    sub_1000FFA50(v9, v10, v12, v13, v15, v16, a2, a4, a5, v17, a3);
  }

  else
  {
    type metadata accessor for OfferItem();
    if (swift_dynamicCastClass())
    {

      OfferItem.title.getter();
      v18 = Paragraph.text.getter();

      v19 = OfferItem.badge.getter();
      v21 = v20;
      v22 = OfferItem.subtitle.getter();
      v24 = v23;
      if (qword_10096D5D8 != -1)
      {
        swift_once();
      }

      sub_100438080(&unk_1009CEDC8, a2, a4, a5);
      v25 = type metadata accessor for AppPromotionCardView();
      sub_1000FFA50(v18, v19, v21, v22, v24, 0, a2, a4, a5, v25, a3);
    }

    else
    {
      return 0.0;
    }
  }

  return a4;
}

double sub_100539A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = AppPromotion.clickAction.getter();
  if (v9)
  {
    v16[1] = v9;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_10053A078(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v10 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC8AppStore16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100079964(v8, v3 + v12);
  swift_endAccess();
  v13 = ContingentOffer.label.getter();
  sub_1002C3B04(v13, v14);
  return sub_100100AE8(a1, a2);
}

uint64_t sub_100539C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&qword_10097B3F0, &qword_1007B3120);
  __chkstk_darwin(v6 - 8);
  v8 = v16 - v7;
  v9 = AppPromotion.clickAction.getter();
  if (v9)
  {
    v16[1] = v9;
    type metadata accessor for Action();
    type metadata accessor for BaseObjectGraph();
    sub_10053A078(&qword_100992FB0, &type metadata accessor for Action, &protocol conformance descriptor for Action);
    ComponentModel.pairedWith<A>(objectGraph:)();

    v10 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  }

  else
  {
    v11 = sub_10002849C(&unk_10097B3D0, "α\b");
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  }

  v12 = OBJC_IVAR____TtC8AppStore16AppPromotionView_clickAction;
  swift_beginAccess();
  sub_100079964(v8, v3 + v12);
  swift_endAccess();
  v13 = OfferItem.formattedEndDateString.getter();
  sub_1002C3B04(v13, v14);
  return sub_1001018CC(a1, a2);
}

void sub_100539E98(uint64_t a1, uint64_t a2, Swift::Bool a3)
{
  v8.value.super.isa = 0;
  v8.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v8, a3);
  type metadata accessor for ArtworkView();
  sub_10053A078(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = qword_100988CC0;
    v6 = Strong;
    v5 = [*(Strong + qword_100988CC0) layer];
    [v5 removeAllAnimations];

    [*&v6[v4] setImage:0];
    type metadata accessor for VideoView(0);
    sub_10053A078(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

uint64_t sub_10053A078(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MSODiffablePageViewController(uint64_t a1)
{
  result = qword_10098A7D8;
  if (!qword_10098A7D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10053A144(uint64_t a1, SEL *a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  result = [v7 *a2];
  *a4 = v7;
  return result;
}

void sub_10053A1A0(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    v3 = *(v1 + 32);
    if (v3 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() <= a1)
      {
        return;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
    {
      return;
    }

    swift_beginAccess();
    v4 = *(v1 + 32);
    if ((v4 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_7;
    }

    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {

LABEL_7:
      swift_endAccess();
      return;
    }

    __break(1u);
  }
}

uint64_t sub_10053A27C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for AutomationSemantics();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  v13 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v13 - 8);
  result = Lockup.icon.getter();
  if (result)
  {
    v17 = a2;
    swift_beginAccess();
    [a3 contentMode];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [a3 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    if (*(v3 + 16))
    {
      type metadata accessor for ArtworkView();
      sub_10009A098();

      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    v19 = 0u;
    v20 = 0u;
    memset(v18, 0, sizeof(v18));
    static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
    sub_10003D444(v18);
    sub_10003D444(&v19);
    *(&v20 + 1) = &type metadata for Int;
    *&v19 = v17;
    AutomationSemantics.attribute(key:value:)();
    v15 = *(v7 + 8);
    v15(v9, v6);
    sub_10003D444(&v19);
    UIView.setAutomationSemantics(_:)();

    return (v15)(v12, v6);
  }

  return result;
}

uint64_t sub_10053A570()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10053A5D4()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_10053A660(double a1, double a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_10053A6F4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for RiverRowLayoutStyle.icons(_:);
  v3 = type metadata accessor for RiverRowLayoutStyle();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_10053A790()
{
  v0 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - v1;
  type metadata accessor for ArtworkView();
  v3 = static ArtworkView.iconArtworkView.getter();
  if (qword_10096DAA8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Shadow();
  v5 = sub_1000056A8(v4, qword_1009CFE58);
  v6 = *(v4 - 8);
  (*(v6 + 16))(v2, v5, v4);
  (*(v6 + 56))(v2, 0, 1, v4);
  ArtworkView.shadow.setter();
  return v3;
}

double sub_10053A8DC(uint64_t a1)
{
  ArtworkView.image.setter();
  if (*(v1 + 16))
  {
    type metadata accessor for ArtworkView();
    sub_10009A098();

    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  return result;
}

unint64_t sub_10053A984()
{
  result = qword_10098AE70;
  if (!qword_10098AE70)
  {
    type metadata accessor for GameCenterInvitePlayerAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098AE70);
  }

  return result;
}

uint64_t sub_10053A9DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_10098A2E0, &qword_1007BAEA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v34[-1] - v4;
  v6 = type metadata accessor for GameCenterInvitePlayerAction.InvitationType();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v10 = Promise.__allocating_init()();
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v11 = v34[0];
  GameCenterInvitePlayerAction.invitationType.getter();
  v12 = (*(v7 + 88))(v9, v6);
  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.messages(_:))
  {
    (*(v7 + 96))(v9, v6);
    v13 = *v9;
    v14 = v9[1];
    v15 = Promise.__allocating_init()();
    type metadata accessor for GameCenter();
    v16 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    v17 = static OS_dispatch_queue.main.getter();
    v35 = v16;
    v36 = &protocol witness table for OS_dispatch_queue;
    v34[0] = v17;
    v18 = swift_allocObject();
    v18[2] = v15;
    v18[3] = v13;
    v18[4] = v14;
    v18[5] = a2;

    static GameCenter.withLocalPlayer(on:_:)();

    sub_100007000(v34);
    Promise.pipe(to:)();

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.player(_:))
  {
    (*(v7 + 96))(v9, v6);
    v19 = *v9;
    v20 = v9[1];
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v19;
    v22[5] = v20;
    v22[6] = v11;
    v22[7] = v10;

    v23 = &unk_1007D4010;
LABEL_7:
    sub_100221B78(0, 0, v5, v23, v22);

    return v10;
  }

  if (v12 == enum case for GameCenterInvitePlayerAction.InvitationType.contact(_:))
  {
    (*(v7 + 96))(v9, v6);
    v33 = *v9;
    v24 = v9[2];
    v25 = v9[3];
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    *(v22 + 2) = v33;
    v22[6] = v24;
    v22[7] = v25;
    v22[8] = v11;
    v22[9] = v10;

    v23 = &unk_1007D4000;
    goto LABEL_7;
  }

  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for OSLogger();
  *&v33 = sub_1000056A8(v27, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  v28 = Promise.__allocating_init()();
  type metadata accessor for GameCenter();
  v29 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v30 = static OS_dispatch_queue.main.getter();
  v35 = v29;
  v36 = &protocol witness table for OS_dispatch_queue;
  v34[0] = v30;
  v31 = swift_allocObject();
  v31[2] = v28;
  v31[3] = 0;
  v31[4] = 0;
  v31[5] = a2;

  static GameCenter.withLocalPlayer(on:_:)();

  sub_100007000(v34);
  Promise.pipe(to:)();

  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_10053AFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v8 = type metadata accessor for ActionOutcome();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v9 = type metadata accessor for GameCenter.PushFriendInvitationType();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_10053B10C, 0, 0);
}

uint64_t sub_10053B10C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[10];
  v4 = v0[11];
  type metadata accessor for GameCenter();
  *v1 = v5;
  v1[1] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.player(_:), v3);

  v6 = swift_task_alloc();
  v0[20] = v6;
  *v6 = v0;
  v6[1] = sub_10053B208;
  v7 = v0[19];
  v8 = v0[12];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v7, v8);
}

uint64_t sub_10053B208()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  *(*v1 + 168) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10053B43C;
  }

  else
  {
    v5 = sub_10053B378;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10053B378()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  Promise.resolve(_:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10053B43C()
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_1000056E0(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  static LogMessage.sensitive(_:)();
  sub_10003D444((v0 + 2));
  Logger.error(_:)();

  Promise.reject(_:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10053B664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v13;
  v8[12] = a6;
  v8[13] = a7;
  v8[10] = a4;
  v8[11] = a5;
  v9 = type metadata accessor for ActionOutcome();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v10 = type metadata accessor for GameCenter.PushFriendInvitationType();
  v8[19] = v10;
  v8[20] = *(v10 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_10053B790, 0, 0);
}

uint64_t sub_10053B790()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v5 = v0[12];
  v4 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  type metadata accessor for GameCenter();
  *v1 = v7;
  v1[1] = v6;
  v1[2] = v5;
  v1[3] = v4;
  (*(v2 + 104))(v1, enum case for GameCenter.PushFriendInvitationType.contact(_:), v3);

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_10053B8A4;
  v9 = v0[21];
  v10 = v0[14];

  return static GameCenter.sendFriendInvitationViaPush(_:bag:)(v9, v10);
}

uint64_t sub_10053B8A4()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10053BAD8;
  }

  else
  {
    v5 = sub_10053BA14;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10053BA14()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v2 + 104))(v1, enum case for ActionOutcome.performed(_:), v3);
  Promise.resolve(_:)();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10053BAD8()
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B1890;
  LogMessage.init(stringLiteral:)();
  swift_getErrorValue();
  v2 = v0[6];
  v3 = v0[7];
  v0[5] = v3;
  v4 = sub_1000056E0(v0 + 2);
  (*(*(v3 - 8) + 16))(v4, v2, v3);
  static LogMessage.sensitive(_:)();
  sub_10003D444((v0 + 2));
  Logger.error(_:)();

  Promise.reject(_:)();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10053BD00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    type metadata accessor for GameCenter();
    v8 = a1;
    static GameCenter.inviteFriendViewController(localPlayer:contactId:)();
    v9 = swift_allocObject();
    *(v9 + 16) = a5;
    *(v9 + 24) = a2;
    v10 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
    swift_retain_n();

    v13[3] = v10;
    v13[4] = &protocol witness table for OS_dispatch_queue;
    v13[0] = static OS_dispatch_queue.main.getter();
    Promise.then(perform:orCatchError:on:)();

    return sub_100007000(v13);
  }

  else
  {
    if (qword_10096D120 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for OSLogger();
    sub_1000056A8(v12, qword_1009CE218);
    sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
    type metadata accessor for LogMessage();
    *(swift_allocObject() + 16) = xmmword_1007B10D0;
    LogMessage.init(stringLiteral:)();
    Logger.error(_:)();

    sub_10053C7C8();
    swift_allocError();
    Promise.reject(_:)();
  }
}

double sub_10053BFB0(void **a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v31 = type metadata accessor for FlowOrigin();
  v4 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FlowAnimationBehavior();
  v6 = *(v29 - 8);
  __chkstk_darwin(v29);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for FlowPresentationContext();
  v9 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v12 - 8);
  v13 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v16 - 8);
  v18 = &v28 - v17;
  v19 = type metadata accessor for FlowPage();
  __chkstk_darwin(v19);
  v21 = *a1;
  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  (*(v22 + 104))(&v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for FlowPage.viewController(_:));
  v23 = type metadata accessor for URL();
  (*(*(v23 - 8) + 56))(v18, 1, 1, v23);
  v24 = type metadata accessor for ReferrerData();
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v35 = sub_100005744(0, &qword_1009711C0, UIViewController_ptr);
  v34 = v21;
  v25 = v21;
  static ActionMetrics.notInstrumented.getter();
  (*(v9 + 104))(v11, enum case for FlowPresentationContext.infer(_:), v28);
  (*(v6 + 104))(v8, enum case for FlowAnimationBehavior.infer(_:), v29);
  (*(v4 + 104))(v30, enum case for FlowOrigin.inapp(_:), v31);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v26 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005D01FC(v26, 1, v32);
  Promise.pipe(to:)();

  return result;
}

uint64_t sub_10053C49C(uint64_t a1)
{
  if (qword_10096D120 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for OSLogger();
  sub_1000056A8(v1, qword_1009CE218);
  sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
  type metadata accessor for LogMessage();
  *(swift_allocObject() + 16) = xmmword_1007B10D0;
  LogMessage.init(stringLiteral:)();
  Logger.error(_:)();

  return Promise.reject(_:)();
}

uint64_t sub_10053C608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100095E9C;

  return sub_10053B664(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10053C6F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10015A5C8;

  return sub_10053AFEC(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_10053C7C8()
{
  result = qword_10098AE78;
  if (!qword_10098AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098AE78);
  }

  return result;
}

unint64_t sub_10053C840()
{
  result = qword_10098AE80;
  if (!qword_10098AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098AE80);
  }

  return result;
}

uint64_t sub_10053C898@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v60 = type metadata accessor for TitleHeaderLayout.ChildrenHorizontalAlignment();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10002849C(&qword_1009794E0, &unk_1007C4840);
  __chkstk_darwin(v2 - 8);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v47 - v5;
  v7 = sub_10002849C(&qword_1009794E8, &unk_1007C18C0);
  __chkstk_darwin(v7 - 8);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = &v47 - v10;
  v11 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v52 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v49 = &v47 - v15;
  __chkstk_darwin(v16);
  v18 = &v47 - v17;
  v19 = sub_10002849C(&unk_100984380, &qword_1007C4850);
  __chkstk_darwin(v19 - 8);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v47 - v23;
  v25 = type metadata accessor for ShelfHeader.Configuration();
  v26 = *(v25 - 8);
  (*(v26 + 56))(v24, 1, 1, v25);
  v27 = type metadata accessor for TitleHeaderLayout.AccessoryVerticalAlignment();
  v54 = *(v27 - 8);
  v55 = v27;
  (*(v54 + 56))(v6, 1, 1);
  v50 = v24;
  sub_100031660(v24, v21, &unk_100984380, &qword_1007C4850);
  if ((*(v26 + 48))(v21, 1, v25) == 1)
  {
    sub_10002B894(v21, &unk_100984380, &qword_1007C4850);
    v28 = 0;
  }

  else
  {
    v28 = ShelfHeader.Configuration.eyebrowColor.getter();
    (*(v26 + 8))(v21, v25);
  }

  v29 = v18;
  sub_100512504(v28, v18);

  if (qword_10096E778 != -1)
  {
    swift_once();
  }

  v30 = sub_1000056A8(v11, qword_1009D26D0);
  v31 = v51;
  (*(v12 + 56))(v51, 1, 1, v11);
  v32 = v49;
  sub_1001EFDF0(v29, v49);
  v33 = v52;
  sub_1001EFDF0(v30, v52);
  v47 = v29;
  v34 = v53;
  sub_100031660(v31, v53, &qword_1009794E8, &unk_1007C18C0);
  v35 = v6;
  v36 = v6;
  v37 = v57;
  sub_100031660(v36, v57, &qword_1009794E0, &unk_1007C4840);
  v39 = v58;
  v38 = v59;
  v40 = v60;
  (*(v58 + 104))(v59, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v60);
  sub_100028BB8();
  v48 = static UIColor.defaultLine.getter();
  sub_10002B894(v35, &qword_1009794E0, &unk_1007C4840);
  sub_10002B894(v31, &qword_1009794E8, &unk_1007C18C0);
  sub_1001EFF9C(v47);
  sub_10002B894(v50, &unk_100984380, &qword_1007C4850);
  v41 = type metadata accessor for TitleHeaderView.Style(0);
  v42 = v41[8];
  v43 = v56;
  sub_10022A9A0(v32, v56);
  sub_10022A9A0(v33, v43 + v41[5]);
  sub_1001EFE54(v34, v43 + v41[6]);
  *(v43 + v41[7]) = 0;
  *(v43 + v42) = 1;
  *(v43 + v41[9]) = 0;
  *(v43 + v41[14]) = 0x4030000000000000;
  *(v43 + v41[12]) = 0;
  *(v43 + v41[13]) = v48;
  (*(v39 + 32))(v43 + v41[11], v38, v40);
  v45 = v54;
  v44 = v55;
  if ((*(v54 + 48))(v37, 1, v55) != 1)
  {
    return (*(v45 + 32))(v43 + v41[10], v37, v44);
  }

  sub_10002B894(v37, &qword_1009794E0, &unk_1007C4840);
  return (*(v45 + 104))(v43 + v41[10], enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:), v44);
}

void *sub_10053CFC4()
{
  v0 = type metadata accessor for FloatingPointRoundingRule();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InAppPurchaseShowcase();
  sub_10053D284(&qword_10097B2E8, &type metadata accessor for InAppPurchaseShowcase, &protocol conformance descriptor for InAppPurchaseShowcase);
  result = ItemLayoutContext.typedModel<A>(as:)();
  v9 = v17;
  if (v17)
  {
    v10 = sub_100079F24();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.componentMeasuringSize(spanning:)();
    v12 = v11;
    v14 = v13;
    (*(v5 + 8))(v7, v4);
    type metadata accessor for InAppPurchaseShowcaseLockupView();
    sub_1006AABFC(v9, v10, v12, v14);
    if (qword_10096D900 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for StaticDimension();
    sub_1000056A8(v15, qword_100980A50);
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    swift_unknownObjectRelease();

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t sub_10053D284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_10053D2CC(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v9 - 8);
  v11 = v52 - v10 + 16;
  v12 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  type metadata accessor for ArtworkView();
  *&v4[v12] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v4[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView] = 0;
  v13 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *&v4[v13] = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v14 = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  v53.receiver = v4;
  v53.super_class = v14;
  v15 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  [v15 setClipsToBounds:1];
  [v15 _setContinuousCornerRadius:20.0];
  v16 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  [*&v15[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView] setClipsToBounds:1];
  [v15 addSubview:*&v15[v16]];
  v17 = sub_10053DA3C();
  [v15 addSubview:v17];

  v18 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  [*(*&v15[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] + OBJC_IVAR____TtC8AppStore14BaseLockupView_titleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) setAccessibilityIgnoresInvertColors:1];
  [*(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel) setAccessibilityIgnoresInvertColors:1];
  v19 = qword_10096EFE0;
  v20 = *&v15[v18];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_1001DC148();
  Copyable.copyWithOverrides(in:)();
  v21 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_metrics;
  swift_beginAccess();
  sub_1001B6AE0(v52, v20 + v21);
  swift_endAccess();

  v22 = qword_10096EFE8;
  v23 = *&v15[v18];
  if (v22 != -1)
  {
    swift_once();
  }

  Copyable.copyWithOverrides(in:)();
  v24 = OBJC_IVAR____TtC8AppStore19TodayCardLockupView_axMetrics;
  swift_beginAccess();
  sub_1001B6AE0(v52, v23 + v24);
  swift_endAccess();

  v25 = qword_10096DAB8;
  v26 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Shadow();
  v28 = sub_1000056A8(v27, qword_1009CFE88);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v11, v28, v27);
  (*(v29 + 56))(v11, 0, 1, v27);
  ArtworkView.shadow.setter();

  v30 = *&v15[v18];
  v31 = objc_opt_self();
  v32 = v30;
  sub_10003D9F8([v31 whiteColor]);

  v33 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_ordinalLabel);
  v34 = [v31 whiteColor];
  [v33 setTextColor:v34];

  v35 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel);
  sub_100028BB8();
  v36 = v35;
  v37 = static UIColor.secondaryText.getter();
  v38 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:2];
  v39 = [v37 resolvedColorWithTraitCollection:v38];

  [v36 setTextColor:v39];
  v40 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton);
  v41 = [v31 whiteColor];
  [v40 setTintColor:v41];

  v42 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel);
  v43 = [v31 whiteColor];
  [v42 setTextColor:v43];

  v44 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkTitleLabel);
  v45 = [v31 whiteColor];
  [v44 setTextColor:v45];

  v46 = *(*&v15[v18] + OBJC_IVAR____TtC8AppStore19TodayCardLockupView_crossLinkSubtitleLabel);
  v47 = [v31 whiteColor];
  [v46 setTextColor:v47];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = String._bridgeToObjectiveC()();

  v49 = [*(*&v15[v18] + OBJC_IVAR____TtC8AppStore14BaseLockupView_subtitleLabel) layer];
  [v49 setCompositingFilter:v48];

  [v15 addSubview:*&v15[v18]];
  return v15;
}

char *sub_10053DA3C()
{
  v1 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(type metadata accessor for TodayCardProtectionLayerView());
    v6 = sub_1001DCC8C(&off_1008AF500);
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10053DB64()
{
  v1 = v0;
  v2 = type metadata accessor for OfferButtonMetrics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v27[-v8 - 8];

  [v0 bounds];
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  v10 = [v0 traitCollection];
  [v0 bounds];
  Width = CGRectGetWidth(v31);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v12 = &xmmword_1009D4040;
  }

  else
  {
    v12 = &xmmword_1009D3ED0;
  }

  sub_10003B8E8(v12, v27);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v13 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v13 = qword_100991028;
  }

  v14 = sub_1000056A8(v2, v13);
  (*(v3 + 16))(v5, v14, v2);
  (*(v3 + 32))(v9, v5, v2);
  if ((v30 & 1) == 0 && v28 == 0.0 && v29 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v16 = v15;
    OfferButtonMetrics.minimumSize.getter();
    v28 = v16;
    v29 = v17;
    v30 = 0;
  }

  _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v27, v10, Width);
  v19 = v18;

  (*(v3 + 8))(v9, v2);
  sub_10003B944(v27);
  v20 = v19 + 12.0 + 16.0;
  [v0 bounds];
  MinX = CGRectGetMinX(v32);
  ArtworkView.frame.getter();
  v22 = CGRectGetMaxY(v33) - v20;
  [v0 bounds];
  v23 = CGRectGetWidth(v34);
  v24 = *&v0[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
  [*&v1[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView] setLayoutMargins:{12.0, 20.0, 16.0, 20.0}];
  return [v24 setFrame:{MinX, v22, v23, v20}];
}

void sub_10053DF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v106 = a2;
  v105 = type metadata accessor for Artwork.Crop();
  v97 = *(v105 - 8);
  __chkstk_darwin(v105);
  v96 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v89 - v9;
  v11 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v11 - 8);
  v103 = &v89 - v12;
  v13 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v13 - 8);
  v102 = &v89 - v14;
  v15 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v15 - 8);
  v101 = &v89 - v16;
  v17 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v17 - 8);
  v100 = &v89 - v18;
  v19 = sub_10002849C(&unk_100970170, &unk_1007BDDF0);
  __chkstk_darwin(v19 - 8);
  v21 = &v89 - v20;
  v22 = type metadata accessor for OfferButtonPresenterViewAlignment();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v98 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v25 - 8);
  v99 = &v89 - v26;
  v27 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v27 - 8);
  v29 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  v104 = a3;
  inject<A, B>(_:from:)();
  v107 = a1;
  v108 = v109[0];
  v30 = MediumAdLockupWithAlignedRegionBackground.alignedRegionArtwork.getter();
  if (v30)
  {
    v31 = v30;
    v90 = v10;
    v32 = [v3 traitCollection];
    sub_10053EE98(v106, v32);

    v33 = Artwork.config(_:mode:prefersLayeredImage:)();
    v34 = *&v4[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView];
    Artwork.style.getter();
    v93 = v29;
    ArtworkView.style.setter();
    [v34 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    v106 = v31;
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    [v34 setContentMode:2];
    v35 = type metadata accessor for ArtworkView();
    v36 = sub_10053F640(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v94 = v33;
    v91 = v36;
    v92 = v35;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    v95 = v4;
    v37 = *&v4[OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView];
    [*&v37[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerLabel] _setTextColorFollowsTintColor:0];
    v38 = MediumAdLockupWithAlignedRegionBackground.lockup.getter();
    v39 = *(v23 + 104);
    v39(v98, enum case for OfferButtonPresenterViewAlignment.right(_:), v22);
    v39(v21, enum case for OfferButtonPresenterViewAlignment.left(_:), v22);
    (*(v23 + 56))(v21, 0, 1, v22);
    sub_10053F640(&unk_100970190, &type metadata accessor for OfferButtonPresenterViewAlignment, &protocol conformance descriptor for OfferButtonPresenterViewAlignment);
    v40 = v99;
    AccessibilityConditional.init(value:axValue:)();
    v41 = sub_10002849C(&unk_100973240, qword_1007B2220);
    (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
    v42 = type metadata accessor for OfferStyle();
    v43 = v100;
    (*(*(v42 - 8) + 56))(v100, 1, 1, v42);
    v44 = type metadata accessor for OfferEnvironment();
    v45 = v101;
    (*(*(v44 - 8) + 56))(v101, 1, 1, v44);
    v46 = type metadata accessor for OfferTint();
    v47 = v102;
    (*(*(v46 - 8) + 56))(v102, 1, 1, v46);
    v48 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
    v49 = v103;
    (*(*(v48 - 8) + 56))(v103, 1, 1, v48);
    sub_1004F3190(v38, v37, v40, v104, 0, 0, v43, v45, v47, v49);
    v37[OBJC_IVAR____TtC8AppStore19TodayCardLockupView_enforceMaximumOfTwoLinesOverall] = 1;
    sub_100776DD8();
    [v37 setNeedsLayout];
    sub_100776DD8();

    sub_10002B894(v49, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v47, &unk_100973AD0, &unk_1007B17C0);
    sub_10002B894(v45, &unk_100970160, &unk_1007BDDE0);
    sub_10002B894(v43, &qword_100973AE0, &unk_1007B17D0);
    sub_10002B894(v40, &unk_100973230, &unk_1007B17E0);
    v50 = *&v37[OBJC_IVAR____TtC8AppStore14BaseLockupView_headingLabel];
    if (v50)
    {
      v51 = objc_opt_self();
      v52 = v50;
      v53 = [v51 whiteColor];
      [v52 setTextColor:v53];
    }

    v54 = OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel;
    v55 = *&v37[OBJC_IVAR____TtC8AppStore14BaseLockupView_tertiaryTitleLabel];
    if (v55)
    {
      v56 = objc_opt_self();
      v57 = v55;
      v58 = [v56 whiteColor];
      [v57 setTextColor:v58];

      v59 = *&v37[v54];
      if (v59)
      {
        v60 = qword_10096DD58;
        v61 = v59;
        if (v60 != -1)
        {
          swift_once();
        }

        v62 = type metadata accessor for FontUseCase();
        v63 = sub_1000056A8(v62, qword_1009D07A0);
        v64 = *(v62 - 8);
        v65 = v90;
        (*(v64 + 16))(v90, v63, v62);
        (*(v64 + 56))(v65, 0, 1, v62);
        dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

        v66 = *&v37[v54];
        if (v66)
        {
          [v66 setAccessibilityIgnoresInvertColors:1];
        }
      }
    }

    v67 = Artwork.backgroundColor.getter();
    if (v67)
    {
      v68 = v67;
      v69 = UIColor.isDark.getter();

      if (v69)
      {
        v70 = 2;
      }

      else
      {
        v70 = 1;
      }
    }

    else
    {
      v70 = 2;
    }

    v71 = v105;
    v72 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v73 = *&v37[OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView];
    v74 = objc_opt_self();
    v75 = v73;
    v76 = [v74 systemGray5Color];
    v77 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:v70];
    v78 = [v76 resolvedColorWithTraitCollection:v77];

    v79 = [v78 colorWithAlphaComponent:0.35];
    ArtworkView.backgroundColor.setter();

    MediumAdLockupWithAlignedRegionBackground.lockup.getter();
    v80 = Lockup.icon.getter();

    if (v80)
    {
      if (qword_10096EFE0 != -1)
      {
        swift_once();
      }

      sub_1001DC148();
      Copyable.copyWithOverrides(in:)();
      sub_10003B944(v109);
      v81 = v96;
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v97 + 8))(v81, v71);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v82 = *&v37[v72];
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v82 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100028BB8();
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();

      [*&v37[v72] setContentMode:1];
      v83 = *&v37[v72];
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    v4 = v95;
  }

  v84 = sub_10053DA3C();
  v85 = [v4 backgroundColor];
  v86 = sub_1001DDCA4(v85);
  v88 = v87;

  sub_1001DC508(2, v86, v88);

  [v4 setNeedsLayout];
}

id sub_10053ED98(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MediumAdLockupWithAlignedRegionBackgroundView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10053EE98(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for OfferButtonMetrics();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v20[-v8];
  PageGrid.columnWidth.getter();
  v11 = v10;
  if (qword_10096EFE0 != -1)
  {
    swift_once();
  }

  sub_1001DC148();
  Copyable.copyWithOverrides(in:)();
  if (qword_10096EFE8 != -1)
  {
    swift_once();
  }

  Copyable.copyWithOverrides(in:)();
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    v12 = v24;
  }

  else
  {
    v12 = v25;
  }

  sub_10003B8E8(v12, v20);
  if (UITraitCollection.prefersAccessibilityLayouts.getter())
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v13 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v13 = qword_100991028;
  }

  v14 = sub_1000056A8(v3, v13);
  (*(v4 + 16))(v6, v14, v3);
  (*(v4 + 32))(v9, v6, v3);
  if ((v23 & 1) == 0 && v21 == 0.0 && v22 == 0.0)
  {
    OfferButtonMetrics.minimumSize.getter();
    v16 = v15;
    OfferButtonMetrics.minimumSize.getter();
    v21 = v16;
    v22 = v17;
    v23 = 0;
  }

  v18 = _s8AppStore21TodayCardLockupLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v20, a2, v11);
  (*(v4 + 8))(v9, v3, v18);
  sub_10003B944(v20);
  sub_10003B944(v24);
  sub_10003B944(v25);
  return v11;
}

void sub_10053F1D8()
{
  v0 = type metadata accessor for PageGrid();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MediumAdLockupWithAlignedRegionBackground();
  sub_10053F640(&unk_10098B050, &type metadata accessor for MediumAdLockupWithAlignedRegionBackground, &protocol conformance descriptor for MediumAdLockupWithAlignedRegionBackground);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v9)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.columnWidth.getter();
    v4 = *(v1 + 8);
    v4(v3, v0);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v5 = v9;
    sub_10053EE98(v3, v9);

    v4(v3, v0);
    v6 = _swiftEmptyArrayStorage;
    v10 = _swiftEmptyArrayStorage;
    if (MediumAdLockupWithAlignedRegionBackground.alignedRegionArtwork.getter())
    {
      Artwork.config(_:mode:prefersLayeredImage:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v6 = v10;
    }

    MediumAdLockupWithAlignedRegionBackground.lockup.getter();
    v7 = Lockup.icon.getter();

    if (v7)
    {
      if (qword_10096EFE0 != -1)
      {
        swift_once();
      }

      sub_1001DC148();
      Copyable.copyWithOverrides(in:)();
      sub_10003B944(&v9);
      Artwork.config(_:mode:prefersLayeredImage:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      v6 = v10;
    }

    ArtworkLoader.prefetchArtwork(using:)(v6);
  }
}

void sub_10053F578()
{
  v1 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_alignedRegionView;
  type metadata accessor for ArtworkView();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView____lazy_storage___topOverlayGradientView) = 0;
  v2 = OBJC_IVAR____TtC8AppStore45MediumAdLockupWithAlignedRegionBackgroundView_lockupView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for TodayCardLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10053F640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10053F68C(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = type metadata accessor for Placement();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_10098B200, &qword_1007D4348);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for DisjointStack.Placements();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  __chkstk_darwin(v19);
  v21 = &v28 - v20;
  type metadata accessor for DisjointStack();
  sub_100543010(&qword_10098B228, &type metadata accessor for DisjointStack, &protocol conformance descriptor for DisjointStack);
  v34 = a1;
  dispatch thunk of PrimitiveLayout.layout(relativeTo:with:)();
  v28 = v21;
  v29 = v13;
  (*(v13 + 16))(v15, v21, v12);
  sub_100543010(&qword_10098B230, &type metadata accessor for DisjointStack.Placements, &protocol conformance descriptor for DisjointStack.Placements);
  dispatch thunk of Sequence.makeIterator()();
  sub_100543010(&qword_10098B238, &type metadata accessor for DisjointStack.Placements, &protocol conformance descriptor for DisjointStack.Placements);
  dispatch thunk of IteratorProtocol.next()();
  v22 = v35;
  v23 = v35 + 48;
  v24 = *(v35 + 48);
  if (v24(v11, 1, v6) != 1)
  {
    v25 = *(v22 + 32);
    v35 = v22 + 32;
    v30 = (v22 + 8);
    v31 = v25;
    v32 = v11;
    v33 = v23;
    do
    {
      v31(v8, v11, v6);
      Placement.child.getter();
      sub_10002A400(v36, v36[3]);
      Placement.frame.getter();
      [v34 layoutDirection];
      CGRect.withLayoutDirection(_:relativeTo:)();
      v11 = v32;
      dispatch thunk of Placeable.place(at:with:)();
      (*v30)(v8, v6);
      sub_100007000(v36);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v24(v11, 1, v6) != 1);
  }

  v26 = *(v29 + 8);
  v26(v18, v12);
  return (v26)(v28, v12);
}

uint64_t sub_10053FB34(void *a1, double a2, double a3, double a4, double a5)
{
  v6 = type metadata accessor for Placement();
  v35 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10002849C(&qword_10098B200, &qword_1007D4348);
  __chkstk_darwin(v9 - 8);
  v11 = &v28 - v10;
  v12 = type metadata accessor for VerticalStack.Placements();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v28 - v17;
  __chkstk_darwin(v19);
  v21 = &v28 - v20;
  type metadata accessor for VerticalStack();
  sub_100543010(&qword_10098B208, &type metadata accessor for VerticalStack, &protocol conformance descriptor for VerticalStack);
  v34 = a1;
  dispatch thunk of PrimitiveLayout.layout(relativeTo:with:)();
  v28 = v21;
  v29 = v13;
  (*(v13 + 16))(v15, v21, v12);
  sub_100543010(&qword_10098B210, &type metadata accessor for VerticalStack.Placements, &protocol conformance descriptor for VerticalStack.Placements);
  dispatch thunk of Sequence.makeIterator()();
  sub_100543010(&qword_10098B218, &type metadata accessor for VerticalStack.Placements, &protocol conformance descriptor for VerticalStack.Placements);
  dispatch thunk of IteratorProtocol.next()();
  v22 = v35;
  v23 = v35 + 48;
  v24 = *(v35 + 48);
  if (v24(v11, 1, v6) != 1)
  {
    v25 = *(v22 + 32);
    v35 = v22 + 32;
    v30 = (v22 + 8);
    v31 = v25;
    v32 = v11;
    v33 = v23;
    do
    {
      v31(v8, v11, v6);
      Placement.child.getter();
      sub_10002A400(v36, v36[3]);
      Placement.frame.getter();
      [v34 layoutDirection];
      CGRect.withLayoutDirection(_:relativeTo:)();
      v11 = v32;
      dispatch thunk of Placeable.place(at:with:)();
      (*v30)(v8, v6);
      sub_100007000(v36);
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v24(v11, 1, v6) != 1);
  }

  v26 = *(v29 + 8);
  v26(v18, v12);
  return (v26)(v28, v12);
}

uint64_t sub_10053FFDC()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098B060);
  sub_1000056A8(v4, qword_10098B060);
  if (qword_10096E3D0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1AF0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1005401B4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098B078);
  sub_1000056A8(v4, qword_10098B078);
  if (qword_10096E3D8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1B08);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_100540388()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098B090);
  sub_1000056A8(v4, qword_10098B090);
  if (qword_10096E3E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1B38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_10054055C()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_10098B0A8);
  sub_1000056A8(v4, qword_10098B0A8);
  if (qword_10096E3E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1B38);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

void sub_100540730(double a1, double a2, double a3, double a4)
{
  v9 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v9 - 8);
  v11 = &v84 - v10;
  v12 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v12 - 8);
  v13 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v18 = __chkstk_darwin(v17);
  (*(v20 + 104))(&v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v18);
  (*(v14 + 104))(v16, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v13);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v21 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_materialBackground;
  *&v4[v21] = [objc_allocWithZone(UIVisualEffectView) init];
  v22 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *&v4[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *&v4[v23] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v25 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel;
  *&v4[v25] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v26 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *&v4[v26] = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v27 = String._bridgeToObjectiveC()();
  v28 = [objc_opt_self() systemImageNamed:v27];

  if (v28)
  {
    v29 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView;
    v30 = [objc_allocWithZone(UIImageView) initWithImage:v28];

    *&v4[v29] = v30;
    v31 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    *&v4[v31] = [objc_allocWithZone(UITapGestureRecognizer) init];
    v32 = &v4[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_selectionHandler];
    v33 = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
    *v32 = 0;
    *(v32 + 1) = 0;
    v90.receiver = v4;
    v90.super_class = v33;
    v34 = objc_msgSendSuper2(&v90, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v38 = v34;
    [v38 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    [v38 setOverrideUserInterfaceStyle:2];
    [v38 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    v87 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_materialBackground;
    v39 = *&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_materialBackground];
    sub_10075B130();

    v40 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel;
    v41 = qword_10096E3D0;
    v42 = *&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel];
    if (v41 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for FontUseCase();
    v44 = sub_1000056A8(v43, qword_1009D1AF0);
    v45 = *(v43 - 8);
    v46 = *(v45 + 16);
    v46(v11, v44, v43);
    v47 = *(v45 + 56);
    v47(v11, 0, 1, v43);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    [*&v38[v40] setNumberOfLines:1];
    v48 = *&v38[v40];
    v49 = objc_opt_self();
    v50 = v48;
    v89 = v49;
    v51 = [v49 secondaryLabelColor];
    v52 = v40;
    v53 = v51;
    [v50 setTextColor:v51];

    v88 = v52;
    v54 = [*&v38[v52] layer];
    v86 = kCAFilterPlusL;
    [v54 setCompositingFilter:?];

    v55 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel;
    v56 = qword_10096E3D8;
    v57 = *&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel];
    if (v56 != -1)
    {
      swift_once();
    }

    v58 = sub_1000056A8(v43, qword_1009D1B08);
    v46(v11, v58, v43);
    v47(v11, 0, 1, v43);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    [*&v38[v55] setNumberOfLines:1];
    v59 = *&v38[v55];
    v60 = [v89 labelColor];
    [v59 setTextColor:v60];

    v61 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel;
    v62 = *&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel];
    v85 = v55;
    v63 = qword_10096E3E8;
    v64 = v62;
    if (v63 != -1)
    {
      swift_once();
    }

    v65 = sub_1000056A8(v43, qword_1009D1B38);
    v46(v11, v65, v43);
    v47(v11, 0, 1, v43);
    dispatch thunk of DynamicTypeLabel.fontUseCase.setter();

    [*&v38[v61] setNumberOfLines:1];
    v66 = *&v38[v61];
    v67 = v89;
    v68 = [v89 secondaryLabelColor];
    [v66 setTextColor:v68];

    v69 = [*&v38[v61] layer];
    v70 = v86;
    [v69 setCompositingFilter:v86];

    v71 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView;
    v72 = *&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView];
    v73 = objc_opt_self();
    v74 = v72;
    v75 = [v73 configurationWithTextStyle:UIFontTextStyleBody];
    [v74 setPreferredSymbolConfiguration:v75];

    v76 = *&v38[v71];
    v77 = [v67 secondaryLabelColor];
    [v76 setTintColor:v77];

    v78 = [*&v38[v71] layer];
    [v78 setCompositingFilter:v70];

    v79 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
    [*&v38[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_tapGestureRecognizer] setEnabled:0];
    v80 = *&v38[v79];
    v81 = v38;
    [v80 addTarget:v81 action:"handleSelection:"];
    v82 = *&v38[v79];
    [v82 setDelegate:v81];

    [v81 addGestureRecognizer:*&v38[v79]];
    [v81 addSubview:*&v38[v87]];
    [v81 addSubview:*&v81[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork]];
    [v81 addSubview:*&v38[v88]];
    [v81 addSubview:*&v38[v85]];
    [v81 addSubview:*&v38[v61]];
    [v81 addSubview:*&v38[v71]];
    sub_100541BF8(v83);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1005412E8@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  v76 = a1;
  v78 = a2;
  v69 = type metadata accessor for FlankedHorizontalLayout.ViewAlignment();
  v68 = *(v69 - 8);
  __chkstk_darwin(v69);
  v72 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v70 = &v62 - v7;
  v74 = type metadata accessor for FlankedHorizontalLayout();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for HorizontalStack();
  v66 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v64 = &v62 - v11;
  __chkstk_darwin(v12);
  v65 = &v62 - v13;
  v14 = type metadata accessor for VerticalStack();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v62 - v19;
  __chkstk_darwin(v21);
  v23 = &v62 - v22;
  __chkstk_darwin(v24);
  v26 = &v62 - v25;
  VerticalStack.init(with:)();
  v27 = *(v4 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel);
  v28 = type metadata accessor for DynamicTypeLabel();
  v93 = v28;
  v94 = &protocol witness table for UILabel;
  v92 = v27;
  v29 = v27;
  VerticalStack.adding(_:with:)();
  v75 = v15;
  v30 = *(v15 + 8);
  v30(v17, v14);
  sub_100007000(&v92);
  v31 = *(v4 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel);
  v93 = v28;
  v94 = &protocol witness table for UILabel;
  v92 = v31;
  v32 = v31;
  VerticalStack.adding(_:with:)();
  v30(v20, v14);
  sub_100007000(&v92);
  v33 = *(v4 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel);
  v93 = v28;
  v94 = &protocol witness table for UILabel;
  v92 = v33;
  v34 = v33;
  v79 = v26;
  VerticalStack.adding(_:with:)();
  v35 = v14;
  v77 = v30;
  v30(v23, v14);
  sub_100007000(&v92);
  if (v76)
  {
    v36 = v63;
    HorizontalStack.init(with:)();
    v37 = *(v4 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v93 = type metadata accessor for CollectionLockupArtwork();
    v94 = sub_100543010(&qword_10098B258, type metadata accessor for CollectionLockupArtwork, &unk_1007DAA88);
    v92 = v37;
    v38 = v37;
    v39 = v64;
    HorizontalStack.adding(_:with:)();
    v40 = *(v66 + 8);
    v41 = v67;
    v40(v36, v67);
    sub_100007000(&v92);
    v93 = v14;
    v94 = &protocol witness table for VerticalStack;
    v42 = sub_1000056E0(&v92);
    (*(v75 + 16))(v42, v79, v14);
    v43 = v65;
    HorizontalStack.adding(_:with:)();
    v40(v39, v41);
    sub_100007000(&v92);
    v44 = *(v4 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView);
    v90 = sub_10019FDD0();
    v91 = &protocol witness table for UIImageView;
    v89 = v44;
    v93 = v41;
    v94 = &protocol witness table for HorizontalStack;
    sub_1000056E0(&v92);
    v45 = v44;
    HorizontalStack.adding(_:with:)();
    v40(v43, v41);
    sub_100007000(&v89);
  }

  else
  {
    v46 = v75;
    (*(v75 + 16))(v23, v79, v14);
    v47 = type metadata accessor for TextLayout(0);
    v48 = swift_allocObject();
    (*(v46 + 32))(v48 + OBJC_IVAR____TtC8AppStoreP33_FD91B5375966D5A2B51FAB9F079F554E10TextLayout_textStack, v23, v14);
    v93 = v47;
    v94 = sub_100543010(&unk_10098B240, type metadata accessor for TextLayout, &unk_1007D4304);
    v92 = v48;
    v49 = *(v4 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork);
    v50 = type metadata accessor for CollectionLockupArtwork();
    v91 = &protocol witness table for UIView;
    v90 = v50;
    v89 = v49;
    v87 = &type metadata for CGFloat;
    v88 = &protocol witness table for CGFloat;
    v86 = 0x4024000000000000;
    v51 = enum case for FlankedHorizontalLayout.ViewAlignment.center(_:);
    v52 = *(v68 + 104);
    v53 = v69;
    v52(v70, enum case for FlankedHorizontalLayout.ViewAlignment.center(_:), v69);
    v54 = *(v4 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView);
    v84 = sub_10019FDD0();
    v85 = &protocol witness table for UIView;
    v82 = &protocol witness table for CGFloat;
    v83 = v54;
    v81 = &type metadata for CGFloat;
    v80 = 0x4038000000000000;
    v52(v72, v51, v53);
    v55 = v49;
    v56 = v54;
    v57 = v71;
    FlankedHorizontalLayout.init(sublayout:leadingView:leadingMargin:leadingAlignment:trailingView:trailingMargin:trailingAlignment:)();
    sub_100543010(&qword_10098B250, &type metadata accessor for FlankedHorizontalLayout, &protocol conformance descriptor for FlankedHorizontalLayout);
    v58 = v74;
    Measurable.placeable.getter();
    (*(v73 + 8))(v57, v58);
  }

  sub_10002C0AC(&v92, &v89);
  v59 = type metadata accessor for Margins();
  v60 = v78;
  v78[3] = v59;
  v60[4] = &protocol witness table for Margins;
  sub_1000056E0(v60);
  Margins.init(insets:child:)();
  v77(v79, v35);
  return sub_100007000(&v92);
}

id sub_100541BF8(__n128 a1)
{
  v2 = v1;
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v39 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v35 - v7;
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v35 - v16;
  v19 = __chkstk_darwin(v18);
  v21 = &v35 - v20;
  v36 = *&v2[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel];
  v22 = *(v13 + 16);
  v43 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_displayOptions;
  v44 = v22;
  (v22)(&v35 - v20, &v2[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_displayOptions], v12, v19);
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v37 = *(v13 + 8);
  v37(v21, v12);
  v23 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.badgeColor.getter();
  v24 = *(v4 + 8);
  v40 = v4 + 8;
  v41 = v3;
  v42 = v24;
  v24(v11, v3);
  if (!v23)
  {
    v23 = [objc_opt_self() secondaryLabelColor];
  }

  [v36 setTextColor:v23];

  v25 = *&v2[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel];
  v44(v17, &v2[v43], v12);
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v26 = v17;
  v27 = v37;
  v37(v26, v12);
  v28 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.titleColor.getter();
  v29 = v41;
  v42(v8, v41);
  if (!v28)
  {
    v28 = [objc_opt_self() labelColor];
  }

  [v25 setTextColor:v28];

  v30 = *&v2[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel];
  v31 = v38;
  v44(v38, &v2[v43], v12);
  v32 = v39;
  HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter();
  v27(v31, v12);
  v33 = HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.descriptionColor.getter();
  v42(v32, v29);
  if (!v33)
  {
    v33 = [objc_opt_self() secondaryLabelColor];
  }

  [v30 setTextColor:v33];

  return [v2 setNeedsLayout];
}

id sub_1005420B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CarouselItemCollectionLockupOverlay(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100542204(uint64_t a1)
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

uint64_t sub_1005422B8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_selectionHandler);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_selectionHandler);
  v7 = *(v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_selectionHandler + 8);
  *v5 = a1;
  v5[1] = a2;
  sub_10000827C(a1, a2);
  sub_10000827C(a1, a2);
  sub_10001F63C(v6, v7);
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_tapGestureRecognizer);
  if (a1)
  {
    sub_10001F63C(a1, a2);
  }

  [v8 setEnabled:a1 != 0];

  return sub_10001F63C(a1, a2);
}

double sub_10054236C(uint64_t a1, char *a2)
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

  sub_10062D4DC(v4, a2);

  return result;
}

uint64_t sub_1005423DC()
{
  type metadata accessor for ArtworkView();
  sub_100543010(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1005424D4()
{
  v1 = OBJC_IVAR____TtC8AppStoreP33_FD91B5375966D5A2B51FAB9F079F554E10TextLayout_textStack;
  v2 = type metadata accessor for VerticalStack();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100542598(uint64_t a1)
{
  result = type metadata accessor for VerticalStack();
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

uint64_t sub_100542628(void *a1, double a2, double a3, double a4, double a5)
{
  v9 = [a1 traitCollection];
  sub_10053FB34(v9, a2, a3, a4, a5);

  return LayoutRect.init(representing:)();
}

double sub_1005426D4(void *a1, __n128 a2, double a3)
{
  v4 = type metadata accessor for VerticalStack.Placements();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 traitCollection];
  measuringBoundingRect(toFit:)();
  type metadata accessor for VerticalStack();
  sub_100543010(&qword_10098B208, &type metadata accessor for VerticalStack, &protocol conformance descriptor for VerticalStack);
  dispatch thunk of PrimitiveLayout.layout(relativeTo:with:)();
  sub_100543010(&qword_10098B220, &type metadata accessor for VerticalStack.Placements, &protocol conformance descriptor for VerticalStack.Placements);
  dispatch thunk of PlacementSequence.measure.getter();
  v11 = v10;

  (*(v5 + 8))(v8, v4);
  return v11;
}

uint64_t sub_100542914(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  VerticalStack.Properties.alignment.setter();
  v6 = static VerticalStack.Edge.top.getter();
  VerticalStack.Edge.init(rawValue:)();
  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v6)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  v8 = sub_1000056A8(v7, a3);
  v11[3] = v7;
  v11[4] = &protocol witness table for StaticDimension;
  v9 = sub_1000056E0(v11);
  (*(*(v7 - 8) + 16))(v9, v8, v7);
  return VerticalStack.Properties.topSpacing.setter();
}

uint64_t sub_100542A1C()
{
  VerticalStack.Properties.alignment.setter();
  sub_10002849C(&qword_10097B040, qword_1007D4350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1890;
  v1 = static VerticalStack.Edge.top.getter();
  *(inited + 32) = v1;
  v2 = static VerticalStack.Edge.bottom.getter();
  *(inited + 40) = v2;
  VerticalStack.Edge.init(rawValue:)();
  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v1)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Edge.init(rawValue:)();
  if (VerticalStack.Edge.init(rawValue:)() != v2)
  {
    VerticalStack.Edge.init(rawValue:)();
  }

  VerticalStack.Properties.edgesAlignedToBaseline.setter();
  if (qword_10096E8B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for StaticDimension();
  v4 = sub_1000056A8(v3, qword_10098B090);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v5 = sub_1000056E0(v10);
  v6 = *(*(v3 - 8) + 16);
  v6(v5, v4, v3);
  VerticalStack.Properties.topSpacing.setter();
  if (qword_10096E8C0 != -1)
  {
    swift_once();
  }

  v7 = sub_1000056A8(v3, qword_10098B0A8);
  v11 = v3;
  v12 = &protocol witness table for StaticDimension;
  v8 = sub_1000056E0(v10);
  v6(v8, v7, v3);
  return VerticalStack.Properties.bottomSpacing.setter();
}

id sub_100542C9C(uint64_t a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel];
  HeroCarouselItemOverlay.badgeText.getter();
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  [v3 setText:v5];

  v6 = *&v1[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel];
  HeroCarouselItemOverlay.titleText.getter();
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v6 setText:v8];

  v9 = *&v1[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel];
  HeroCarouselItemOverlay.descriptionText.getter();
  if (v10)
  {
    v11 = String._bridgeToObjectiveC()();
  }

  else
  {
    v11 = 0;
  }

  [v9 setText:v11];

  v12 = *&v1[OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork];
  v13 = HeroCarouselItemOverlay.collectionIcons.getter();
  if (!v13)
  {
    i = 0;
    goto LABEL_15;
  }

  if (v13 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

LABEL_15:
    v15 = 4;
    if (i < 4)
    {
      v15 = i;
    }

    v16 = OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount;
    v17 = *&v12[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount];
    *&v12[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_iconCount] = v15;
    v18 = &StringUserDefaultsDebugSetting;
    if (v15 == v17)
    {
      break;
    }

    sub_10002849C(&qword_100973210, qword_1007B0BB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1007BB060;
    v20 = *&v12[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon1];
    *(inited + 32) = v20;
    v21 = *&v12[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon2];
    *(inited + 40) = v21;
    v22 = *&v12[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon3];
    *(inited + 48) = v22;
    v23 = *&v12[OBJC_IVAR____TtC8AppStore23CollectionLockupArtwork_icon4];
    *(inited + 56) = v23;
    v24 = inited & 0xC000000000000001;
    v25 = v20;
    v26 = v21;
    v27 = v22;
    v28 = v23;
    if ((inited & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v29 = v25;
    }

    v30 = v29;
    [v29 setHidden:*&v12[v16] < 1];

    if (v24)
    {
      v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_32;
      }

      v31 = *(inited + 40);
    }

    v32 = v31;
    [v31 setHidden:*&v12[v16] < 2];

    if (v24)
    {
      v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 3uLL)
      {
        goto LABEL_32;
      }

      v33 = *(inited + 48);
    }

    v34 = v33;
    [v33 setHidden:*&v12[v16] < 3];

    if (v24)
    {
      v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_30;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 4uLL)
    {
      v35 = *(inited + 56);
LABEL_30:
      v36 = v35;
      [v35 setHidden:*&v12[v16] < 4];

      swift_setDeallocating();
      swift_arrayDestroy();
      v18 = &StringUserDefaultsDebugSetting;
      [v12 setNeedsLayout];
      return [v2 v18[41].base_meths];
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  return [v2 v18[41].base_meths];
}

uint64_t sub_100543010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100543058(__n128 a1)
{
  v2 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.TextAlignment();
  v8 = __chkstk_darwin(v7);
  (*(v10 + 104))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for HeroCarouselItemOverlay.DisplayOptions.TextAlignment.leading(_:), v8);
  (*(v4 + 104))(v6, enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:), v3);
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()();
  HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)();
  v11 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_materialBackground;
  *(v1 + v11) = [objc_allocWithZone(UIVisualEffectView) init];
  v12 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_collectionArtwork;
  type metadata accessor for CollectionLockupArtwork();
  *(v1 + v12) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v13 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_badgeLabel;
  type metadata accessor for DynamicTypeLabel();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v1 + v13) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v15 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_titleLabel;
  *(v1 + v15) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v16 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_descriptionLabel;
  *(v1 + v16) = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() systemImageNamed:v17];

  if (!v18)
  {
    __break(1u);
  }

  v19 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_chevronView;
  v20 = [objc_allocWithZone(UIImageView) initWithImage:v18];

  *(v1 + v19) = v20;
  v21 = OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_tapGestureRecognizer;
  *(v1 + v21) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v22 = (v1 + OBJC_IVAR____TtC8AppStore35CarouselItemCollectionLockupOverlay_selectionHandler);
  *v22 = 0;
  v22[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1005433CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v4 - 8);
  sub_100543634();
  if (Lockup.icon.getter())
  {
    v5 = *(v2 + OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_lockupView);
    v6 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
    v7 = qword_10096EE80;
    v8 = *(v5 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SmallLockupLayout.Metrics();
    sub_1000056A8(v9, qword_1009D3798);
    SmallLockupLayout.Metrics.artworkSize.getter();
    [v8 contentMode];
    Artwork.config(_:mode:prefersLayeredImage:)();
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v8 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100028BB8();
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    v10 = *(v5 + v6);
    type metadata accessor for ArtworkView();
    sub_100544610(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    v11 = v10;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  v12 = Lockup.children.getter();
  if (v12)
  {
    sub_100208FF4(v12, a2);
  }
}

void sub_100543634()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_lockupView);
  v3 = OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore14BaseLockupView_artworkView);
  v31.value.super.isa = 0;
  v31.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v31, v5);

  v6 = *(v2 + v3);
  type metadata accessor for ArtworkView();
  sub_100544610(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v7 = v6;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  v28 = *(v1 + OBJC_IVAR____TtC8AppStore36BundleSearchResultCollectionViewCell_bundleView);
  v8 = sub_1002A6C38();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v11 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v12 = *(v9 + 8 * v11 + 32);
    }

    v13 = v12;
    ++v11;
    v14 = OBJC_IVAR____TtC8AppStore15BundleChildView_icon;
    v15 = *&v12[OBJC_IVAR____TtC8AppStore15BundleChildView_icon];
    v32.value.super.isa = 0;
    v32.is_nil = 0;
    ArtworkView.setImage(image:animated:)(v32, v16);

    v17 = *&v13[v14];
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }

  while (v10 != v11);
LABEL_10:

  v18 = sub_1002A6C50();
  v19 = v18;
  if (v18 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20)
    {
LABEL_12:
      if (v20 >= 1)
      {
        v21 = 0;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v22 = *(v19 + 8 * v21 + 32);
          }

          v23 = v22;
          ++v21;
          v24 = OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView;
          v25 = *&v22[OBJC_IVAR____TtC8AppStore22BorderedScreenshotView_artworkView];
          v33.value.super.isa = 0;
          v33.is_nil = 0;
          ArtworkView.setImage(image:animated:)(v33, v26);

          v27 = *&v23[v24];
          ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
        }

        while (v20 != v21);
        goto LABEL_19;
      }

LABEL_23:
      __break(1u);
      return;
    }
  }

  else
  {
    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_12;
    }
  }

LABEL_19:

  v29 = *&v28[OBJC_IVAR____TtC8AppStore10BundleView_backgroundArtworkView];
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

double sub_100543944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v105 = a5;
  v93 = a3;
  v94 = a4;
  v90 = a2;
  v88 = a1;
  v14 = type metadata accessor for FloatingPointRoundingRule();
  v107 = *(v14 - 8);
  v108 = v14;
  __chkstk_darwin(v14);
  v106 = v78 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Artwork.Style();
  v103 = *(v16 - 8);
  v104 = v16;
  __chkstk_darwin(v16);
  v102 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SmallSearchLockupLayout();
  v100 = *(v18 - 8);
  v101 = v18;
  __chkstk_darwin(v18);
  v99 = v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for LabelPlaceholderCompatibility();
  v92 = *(v112 - 8);
  __chkstk_darwin(v112);
  v91 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OfferButtonMetrics();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v78 - v26;
  v28 = type metadata accessor for SmallSearchLockupLayout.Metrics();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v95 = v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = v78 - v32;
  CGSize.subtracting(insets:)();
  v35 = v34;
  v37 = v36;
  ObjectType = swift_getObjectType();
  v38 = [a6 traitCollection];
  if (qword_10096CF70 != -1)
  {
    swift_once();
  }

  v39 = sub_1000056A8(v28, qword_1009CDC00);
  v40 = *(v29 + 16);
  v98 = v28;
  v85 = v40;
  v86 = v29 + 16;
  v40(v33, v39, v28);
  v41 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v109 = a6;
  v97 = v29;
  if (v41)
  {
    if (qword_10096ECB8 != -1)
    {
      swift_once();
    }

    v42 = qword_100991010;
  }

  else
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v42 = qword_100991028;
  }

  v43 = sub_1000056A8(v21, v42);
  v84 = v22;
  (*(v22 + 16))(v24, v43, v21);
  (*(v22 + 32))(v27, v24, v21);
  v83 = v38;
  v44 = [v38 preferredContentSizeCategory];
  UIContentSizeCategory.isAccessibilityCategory.getter();

  OfferButtonMetrics.minimumSize.getter();
  OfferButtonMetrics.estimatedHeight.getter();
  v111 = v33;
  SmallSearchLockupLayout.Metrics.offerButtonSize.setter();
  SmallSearchLockupLayout.Metrics.artworkSize.getter();
  v45 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v82 = LayoutViewPlaceholder.init(representing:)();
  v46 = objc_opt_self();

  v80 = v46;
  v78[1] = [v46 preferredFontForTextStyle:UIFontTextStyleBody];
  v47 = type metadata accessor for Feature();
  v89 = v27;
  v48 = v47;
  v149[3] = v47;
  v49 = sub_100544610(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v87 = v21;
  v50 = v49;
  v149[4] = v49;
  v79 = v49;
  v51 = sub_1000056E0(v149);
  v81 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v52 = *(v48 - 8);
  v110 = *(v52 + 104);
  v53 = v52 + 104;
  v110(v51);
  v78[2] = v53;
  isFeatureEnabled(_:)();
  sub_100007000(v149);
  v54 = v91;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v92 = *(v92 + 8);
  (v92)(v54, v112);

  v55 = [v46 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v148[3] = v48;
  v148[4] = v50;
  v56 = sub_1000056E0(v148);
  v57 = v81;
  (v110)(v56, v81, v48);
  isFeatureEnabled(_:)();
  sub_100007000(v148);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v58 = v112;
  v59 = v92;
  (v92)(v54, v112);
  v60 = [v80 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v147[3] = v48;
  v147[4] = v79;
  v61 = sub_1000056E0(v147);
  (v110)(v61, v57, v48);
  isFeatureEnabled(_:)();
  sub_100007000(v147);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v59(v54, v58);
  sub_1000AE138();
  swift_allocObject();
  v62 = LayoutViewPlaceholder.init(representing:)();

  sub_1000AE138();
  swift_allocObject();
  v63 = LayoutViewPlaceholder.init(representing:)();
  v64 = v98;
  v85(v95, v111, v98);
  v146 = &protocol witness table for LayoutViewPlaceholder;
  v145 = v45;
  v144 = v82;
  v143 = 0;
  *&v141[40] = 0u;
  v142 = 0u;
  sub_10002C0AC(v149, v141);
  sub_10002C0AC(v148, &v140);
  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v136 = 0;
  v134 = 0u;
  v135 = 0u;

  v65 = static LayoutViewPlaceholder.withIdentityMeasurement.getter();
  v133 = &protocol witness table for LayoutViewPlaceholder;
  v132 = v45;
  v131 = v65;
  v130 = 0;
  v128 = 0u;
  v129 = 0u;
  v127 = 0;
  v125 = 0u;
  v126 = 0u;
  v124 = 0;
  v122 = 0u;
  v123 = 0u;
  v121 = 0;
  v120 = 0u;
  *&v119[40] = 0u;
  sub_10002C0AC(v147, v119);
  v117 = v45;
  v118 = &protocol witness table for LayoutViewPlaceholder;
  v115 = &protocol witness table for LayoutViewPlaceholder;
  v116 = v62;
  v114 = v45;
  v113 = v63;
  v66 = v99;
  SmallSearchLockupLayout.init(metrics:artworkView:headingText:titleText:subtitleText:tertiaryTitleText:offerText:offerButton:userRatingView:ratingCountLabel:editorsChoiceView:adButton:description:includesRatings:metadataRibbonView:searchTagsRibbonView:includesMetadataRibbon:includesSearchTagsRibbon:includesMetadataInformationInLockup:)();
  type metadata accessor for TraitEnvironmentPlaceholder();
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1007B0B70;
  v68 = v83;
  *(v67 + 32) = v83;
  v69 = v68;
  v70 = TraitEnvironmentPlaceholder.__allocating_init(_:)();
  sub_100544610(&unk_100972E60, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
  v71 = v101;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  (*(v100 + 8))(v66, v71);
  sub_100007000(v147);
  sub_100007000(v148);
  sub_100007000(v149);
  (*(v84 + 8))(v89, v87);
  (*(v97 + 8))(v111, v64);
  v73 = v102;
  v72 = v103;
  v74 = v104;
  (*(v103 + 104))(v102, enum case for Artwork.Style.roundedRect(_:), v104);
  if (v105)
  {
    v75 = v105;
  }

  else
  {
    v75 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for BundleView(0);

  sub_10020BCC0(v73, v75, v109, v35, v37);

  (*(v72 + 8))(v73, v74);
  if (qword_10096E4D0 != -1)
  {
    swift_once();
  }

  sub_10002A400(qword_1009D1D90, qword_1009D1DA8);
  v76 = v106;
  j___s5JetUI10DimensionsV19defaultRoundingRules013FloatingPointeF0OvgZ();
  AnyDimension.value(in:rounded:)();
  (*(v107 + 8))(v76, v108);
  return a7;
}

uint64_t sub_100544610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_100544658(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for CornerStyle();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_100981210, &qword_1007C2310);
  __chkstk_darwin(v15 - 8);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v19 = type metadata accessor for ItemLayoutContext();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *&v5[v20] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v21 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *&v5[v21] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v5[OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator] = 0;
  v22 = &v5[OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock];
  *v22 = 0;
  *(v22 + 1) = 0;
  v38.receiver = v5;
  v38.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  v24 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  v25 = *&v23[OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView];
  v26 = qword_10096DAE0;
  v27 = v23;
  v28 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for Shadow();
  v30 = sub_1000056A8(v29, qword_1009CFF00);
  v31 = *(v29 - 8);
  (*(v31 + 16))(v17, v30, v29);
  (*(v31 + 56))(v17, 0, 1, v29);
  dispatch thunk of ShadowView.shadow.setter();

  v32 = *&v23[v24];
  (*(v12 + 104))(v14, enum case for CornerStyle.continuous(_:), v11);
  v33 = v32;
  dispatch thunk of ShadowView.setCorner(radius:style:)();

  (*(v12 + 8))(v14, v11);
  [v27 addSubview:*&v23[v24]];
  v34 = [v27 contentView];
  [v34 setClipsToBounds:1];

  v35 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  [*&v27[OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView] setClipsToBounds:1];
  v36 = [v27 contentView];

  [v36 addSubview:*&v27[v35]];
  return v27;
}

double sub_100544BD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CondensedAdLockupWithIconBackground();
  sub_100545724(&qword_10098B2A8, &type metadata accessor for CondensedAdLockupWithIconBackground, &protocol conformance descriptor for CondensedAdLockupWithIconBackground);
  ItemLayoutContext.typedModel<A>(as:)();
  v9 = v11;
  if (v11)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    sub_10003A82C(v9, v7, a2);
    (*(v5 + 8))(v7, v4);
    [v2 setNeedsLayout];
  }

  return result;
}

void sub_100544D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = type metadata accessor for ImpressionMetrics();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_10002C0AC(a3, v14);
      sub_10002849C(&qword_100973D50, &unk_1007B3840);
      type metadata accessor for CondensedAdLockupWithIconBackground();
      if (swift_dynamicCast())
      {
        CondensedAdLockupWithIconBackground.lockup.getter();

        Lockup.impressionMetrics.getter();
        if ((*(v8 + 48))(v6, 1, v7) == 1)
        {

          sub_10002B894(v6, &qword_100973D30, &unk_1007B1DC0);
        }

        else
        {
          (*(v8 + 32))(v10, v6, v7);
          [v12 bounds];
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
}

uint64_t type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell(uint64_t a1)
{
  result = qword_10098B298;
  if (!qword_10098B298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1005450DC(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100545190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_100545724(&qword_100974780, type metadata accessor for CondensedAdLockupWithIconBackgroundCollectionViewCell, &unk_1007D4470);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_100545228@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_100545280(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_100545340()
{
  v1 = v0;
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "prepareForReuse");
  ArtworkView.image.setter();
  v2 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *&v1[v2] = 0;

  return result;
}

double sub_1005453D4()
{
  swift_beginAccess();

  return result;
}

double sub_10054541C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_1005454D4()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_100545530(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

void (*sub_1005455F0(uint64_t a1, uint64_t a2))()
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
  return sub_10054576C;
}

uint64_t sub_100545724(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100545778()
{
  v1 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_itemLayoutContext;
  v2 = type metadata accessor for ItemLayoutContext();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_condensedAdLockupWithIconBackgroundView;
  type metadata accessor for CondensedAdLockupWithIconBackgroundView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_shadowView;
  type metadata accessor for ShadowView();
  *(v0 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v0 + OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8AppStore53CondensedAdLockupWithIconBackgroundCollectionViewCell_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_10054588C()
{
  qword_10098B2C8 = &type metadata for Double;
  unk_10098B2D0 = &protocol witness table for Double;
  qword_10098B2B0 = 0;
  qword_10098B2F0 = &type metadata for Double;
  unk_10098B2F8 = &protocol witness table for Double;
  qword_10098B2D8 = 0x4028000000000000;
  qword_10098B318 = &type metadata for Double;
  unk_10098B320 = &protocol witness table for Double;
  qword_10098B300 = 0x4014000000000000;
  qword_10098B340 = &type metadata for Double;
  unk_10098B348 = &protocol witness table for Double;
  qword_10098B328 = 0x4041000000000000;
}

void sub_1005458D4()
{
  qword_10098B368 = &type metadata for Double;
  unk_10098B370 = &protocol witness table for Double;
  qword_10098B350 = 0;
  qword_10098B390 = &type metadata for Double;
  unk_10098B398 = &protocol witness table for Double;
  qword_10098B378 = 0x4024000000000000;
  qword_10098B3B8 = &type metadata for Double;
  unk_10098B3C0 = &protocol witness table for Double;
  qword_10098B3A0 = 0x4014000000000000;
  qword_10098B3E0 = &type metadata for Double;
  unk_10098B3E8 = &protocol witness table for Double;
  qword_10098B3C8 = 0x4014000000000000;
}

char *sub_100545918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_overlayViewController] = 0;
  *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_objectGraph] = a2;
  *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_presenter] = a1;
  v7 = &v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver];
  *(v7 + 3) = type metadata accessor for ArcadeWelcomePagePresenter();
  *(v7 + 4) = &protocol witness table for BasePresenter;
  *v7 = a1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  swift_retain_n();

  inject<A, B>(_:from:)();
  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_artworkLoader] = v21[0];
  type metadata accessor for ImpressionsCalculator();
  BaseObjectGraph.optional<A>(_:)();
  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_impressionsCalculator] = v21[0];
  v8 = [objc_opt_self() currentTraitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 == 1)
  {
    if (qword_10096E8D0 != -1)
    {
      swift_once();
    }

    v10 = &qword_10098B350;
  }

  else
  {
    if (qword_10096E8C8 != -1)
    {
      swift_once();
    }

    v10 = &qword_10098B2B0;
  }

  sub_100073D84(v10, v21);
  sub_100073D84(v21, v20);
  v11 = objc_allocWithZone(type metadata accessor for ArcadeWelcomePageView());
  *&v3[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_pageView] = sub_10007325C(v20);
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v19, "initWithNibName:bundle:", 0, 0);
  v13 = v12;
  if (*&v12[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_impressionsCalculator])
  {
    v14 = v12;

    ImpressionsCalculator.isVisible.setter();
  }

  else
  {
    v16 = v12;
  }

  sub_1005471E4(&qword_10098B460, v15, type metadata accessor for ArcadeWelcomeViewController, &unk_1007D45DC);
  v17 = v13;
  dispatch thunk of ArcadeWelcomePagePresenter.view.setter();

  sub_100073DE0(v21);
  *(*&v17[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_pageView] + OBJC_IVAR____TtC8AppStore21ArcadeWelcomePageView_delegate + 8) = &off_1008C8078;
  swift_unknownObjectWeakAssign();

  return v17;
}

void sub_100545C70()
{
  v20.receiver = v0;
  v20.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v20, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_pageView];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;
  [v2 bounds];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  [v4 safeAreaInsets];

  CGRect.subtracting(insets:)();
  [v1 setFrame:?];
  v6 = *&v0[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_overlayViewController];
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = [v7 view];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = [v0 view];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = v10;
  [v10 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  [v9 setFrame:{v13, v15, v17, v19}];
}

id sub_100545E80()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v1;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidLoad", v5);
  sub_10002A400(&v1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v4 + 8))(v7, v3);
  result = [v1 view];
  if (result)
  {
    v9 = result;
    sub_100028BB8();
    v10 = static UIColor.defaultBackground.getter();
    [v9 setBackgroundColor:v10];

    result = [v1 view];
    if (result)
    {
      v11 = result;
      [result addSubview:*&v1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_pageView]];

      dispatch thunk of BasePresenter.didLoad()();
      v12 = [v1 navigationItem];
      [v12 setLargeTitleDisplayMode:2];

      return [v1 setTitle:0];
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1005460F0(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v2;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, "viewWillAppear:", a1 & 1, v7);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v6 + 8))(v9, v5);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    [v10 setNavigationBarHidden:1 animated:0];
  }

  v12 = [v2 modalPresentationStyle];
  v13 = [v2 view];
  v14 = v13;
  if (v12 == 2)
  {
    if (v13)
    {
      [v13 setLayoutMargins:{20.0, 0.0, 0.0, 0.0}];
LABEL_8:

      return;
    }

    __break(1u);
  }

  else if (v13)
  {
    [v13 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
    goto LABEL_8;
  }

  __break(1u);
}

void sub_100546350(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, "viewDidAppear:", a1 & 1, v11);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v10 + 8))(v13, v9);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v6 + 8))(v8, v5);
    PendingPageRender.appearTime.setter();
  }

  ArtworkLoader.isOccluded.setter();
  v14 = objc_opt_self();
  v15 = [v14 defaultCenter];
  [v15 addObserver:v2 selector:"appEnteredWhileAppeared" name:UIApplicationDidBecomeActiveNotification object:0];

  v16 = [v14 defaultCenter];
  [v16 addObserver:v2 selector:"appExitedWhileAppeared" name:UIApplicationDidEnterBackgroundNotification object:0];
}

void sub_10054667C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for Date();
  v21 = *(v5 - 8);
  v22 = v5;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ViewWillDisappearReason();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10002849C(&qword_1009729C8, &unk_1007B3740);
  __chkstk_darwin(v9 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23.receiver = v2;
  v23.super_class = ObjectType;
  objc_msgSendSuper2(&v23, "viewWillDisappear:", a1 & 1, v14);
  sub_10002A400(&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  static ViewWillDisappearReason.inferred(for:)();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();
  (*(v13 + 8))(v16, v12);
  if (dispatch thunk of BasePresenter.pendingPageRender.getter())
  {
    static ViewWillDisappearReason.inferred(for:)();
    Date.init()();
    Date.timeIntervalSince1970.getter();
    (*(v21 + 8))(v7, v22);
    PendingPageRender.DisappearTimeAndReason.init(reason:timeInterval:)();
    v17 = type metadata accessor for PendingPageRender.DisappearTimeAndReason();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    PendingPageRender.disappearTime.setter();
  }

  if (*&v2[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_impressionsCalculator])
  {
    ImpressionsCalculator.isVisible.setter();
  }

  ArtworkLoader.isOccluded.setter();
  v18 = objc_opt_self();
  v19 = [v18 defaultCenter];
  [v19 removeObserver:v2 name:UIApplicationDidBecomeActiveNotification object:0];

  v20 = [v18 defaultCenter];
  [v20 removeObserver:v2 name:UIApplicationDidEnterBackgroundNotification object:0];
}

uint64_t sub_100546C10(char *a1, uint64_t a2, unsigned int *a3)
{
  v5 = type metadata accessor for StoreViewControllerLifecycleEvent();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002A400(&a1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver], *&a1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v8, *a3, v5);
  v9 = a1;
  dispatch thunk of StoreViewControllerLifecycleObserver.observe(lifecycleEvent:)();

  return (*(v6 + 8))(v8, v5);
}

void sub_100546E80()
{
  v0 = type metadata accessor for JULoadingViewController.PresentationContext();
  __chkstk_darwin(v0 - 8);
  static JULoadingViewController.PresentationContext.placeholder.getter();
  v1 = objc_allocWithZone(type metadata accessor for JULoadingViewController());
  v2 = JULoadingViewController.init(label:presentationContext:pageRenderMetrics:)();
  sub_10054722C(v2);
}

void sub_100546F38(uint64_t a1)
{
  type metadata accessor for JUContentUnavailableViewController();
  sub_1005471E4(&qword_10098B468, 255, &type metadata accessor for ArcadeWelcomePagePresenter, &protocol conformance descriptor for BasePresenter);
  swift_errorRetain();

  v1 = JUContentUnavailableViewController.init(error:from:includeMetrics:retry:)();
  sub_10054722C(v1);
}

uint64_t sub_100547018(uint64_t a1)
{
  v3 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_objectGraph);
  v7 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_1000F40E0(v5);
  }

  sub_1005F9AF4(a1, 1, v6, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_1005471E4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

id sub_10054722C(void *a1)
{
  v3 = OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_overlayViewController;
  v4 = *&v1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_overlayViewController];
  static ViewControllerContainment.remove(_:)();

  v5 = *&v1[v3];
  *&v1[v3] = a1;
  v6 = a1;

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];

    static ViewControllerContainment.add(_:to:frame:)();
    v9 = *&v1[OBJC_IVAR____TtC8AppStore27ArcadeWelcomeViewController_pageView];
    v10 = *&v1[v3] != 0;

    return [v9 setHidden:v10];
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100547334(unint64_t a1)
{
  v56 = type metadata accessor for Artwork.Crop();
  v3 = *(v56 - 8);
  __chkstk_darwin(v56);
  v55 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Artwork.URLTemplate();
  v5 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v7 - 8);
  v9 = &v39 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  sub_100548338(v14);
  v15 = OBJC_IVAR____TtC8AppStore20AnnotationImagesView_imageViews;
  swift_beginAccess();
  v62 = *(v1 + v15);
  v40 = v1;
  if (v13)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v58 = a1 & 0xFFFFFFFFFFFFFF8;
    v59 = a1 & 0xC000000000000001;
    v1 = (v62 & 0xFFFFFFFFFFFFFF8);
    if (v62 < 0)
    {
      v16 = v62;
    }

    else
    {
      v16 = v62 & 0xFFFFFFFFFFFFFF8;
    }

    v39 = v16;
    v54 = v62 & 0xC000000000000001;
    v53 = (v5 + 8);
    v52 = (v11 + 48);
    v50 = (v11 + 32);
    v42 = "_TtC8AppStore11BundleImage";
    v51 = (v11 + 8);
    v45 = (v3 + 8);
    v17 = 4;
    v57 = v62 >> 62;
    v41 = xmmword_1007B1890;
    v46 = v62 & 0xFFFFFFFFFFFFFF8;
    v43 = a1;
    v49 = v10;
    v48 = v9;
    v47 = v13;
    do
    {
      v5 = v17 - 4;
      if (v59)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v3 = (v17 - 3);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v5 >= *(v58 + 16))
        {
          goto LABEL_45;
        }

        v3 = (v17 - 3);
        if (__OFADD__(v5, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          v14 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      if (v57)
      {
        if (v5 == _CocoaArrayWrapper.endIndex.getter())
        {
LABEL_38:

          break;
        }
      }

      else if (v5 == v1[2])
      {
        goto LABEL_38;
      }

      v63 = v3;
      if (v54)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= v1[2])
        {
          goto LABEL_46;
        }

        v18 = *(v62 + 8 * v17);
      }

      v11 = v18;
      v19 = v60;
      Artwork.template.getter();
      Artwork.URLTemplate.rawValue.getter();
      (*v53)(v19, v61);
      URL.init(string:)();

      if ((*v52)(v9, 1, v10) == 1)
      {

        return sub_10002B894(v9, &qword_100982460, &unk_1007B5C90);
      }

      (*v50)(v64, v9, v10);
      v20 = URL.host.getter();
      if (!v21)
      {

LABEL_43:

        return (*v51)(v64, v10);
      }

      v22 = v20;
      v23 = v21;
      if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
      {

        goto LABEL_43;
      }

      v24.value.super.super.isa = 0;
      v25 = Artwork.configuration(with:)(v24);
      if (qword_10096D8F8 != -1)
      {
        swift_once();
      }

      v26 = qword_1009809A0;
      v27 = v25;
      v28 = String._bridgeToObjectiveC()();
      v29 = [objc_opt_self() imageNamed:v28 inBundle:v26 withConfiguration:{v27, v39}];

      if (!v29)
      {
        if (qword_10096D110 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for OSLogger();
        v44 = sub_1000056A8(v30, qword_1009CE1E8);
        sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
        type metadata accessor for LogMessage();
        *(swift_allocObject() + 16) = v41;
        LogMessage.init(stringLiteral:)();
        v65[3] = &type metadata for String;
        v65[0] = v22;
        v65[1] = v23;

        static LogMessage.sensitive(_:)();
        sub_10002B894(v65, &unk_1009711D0, &unk_1007B1A10);
        Logger.error(_:)();

        v29 = [objc_allocWithZone(UIImage) init];
        a1 = v43;
      }

      v10 = v49;
      (*v51)(v64, v49);
      [v29 size];
      if (qword_10096E8D8 != -1)
      {
        swift_once();
      }

      v31 = type metadata accessor for AnnotationImagesLayout.Metrics();
      sub_1000056A8(v31, qword_1009D29A0);
      AnnotationImagesLayout.Metrics.artworkSize.getter();
      v3 = v55;
      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*v45)(v3, v56);
      CGSize.fitting(_:mode:)();
      [v11 setFrame:{0.0, 0.0, v32, v33}];
      v34 = v29;
      v35 = [v11 layer];
      [v35 removeAllAnimations];

      v36 = v34;
      [v11 setImage:v36];

      ++v17;
      v13 = v47;
      v9 = v48;
      v1 = v46;
    }

    while (v63 != v47);
  }

  v37 = v40;
  [v40 invalidateIntrinsicContentSize];
  return [v37 setNeedsLayout];
}

uint64_t sub_100547CA0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100548D14(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 24 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 56), 24 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_100547D48(unint64_t a1, __n128 a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
  {
    result = sub_100548D64(v4);
    v4 = result;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6 <= a1)
  {
    __break(1u);
  }

  else
  {
    v7 = v6 - 1;
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v4 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v4 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v6 - 1 - a1));
    *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
    *v2 = v4;
    return v8;
  }

  return result;
}

uint64_t sub_100547DD8(__n128 a1)
{
  if (!(*v1 >> 62))
  {
    result = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_100549074(a1);
    if (result)
    {
      return result;
    }

    if (*v1 >> 62)
    {
      v6 = _CocoaArrayWrapper.endIndex.getter();
      v5 = __OFSUB__(v6, 1);
      result = v6 - 1;
      if (!v5)
      {
        return sub_100547D48(result, v3);
      }
    }

    else
    {
      v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v5 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v5)
      {
        return sub_100547D48(result, v3);
      }
    }

    __break(1u);
    return result;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_100548018()
{
  v0 = type metadata accessor for AnnotationImagesLayout.Metrics();
  sub_100005644(v0, qword_1009D29A0);
  sub_1000056A8(v0, qword_1009D29A0);
  return AnnotationImagesLayout.Metrics.init(horizontalSpacing:verticalSpacing:artworkSize:)();
}

id sub_1005481BC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_10002849C(&qword_10098B4C0, "pN\a");
  __chkstk_darwin(v4);
  *&v1[OBJC_IVAR____TtC8AppStore20AnnotationImagesView_imageViews] = _swiftEmptyArrayStorage;
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  ViewRecycler.init()();
  sub_100548C64();
  ReusePool.init(recycler:limit:)();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);
  v6 = v5;
  if (v5)
  {
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v10 = v5;
    [v10 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  }

  return v6;
}

uint64_t sub_100548338(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore20AnnotationImagesView_imageViews;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result == a1)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == a1)
    {
      return result;
    }
  }

  v6 = *&v1[v3];
  if (v6 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter() > a1)
    {
      goto LABEL_5;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
  {
LABEL_5:
    swift_beginAccess();
    v8 = sub_100547DD8(v7);
    result = swift_endAccess();
    if (!v8)
    {
      __break(1u);
      return result;
    }

    [v8 removeFromSuperview];
    swift_beginAccess();
    ReusePool.recycle(_:)();
    swift_endAccess();
    goto LABEL_13;
  }

  swift_beginAccess();
  ReusePool.dequeue(or:)();
  swift_endAccess();
  swift_beginAccess();
  v8 = v9;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v1[v3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  [v1 addSubview:v8];
LABEL_13:

  return sub_100548338(a1);
}

uint64_t sub_100548734()
{
  ObjectType = swift_getObjectType();
  v17 = type metadata accessor for LayoutRect();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AnnotationImagesLayout.Metrics();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = type metadata accessor for AnnotationImagesLayout();
  v9 = *(v16[0] - 8);
  *&v10 = __chkstk_darwin(v16[0]).n128_u64[0];
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v0;
  v18.super_class = ObjectType;
  v16[1] = ObjectType;
  objc_msgSendSuper2(&v18, "layoutSubviews", v10);
  swift_beginAccess();

  sub_1002A627C(v13);

  if (qword_10096E8D8 != -1)
  {
    swift_once();
  }

  v14 = sub_1000056A8(v5, qword_1009D29A0);
  (*(v6 + 16))(v8, v14, v5);
  AnnotationImagesLayout.init(views:metrics:)();
  LayoutMarginsAware<>.layoutFrame.getter();
  AnnotationImagesLayout.placeChildren(relativeTo:in:)();
  (*(v2 + 8))(v4, v17);
  return (*(v9 + 8))(v12, v16[0]);
}

id sub_100548A38@<X0>(void *a1@<X8>)
{
  type metadata accessor for AnnotationImagesView.AnnotationImageView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for AnnotationImagesView(uint64_t a1)
{
  result = qword_10098B4A8;
  if (!qword_10098B4A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100548B54(uint64_t a1)
{
  sub_100548BF4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100548BF4(uint64_t a1)
{
  if (!qword_10098B4B8)
  {
    sub_10002D1A8(&qword_10098B4C0, "pN\a");
    sub_100548C64();
    v1 = type metadata accessor for ReusePool();
    if (!v2)
    {
      atomic_store(v1, &qword_10098B4B8);
    }
  }
}

unint64_t sub_100548C64()
{
  result = qword_10098B4C8;
  if (!qword_10098B4C8)
  {
    sub_10002D1A8(&qword_10098B4C0, "pN\a");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098B4C8);
  }

  return result;
}

uint64_t sub_100548D64(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

double (*sub_100548DDC(double (*result)(), unint64_t a2, uint64_t a3))()
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

LABEL_5:
    *v3 = v4;
    return sub_10054996C;
  }

  __break(1u);
  return result;
}

void (*sub_100548E5C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_100549968;
  }

  __break(1u);
  return result;
}

double (*sub_100548EDC(double (*result)(), unint64_t a2, uint64_t a3))()
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

LABEL_5:
    *v3 = v4;
    return sub_100548F5C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100548F64(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
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
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100548FE4;
  }

  __break(1u);
  return result;
}

void (*sub_100548FEC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10054906C;
  }

  __break(1u);
  return result;
}

unint64_t sub_100549074(__n128 a1)
{
  v2 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    result = sub_100548D64(v2);
    v2 = result;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    v5 = v4 - 1;
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20);
    *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
    *v1 = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1005490D8(unint64_t a1, uint64_t a2, double a3, double a4)
{
  v47 = type metadata accessor for Artwork.Crop();
  v6 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Artwork.URLTemplate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v12 - 8);
  v14 = v38 - v13;
  v55 = type metadata accessor for URL();
  v15 = *(v55 - 8);
  __chkstk_darwin(v55);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = _swiftEmptyArrayStorage;
  if (!v18)
  {
    goto LABEL_28;
  }

  v57 = _swiftEmptyArrayStorage;
  v54 = v18;
  specialized ContiguousArray.reserveCapacity(_:)();
  if (v54 < 0)
  {
    __break(1u);
    return;
  }

  v51 = v17;
  v38[1] = a2;
  v20 = 0;
  v52 = (v9 + 8);
  v53 = a1 & 0xC000000000000001;
  v21 = (v15 + 48);
  v48 = (v15 + 8);
  v49 = (v15 + 32);
  v40 = "_TtC8AppStore11BundleImage";
  v44 = (v6 + 8);
  v39 = xmmword_1007B1890;
  v45 = a1;
  v50 = v8;
  v43 = (v15 + 48);
  do
  {
    v22 = v55;
    if (v53)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    Artwork.template.getter();
    Artwork.URLTemplate.rawValue.getter();
    (*v52)(v11, v8);
    URL.init(string:)();

    if ((*v21)(v14, 1, v22) == 1)
    {
      sub_10002B894(v14, &qword_100982460, &unk_1007B5C90);
LABEL_7:
      type metadata accessor for LayoutViewPlaceholder();
      swift_allocObject();
      LayoutViewPlaceholder.init(representing:)();
      goto LABEL_8;
    }

    v23 = v51;
    (*v49)(v51, v14, v22);
    v24 = URL.host.getter();
    if (!v25)
    {
      (*v48)(v23, v22);
LABEL_26:
      v8 = v50;
      goto LABEL_7;
    }

    v26 = v24;
    v27 = v25;
    if ((dispatch thunk of Artwork.isBundleImage.getter() & 1) == 0)
    {

      (*v48)(v51, v22);
      goto LABEL_26;
    }

    v28.value.super.super.isa = 0;
    v29 = Artwork.configuration(with:)(v28);
    if (qword_10096D8F8 != -1)
    {
      swift_once();
    }

    v30 = qword_1009809A0;
    v31 = v29;
    v32 = String._bridgeToObjectiveC()();
    v33 = [objc_opt_self() imageNamed:v32 inBundle:v30 withConfiguration:v31];

    if (!v33)
    {
      v42 = v31;
      if (qword_10096D110 != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for OSLogger();
      v41 = sub_1000056A8(v34, qword_1009CE1E8);
      sub_10002849C(&unk_100972A10, &qword_1007B1EF0);
      type metadata accessor for LogMessage();
      *(swift_allocObject() + 16) = v39;
      LogMessage.init(stringLiteral:)();
      v56[3] = &type metadata for String;
      v56[0] = v26;
      v56[1] = v27;

      static LogMessage.sensitive(_:)();
      sub_10002B894(v56, &unk_1009711D0, &unk_1007B1A10);
      Logger.error(_:)();

      v33 = [objc_allocWithZone(UIImage) init];
      v31 = v42;
    }

    (*v48)(v51, v55);
    [v33 size];
    if (qword_10096E8D8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for AnnotationImagesLayout.Metrics();
    sub_1000056A8(v35, qword_1009D29A0);
    AnnotationImagesLayout.Metrics.artworkSize.getter();
    v36 = v46;
    Artwork.crop.getter();
    Artwork.Crop.preferredContentMode.getter();
    (*v44)(v36, v47);
    CGSize.fitting(_:mode:)();
    type metadata accessor for LayoutViewPlaceholder();
    swift_allocObject();
    LayoutViewPlaceholder.init(representing:)();

    v8 = v50;
    v21 = v43;
LABEL_8:

    ++v20;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  while (v54 != v20);
  v19 = v57;
LABEL_28:
  sub_1002A5678(v19);

  if (qword_10096E8D8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for AnnotationImagesLayout.Metrics();
  sub_1000056A8(v37, qword_1009D29A0);
  static AnnotationImagesLayout.measurements(for:fitting:metrics:in:)();
}

char *sub_100549970(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_pageView;
  type metadata accessor for ArcadeDownloadPackCategoriesPageView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_continueButton;
  *&v2[v6] = [objc_opt_self() boldButton];
  v7 = OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_skipButton;
  *&v2[v7] = [objc_opt_self() linkButton];
  *&v2[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_presenter] = a1;
  v8 = *&v2[v5];
  swift_retain_n();
  v9 = v8;

  v10 = sub_10054A374(a1, v9, a2, v2, &off_1008C4888);
  sub_10054A328(&qword_10098B558, "݅\r");
  v11 = v10;

  dispatch thunk of ArcadeDownloadPackCategoriesPagePresenter.view.setter();

  [*&v11[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_continueButton] addTarget:v11 action:"didTapContinueButton" forControlEvents:64];
  [*&v11[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_skipButton] addTarget:v11 action:"didTapSkipButton" forControlEvents:64];

  return v11;
}

void sub_100549CAC(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for ArtworkLoader();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_100486524(a1, v17, sub_10054A474, v4);

  v5 = *&v1[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_continueButton];
  ArcadeDownloadPackCategoriesPage.primaryAction.getter();
  Action.title.getter();
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  [v5 setTitle:v8 forState:0];

  v9 = *&v2[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_skipButton];
  ArcadeDownloadPackCategoriesPage.dismissAction.getter();
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

  v13 = String._bridgeToObjectiveC()();
  [v5 setAccessibilityIdentifier:v13];

  v14 = String._bridgeToObjectiveC()();
  [v9 setAccessibilityIdentifier:v14];

  v15 = [v2 buttonTray];
  [v15 addButton:v5];

  v16 = [v2 buttonTray];
  [v16 addButton:v9];

  sub_1005D9478();
}

double sub_100549F4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;

    dispatch thunk of ArcadeDownloadPackCategoriesPagePresenter.toggle(category:)();
  }

  return result;
}

id sub_100549FCC()
{
  v1 = [v0 buttonTray];
  ArcadeDownloadPackCategoriesPagePresenterViewState.countTitle.getter();
  v2 = String._bridgeToObjectiveC()();

  [v1 setCaptionText:v2 style:2];

  v3 = ArcadeDownloadPackCategoriesPagePresenterViewState.categorySelectionEnabled.getter();
  sub_10049A824(v3 & 1);
  v4 = *&v0[OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_continueButton];
  v5 = ArcadeDownloadPackCategoriesPagePresenterViewState.primaryButtonEnabled.getter() & 1;

  return [v4 setEnabled:v5];
}

double sub_10054A0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *&v3[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_objectGraph];
  type metadata accessor for ArcadeDownloadPackSuggestionsPagePresenter();
  swift_allocObject();
  swift_retain_n();

  ArcadeDownloadPackSuggestionsPagePresenter.init(objectGraph:categories:subscriptionStatus:)();
  v6 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackSuggestionsViewController());

  v8 = sub_10042275C(v7, v5);
  v9 = [v4 navigationController];
  if (v9)
  {
    v10 = v9;
    [v9 pushViewController:v8 animated:1];
  }

  return result;
}

void sub_10054A1C4()
{

  v1 = *(v0 + OBJC_IVAR____TtC8AppStore42ArcadeDownloadPackCategoriesViewController_skipButton);
}

uint64_t sub_10054A328(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArcadeDownloadPackCategoriesViewController();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_10054A374(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  *&a4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_overlayViewController] = 0;
  *&a4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_presenter] = a1;
  *&a4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_objectGraph] = a3;
  v7 = &a4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_pageView];
  *v7 = a2;
  *(v7 + 1) = a5;
  v8 = &a4[OBJC_IVAR____TtC8AppStore32ArcadeDownloadPackViewController_lifecycleObserver];
  *(v8 + 3) = type metadata accessor for BasePresenter();
  *(v8 + 4) = &protocol witness table for BasePresenter;
  *v8 = a1;
  swift_retain_n();

  v9 = String._bridgeToObjectiveC()();
  v12.receiver = a4;
  v12.super_class = type metadata accessor for ArcadeDownloadPackViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v9, 0, 0, 2);

  return v10;
}

uint64_t sub_10054A47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v59 = a5;
  v60 = a6;
  v9 = sub_10002849C(&qword_10098B560, &qword_1007D4708);
  __chkstk_darwin(v9 - 8);
  v54 = &v50 - v10;
  v64 = type metadata accessor for Dependency();
  v11 = *(v64 - 8);
  __chkstk_darwin(v64);
  v57 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v50 = &v50 - v14;
  v15 = type metadata accessor for MetricsPipeline();
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v55 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v69 = &v50 - v18;
  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.optional<A>(_:)();
  v19 = v70;
  if (!v70)
  {
    result = dispatch thunk of BaseObjectGraph.noMemberFound<A>(toSatisfy:)();
    __break(1u);
    return result;
  }

  swift_allocObject();

  v58 = v19;
  v20 = ArtworkLoader.init(parent:)();
  v21 = sub_10002849C(&qword_1009844F0, &qword_1007B12D0);
  v22 = *(v11 + 72);
  v63 = v11;
  v23 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v53 = 2 * v22;
  v52 = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1007B1890;
  v67 = v23;
  *&v70 = v20;
  v56 = v20;

  Dependency.init<A>(satisfying:with:)();
  sub_10002849C(&unk_100973270, &unk_1007B4688);
  type metadata accessor for LinkPresentationProvider();
  *&v70 = swift_allocObject();
  swift_allocObject();
  *&v70 = LinkLoader.init(_:)();
  Dependency.init<A>(satisfying:with:)();
  v73 = v24;
  v61 = a4;
  v62 = a1;
  if (a2)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      swift_unknownObjectRetain();
      dispatch thunk of MetricsPagePresenter.metricsPipeline.getter();
      v25 = dispatch thunk of MetricsPagePresenter.impressionsTracker.getter();
      v51 = v26;
      v66 = v25;
      swift_unknownObjectRetain();
      v27 = dispatch thunk of MetricsPagePresenter.impressionsCalculator.getter();
      swift_unknownObjectRelease();
      goto LABEL_7;
    }
  }

  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  ASKBagContract.impressionableViewablePercentage.getter();
  inject<A, B>(_:from:)();
  type metadata accessor for BasicImpressionsTracker();
  ASKBagContract.impressionableThreshold.getter();
  v28 = BasicImpressionsTracker.__allocating_init(threshold:)();
  type metadata accessor for ImpressionsCalculator();
  swift_allocObject();
  swift_retain_n();
  v66 = v28;
  v27 = ImpressionsCalculator.init(impressionableThreshold:tracker:)();

  if (a2)
  {
    v51 = &protocol witness table for BasicImpressionsTracker;
LABEL_7:
    swift_getObjectType();
    v29 = swift_conformsToProtocol2();
    v65 = v27;
    if (v29)
    {
      type metadata accessor for InlineUnifiedMessagePresenter();
      swift_getObjectType();
      swift_unknownObjectRetain();

      *&v70 = dispatch thunk of InlineUnifiedMessageProvidingPresenter.inlineUnifiedMessagePresenter.getter();
      v30 = v50;
      Dependency.init<A>(satisfying:with:)();
      v32 = *(v24 + 16);
      v31 = *(v24 + 24);
      if (v32 >= v31 >> 1)
      {
        v24 = sub_10003474C((v31 > 1), v32 + 1, 1, v24);
      }

      v33 = v67;
      swift_unknownObjectRelease();
      *(v24 + 16) = v32 + 1;
      (*(v63 + 32))(v24 + v33 + v32 * v22, v30, v64);
      v73 = v24;
    }

    else
    {
    }

    goto LABEL_13;
  }

  v51 = &protocol witness table for BasicImpressionsTracker;
  v65 = v27;
LABEL_13:
  v50 = (8 * v22);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_1007B5370;
  type metadata accessor for VideoViewManager();
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  v34 = v68;
  v35 = v69;
  v36 = *(v68 + 16);
  v37 = v54;
  v36(v54, v69, v15);
  (*(v34 + 56))(v37, 0, 1, v15);
  swift_allocObject();
  *&v70 = VideoViewManager.init(networkInquiry:metricsPipeline:)();
  Dependency.init<A>(satisfying:with:)();
  v38 = type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for AutoPlayVideoSettingsManager();
  v39 = static AutoPlayVideoSettingsManager.shared.getter();
  dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter();

  v40 = v55;
  v36(v55, v35, v15);
  v41 = objc_allocWithZone(v38);
  *&v70 = VideoPlaybackCoordinator.init(isGlobalAutoPlayEnabled:metricsPipeline:)();
  Dependency.init<A>(satisfying:with:)();
  *&v70 = [objc_allocWithZone(type metadata accessor for PlaybackCoordinator()) init];
  Dependency.init<A>(satisfying:with:)();
  v36(v40, v35, v15);
  Dependency.init<A>(satisfying:with:)();
  sub_10002849C(&qword_100977128, &qword_1007BC2F8);
  *&v70 = v66;
  *(&v70 + 1) = v51;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for ImpressionsCalculator();
  *&v70 = v65;
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for TodayCardOverlayReusePool();
  swift_allocObject();
  *&v70 = sub_100472D20(25);
  Dependency.init<A>(satisfying:with:)();
  type metadata accessor for TodayCardGridTracker();
  v42 = swift_allocObject();
  *(v42 + 16) = sub_100398804(_swiftEmptyArrayStorage);
  *&v70 = v42;
  Dependency.init<A>(satisfying:with:)();
  sub_100394804(v52);
  type metadata accessor for ThreeDimensionalAppIconSnapshotter();
  swift_allocObject();

  *&v70 = ThreeDimensionalAppIconSnapshotter.init(_:)();
  v43 = v57;
  Dependency.init<A>(satisfying:with:)();
  v44 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v44 = sub_10003474C(0, *(v44 + 2) + 1, 1, v44);
  }

  v45 = v61;
  v47 = *(v44 + 2);
  v46 = *(v44 + 3);
  if (v47 >= v46 >> 1)
  {
    v44 = sub_10003474C((v46 > 1), v47 + 1, 1, v44);
  }

  *(v44 + 2) = v47 + 1;
  (*(v63 + 32))(&v44[v67 + v47 * v22], v43, v64);
  type metadata accessor for BaseObjectGraph();

  BaseObjectGraph.__allocating_init(name:_:)();
  *&v70 = v44;
  sub_10002849C(&qword_100984B10, &qword_1007CC608);
  sub_100412FF4();
  dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();

  *&v70 = v45;
  dispatch thunk of BaseObjectGraph.adding<A>(allDependencies:)();

  v48 = dispatch thunk of BaseObjectGraph.adding(allDependenciesOf:)();

  swift_unknownObjectRelease();

  (*(v68 + 8))(v69, v15);
  return v48;
}

uint64_t sub_10054AED8(void *a1)
{
  if (*v1 == *a1)
  {
    return static AnyHashable.== infix(_:_:)();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10054AF64()
{
  sub_10003D614(v0 + 16);

  return swift_deallocClassInstance();
}

Swift::Int sub_10054AFC0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 104))(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10054B068(uint64_t a1)
{
  Hasher.init(_seed:)();
  (*(**v1 + 104))(v3);
  return Hasher._finalize()();
}

unint64_t sub_10054B118()
{
  result = qword_10098B620;
  if (!qword_10098B620)
  {
    type metadata accessor for DebugSetting();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098B620);
  }

  return result;
}

double sub_10054B1B8(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - v3;
  v5 = type metadata accessor for AspectRatio();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PageGrid.Direction();
  v72 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = type metadata accessor for PageGrid();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  type metadata accessor for FramedVideo();
  sub_10054BE08(&qword_10098B640, &type metadata accessor for FramedVideo, &protocol conformance descriptor for FramedMedia);
  ItemLayoutContext.typedModel<A>(as:)();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v70 = v5;
  v68 = v4;

  v19 = FramedMedia.isFullWidth.getter();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v20 = (v13 + 8);
  v69 = a1;
  if (v19)
  {
    PageGrid.componentMeasuringSize(spanning:)();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    PageGrid.containerWidth.getter();
    v24 = *v20;
    (*v20)(v18, v12);
    v67 = v24;
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.containerHeight.getter();
    v24(v15, v12);
    v25 = v72;
    (*(v72 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.safeAreaInsets.getter();
    v26 = v67;
    v67(v15, v12);
    (*(v25 + 16))(v71, v11, v7);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v25 + 8))(v11, v7);
    PageGrid.componentMeasuringSize(spanning:)();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = FramedVideo.artwork.getter();
  v29 = v70;
  if (v28)
  {
    Artwork.size.getter();
    v30 = v73;
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    v32 = v31;
    (*(v74 + 8))(v30, v29);
    v33 = FramedMedia.isFullWidth.getter();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = FramedMedia.caption.getter();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  CGSize.subtracting(insets:)();
  FramedMedia.ordinal.getter();
  if (v37)
  {
    if (qword_10096E228 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for FontUseCase();
    sub_1000056A8(v38, qword_1009D15F8);
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v39 = type metadata accessor for Feature();
    v77 = v39;
    v78 = sub_10054BE08(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v40 = sub_1000056E0(aBlock);
    (*(*(v39 - 8) + 104))(v40, enum case for Feature.measurement_with_labelplaceholder(_:), v39);
    isFeatureEnabled(_:)();
    sub_100007000(aBlock);
    static LabelPlaceholderCompatibility.measurements(text:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
    swift_unknownObjectRelease();
  }

  v41 = FramedMedia.caption.getter();

  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v42 = v80;
  v43 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v41];
  v44 = [v41 length];
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = v42;
  *(v45 + 32) = v43;
  *(v45 + 40) = 1;
  v46 = swift_allocObject();
  v46[2] = sub_10010279C;
  v46[3] = v45;
  v78 = sub_1001027AC;
  v79 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v77 = &unk_1008C8108;
  v47 = _Block_copy(aBlock);
  v48 = v42;
  v49 = v43;

  [v41 enumerateAttributesInRange:0 options:v44 usingBlock:{0x100000, v47}];

  _Block_release(v47);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_29;
  }

  v50 = qword_10096E220;
  v46 = v49;
  if (v50 != -1)
  {
LABEL_29:
    swift_once();
  }

  v51 = type metadata accessor for FontUseCase();
  v52 = sub_1000056A8(v51, qword_1009D15E0);
  v53 = *(v51 - 8);
  v54 = v68;
  (*(v53 + 16))(v68, v52, v51);
  (*(v53 + 56))(v54, 0, 1, v51);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  v55 = type metadata accessor for Feature();
  v77 = v55;
  v78 = sub_10054BE08(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v56 = sub_1000056E0(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  isFeatureEnabled(_:)();
  sub_100007000(aBlock);
  static LabelPlaceholderCompatibility.measurements(attributedText:fontUseCase:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:fitting:in:shouldUseLabelPlaceholder:)();
  v58 = v57;

  swift_unknownObjectRelease();
  sub_10025BAF0(v54);
  if (qword_10096E690 != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for StaticDimension();
  sub_1000056A8(v59, qword_1009D2368);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  AnyDimension.topMargin(from:in:)();
  v61 = v60;
  swift_unknownObjectRelease();
  v62 = v58 + v23 + v61;
  if (qword_10096E698 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v59, qword_1009D2380);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  AnyDimension.bottomMargin(from:in:)();
  v64 = v63;
  swift_unknownObjectRelease();

  return v62 + v64;
}

uint64_t sub_10054BE08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10054BE64()
{
  result = qword_10098B648;
  if (!qword_10098B648)
  {
    type metadata accessor for ClearAppUsageDataAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098B648);
  }

  return result;
}

uint64_t sub_10054BEC4(uint64_t a1)
{
  v1 = type metadata accessor for ActionOutcome();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OnDevicePersonalizationDataManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v5 = v10;
  OnDevicePersonalizationDataManager.clearData()();
  type metadata accessor for AppStoreOnDeviceRecommendationsManager();
  inject<A, B>(_:from:)();
  v6 = v10;
  dispatch thunk of AppStoreOnDeviceRecommendationsManager.clearData()();
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  (*(v2 + 104))(v4, enum case for ActionOutcome.performed(_:), v1);
  v7 = Promise.__allocating_init(value:)();

  return v7;
}

uint64_t sub_10054C054(uint64_t a1, uint64_t a2, uint64_t a3)
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

unint64_t sub_10054C22C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v52 = type metadata accessor for PrivacyHeaderLayout.Metrics();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for PrivacyHeaderLayout();
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for LabelPlaceholderCompatibility();
  v11 = *(v62 - 8);
  __chkstk_darwin(v62);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FontUseCase();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E070 != -1)
  {
    swift_once();
  }

  v18 = sub_1000056A8(v14, qword_1009D10D0);
  v58 = a7;
  v19 = [a7 traitCollection];
  v63 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  (*(v15 + 16))(v17, v18, v14);
  v20 = type metadata accessor for DynamicTypeLinkedLabel(0);
  v21 = objc_allocWithZone(v20);
  v22 = sub_1002F5B8C(v17, 0, 0, 1);
  PrivacyHeader.bodyText.getter();
  v23 = LinkableText.linkedSubstrings.getter();
  sub_1000D6F24(v23, sub_1000C17B0);
  v25 = v24;

  v26 = LinkableText.styledText.getter();
  sub_1002F6004(v26, 0, v25);

  result = PrivacyHeader.supplementaryItems.getter();
  v28 = result;
  if (result >> 62)
  {
    v48 = result;
    result = _CocoaArrayWrapper.endIndex.getter();
    v28 = v48;
    v29 = result;
  }

  else
  {
    v29 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = a1;
  v50 = v20;
  v49 = v22;
  if (v29)
  {
    if (v29 < 1)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v60 = v28 & 0xC000000000000001;
    v59 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v31 = _swiftEmptyArrayStorage;
    v61 = v28;
    do
    {
      if (v60)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      PrivacyHeaderSupplementaryItem.bodyText.getter();
      LinkableText.styledText.getter();

      v32 = v63;
      v33 = dispatch thunk of StyledText.asAttributedString(using:)();

      v34 = type metadata accessor for Feature();
      v71 = v34;
      v72 = sub_10054D394(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v35 = sub_1000056E0(v70);
      (*(*(v34 - 8) + 104))(v35, v59, v34);
      v36 = v33;
      v37 = v32;
      isFeatureEnabled(_:)();
      sub_100007000(v70);
      LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
      LabelPlaceholderCompatibility.layoutTextView.getter();
      (*(v11 + 8))(v13, v62);
      sub_10002C0AC(v70, &v67);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_1000337A4(0, v31[2] + 1, 1, v31);
      }

      v39 = v31[2];
      v38 = v31[3];
      if (v39 >= v38 >> 1)
      {
        v31 = sub_1000337A4((v38 > 1), v39 + 1, 1, v31);
      }

      ++v30;

      sub_100007000(v70);
      v31[2] = v39 + 1;
      sub_100005A38(&v67, &v31[5 * v39 + 4]);
    }

    while (v29 != v30);
  }

  else
  {
    v31 = _swiftEmptyArrayStorage;
  }

  v40 = [v58 traitCollection];
  static Separator.thickness(compatibleWith:)();

  v41 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v42 = LayoutViewPlaceholder.init(representing:)();
  if (qword_10096E5A0 != -1)
  {
    swift_once();
  }

  v43 = v52;
  v44 = sub_1000056A8(v52, qword_1009D1FD8);
  (*(v51 + 16))(v54, v44, v43);
  PrivacyHeader.isDetailHeader.getter();
  v71 = v50;
  v72 = &protocol witness table for UIView;
  v70[0] = v49;
  v45 = v49;
  sub_1002A4AF4(v31);

  v68 = v41;
  v69 = &protocol witness table for LayoutViewPlaceholder;
  v66 = &protocol witness table for LayoutViewPlaceholder;
  *&v67 = v42;
  v65 = v41;
  v64 = v42;
  swift_retain_n();
  v46 = v55;
  PrivacyHeaderLayout.init(metrics:isDetailHeader:bodyLabel:supplementaryItemLabels:topSeparatorView:middleSeparatorView:actionButtons:)();
  sub_10054D394(&unk_10097E560, &type metadata accessor for PrivacyHeaderLayout, &protocol conformance descriptor for PrivacyHeaderLayout);
  v47 = v57;
  dispatch thunk of Measurable.measurements(fitting:in:)();

  return (*(v56 + 8))(v46, v47);
}

void *sub_10054CAA8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = v3;
  v7 = type metadata accessor for Separator.Position();
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  __chkstk_darwin(v7);
  v58 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_100970E10, &qword_1007B46A0);
  __chkstk_darwin(v10 - 8);
  v59 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v61 = &v58 - v13;
  v68 = sub_10002849C(&qword_100973288, &qword_1007B4698);
  v14 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v58 - v15;
  v16 = sub_10002849C(&unk_100993020, &qword_1007B46A8);
  __chkstk_darwin(v16 - 8);
  v18 = &v58 - v17;
  v70[0] = PrivacyHeader.bodyText.getter();
  type metadata accessor for LinkableText();
  v19 = type metadata accessor for BaseObjectGraph();
  sub_10054D394(&qword_100973290, &type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
  v69 = a3;
  v66 = v19;
  ComponentModel.pairedWith<A>(objectGraph:)();

  v20 = sub_10002849C(&unk_100993030, &unk_1007B46B0);
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1000C112C(v18, v4 + v21, &unk_100993020, &qword_1007B46A8);
  swift_endAccess();
  sub_1004C3F10();
  sub_10002B894(v18, &unk_100993020, &qword_1007B46A8);
  LOBYTE(v19) = PrivacyHeader.isDetailHeader.getter();
  *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_isDetailHeader) = v19 & 1;
  v22 = *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_bodyLabel);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  if (v19)
  {
    v23 = static UIColor.primaryText.getter();
  }

  else
  {
    v23 = static UIColor.secondaryText.getter();
  }

  v24 = *(v22 + qword_10097F920);
  *(v22 + qword_10097F920) = v23;
  v25 = v23;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    sub_1002F63D4();
  }

  v26 = PrivacyHeader.supplementaryItems.getter();
  if (v26 >> 62)
  {
    v57 = v26;
    v27 = _CocoaArrayWrapper.endIndex.getter();
    v26 = v57;
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = v4;
  v60 = a1;
  if (v27)
  {
    v28 = v26;
    v70[0] = _swiftEmptyArrayStorage;
    result = sub_100144004(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      __break(1u);
      return result;
    }

    v30 = 0;
    v31 = v70[0];
    v32 = v28;
    v65 = v28 & 0xC000000000000001;
    v33 = v28;
    v34 = v27;
    do
    {
      if (v65)
      {
        v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v35 = *(v32 + 8 * v30 + 32);
      }

      v73 = v35;
      type metadata accessor for PrivacyHeaderSupplementaryItem();
      sub_10054D394(&qword_100973298, &type metadata accessor for PrivacyHeaderSupplementaryItem, &protocol conformance descriptor for PrivacyHeaderSupplementaryItem);
      v36 = v67;
      ComponentModel.pairedWith<A>(objectGraph:)();

      v70[0] = v31;
      v38 = v31[2];
      v37 = v31[3];
      if (v38 >= v37 >> 1)
      {
        sub_100144004((v37 > 1), v38 + 1, 1);
        v31 = v70[0];
      }

      ++v30;
      v31[2] = v38 + 1;
      (*(v14 + 32))(v31 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v38, v36, v68);
      v32 = v33;
    }

    while (v34 != v30);

    v4 = v64;
  }

  else
  {

    v31 = _swiftEmptyArrayStorage;
  }

  sub_1004C56C0();
  v39 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems;
  *(v4 + OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_supplementaryItems) = v31;

  sub_1004C41B4();
  if (PrivacyHeader.isDetailHeader.getter())
  {
    v40 = *(v63 + 104);
    v63 += 104;
    v41 = v58;
    LODWORD(v68) = enum case for Separator.Position.top(_:);
    v67 = v40;
    (v40)(v58);
    v42 = type metadata accessor for ZeroDimension();
    v71 = v42;
    v72 = &protocol witness table for ZeroDimension;
    sub_1000056E0(v70);
    static ZeroDimension.zero.getter();
    v43 = v61;
    Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
    v44 = type metadata accessor for Separator();
    v45 = 1;
    v69 = *(*(v44 - 8) + 56);
    v69(v43, 0, 1, v44);
    v46 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_1000C112C(v43, v64 + v46, &unk_100970E10, &qword_1007B46A0);
    swift_endAccess();
    sub_1004C4970();
    v47 = v64;
    sub_10002B894(v43, &unk_100970E10, &qword_1007B46A0);
    if (*(*(v47 + v39) + 16))
    {
      (v67)(v41, v68, v62);
      v71 = v42;
      v72 = &protocol witness table for ZeroDimension;
      sub_1000056E0(v70);
      static ZeroDimension.zero.getter();
      v48 = v59;
      Separator.init(position:leadingInset:trailingInset:verticalOutset:)();
      v45 = 0;
    }

    else
    {
      v48 = v59;
    }

    v69(v48, v45, 1, v44);
    v56 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v47 + v56;
    v55 = v48;
  }

  else
  {
    v49 = type metadata accessor for Separator();
    v50 = *(*(v49 - 8) + 56);
    v48 = v61;
    v50(v61, 1, 1, v49);
    v51 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_topSeparator;
    swift_beginAccess();
    sub_1000C112C(v48, v64 + v51, &unk_100970E10, &qword_1007B46A0);
    swift_endAccess();
    sub_1004C4970();
    sub_10002B894(v48, &unk_100970E10, &qword_1007B46A0);
    v50(v48, 1, 1, v49);
    v52 = v64;
    v53 = OBJC_IVAR____TtC8AppStore31PrivacyHeaderCollectionViewCell_middleSeparator;
    swift_beginAccess();
    v54 = v52 + v53;
    v55 = v48;
  }

  sub_1000C112C(v55, v54, &unk_100970E10, &qword_1007B46A0);
  swift_endAccess();
  sub_1004C4984();
  return sub_10002B894(v48, &unk_100970E10, &qword_1007B46A0);
}

uint64_t sub_10054D394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10054D488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_10054D620()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 panGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0);
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(uint64_t a1)
{
  result = qword_10098B710;
  if (!qword_10098B710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10054D7C8()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0);
  objc_msgSendSuper2(&v7, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 panGestureRecognizer];

    [v3 removeTarget:v0 action:0];
  }

  v4 = [v0 collectionView];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 panGestureRecognizer];

    [v6 addTarget:v0 action:"panGestureRecognizedBy:"];
  }
}

void sub_10054D9D4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v10 - 8);
  v12 = v74 - v11;
  v13 = type metadata accessor for IndexPath();
  v14 = *(v13 - 8);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [v4 collectionView];
  if (!v18)
  {
    goto LABEL_14;
  }

  v19 = v18;
  [v19 bounds];
  v20 = [v4 layoutAttributesForElementsInRect:?];
  if (!v20 || ((v21 = v20, sub_10025A08C(), v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v21, v22 >> 62) ? (v23 = _CocoaArrayWrapper.endIndex.getter()) : (v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10)), , !v23))
  {

LABEL_14:
    v36 = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0);
    v78.receiver = v5;
    v78.super_class = v36;
    objc_msgSendSuper2(&v78, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
    return;
  }

  v24 = type metadata accessor for ScreenshotGalleryCollectionViewFlowLayout(0);
  v77.receiver = v5;
  v77.super_class = v24;
  objc_msgSendSuper2(&v77, "targetContentOffsetForProposedContentOffset:withScrollingVelocity:", a1, a2, a3, a4);
  v26 = v25;
  v27 = [v19 numberOfItemsInSection:0];
  v28 = v27 - 1;
  if (v27 < 1)
  {
    goto LABEL_23;
  }

  v74[1] = v26;
  [v19 frame];
  v30 = v29 + a1;
  [v5 collectionViewContentSize];
  if (v30 >= v31)
  {
    goto LABEL_23;
  }

  v32 = [v19 traitCollection];
  v33 = UITraitCollection.prefersRightToLeftLayouts.getter();

  v76 = v33;
  if (v33)
  {
    v34 = v28;
  }

  else
  {
    v34 = 0;
  }

  if (a1 > 0.0)
  {
    v35 = 0.0;
    v75 = xmmword_1007B1890;
    do
    {
      sub_10002849C(&qword_100980550, &qword_1007B1290);
      v38 = swift_allocObject();
      *(v38 + 16) = v75;
      *(v38 + 32) = 0;
      *(v38 + 40) = v34;
      IndexPath.init(arrayLiteral:)();
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      (*(v14 + 8))(v17, v13);
      v40 = [v5 layoutAttributesForItemAtIndexPath:isa];

      if (!v40)
      {
        goto LABEL_23;
      }

      [v40 bounds];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;

      v79.origin.x = v42;
      v79.origin.y = v44;
      v79.size.width = v46;
      v79.size.height = v48;
      Width = CGRectGetWidth(v79);
      if (v35 + Width * 0.5 >= a1)
      {
        break;
      }

      [v5 minimumLineSpacing];
      if (v76)
      {
        v37 = __OFSUB__(v34--, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_45;
        }
      }

      else
      {
        v37 = __OFADD__(v34++, 1);
        if (v37)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      v35 = v35 + Width + v50;
    }

    while (v35 < a1);
  }

  v51 = OBJC_IVAR____TtC8AppStore41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
  swift_beginAccess();
  sub_10022BA04(v5 + v51, v12);
  if ((*(v14 + 48))(v12, 1, v13))
  {
    sub_10022BA74(v12);
    v52 = &selRef__setDefaultAttributes_;
    goto LABEL_40;
  }

  v53 = IndexPath.item.getter();
  sub_10022BA74(v12);
  v52 = &selRef__setDefaultAttributes_;
  if (v34 != v53)
  {
    goto LABEL_40;
  }

  if (!((a3 >= 0.0) | v76 & 1))
  {
LABEL_31:
    if (!__OFSUB__(v34, 1))
    {
      v34 = (v34 - 1) & ~((v34 - 1) >> 63);
      goto LABEL_40;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (a3 <= 0.0)
  {
    if (a3 < 0.0 && ((v76 ^ 1) & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_40:
    sub_10002849C(&qword_100980550, &qword_1007B1290);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1007B1890;
    *(v55 + 32) = 0;
    *(v55 + 40) = v34;
    IndexPath.init(arrayLiteral:)();
    v56 = IndexPath._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v17, v13);
    v57 = [v5 layoutAttributesForItemAtIndexPath:v56];

    if (v57)
    {
      [v57 frame];
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v65 = v64;

      [v19 v52[378]];
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;

      v80.origin.x = v67;
      v80.origin.y = v69;
      v80.size.width = v71;
      v80.size.height = v73;
      CGRectGetWidth(v80);
      v81.origin.x = v59;
      v81.origin.y = v61;
      v81.size.width = v63;
      v81.size.height = v65;
      CGRectGetWidth(v81);

      return;
    }

LABEL_23:

    return;
  }

  if (v76)
  {
    goto LABEL_31;
  }

LABEL_35:
  v54 = [v19 numberOfItemsInSection:0];
  if (__OFSUB__(v54, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!__OFADD__(v34, 1))
  {
    if (v34 + 1 >= v54 - 1)
    {
      v34 = v54 - 1;
    }

    else
    {
      ++v34;
    }

    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
}

id sub_10054E078(void *a1)
{
  v3 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = __chkstk_darwin(v6).n128_u64[0];
  v9 = &v30 - v8;
  result = [a1 state];
  if (result == 1)
  {
    v11 = [v1 collectionView];
    if (v11)
    {
      v12 = v11;
      v13 = [v1 collectionView];
      if (v13)
      {
        v14 = v13;
        [v14 bounds];
        MidX = CGRectGetMidX(v31);
        [v14 bounds];
        v17 = v16;
        v19 = v18;
        v21 = v20;
        v23 = v22;

        v32.origin.x = v17;
        v32.origin.y = v19;
        v32.size.width = v21;
        v32.size.height = v23;
        MidY = CGRectGetMidY(v32);
      }

      else
      {
        MidX = 0.0;
        MidY = 0.0;
      }

      v26 = [v12 indexPathForItemAtPoint:{MidX, MidY}];

      if (v26)
      {
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v27 = type metadata accessor for IndexPath();
        (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
      }

      else
      {
        v28 = type metadata accessor for IndexPath();
        (*(*(v28 - 8) + 56))(v5, 1, 1, v28);
      }

      sub_1003CB070(v5, v9);
    }

    else
    {
      v25 = type metadata accessor for IndexPath();
      (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    }

    v29 = OBJC_IVAR____TtC8AppStore41ScreenshotGalleryCollectionViewFlowLayout_indexPathAtInitialScroll;
    swift_beginAccess();
    sub_1000F4070(v9, v1 + v29);
    return swift_endAccess();
  }

  return result;
}

id sub_10054E380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

id sub_10054E3C4(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002E9BD4;
  aBlock[3] = &unk_1008C8248;
  v5 = _Block_copy(aBlock);

  v11.receiver = v3;
  v11.super_class = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v6 = objc_msgSendSuper2(&v11, "initWithSectionProvider:configuration:", v5, a3);
  _Block_release(v5);
  type metadata accessor for SearchTransparencyView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = v6;
  static UICollectionReusableView.elementKind.getter();
  v9 = String._bridgeToObjectiveC()();

  [v8 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v9];

  return v8;
}

double sub_10054E5B8()
{
  v1 = v0;
  v2 = type metadata accessor for PageGrid();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v28 - v7;
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v28.receiver = v0;
  v28.super_class = v12;
  objc_msgSendSuper2(&v28, "collectionViewContentSize");
  v14 = v13;
  v15 = [v0 collectionView];
  if (!v15)
  {
    return v14;
  }

  v16 = v15;
  v17 = [v0 collectionView];
  if (!v17 || (v18 = v17, v19 = [v17 delegate], v18, !v19))
  {

    return v14;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return v14;
  }

  sub_10027356C(v16);
  swift_unknownObjectRelease();
  (*(v3 + 32))(v11, v8, v2);
  v20 = [v1 collectionView];
  if (!v20 || (v21 = v20, v22 = [v20 delegate], v21, !v22))
  {

LABEL_12:
    (*(v3 + 8))(v11, v2);
    return v14;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v23 = dispatch thunk of SearchResultsDiffablePagePresenter.transparencyLink.getter();
  if (v23)
  {
    v24 = v23;
    sub_10027356C(v16);
    static CGFloat.allColumns.getter();
    PageGrid.componentMeasuringSize(spanning:)();
    sub_100273BA4(v25, v26, v24, v16);
    swift_unknownObjectRelease();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  PageGrid.interRowSpace.getter();

  (*(v3 + 8))(v11, v2);
  return v14;
}

uint64_t sub_10054E8F4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v64 = sub_10002849C(&qword_100980740, &unk_1007C7B20);
  __chkstk_darwin(v64);
  v8 = &v53 - v7;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v68 = &v53 - v14;
  v15 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v15 - 8);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v53 - v19;
  __chkstk_darwin(v21);
  v66 = &v53 - v22;
  v23 = sub_10054F3C0(a1);
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v70.receiver = v4;
  v70.super_class = v30;
  result = objc_msgSendSuper2(&v70, "layoutAttributesForElementsInRect:", v23, v25, v27, v29);
  if (!result)
  {
    return result;
  }

  v32 = result;
  sub_10025A08C();
  v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v33 = [v5 collectionView];
  if (!v33)
  {
    return v58;
  }

  v34 = v33;
  v35 = [v33 delegate];

  if (!v35)
  {
    return v58;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    swift_unknownObjectRelease();
    return v58;
  }

  sub_1002733FC(v66);
  v69 = _swiftEmptyArrayStorage;
  if (v58 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_30:
    v52 = _swiftEmptyArrayStorage;
LABEL_31:
    swift_unknownObjectRelease();

    sub_10002B894(v66, &unk_10097DAE0, &qword_1007B5CA0);
    return v52;
  }

  result = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_30;
  }

LABEL_7:
  v53 = v35;
  v57 = v17;
  v55 = v12;
  v65 = v5;
  if (result >= 1)
  {
    v36 = 0;
    v37 = v58;
    v61 = (v10 + 16);
    v62 = v58 & 0xC000000000000001;
    v60 = (v10 + 56);
    v38 = (v10 + 48);
    v54 = (v10 + 32);
    v67 = (v10 + 8);
    v59 = (v10 + 48);
    v63 = result;
    while (1)
    {
      v39 = v62 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v37 + 8 * v36 + 32);
      v40 = v39;
      v41 = [v39 indexPath];
      v42 = v68;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      (*v61)(v20, v42, v9);
      (*v60)(v20, 0, 1, v9);
      v43 = *(v64 + 48);
      sub_10022BA04(v20, v8);
      sub_10022BA04(v66, &v8[v43]);
      v44 = *v38;
      if ((*v38)(v8, 1, v9) == 1)
      {
        break;
      }

      v45 = v57;
      sub_10022BA04(v8, v57);
      if (v44(&v8[v43], 1, v9) == 1)
      {
        sub_10002B894(v20, &unk_10097DAE0, &qword_1007B5CA0);
        (*v67)(v45, v9);
        v37 = v58;
LABEL_17:
        sub_10002B894(v8, &qword_100980740, &unk_1007C7B20);
        goto LABEL_23;
      }

      v46 = v55;
      (*v54)(v55, &v8[v43], v9);
      sub_1003288F8();
      v56 = dispatch thunk of static Equatable.== infix(_:_:)();
      v47 = *v67;
      (*v67)(v46, v9);
      sub_10002B894(v20, &unk_10097DAE0, &qword_1007B5CA0);
      v47(v45, v9);
      sub_10002B894(v8, &unk_10097DAE0, &qword_1007B5CA0);
      v37 = v58;
      if (v56)
      {
        goto LABEL_19;
      }

LABEL_23:
      sub_10054F4D4(v40);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v36;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*v67)(v68, v9);
      v38 = v59;
      if (v63 == v36)
      {
        v52 = v69;
        goto LABEL_31;
      }
    }

    sub_10002B894(v20, &unk_10097DAE0, &qword_1007B5CA0);
    if (v44(&v8[v43], 1, v9) == 1)
    {
      sub_10002B894(v8, &unk_10097DAE0, &qword_1007B5CA0);
LABEL_19:
      type metadata accessor for SearchTransparencyView();
      static UICollectionReusableView.elementKind.getter();
      v48 = String._bridgeToObjectiveC()();

      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v50 = [v65 layoutAttributesForDecorationViewOfKind:v48 atIndexPath:isa];

      if (v50)
      {
        v51 = v50;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      goto LABEL_23;
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

double sub_10054F3C0(double a1)
{
  v3 = [v1 collectionView];
  if (v3)
  {
    v4 = v3;
    v5 = [v1 collectionView];
    if (v5 && (v6 = v5, v7 = [v5 delegate], v6, v7))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_10027384C(v4);
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

  return a1;
}

id sub_10054F4D4(void *a1)
{
  v2 = v1;
  v28 = a1;
  v3 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v13 = &v27 - v12;
  v14 = [v1 collectionView];
  if (v14)
  {
    v15 = v14;
    v16 = [v1 collectionView];
    if (v16 && (v17 = v16, v18 = [v16 delegate], v17, v18))
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_1002733FC(v5);
        swift_unknownObjectRelease();
        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {

LABEL_9:
          sub_10002B894(v5, &unk_10097DAE0, &qword_1007B5CA0);
          goto LABEL_10;
        }

        (*(v7 + 32))(v13, v5, v6);
        v21 = [v28 indexPath];
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v21) = static IndexPath.> infix(_:_:)();
        v22 = *(v7 + 8);
        v22(v9, v6);
        if ((v21 & 1) == 0)
        {
          v22(v13, v6);

          goto LABEL_10;
        }

        sub_10025A08C();
        v23 = NSCopying.makeCopy()();
        v24 = [v2 collectionView];
        if (v24)
        {
          v25 = v24;
          v26 = [v24 delegate];

          if (v26)
          {
            swift_getObjectType();
            if (!swift_conformsToProtocol2())
            {

              swift_unknownObjectRelease();
              goto LABEL_20;
            }

            sub_10027384C(v15);
            swift_unknownObjectRelease();
            [v23 frame];
            [v23 setFrame:?];
          }
        }

LABEL_20:
        v22(v13, v6);
        return v23;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v7 + 56))(v5, 1, 1, v6);
    goto LABEL_9;
  }

LABEL_10:
  v19 = v28;

  return v19;
}

id sub_10054F8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v70 = a2;
  v71 = a1;
  v6 = type metadata accessor for PageGrid();
  v66 = *(v6 - 8);
  v67 = v6;
  __chkstk_darwin(v6);
  v64 = &v60[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v65 = &v60[-v9];
  v10 = type metadata accessor for IndexPath();
  v69 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v60[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_10002849C(&qword_100980740, &unk_1007C7B20);
  __chkstk_darwin(v13);
  v15 = &v60[-v14];
  v16 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v60[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v60[-v20];
  __chkstk_darwin(v22);
  v24 = &v60[-v23];
  v68 = a3;
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v26 = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  v72.receiver = v4;
  v72.super_class = v26;
  v27 = objc_msgSendSuper2(&v72, "layoutAttributesForItemAtIndexPath:", isa);

  if (!v27)
  {
    return 0;
  }

  v28 = [v4 collectionView];
  if (!v28)
  {
    goto LABEL_19;
  }

  v63 = v28;
  v29 = [v4 collectionView];
  if (!v29 || (v30 = v29, v31 = [v29 delegate], v30, !v31))
  {

LABEL_19:
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  v62 = v31;
  type metadata accessor for SearchTransparencyView();
  if (static UICollectionReusableView.elementKind.getter() == v71 && v32 == v70)
  {
  }

  else
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v33 & 1) == 0)
    {
LABEL_18:

      swift_unknownObjectRelease();
      goto LABEL_19;
    }
  }

  v34 = v69;
  (*(v69 + 16))(v24, v68, v10);
  (*(v34 + 56))(v24, 0, 1, v10);
  sub_1002733FC(v21);
  v35 = *(v13 + 48);
  sub_10022BA04(v24, v15);
  sub_10022BA04(v21, &v15[v35]);
  v36 = *(v34 + 48);
  if (v36(v15, 1, v10) != 1)
  {
    sub_10022BA04(v15, v18);
    if (v36(&v15[v35], 1, v10) != 1)
    {
      v38 = v69;
      (*(v69 + 32))(v12, &v15[v35], v10);
      sub_1003288F8();
      v61 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v38 + 8);
      v39(v12, v10);
      sub_10002B894(v21, &unk_10097DAE0, &qword_1007B5CA0);
      sub_10002B894(v24, &unk_10097DAE0, &qword_1007B5CA0);
      v39(v18, v10);
      sub_10002B894(v15, &unk_10097DAE0, &qword_1007B5CA0);
      if (v61)
      {
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    sub_10002B894(v21, &unk_10097DAE0, &qword_1007B5CA0);
    sub_10002B894(v24, &unk_10097DAE0, &qword_1007B5CA0);
    (*(v69 + 8))(v18, v10);
    goto LABEL_17;
  }

  sub_10002B894(v21, &unk_10097DAE0, &qword_1007B5CA0);
  sub_10002B894(v24, &unk_10097DAE0, &qword_1007B5CA0);
  if (v36(&v15[v35], 1, v10) != 1)
  {
LABEL_17:
    sub_10002B894(v15, &qword_100980740, &unk_1007C7B20);
    goto LABEL_18;
  }

  sub_10002B894(v15, &unk_10097DAE0, &qword_1007B5CA0);
LABEL_22:
  v40 = String._bridgeToObjectiveC()();
  v41 = IndexPath._bridgeToObjectiveC()().super.isa;
  v42 = [objc_opt_self() layoutAttributesForDecorationViewOfKind:v40 withIndexPath:v41];

  v43 = v65;
  v44 = v63;
  sub_10027356C(v63);
  PageGrid.horizontalMargins.getter();
  v46 = v45;
  [v27 frame];
  MaxY = CGRectGetMaxY(v73);
  PageGrid.interRowSpace.getter();
  v49 = v48;
  v50 = dispatch thunk of SearchResultsDiffablePagePresenter.transparencyLink.getter();
  if (v50)
  {
    v51 = v50;
    v52 = v64;
    sub_10027356C(v44);
    static CGFloat.allColumns.getter();
    PageGrid.componentMeasuringSize(spanning:)();
    v55 = sub_100273BA4(v53, v54, v51, v44);
    v57 = v56;

    v59 = v66;
    v58 = v67;
    (*(v66 + 8))(v52, v67);
  }

  else
  {
    v55 = 0.0;
    v57 = 0.0;
    v59 = v66;
    v58 = v67;
  }

  [v42 setFrame:{v46, MaxY + v49, v55, v57}];
  swift_unknownObjectRelease();

  (*(v59 + 8))(v43, v58);
  return v42;
}

id sub_10055015C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchResultsCollectionCompositionalLayout();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1005501B4()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t type metadata accessor for TodayCardLabelsView(uint64_t a1)
{
  result = qword_10098B808;
  if (!qword_10098B808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1005502C4()
{
  [v0 layoutIfNeeded];
  v1 = v0[qword_10098B7B8];
  v2 = *&v0[qword_10098B7C8];
  if ([*&v2[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v3 = *&v0[qword_10098B7D0], (objc_msgSend(*&v3[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label], "isHidden")))
  {
    v4 = *&v0[qword_10098B7D0];
    v5 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
    if ([*&v4[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label] isHidden] & 1) != 0 || (v0[qword_10098B7E8])
    {
      if (([*&v4[v5] isHidden] & 1) != 0 || v0[qword_10098B7E8] != 1)
      {
        v10 = *&v0[qword_10098B7D8];
        if (([v10 isHidden] & 1) == 0)
        {
          [v10 frame];
LABEL_19:
          MaxY = CGRectGetMaxY(*&v6);
          return MaxY + 20.0;
        }

        [v0 bounds];
      }

      else
      {
        [v4 frame];
        if (v1 != 4)
        {
          goto LABEL_19;
        }
      }

      return CGRectGetMinY(*&v6);
    }

    else
    {
      [v4 frame];
      result = CGRectGetMinY(v18);
      if (v1 != 4)
      {
        return result + 20.0;
      }
    }
  }

  else
  {
    if (v1 != 4)
    {
      [v3 frame];
      MaxY = CGRectGetMinY(v19);
      return MaxY + 20.0;
    }

    [v2 frame];

    return CGRectGetMaxY(*&v12);
  }

  return result;
}

uint64_t sub_1005504B4()
{
  v0 = sub_1005525E8();
  v1 = v0;
  v2 = v0 & 0xFFFFFFFFFFFFFF8;
  if (v0 >> 62)
  {
LABEL_21:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v3 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v9 = [v7 text];
      if (v9)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_22;
      }
    }

    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v12;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_100033E38(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_100033E38((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v15 = &v5[16 * v14];
    *(v15 + 4) = v11;
    *(v15 + 5) = v18;
  }

  while (v4 != v3);
LABEL_22:

  sub_10002849C(&unk_100977380, &qword_1007BB880);
  sub_10015872C();
  v16 = BidirectionalCollection<>.joined(separator:)();

  return v16;
}

void sub_10055069C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange;
  v3 = *(v0 + qword_10098B7C8) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange;
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);

    v4(v6);
    sub_10001F63C(v4, v5);
    v2 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v7 = *(v1 + qword_10098B7D0) + v2;
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 8);

    v8(v10);
    sub_10001F63C(v8, v9);
    v2 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_applyPendingFontChange;
  }

  v11 = *(v1 + qword_10098B7E0) + v2;
  v12 = *v11;
  if (*v11)
  {
    v13 = *(v11 + 8);

    v12(v14);

    sub_10001F63C(v12, v13);
  }
}

void sub_100550798(uint64_t a1, char a2)
{
  v4 = type metadata accessor for TodayCard.Style();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v5 + 104))(v8, enum case for TodayCard.Style.white(_:), v4, v6);
    sub_100553A5C(&qword_100972DC0, &type metadata accessor for TodayCard.Style, &protocol conformance descriptor for TodayCard.Style);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v10[2] == v10[0] && v10[3] == v10[1])
    {
      v9 = 1;
    }

    else if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    (*(v5 + 8))(v8, v4);

    [v2 setOverrideUserInterfaceStyle:v9];
    sub_100551E70();
  }

  else
  {
    [v2 setOverrideUserInterfaceStyle:{0, v6.n128_f64[0]}];

    sub_100551E70();
  }
}

void sub_1005509BC()
{
  if (qword_10096E8E0 != -1)
  {
    swift_once();
  }

  v0 = qword_10098B758;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];
  v5 = objc_opt_self();
  if (v4)
  {
    v6 = [v5 fontWithDescriptor:v4 size:0.0];

    v3 = v4;
  }

  else
  {
    v6 = [v5 fontWithDescriptor:v3 size:0.0];
  }

  qword_10098B760 = v6;
}

id sub_100550B10()
{
  result = [objc_opt_self() systemFontOfSize:43.0 weight:UIFontWeightHeavy];
  qword_10098B778 = result;
  return result;
}

void sub_100550B7C()
{
  if (qword_10096E908 != -1)
  {
    swift_once();
  }

  v0 = qword_10098B780;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 preferredFontDescriptorWithTextStyle:v2];
  v4 = [objc_opt_self() fontWithDescriptor:v3 size:0.0];

  qword_10098B788 = v4;
}

void sub_100550C90(uint64_t a1, void *a2, void **a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    v13 = a3;
    swift_once();
    a3 = v13;
  }

  v6 = *a3;
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 preferredFontDescriptorWithTextStyle:v8];
  v10 = [v9 fontDescriptorWithSymbolicTraits:32770];
  v11 = objc_opt_self();
  if (v10)
  {
    v12 = [v11 fontWithDescriptor:v10 size:0.0];

    v9 = v10;
  }

  else
  {
    v12 = [v11 fontWithDescriptor:v9 size:0.0];
  }

  *a4 = v12;
}

char *sub_100550DDC(uint64_t a1, _OWORD *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v76 = type metadata accessor for AutomationSemantics();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v74 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[qword_10098B7B8] = 7;
  v3[qword_10098B7C0] = 7;
  v7 = qword_10098B7D8;
  *&v3[v7] = [objc_allocWithZone(UIImageView) init];
  v3[qword_10098B7E8] = 0;
  v3[qword_10098B7F8] = 0;
  v3[qword_10098B800] = 0;
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = *(a1 + 40);
  v11 = *(a1 + 56);
  v12 = *(a1 + 72);
  v13 = *(a1 + 88);
  v14 = &v3[qword_10098B7F0];
  v15 = *(a1 + 16);
  *v14 = *a1;
  v14[1] = v15;
  v16 = *(a1 + 80);
  v14[4] = *(a1 + 64);
  v14[5] = v16;
  v17 = *(a1 + 48);
  v14[2] = *(a1 + 32);
  v14[3] = v17;
  v18 = &v3[qword_10098B7B0];
  v19 = a2[1];
  *v18 = *a2;
  v18[1] = v19;
  *(v18 + 25) = *(a2 + 25);
  sub_10002849C(&qword_10098B860, &qword_1007D4B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B73E0;
  *(inited + 32) = 5;
  v21 = qword_10096E8F8;
  v82 = v8;

  v81 = v9;

  v80 = v10;

  v79 = v11;

  v78 = v12;

  v77 = v13;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_10098B770;
  *(inited + 40) = qword_10098B770;
  *(inited + 48) = 2;
  *(inited + 56) = v22;
  *(inited + 64) = 3;
  *(inited + 72) = v22;
  *(inited + 80) = 0;
  *(inited + 88) = v22;
  *(inited + 96) = 1;
  *(inited + 104) = v22;
  *(inited + 112) = 6;
  v23 = qword_10096E930;
  v24 = v22;
  if (v23 != -1)
  {
    swift_once();
  }

  v25 = qword_10098B7A8;
  *(inited + 120) = qword_10098B7A8;
  *(inited + 128) = 4;
  v26 = qword_10096E920;
  v27 = v25;
  if (v26 != -1)
  {
    swift_once();
  }

  v28 = qword_10098B798;
  *(inited + 136) = qword_10098B798;
  v29 = sub_100397304(inited);
  swift_setDeallocating();
  v30 = v28;
  sub_10002849C(&qword_10098B868, &qword_1007D4B08);
  swift_arrayDestroy();
  v31 = type metadata accessor for TodayTransitioningLabelView();
  v32 = objc_allocWithZone(v31);
  *&v3[qword_10098B7D0] = sub_10006CFBC(v29, v24);
  v33 = sub_100397304(_swiftEmptyArrayStorage);
  if (qword_10096E910 != -1)
  {
    swift_once();
  }

  v34 = qword_10098B788;
  objc_allocWithZone(v31);
  *&v3[qword_10098B7E0] = sub_10006CFBC(v33, v34);
  v35 = sub_100397304(_swiftEmptyArrayStorage);
  if (qword_10096E8E8 != -1)
  {
    swift_once();
  }

  v36 = qword_10098B760;
  v37 = objc_allocWithZone(v31);
  *&v3[qword_10098B7C8] = sub_10006CFBC(v35, v36);
  v88.receiver = v3;
  v88.super_class = ObjectType;
  v38 = objc_msgSendSuper2(&v88, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v39 = [v38 layer];
  [v39 setAllowsGroupBlending:0];

  v40 = qword_10098B7D0;
  *(*&v38[qword_10098B7D0] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v41 = *&v38[qword_10098B7C8];
  v42 = qword_10098B7C8;
  v73 = qword_10098B7C8;
  *(v41 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v43 = *&v38[qword_10098B7E0];
  v44 = qword_10098B7E0;
  v72 = qword_10098B7E0;
  *(v43 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v45 = *(v41 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  sub_100005744(0, &qword_100970180, UIColor_ptr);
  v46 = v45;
  v47 = static UIColor.secondaryText.getter();
  [v46 setTextColor:v47];

  v48 = *&v38[v40];
  v71 = v40;
  v49 = *(v48 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v50 = static UIColor.primaryText.getter();
  [v49 setTextColor:v50];

  v51 = *(*&v38[v44] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v52 = static UIColor.secondaryText.getter();
  [v51 setTextColor:v52];

  v53 = qword_10098B7D8;
  [*&v38[qword_10098B7D8] setContentMode:1];
  v54 = *(*&v38[v42] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v55 = v54;
  v56 = v74;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v84, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v86, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v57 = *(v75 + 8);
  v58 = v76;
  v57(v56, v76);
  v59 = *(*&v38[v40] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v60 = v59;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v84, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v86, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v57(v56, v58);
  v61 = *&v38[v53];
  v62 = v53;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v63 = v61;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v84, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v86, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v57(v56, v58);
  v64 = v72;
  v65 = *(*&v38[v72] + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v66 = v65;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(&v84, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&v86, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();

  v57(v56, v58);
  [v38 addSubview:*&v38[v73]];
  [v38 addSubview:*&v38[v71]];
  [v38 addSubview:*&v38[v62]];
  [v38 addSubview:*&v38[v64]];
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v67 = swift_allocObject();
  v76 = xmmword_1007B10D0;
  *(v67 + 16) = xmmword_1007B10D0;
  *(v67 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v67 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(&v87 + 1) = ObjectType;
  *&v86 = v38;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_100007000(&v86);
  v68 = swift_allocObject();
  *(v68 + 16) = v76;
  *(v68 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v68 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v38;
}

id sub_10055189C()
{
  v1 = v0;
  v2 = *&v0[qword_10098B7C8];
  v3 = qword_10098B7B8;
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory);
  v5 = v1[qword_10098B7B8];
  *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory) = v5;
  sub_10006D97C(v4, v5);
  v6 = *&v1[qword_10098B7D0];
  v7 = *(v6 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory);
  v8 = v1[v3];
  *(v6 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory) = v8;
  sub_10006D97C(v7, v8);
  v9 = *&v1[qword_10098B7E0];
  v10 = *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory);
  v11 = v1[v3];
  *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_sizeCategory) = v11;
  sub_10006D97C(v10, v11);

  return [v1 setNeedsLayout];
}

id sub_100551950()
{
  v1 = v0;
  v2 = *&v0[qword_10098B7C8];
  v3 = &v0[qword_10098B7F0];
  v4 = *&v0[qword_10098B7F0];

  v5 = [v0 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = v4(v6);

  *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_numberOfLines) = v7;
  v8 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
  if (!v8)
  {
    v8 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  }

  [v8 setNumberOfLines:v7];
  v9 = *&v1[qword_10098B7D0];
  v10 = *(v3 + 10);

  v11 = [v1 traitCollection];
  v12 = [v11 preferredContentSizeCategory];

  v13 = v10(v12);

  *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_numberOfLines) = v13;
  v14 = *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
  if (!v14)
  {
    v14 = *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  }

  [v14 setNumberOfLines:v13];
  v15 = *&v1[qword_10098B7E0];
  v16 = *(v3 + 6);

  v17 = [v1 traitCollection];
  v18 = [v17 preferredContentSizeCategory];

  v19 = v16(v18);

  *(v15 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_numberOfLines) = v19;
  v20 = *(v15 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_fadeInLabel);
  if (v20)
  {
    [v20 setNumberOfLines:v19];
  }

  else
  {
    [*(v15 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label) setNumberOfLines:v19];
  }

  v21 = *(v3 + 2);
  v22 = *(v2 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);

  v23 = [v1 traitCollection];
  v24 = [v23 preferredContentSizeCategory];

  v25 = v21(v24);

  [v22 setMaximumContentSizeCategory:v25];

  v26 = *(v3 + 4);
  v27 = *(v9 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);

  v28 = [v1 traitCollection];
  v29 = [v28 preferredContentSizeCategory];

  v30 = v26(v29);

  [v27 setMaximumContentSizeCategory:v30];

  v31 = *(v3 + 8);
  v32 = *(v15 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);

  v33 = [v1 traitCollection];
  v34 = [v33 preferredContentSizeCategory];

  v35 = v31(v34);

  [v32 setMaximumContentSizeCategory:v35];

  return [v1 setNeedsLayout];
}

void sub_100551D80()
{
  v1 = *(v0 + qword_10098B7C8);
  v2 = *(v0 + qword_10098B800);
  v3 = &OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning;
  *(v1 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning) = v2;
  if (v2 == 1)
  {
    *(*(v0 + qword_10098B7D0) + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning) = 1;
    v4 = *(v0 + qword_10098B7E0);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v5 = *(v0 + qword_10098B7D0);
    *(v5 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning) = v2;
    *(v5 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout) = 0;
    v4 = *(v0 + qword_10098B7E0);
    *(v4 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_isTransitioning) = v2;
    v3 = &OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_labelRequiresUnanimatedLayout;
    LOBYTE(v2) = 0;
  }

  *(v4 + *v3) = v2;
}

void sub_100551E28(void *a1)
{
  v1 = a1;
  sub_100551950();
}

void sub_100551E70()
{
  if ([v0 overrideUserInterfaceStyle])
  {
    [v0 overrideUserInterfaceStyle];
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v1 = String._bridgeToObjectiveC()();

    v2 = [*&v0[qword_10098B7C8] layer];
    [v2 setCompositingFilter:v1];

    v4 = [*&v0[qword_10098B7E0] layer];
    [v4 setCompositingFilter:v1];
  }

  else
  {
    v3 = [*&v0[qword_10098B7C8] layer];
    [v3 setCompositingFilter:0];

    v4 = [*&v0[qword_10098B7E0] layer];
    [v4 setCompositingFilter:0];
  }
}

id sub_100551FDC@<X0>(uint64_t *a1@<X8>)
{
  v20 = *(v1 + qword_10098B7B0 + 16);
  v21 = *(v1 + qword_10098B7B0);
  v3 = *(v1 + qword_10098B7B0 + 32);
  v4 = *(v1 + qword_10098B7C8);
  v5 = *(v1 + qword_10098B7D0);
  v6 = *(v1 + qword_10098B7B0 + 40);
  v7 = *&v5[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];
  v23 = type metadata accessor for DynamicTypeLabel();
  v24 = &protocol witness table for UILabel;
  *&v22 = v7;
  v8 = *(v1 + qword_10098B7D8);
  v9 = v4;
  v10 = v5;
  v11 = v7;
  v12 = [v8 image];
  if (v12)
  {

    v13 = sub_100005744(0, &qword_100973120, UIImageView_ptr);
    v14 = v8;
    v15 = &protocol witness table for UIView;
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v8 = 0;
  }

  v19 = *(v1 + qword_10098B7E0);
  v16 = *(v1 + qword_10098B7E8);
  a1[3] = &type metadata for TodayCardLabelsLayout;
  a1[4] = sub_100553998();
  v17 = swift_allocObject();
  *a1 = v17;
  *(v17 + 16) = v21;
  *(v17 + 32) = v20;
  *(v17 + 48) = v3;
  *(v17 + 56) = v6;
  *(v17 + 64) = v9;
  *(v17 + 72) = v10;
  sub_100005A38(&v22, v17 + 80);
  *(v17 + 120) = v8;
  *(v17 + 128) = 0;
  *(v17 + 136) = 0;
  *(v17 + 144) = v13;
  *(v17 + 152) = v15;
  *(v17 + 160) = v19;
  *(v17 + 168) = v16;

  return v19;
}

void sub_100552188(void *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_10002A400(a1, a1[3]);
  v4 = UIMutableTraits.preferredContentSizeCategory.getter();
  v6 = v3();

  if (v6)
  {
    sub_10002A400(a1, a1[3]);
    v5 = UIMutableTraits.preferredContentSizeCategory.getter();
    if (static UIContentSizeCategory.< infix(_:_:)())
    {
      v6;
    }

    sub_100047650(a1, a1[3]);
    UIMutableTraits.preferredContentSizeCategory.setter();
  }
}

void sub_1005522A4(void *a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  sub_10002A400(a1, a1[3]);
  v4 = UIMutableTraits.preferredContentSizeCategory.getter();
  v6 = v3();

  if (v6)
  {
    sub_10002A400(a1, a1[3]);
    v5 = UIMutableTraits.preferredContentSizeCategory.getter();
    if (static UIContentSizeCategory.< infix(_:_:)())
    {
      v6;
    }

    sub_100047650(a1, a1[3]);
    UIMutableTraits.preferredContentSizeCategory.setter();
  }
}

void sub_1005523C0(void *a1, uint64_t a2)
{
  v3 = *(a2 + 64);
  sub_10002A400(a1, a1[3]);
  v4 = UIMutableTraits.preferredContentSizeCategory.getter();
  v6 = v3();

  if (v6)
  {
    sub_10002A400(a1, a1[3]);
    v5 = UIMutableTraits.preferredContentSizeCategory.getter();
    if (static UIContentSizeCategory.< infix(_:_:)())
    {
      v6;
    }

    sub_100047650(a1, a1[3]);
    UIMutableTraits.preferredContentSizeCategory.setter();
  }
}

id sub_1005524DC(void *a1)
{
  v1 = a1;
  sub_1005504B4();
  v3 = v2;

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100552554(void *a1, uint64_t a2, NSString a3)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a1;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = a1;
  }

  v8.receiver = a1;
  v8.super_class = ObjectType;
  objc_msgSendSuper2(&v8, "setAccessibilityLabel:", a3);
}

void *sub_1005525E8()
{
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B48F0;
  v2 = *(v0 + qword_10098B7C8);
  *(inited + 32) = v2;
  v3 = *(v0 + qword_10098B7D0);
  *(inited + 40) = v3;
  v4 = *(v0 + qword_10098B7E0);
  *(inited + 48) = v4;
  v21 = _swiftEmptyArrayStorage;
  v5 = inited & 0xC000000000000001;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_33;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  for (i = v6; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v10 = i;
    if ([i isHidden] & 1) != 0 || (objc_msgSend(*&v10[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v5)
      {
LABEL_18:
        v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_9;
      }
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      goto LABEL_32;
    }

    v11 = *(inited + 40);
LABEL_9:
    v12 = v11;
    if ([v11 isHidden] & 1) != 0 || (objc_msgSend(*&v12[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label], "isHidden"))
    {

      if (v5)
      {
        break;
      }

      goto LABEL_12;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v5)
    {
      break;
    }

LABEL_12:
    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v13 = *(inited + 48);
      goto LABEL_14;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
  v14 = v13;
  if ([v13 isHidden] & 1) != 0 || (objc_msgSend(*&v14[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label], "isHidden"))
  {
  }

  else
  {
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  if ((v21 & 0x8000000000000000) != 0 || (v21 & 0x4000000000000000) != 0)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (v15)
    {
      goto LABEL_25;
    }

    goto LABEL_35;
  }

  v15 = *(v21 + 16);
  if (!v15)
  {
LABEL_35:

    return _swiftEmptyArrayStorage;
  }

LABEL_25:
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v17 = 0;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v18 = *(v21 + 8 * v17 + 32);
      }

      v19 = v18;
      ++v17;
      v20 = *&v18[OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    while (v15 != v17);

    return _swiftEmptyArrayStorage;
  }

  return result;
}

Class sub_10055295C(void *a1)
{
  v1 = a1;
  v2 = sub_1005525E8();
  sub_1002A62C4(v2);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

void sub_1005529E4(void *a1, uint64_t a2, Class isa, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, isa);
}

double sub_100552AB8()
{

  return result;
}

double sub_100552B80(uint64_t a1)
{

  return result;
}

uint64_t sub_100552C54(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100552C9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100552D28(uint64_t a1)
{
  v2 = type metadata accessor for StringCharacteristics();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972DB8, &unk_1007B3FE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v35 - v10;
  sub_1005539EC(a1, &v35 - v10);
  v12 = *(v3 + 48);
  v13 = v12(v11, 1, v2);
  v36 = v3;
  if (v13 == 1)
  {
    sub_10002B894(v11, &qword_100972DB8, &unk_1007B3FE0);
    v14 = 0;
  }

  else
  {
    static StringCharacteristics.legacyExtraTallCharacters.getter();
    sub_100553A5C(&qword_10097C368, &type metadata accessor for StringCharacteristics, &protocol conformance descriptor for StringCharacteristics);
    v14 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v15 = *(v3 + 8);
    v15(v5, v2);
    v15(v11, v2);
  }

  sub_1005539EC(a1, v8);
  if (v12(v8, 1, v2) != 1)
  {
    static StringCharacteristics.accentedCharacters.getter();
    sub_100553A5C(&qword_10097C368, &type metadata accessor for StringCharacteristics, &protocol conformance descriptor for StringCharacteristics);
    v17 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v18 = *(v36 + 8);
    v18(v5, v2);
    v18(v8, v2);
    if (v14)
    {
      v19 = 52.0;
    }

    else
    {
      v19 = 44.0;
    }

    if ((v14 | v17))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  sub_10002B894(v8, &qword_100972DB8, &unk_1007B3FE0);
  if ((v14 & 1) == 0)
  {
LABEL_11:
    v16 = 0x4042000000000000;
    goto LABEL_12;
  }

  v16 = 0x404A000000000000;
LABEL_12:
  v19 = *&v16;
LABEL_13:
  v20 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v20 setMaximumLineHeight:v19];
  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1E00;
  *(inited + 32) = NSFontAttributeName;
  v22 = qword_10096E900;
  v23 = NSFontAttributeName;
  if (v22 != -1)
  {
    swift_once();
  }

  v24 = qword_10098B778;
  v25 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  *(inited + 40) = v24;
  *(inited + 64) = v25;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v26 = sub_100005744(0, &unk_100976610, NSMutableParagraphStyle_ptr);
  *(inited + 80) = v20;
  *(inited + 104) = v26;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v27 = objc_allocWithZone(NSNumber);
  v28 = v24;
  v29 = NSParagraphStyleAttributeName;
  v30 = v20;
  v31 = kCTBaselineOffsetAttributeName;
  v32 = [v27 initWithDouble:{fmin(v19 + -43.0, 0.0)}];
  *(inited + 144) = sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
  *(inited + 120) = v32;
  v33 = sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
  swift_arrayDestroy();

  return v33;
}

unint64_t sub_100553240(uint64_t *a1, void **a2, uint64_t a3)
{
  sub_10002849C(&unk_100973960, &unk_1007B4930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B1E00;
  *(inited + 32) = NSFontAttributeName;
  v6 = *a1;
  v7 = NSFontAttributeName;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = *a2;
  v9 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  *(inited + 40) = v8;
  *(inited + 64) = v9;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v10 = objc_allocWithZone(NSParagraphStyle);
  v11 = v8;
  v12 = NSParagraphStyleAttributeName;
  v13 = [v10 init];
  v14 = sub_100005744(0, &unk_100993000, NSParagraphStyle_ptr);
  *(inited + 80) = v13;
  *(inited + 104) = v14;
  *(inited + 112) = kCTBaselineOffsetAttributeName;
  v15 = objc_allocWithZone(NSNumber);
  v16 = kCTBaselineOffsetAttributeName;
  v17 = [v15 initWithDouble:0.0];
  *(inited + 144) = sub_100005744(0, &qword_10097FB80, NSNumber_ptr);
  *(inited + 120) = v17;
  v18 = sub_100397150(inited);
  swift_setDeallocating();
  sub_10002849C(&unk_100970EC0, &unk_1007B2BF0);
  swift_arrayDestroy();
  return v18;
}

id sub_1005533F0(_BYTE *a1)
{
  v3 = *&a1[qword_10098B7B0 + 32];
  v4 = a1[qword_10098B7B0 + 40];
  v5 = &v1[qword_10098B7B0];
  v6 = *&a1[qword_10098B7B0 + 16];
  *v5 = *&a1[qword_10098B7B0];
  *(v5 + 1) = v6;
  *(v5 + 4) = v3;
  v5[40] = v4;
  [v1 setNeedsLayout];
  v1[qword_10098B7E8] = a1[qword_10098B7E8];
  v7 = *&v1[qword_10098B7D0];
  *(v7 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_disableAnimatedFontChange) = 1;
  v8 = v7;
  v51 = *&v1[qword_10098B7C8];
  v9 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v50 = *&a1[qword_10098B7C8];
  v10 = *(v50 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v11 = *(v51 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v12 = [v10 text];
  [v11 setText:v12];

  v13 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v14 = *(v8 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v15 = v8;
  v16 = *&a1[qword_10098B7D0];
  v17 = *(v16 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v18 = v14;
  v19 = [v17 attributedText];
  [v18 setAttributedText:v19];

  v49 = v15;
  v20 = *(v16 + v13);
  v21 = *(v15 + v13);
  [v21 setAdjustsFontSizeToFitWidth:{objc_msgSend(v20, "adjustsFontSizeToFitWidth")}];

  v22 = *(v16 + v13);
  v23 = *(v15 + v13);
  [v22 minimumScaleFactor];
  [v23 setMinimumScaleFactor:?];

  v24 = *&v1[qword_10098B7D8];
  v46 = v24;
  v47 = *&a1[qword_10098B7D8];
  v25 = [v47 image];
  [v24 setImage:v25];

  v26 = *&v1[qword_10098B7E0];
  v27 = OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label;
  v28 = *&a1[qword_10098B7E0];
  v29 = *(v28 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v30 = *(v26 + OBJC_IVAR____TtC8AppStore27TodayTransitioningLabelView_label);
  v31 = [v29 text];
  [v30 setText:v31];

  v32 = *(v50 + v9);
  v33 = *(v51 + v9);
  [v33 setHidden:{objc_msgSend(v32, "isHidden")}];

  v34 = *(v16 + v13);
  v35 = *(v49 + v13);
  [v35 setHidden:{objc_msgSend(v34, "isHidden")}];

  [v46 setHidden:{objc_msgSend(v47, "isHidden")}];
  v36 = *(v26 + v27);
  v37 = *(v28 + v27);
  v38 = v36;
  [v38 setHidden:{objc_msgSend(v37, "isHidden")}];

  v39 = *&a1[qword_10098B7F0 + 88];
  v40 = &v1[qword_10098B7F0];
  v41 = *&a1[qword_10098B7F0 + 8];
  v42 = *&a1[qword_10098B7F0 + 24];
  v45 = *&a1[qword_10098B7F0 + 40];
  v43 = *&a1[qword_10098B7F0 + 56];
  *v48 = *&a1[qword_10098B7F0 + 72];
  *v40 = *&a1[qword_10098B7F0];
  *(v40 + 8) = v41;
  *(v40 + 24) = v42;
  *(v40 + 40) = v45;
  *(v40 + 56) = v43;
  *(v40 + 72) = *v48;
  *(v40 + 11) = v39;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_100551950();

  [v1 setOverrideUserInterfaceStyle:{objc_msgSend(a1, "overrideUserInterfaceStyle")}];
  sub_100551E70();

  return [v1 setNeedsLayout];
}

void sub_1005538D4()
{
  *(v0 + qword_10098B7B8) = 7;
  *(v0 + qword_10098B7C0) = 7;
  v1 = qword_10098B7D8;
  *(v0 + v1) = [objc_allocWithZone(UIImageView) init];
  *(v0 + qword_10098B7E8) = 0;
  *(v0 + qword_10098B7F8) = 0;
  *(v0 + qword_10098B800) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_100553998()
{
  result = qword_10098B858;
  if (!qword_10098B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098B858);
  }

  return result;
}

uint64_t sub_1005539EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100972DB8, &unk_1007B3FE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100553A5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_100553AAC(uint64_t a1, __n128 a2)
{
  AnyHashable.hash(into:)();
  v3 = String.hash(into:)();
  v4 = *(v2 + 72);
  if (v4 && (v4(v3), v5))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return result;
}

uint64_t sub_100553B50(void *a1)
{
  if (*v1 != *a1)
  {
    return 0;
  }

  v2 = v1;
  if ((static AnyHashable.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PromptActionDebugSetting();
  result = swift_dynamicCastClass();
  if (!result)
  {
    return result;
  }

  if (*(result + 56) != v1[7] || *(result + 64) != v1[8])
  {
    v5 = result;
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = v5;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(result + 72);
  if (!v7)
  {
    v17 = v2[9];

    if (!v17)
    {
      goto LABEL_25;
    }

    v17(v18);
    v16 = v19;
    goto LABEL_18;
  }

  v9 = v7(v8);
  v11 = v10;
  v12 = v2[9];
  if (!v12)
  {
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  v13 = v9;
  v14 = v12();
  v16 = v15;
  if (!v11)
  {
LABEL_18:

    if (!v16)
    {
      return 1;
    }

    goto LABEL_22;
  }

  if (!v15)
  {
LABEL_21:

LABEL_22:

    return 0;
  }

  if (v13 == v14 && v11 == v15)
  {

LABEL_25:

    return 1;
  }

  v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

  return v20 & 1;
}

double sub_100553D2C()
{

  sub_10001F63C(*(v0 + 72), *(v0 + 80));

  return result;
}

uint64_t sub_100553D64()
{
  sub_10003D614(v0 + 16);

  sub_10001F63C(*(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_100553DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 96) = a6;
  sub_10000827C(a3, a4);

  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v15 + 8))(v17, v14);
  v23[1] = v18;
  v23[2] = v20;
  AnyHashable.init<A>(_:)();
  v21 = v25;
  *(v7 + 16) = v24;
  *(v7 + 32) = v21;
  *(v7 + 48) = v26;
  return v7;
}

uint64_t sub_100553FBC(void *a1, uint64_t a2)
{
  v5 = sub_10002849C(&qword_10096FB10, &unk_1007B0F00);
  __chkstk_darwin(v5 - 8);
  v11 = a1;
  sub_1001F16B4();
  a1;
  sub_10002849C(&qword_10098B9E8, &qword_1007D4C88);
  if (swift_dynamicCast())
  {
    sub_100005A38(v9, v12);
    v6 = v13;
    v7 = v14;
    sub_10002A400(v12, v13);
    (*(v7 + 8))(a2, *(v2 + 16), v6, v7);
    UICollectionViewCell.backgroundConfiguration.setter();
    return sub_100007000(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    return sub_100554104(v9);
  }
}

uint64_t sub_100554104(uint64_t a1)
{
  v2 = sub_10002849C(&unk_10098B9F0, &qword_1007D4C90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1005541B8(__n128 a1)
{
  v1 = type metadata accessor for SmallBreakoutLayout.Metrics();
  __chkstk_darwin(v1 - 8);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SmallBreakoutLayout();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PageGrid();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  PageGrid.componentMeasuringSize(spanning:)();
  (*(v9 + 8))(v11, v8);
  v12 = sub_100079F24();
  sub_100128864(v12, v3);
  swift_getObjectType();
  v13 = swift_unknownObjectRetain();
  sub_100129BEC(v13);
  swift_unknownObjectRelease();
  v14 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v15 = LayoutViewPlaceholder.init(representing:)();
  v20[10] = v14;
  v20[11] = &protocol witness table for LayoutViewPlaceholder;
  v20[7] = v15;
  swift_allocObject();
  v16 = LayoutViewPlaceholder.init(representing:)();
  v20[5] = v14;
  v20[6] = &protocol witness table for LayoutViewPlaceholder;
  v20[2] = v16;
  SmallBreakoutLayout.init(metrics:iconView:detailsView:)();
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  sub_100554500(&qword_10098D0B0, &type metadata accessor for SmallBreakoutLayout, &protocol conformance descriptor for SmallBreakoutLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v18 = v17;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v7, v4);
  return v18;
}

uint64_t sub_100554500(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100554548(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 16))(a1) + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled);

  return v2;
}

void sub_100554590(char a1, uint64_t a2, uint64_t a3)
{
  *((*(a3 + 16))(a2, a3) + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled) = a1;

  sub_100554608(a2, a3);
}

void sub_100554608(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  (*(a2 + 8))();
  type metadata accessor for VideoPlaybackCoordinator();
  BaseObjectGraph.inject<A>(_:)();

  v5 = v23;
  v21 = a1;
  v22 = v3;
  v20 = *(v3 + 16);
  LODWORD(v3) = *(v20(a1, v3) + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled);

  if (v3 == 1)
  {
    dispatch thunk of VideoPlaybackCoordinator.resumeAutoPlayVideo()();
  }

  else
  {
    v6 = [v2 view];
    if (v6)
    {
      v7 = v6;
      if (dispatch thunk of VideoPlaybackCoordinator.isPlaying(in:)())
      {
        dispatch thunk of VideoPlaybackCoordinator.pauseAutoPlayVideo()();
      }
    }
  }

  v8 = [v2 collectionView];
  if (!v8)
  {
    goto LABEL_21;
  }

  v19 = v8;
  v9 = [v8 visibleCells];
  sub_1001F16B4();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_10;
    }

LABEL_20:

    v5 = v23;
LABEL_21:

    return;
  }

  v11 = _CocoaArrayWrapper.endIndex.getter();
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_10:
  if (v11 >= 1)
  {
    for (i = 0; i != v11; ++i)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v13 = *(v10 + 8 * i + 32);
      }

      v14 = v13;
      swift_getObjectType();
      v15 = swift_conformsToProtocol2();
      if (v15)
      {
        if (v14)
        {
          v16 = v15;
          ObjectType = swift_getObjectType();
          v18 = *(v20(v21, v22) + OBJC_IVAR____TtC8AppStore35TodayCardCollectionElementsObserver_isMotionEnabled);

          (*(v16 + 192))(v18, ObjectType, v16);
        }
      }
    }

    goto LABEL_20;
  }

  __break(1u);
}

void sub_100554884(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  type metadata accessor for VideoPlaybackCoordinator();
  (*(a3 + 8))(a2, a3);
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();

  dispatch thunk of VideoPlaybackCoordinator.shouldLoopSingleVideo.setter();
}

double sub_100554928(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v4();
  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v7 = [Strong layer];
    CATransform3DMakeScale(&v8, 1.0, 1.0, 1.0);
    [v7 setTransform:&v8];

    (v4)(a1, a2);
    swift_unknownObjectWeakAssign();
  }

  return result;
}

void sub_100554A24(void *a1, CGFloat a2)
{
  v3 = [a1 layer];
  CATransform3DMakeScale(&v4, a2, a2, 1.0);
  [v3 setTransform:&v4];
}

uint64_t sub_100554A98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_10009768C(v1 + v3, a1);
}

uint64_t sub_100554AF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_100554BBC()
{
  type metadata accessor for UnifiedMessage();
  sub_100554C60();
  ItemLayoutContext.typedModel<A>(as:)();
  if (v6)
  {
    v2 = UnifiedMessage.placement.getter();
    v4 = v3;

    v5 = (v0 + OBJC_IVAR____TtC8AppStore32UnifiedMessageCollectionViewCell_placement);
    swift_beginAccess();
    *v5 = v2;
    v5[1] = v4;
  }

  return result;
}

unint64_t sub_100554C60()
{
  result = qword_10098BA08;
  if (!qword_10098BA08)
  {
    type metadata accessor for UnifiedMessage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10098BA08);
  }

  return result;
}

void sub_100554CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a2;
  v7 = sub_10002849C(&qword_100973D30, &unk_1007B1DC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ImpressionMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  swift_beginAccess();
  sub_1005585A4(a3, &v4[v14]);
  swift_endAccess();
  v15 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionCalculator;
  swift_beginAccess();
  *&v4[v15] = a1;

  sub_100031660(a3, v9, &qword_100973D30, &unk_1007B1DC0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_10002B894(v9, &qword_100973D30, &unk_1007B1DC0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);

    [v4 bounds];
    ImpressionsCalculator.addElement(_:at:)();
    (*(v11 + 8))(v13, v10);
  }

  v16 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView;
  v17 = *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  type metadata accessor for NestedCollectionViewImpressionsCoordinator();
  swift_allocObject();
  v18 = v17;
  v19 = NestedCollectionViewImpressionsCoordinator.init(collectionView:)();
  v20 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator] = v19;

  if (*&v4[v20])
  {

    dispatch thunk of NestedCollectionViewImpressionsCoordinator.models.setter();

    if (*&v4[v20])
    {

      dispatch thunk of NestedCollectionViewImpressionsCoordinator.impressionsCalculator.setter();
    }
  }

  type metadata accessor for ImpressionsScrollObserver();
  swift_allocObject();

  v21 = ImpressionsScrollObserver.init(_:)();
  v22 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver] = v21;

  if (*&v4[v22])
  {
    v23 = *&v4[v16];
    if (v23)
    {

      v24 = v23;
      ImpressionsScrollObserver.didScroll(in:)(v24);

      return;
    }

LABEL_13:
    __break(1u);
  }
}

void sub_100554FF4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = type metadata accessor for AutomationSemantics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_onSelect];
  *v14 = 0;
  *(v14 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView] = 0;
  v15 = &v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_previousLayoutWidth];
  *v15 = 0;
  v15[8] = 1;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionCalculator] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_impressionsScrollObserver] = 0;
  v16 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_containerImpressionMetrics;
  v17 = type metadata accessor for ImpressionMetrics();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_tokens] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout] = [objc_allocWithZone(type metadata accessor for GuidedSearchTokenPaletteCollectionViewLayout()) init];
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v47, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v22 = v18;
  [v22 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v23 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout;
  *(*&v22[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout] + OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_layoutDelegate + 8) = &off_1008C83C0;
  swift_unknownObjectWeakAssign();
  v24 = [objc_allocWithZone(UICollectionView) initWithFrame:*&v22[v23] collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  v25 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView;
  v26 = *&v22[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView];
  *&v22[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView] = v24;
  v27 = v24;

  if (!v27)
  {
    __break(1u);
    goto LABEL_14;
  }

  v28 = [objc_opt_self() clearColor];
  [v27 setBackgroundColor:v28];

  v29 = *&v22[v25];
  if (!v29)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v29 setDataSource:v22];
  v30 = *&v22[v25];
  if (!v30)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v30 setDelegate:v22];
  v31 = *&v22[v25];
  if (!v31)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v31 setShowsHorizontalScrollIndicator:0];
  v32 = *&v22[v25];
  if (!v32)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v32 setShowsVerticalScrollIndicator:0];
  v33 = *&v22[v25];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v33 setBouncesHorizontally:1];
  v34 = *&v22[v25];
  if (!v34)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v34 setClipsToBounds:0];
  if (!*&v22[v25])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v22 addSubview:?];
  v35 = *&v22[v25];
  if (!v35)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v36 = v10;
  v45[1] = ObjectType;
  [v35 setPreservesSuperviewLayoutMargins:1];
  v37 = *&v22[v25];
  if (!v37)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for GuidedSearchTokenCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = v37;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v40 = String._bridgeToObjectiveC()();

  [v39 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v40];

  v41 = *&v22[v25];
  if (v41)
  {
    memset(v46, 0, sizeof(v46));
    v42 = v41;
    static AutomationSemantics.page(name:id:)();
    sub_10002B894(v46, &unk_1009711D0, &unk_1007B1A10);
    UIView.setAutomationSemantics(_:)();

    (*(v11 + 8))(v13, v36);
    v43 = [v22 traitCollection];

    [*&v22[v23] invalidateLayout];
    sub_10002849C(&qword_10097B110, &unk_1007B27C0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1007B1890;
    *(v44 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
    *(v44 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
    *(v44 + 48) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v44 + 56) = &protocol witness table for UITraitPreferredContentSizeCategory;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return;
  }

LABEL_23:
  __break(1u);
}

void sub_1005555C0()
{
  v1 = v0;
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView];
  if (v2)
  {
    v3 = v2;
    [v1 bounds];
    Width = CGRectGetWidth(v11);

    [v3 setFrame:{0.0, 0.0, Width, 60.0}];
    v5 = [v1 traitCollection];
    v6 = UITraitCollection.isSizeClassRegular.getter();

    if ((v6 & 1) != 0 && (v1[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_previousLayoutWidth + 8] & 1) == 0)
    {
      v7 = *&v1[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_previousLayoutWidth];
      [v1 bounds];
      if (v7 <= 834.0 == CGRectGetWidth(v12) > 834.0)
      {

        [*&v1[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout] invalidateLayout];
      }
    }

    [v1 bounds];
    v8 = CGRectGetWidth(v13);
    v9 = &v1[OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_previousLayoutWidth];
    *v9 = v8;
    *(v9 + 8) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_1005557FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_tokens) = a2;

  if (*(a3 + 16))
  {
    v8 = *(a1 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView);
    if (!v8)
    {
      __break(1u);
      goto LABEL_11;
    }

    type metadata accessor for IndexPath();
    v9 = v8;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v9 deleteItemsAtIndexPaths:isa];
  }

  if (!*(a5 + 16))
  {
    return;
  }

  v11 = *(a1 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView);
  if (!v11)
  {
LABEL_11:
    __break(1u);
    return;
  }

  type metadata accessor for IndexPath();
  v12 = v11;
  v13 = Array._bridgeToObjectiveC()().super.isa;
  [v12 insertItemsAtIndexPaths:v13];
}

void sub_100555938(uint64_t a1, char a2, uint64_t a3)
{
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      sub_100555994();
    }
  }
}

void sub_100555994()
{
  if (*(*(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout) + OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled) == 1)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = objc_opt_self();
    v10 = sub_100558630;
    v11 = v1;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_100007A08;
    v9 = &unk_1008C84C0;
    v4 = _Block_copy(&v6);

    v10 = sub_100558638;
    v11 = v2;
    v6 = _NSConcreteStackBlock;
    v7 = 1107296256;
    v8 = sub_100504C5C;
    v9 = &unk_1008C84E8;
    v5 = _Block_copy(&v6);

    [v3 animateWithDuration:0 delay:v4 usingSpringWithDamping:v5 initialSpringVelocity:0.3 options:0.0 animations:27.0 completion:0.0];
    _Block_release(v5);
    _Block_release(v4);
  }
}

void sub_100555B8C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_collectionView);
    v3 = Strong;
    v4 = v2;

    if (v2)
    {
      [v4 setContentOffset:{0.0, 0.0}];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100555C1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout);

    v4[OBJC_IVAR____TtC8AppStore44GuidedSearchTokenPaletteCollectionViewLayout_pinningEnabled] = 0;
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    v7 = *(v5 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_layout);

    [v7 invalidateLayout];
  }
}

uint64_t type metadata accessor for GuidedSearchTokenPaletteView(uint64_t a1)
{
  result = qword_10098BA80;
  if (!qword_10098BA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100555DF0(uint64_t a1)
{
  sub_1000E0A08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_100556030(void *a1, uint64_t a2)
{
  type metadata accessor for GuidedSearchTokenCell();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v3 = String._bridgeToObjectiveC()();

  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  v5 = [a1 dequeueReusableCellWithReuseIdentifier:v3 forIndexPath:isa];

  v6 = swift_dynamicCastClass();
  if (v6)
  {
    v7 = v6;
    v5 = v5;
    sub_100556158(v14);
    v8 = v15;
    if (v15)
    {
      v10 = v14[1];
      v9 = v14[2];
      v11 = v14[0];
      v12 = v16;

      sub_100084F00(v11, v10, v9, v8, v12 & 1);

      return v7;
    }

    else
    {
    }
  }

  return v5;
}

void sub_100556158(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_tokens;
  v5 = *(*(v2 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_tokens) + 16);
  v6 = IndexPath.row.getter();
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (v6 < 0 || v6 >= v5)
  {
    goto LABEL_6;
  }

  v12 = IndexPath.row.getter();
  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v13 = *(v2 + v4);
    if (v12 < *(v13 + 16))
    {
      v14 = v13 + 40 * v12;
      v8 = *(v14 + 32);
      v9 = *(v14 + 40);
      v10 = *(v14 + 48);
      v11 = *(v14 + 56);
      v7 = *(v14 + 64);

LABEL_6:
      *a1 = v8;
      *(a1 + 8) = v9;
      *(a1 + 16) = v10;
      *(a1 + 24) = v11;
      *(a1 + 32) = v7;
      return;
    }
  }

  __break(1u);
}

__n128 sub_10055674C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100556760(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1005567A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1005567FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore28GuidedSearchTokenPaletteView_tokens);
  v2 = *(v1 + 16);

  v3 = 0;
LABEL_2:
  v4 = 40 * v3;
  while (1)
  {
    if (v2 == v3)
    {

      return;
    }

    if (v3 >= *(v1 + 16))
    {
      break;
    }

    ++v3;
    v5 = v4 + 40;
    v6 = *(v1 + v4 + 64);
    v4 += 40;
    if (v6)
    {
      v8 = *(v1 + v5 - 8);
      v7 = *(v1 + v5);
      v10 = *(v1 + v5 + 8);
      v9 = *(v1 + v5 + 16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100144248(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100144248((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[5 * v12];
      v13[4] = v8;
      v13[5] = v7;
      v13[6] = v10;
      v13[7] = v9;
      *(v13 + 64) = 1;
      goto LABEL_2;
    }
  }

  __break(1u);
}

uint64_t sub_10055694C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    v11 = *a1 == *a2 && v3 == v7;
    if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v12 = v4 == v8 && v5 == v9;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    return v6 ^ v10 ^ 1u;
  }

  return 0;
}

id sub_100556A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    goto LABEL_6;
  }

  sub_1000367E8();
  if (qword_10096CF50 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  sub_1000056A8(v5, qword_1009CDB68);
  v6 = static UIFont.preferredFont(forUseWith:in:)();
  v7 = [objc_opt_self() configurationWithFont:v6 scale:2];

  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() _systemImageNamed:v8 withConfiguration:v7];

  if (v9)
  {
    v10 = objc_allocWithZone(NSMutableAttributedString);
    v11 = String._bridgeToObjectiveC()();
    v12 = [v10 initWithString:v11];

    v13 = [objc_opt_self() textAttachmentWithImage:v9];
    v14 = [objc_opt_self() attributedStringWithAttachment:v13];

    [v12 appendAttributedString:v14];
    v15 = objc_allocWithZone(NSAttributedString);
    v16 = String._bridgeToObjectiveC()();
    v17 = [v15 initWithString:v16];

    [v12 appendAttributedString:v17];
    v18 = objc_allocWithZone(NSAttributedString);
    v19 = String._bridgeToObjectiveC()();
    v20 = [v18 initWithString:v19];

    [v12 appendAttributedString:v20];
    v21 = [objc_allocWithZone(NSAttributedString) initWithAttributedString:v12];
  }

  else
  {
LABEL_6:
    v22 = objc_allocWithZone(NSAttributedString);
    v12 = String._bridgeToObjectiveC()();
    v21 = [v22 initWithString:v12];
  }

  return v21;
}

double sub_100556CC8(void *a1, int a2, void *a3, double a4, double a5)
{
  v30 = a2;
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for LabelPlaceholderCompatibility();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000367E8();
  v15 = qword_10096CF50;
  v16 = a1;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for FontUseCase();
  sub_1000056A8(v17, qword_1009CDB68);
  static UIFont.preferredFont(forUseWith:in:)();
  v18 = type metadata accessor for Feature();
  v32 = v18;
  v33 = sub_100085D7C();
  v19 = sub_1000056E0(v31);
  (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
  isFeatureEnabled(_:)();
  sub_100007000(v31);
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  (*(v12 + 8))(v14, v11);
  sub_10002A400(v31, v32);
  Measurable.measuredSize(fitting:in:)();
  CGSize.adding(outsets:)();
  (*(v8 + 104))(v10, enum case for FloatingPointRoundingRule.up(_:), v7);
  CGSize.rounded(_:)();
  v21 = v20;
  (*(v8 + 8))(v10, v7);
  v22 = [a3 traitCollection];
  v23 = sub_100085B8C();

  if (v30)
  {
    [v23 size];
    v25 = v24;

    v26 = v25 + 5.0;
  }

  else
  {

    v26 = 0.0;
  }

  v27 = v21 + v26;
  sub_100007000(v31);
  return v27;
}