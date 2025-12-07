void sub_1000EF498(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for FamilyCircleLookupTask();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007B48F0;
  v8 = type metadata accessor for InAppMessagesGroup();
  v9 = objc_allocWithZone(v8);
  type metadata accessor for ASKBagContract();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  ASKBagContract.appStoreMessageGroupIdentifier.getter();
  v10 = String._bridgeToObjectiveC()();

  v19.receiver = v9;
  v19.super_class = v8;
  v11 = objc_msgSendSuper2(&v19, "initWithGroupIdentifier:", v10);

  *(inited + 32) = v11;
  *(inited + 40) = [objc_allocWithZone(FAFamilyMessageGroup) init];
  *(inited + 48) = [objc_allocWithZone(AMSUIMessageGroup) init];
  sub_1000838D8(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v12 = *(v1 + 16);
  v13 = *(v2 + 24);
  sub_100005744(0, &qword_1009726E8, IAMMessageGroup_ptr);
  sub_1000EFCF4();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v12 startWithApplicationContext:v13 messageGroups:isa];

  FamilyCircleLookupTask.init()();
  FamilyCircleLookupTask.perform()();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = sub_100005744(0, &qword_1009729E0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v18[3] = v15;
  v18[4] = &protocol witness table for OS_dispatch_queue;
  v18[0] = v16;
  Promise.then(perform:orCatchError:on:)();

  (*(v4 + 8))(v6, v3);
  sub_100007000(v18);
  v17 = [objc_opt_self() defaultCenter];
  [v17 addObserver:v13 selector:"familyInfoDidChange" name:FAFamilyUpdateNotification object:0];
}

uint64_t sub_1000EF7F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000EF870(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = type metadata accessor for MetricsPipeline();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 16) = [objc_allocWithZone(IAMMessageCoordinator) init];
  v11 = type metadata accessor for InAppMessagesMetricsDelegate(0);
  v12 = objc_allocWithZone(v11);
  type metadata accessor for BaseObjectGraph();

  inject<A, B>(_:from:)();
  (*(v8 + 32))(v12 + OBJC_IVAR____TtC8AppStore28InAppMessagesMetricsDelegate_metricsPipeline, v10, v7);
  v35.receiver = v12;
  v35.super_class = v11;
  v13 = objc_msgSendSuper2(&v35, "init");

  *(v4 + 32) = v13;
  type metadata accessor for ArcadeSubscriptionManager();
  inject<A, B>(_:from:)();
  v14 = v34;
  *(v4 + 40) = v34;
  sub_100005744(0, &qword_10098D1A0, ACAccountStore_ptr);
  v15 = v14;
  inject<A, B>(_:from:)();
  v16 = v34;
  v17 = type metadata accessor for InAppMessagesContextProvider();
  v18 = objc_allocWithZone(v17);
  v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isInFamily] = 2;
  v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_isFamilyOrganizer] = 2;
  v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_canCreateFamily] = 2;
  *&v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_arcadeSubscriptionManager] = v15;
  *&v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_accountStore] = v16;
  *&v18[OBJC_IVAR____TtC8AppStore28InAppMessagesContextProvider_rootViewController] = a2;
  v33.receiver = v18;
  v33.super_class = v17;
  v19 = a2;
  *(v4 + 24) = objc_msgSendSuper2(&v33, "init");
  [*(v4 + 16) setMetricsDelegate:*(v4 + 32)];
  *(v4 + 48) = a3;
  v20 = *(v4 + 16);
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  v22 = *(a3 + 16);
  v23 = *(a3 + 24);
  *(a3 + 16) = sub_1000EFBD4;
  *(a3 + 24) = v21;

  v24 = v20;
  sub_10001F63C(v22, v23);
  v25 = *(v4 + 40);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *(v4 + 16);
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = v26;
  v29 = v27;
  v30 = v25;

  ArcadeSubscriptionManager.addSubscriptionStateObserver(_:action:)();

  return v4;
}

uint64_t sub_1000EFBE4()
{
  v1 = *(type metadata accessor for ArcadeStateChange() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000EF030(v0 + v2, v4, v5);
}

uint64_t sub_1000EFC7C(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100973ED0, &qword_1007B5A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EFCF4()
{
  result = qword_100973EE0;
  if (!qword_100973EE0)
  {
    sub_100005744(255, &qword_1009726E8, IAMMessageGroup_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973EE0);
  }

  return result;
}

uint64_t sub_1000EFD98(double a1, uint64_t a2, uint64_t *a3)
{
  v4 = type metadata accessor for FontSource();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for StaticDimension();
  sub_100005644(v8, a3);
  sub_1000056A8(v8, a3);
  *v7 = UIFontTextStyleBody;
  (*(v5 + 104))(v7, enum case for FontSource.textStyle(_:), v4);
  v13[3] = v4;
  v13[4] = &protocol witness table for FontSource;
  v9 = sub_1000056E0(v13);
  (*(v5 + 16))(v9, v7, v4);
  v10 = UIFontTextStyleBody;
  StaticDimension.init(_:scaledLike:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000EFF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EF80 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for StaticDimension();
  sub_1000056A8(v7, qword_1009D3988);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t sub_1000F0068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10096EF78 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for StaticDimension();
  sub_1000056A8(v8, qword_1009D3970);
  static Dimensions.defaultRoundingRule.getter();
  AnyDimension.value(in:rounded:)();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  return v10;
}

uint64_t sub_1000F0240(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000F0288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = type metadata accessor for IndexSet();
  __chkstk_darwin(v20);
  v19[0] = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v9 = sub_10002849C(&qword_100973F48, &qword_1007E1060);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  sub_10074A548();
  v19[1] = a1;
  result = TitledButtonStack.buttons.getter();
  v13 = result;
  if (!(result >> 62))
  {
    v14 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:

    TitledButtonStack.regularLineBreaks.getter();
    TitledButtonStack.compactLineBreaks.getter();
    sub_10002849C(&qword_100973F50, &qword_1007B4260);
    Conditional<>.init(regularValue:compactValue:)();
    v17 = sub_10002849C(&qword_100973F58, &qword_1007E1050);
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    v18 = OBJC_IVAR____TtC8AppStore35TitledButtonStackCollectionViewCell_lineBreaks;
    swift_beginAccess();
    sub_1000F0514(v11, v4 + v18);
    swift_endAccess();
    return [v4 setNeedsLayout];
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result;
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      sub_10074A6E0(v16, a3);
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000F0514(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973F48, &qword_1007E1060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1000F05C0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for AspectRatio();
  sub_100005644(v3, a2);
  sub_1000056A8(v3, a2);
  AspectRatio.init(_:_:)();
}

char *sub_1000F0620(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC8AppStore33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  if (qword_10096D048 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for AspectRatio();
  v14 = sub_1000056A8(v13, qword_1009CDF60);
  (*(*(v13 - 8) + 16))(&v6[v12], v14, v13);
  swift_unknownObjectWeakInit();
  v22.receiver = v6;
  v22.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong _setContinuousCornerRadius:20.0];
  }

  v18 = swift_unknownObjectWeakLoadStrong();
  if (v18)
  {
    v19 = v18;
    v20 = [v15 contentView];
    [v20 addSubview:v19];
  }

  return v15;
}

uint64_t sub_1000F07CC(void *a1)
{
  if (a1)
  {
    v2 = [a1 superview];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 contentView];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_100028004();
      v5 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

void sub_1000F0880(void *a1)
{
  sub_1000F1AA0();
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

void (*sub_1000F0930(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore33VideoTodayBrickCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1000F0984;
}

void sub_1000F0984(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1000F1AA0();
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
    sub_1000F1AA0();
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

double sub_1000F0B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  v4 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v4 - 8);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v44 - v7;
  v8 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v8 - 8);
  v48 = &v44 - v9;
  v10 = type metadata accessor for VideoControls();
  __chkstk_darwin(v10 - 8);
  v47 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v44 - v13;
  v14 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v14 - 8);
  v16 = &v44 - v15;
  v17 = type metadata accessor for VideoFillMode();
  v45 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for VideoConfiguration();
  v52 = *(v20 - 8);
  v53 = v20;
  __chkstk_darwin(v20);
  v51 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AspectRatio();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v3;
  sub_10018957C();
  v27 = TodayCard.media.getter();
  type metadata accessor for TodayCardMediaVideo();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

    goto LABEL_8;
  }

  v55[0] = v28;
  v29 = [v26 traitCollection];
  v30 = TodayCardMediaWithArtwork.video(for:)();

  if (!v30)
  {
LABEL_8:

    return result;
  }

  v31 = Video.preview.getter();
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  v32 = OBJC_IVAR____TtC8AppStore33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  swift_beginAccess();
  (*(v23 + 40))(&v26[v32], v25, v22);
  swift_endAccess();
  (*(v45 + 104))(v19, enum case for VideoFillMode.scaleAspectFill(_:), v17);
  v45 = v31;
  Artwork.size.getter();
  AspectRatio.init(_:_:)();
  (*(v23 + 56))(v16, 0, 1, v22);
  Video.playbackControls.getter();
  Video.autoPlayPlaybackControls.getter();
  Video.canPlayFullScreen.getter();
  Video.allowsAutoPlay.getter();
  Video.looping.getter();
  v33 = v51;
  VideoConfiguration.init(fillMode:aspectRatio:playbackControls:autoPlayPlaybackControls:canPlayFullScreen:allowsAutoPlay:looping:roundedCorners:deviceCornerRadiusFactor:)();
  type metadata accessor for VideoViewManager();
  BaseObjectGraph.inject<A>(_:)();
  v34 = v55[0];
  Video.playbackId.getter();
  v35 = v48;
  Video.videoUrl.getter();
  v36 = type metadata accessor for URL();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  v37 = v49;
  Video.templateMediaEvent.getter();
  v38 = v50;
  Video.templateClickEvent.getter();
  type metadata accessor for VideoView(0);
  sub_1000F1B70(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  v47 = v34;
  v39 = dispatch thunk of VideoViewManager.videoView<A>(with:videoUrl:configuration:templateMediaEvent:templateClickEvent:asPartOf:)();
  sub_10002B894(v38, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v37, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v35, &qword_100982460, &unk_1007B5C90);
  sub_10002B894(v55, &qword_10096FB90, &qword_1007B2A50);
  sub_1000F1AA0();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v41 = Strong;
    v42 = [v26 contentView];
    [v42 addSubview:v41];

    [v26 setNeedsLayout];
  }

  type metadata accessor for ArtworkLoader();
  BaseObjectGraph.inject<A>(_:)();
  sub_1000F12AC();

  (*(v52 + 8))(v33, v53);
  return result;
}

void sub_1000F12AC()
{
  v1 = v0;
  v2 = type metadata accessor for AspectRatio();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Video.preview.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = OBJC_IVAR____TtC8AppStore33VideoTodayBrickCollectionViewCell_videoAspectRatio;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v1[v8], v2);
    LOBYTE(v8) = AspectRatio.isPortrait.getter();
    v9 = *(v3 + 8);
    v9(v5, v2);
    if (v8)
    {
      if (qword_10096D040 != -1)
      {
        swift_once();
      }

      v10 = qword_1009CDF48;
    }

    else
    {
      if (qword_10096D038 != -1)
      {
        swift_once();
      }

      v10 = qword_1009CDF30;
    }

    sub_1000056A8(v2, v10);
    [v1 bounds];
    AspectRatio.maxSize(fitting:)();
    Artwork.size.getter();
    AspectRatio.init(_:_:)();
    AspectRatio.maxSize(filling:)();
    v9(v5, v2);
    Artwork.config(_:mode:prefersLayeredImage:)();
    type metadata accessor for VideoView(0);
    sub_1000F1B70(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  else
  {
  }
}

uint64_t sub_1000F15A4()
{
  v1 = OBJC_IVAR____TtC8AppStore33VideoTodayBrickCollectionViewCell_videoAspectRatio;
  v2 = type metadata accessor for AspectRatio();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_unknownObjectWeakDestroy();
}

uint64_t type metadata accessor for VideoTodayBrickCollectionViewCell(uint64_t a1)
{
  result = qword_100973F88;
  if (!qword_100973F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000F16EC(uint64_t a1)
{
  result = type metadata accessor for AspectRatio();
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

uint64_t (*sub_1000F1798(uint64_t **a1))()
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
  v2[4] = sub_1000F0930(v2);
  return sub_1000C2700;
}

uint64_t sub_1000F1808(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = sub_1000F1B70(&qword_100973FA8, type metadata accessor for VideoTodayBrickCollectionViewCell, &unk_1007B5B00);

  return VideoViewProviding.someVideoView.getter(ObjectType, v3);
}

uint64_t sub_1000F187C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1000F1B70(&qword_100973FA8, type metadata accessor for VideoTodayBrickCollectionViewCell, &unk_1007B5B00);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1000F1908(uint64_t *a1, uint64_t a2))()
{
  swift_getObjectType();
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
  sub_1000F1B70(&qword_100973FA8, type metadata accessor for VideoTodayBrickCollectionViewCell, &unk_1007B5B00);
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000B4CAC;
}

void sub_1000F1AA0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1000F1B70(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
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

uint64_t sub_1000F1B70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1000F1BB8(uint64_t a1, CGFloat a2, CGFloat a3, double a4, double a5, double a6, double a7, uint64_t a8, int a9)
{
  v17 = sub_10002849C(&qword_100973FB0, &qword_1007B5B50);
  __chkstk_darwin(v17 - 8);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v56 - v21;
  v23 = type metadata accessor for TodayCardArtworkLayout();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v56 - v28;
  v58 = a1;
  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  v59 = a9;
  if (a9)
  {
    v57 = TodayCardArtworkLayout.expandedContentMode.getter();
    TodayCardArtworkSizedLayoutMetrics.expandedSize.getter();
  }

  else
  {
    v57 = TodayCardArtworkLayout.collapsedContentMode.getter();
    TodayCardArtworkSizedLayoutMetrics.collapsedSize.getter();
  }

  sub_1000F1F50(v22, v19);
  v30 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.LayoutSize();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v19, 1, v30) == 1)
  {
    sub_1000F1FC0(v19);
  }

  else
  {
    sub_1000F22DC(a6, a7, a4, a5);
    a6 = v32;
    a7 = v33;
    (*(v31 + 8))(v19, v30);
  }

  sub_1000F2608(a6, a7, a4, a5);
  v35 = v34;
  v37 = v36;
  sub_1000F1FC0(v22);
  v60 = a2;
  v61 = a4;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v42 = sub_1000F2794(v57, 0.0, 0.0, v35, v37, v38, a3, v40, a5);
  v44 = v43;
  v46 = v45;
  v48 = v47;
  TodayCardArtworkSizedLayoutMetrics.layout(for:)();
  if (v59)
  {
    TodayCardArtworkLayout.expandedLayoutInsets.getter();
  }

  else
  {
    TodayCardArtworkLayout.collapsedLayoutInsets.getter();
  }

  v51 = v49;
  v52 = v50;
  v53 = *(v24 + 8);
  v53(v26, v23);
  v54 = sub_1000F2028(v52, v51, v60, v39, v61, v41, v42, v44, v46, v48);
  v53(v29, v23);
  return v54;
}

uint64_t sub_1000F1F50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&qword_100973FB0, &qword_1007B5B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F1FC0(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100973FB0, &qword_1007B5B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000F2028(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v44.size.width = a9;
  v44.size.height = a10;
  v44.origin.x = a7;
  v44.origin.y = a8;
  v42 = a2;
  v45 = CGRectOffset(v44, a1, a2);
  x = v45.origin.x;
  width = v45.size.width;
  height = v45.size.height;
  if (a1 > 0.0)
  {
    rect = v45.origin.y;
    v40 = v45.size.width;
    MinX = CGRectGetMinX(v45);
    v46.origin.x = a3;
    v46.origin.y = a4;
    v46.size.width = a5;
    v46.size.height = a6;
    if (CGRectGetMinX(v46) < MinX)
    {
      v47.origin.x = x;
      v47.origin.y = rect;
      v47.size.width = v40;
      v47.size.height = height;
      v39 = CGRectGetMinX(v47);
      v48.origin.x = a3;
      v48.origin.y = a4;
      v48.size.width = a5;
      v48.size.height = a6;
      x = x - (v39 - CGRectGetMinX(v48));
    }

    width = v40;
    v45.origin.y = rect;
  }

  if (a1 < 0.0)
  {
    v19 = x;
    y = v45.origin.y;
    v21 = width;
    v22 = height;
    MaxX = CGRectGetMaxX(v45);
    v49.origin.x = a3;
    v49.origin.y = a4;
    v49.size.width = a5;
    v49.size.height = a6;
    if (MaxX < CGRectGetMaxX(v49))
    {
      v50.origin.x = a3;
      v50.origin.y = a4;
      v50.size.width = a5;
      v50.size.height = a6;
      v24 = CGRectGetMaxX(v50);
      v51.origin.x = x;
      v51.origin.y = y;
      v51.size.width = width;
      v51.size.height = height;
      x = x + v24 - CGRectGetMaxX(v51);
    }

    v45.origin.y = y;
  }

  if (v42 > 0.0)
  {
    v25 = x;
    v26 = v45.origin.y;
    v27 = width;
    v28 = height;
    MinY = CGRectGetMinY(v45);
    v52.origin.x = a3;
    v52.origin.y = a4;
    v52.size.width = a5;
    v52.size.height = a6;
    if (CGRectGetMinY(v52) >= MinY)
    {
      v45.origin.y = v26;
    }

    else
    {
      v53.origin.x = x;
      v53.origin.y = v26;
      v53.size.width = width;
      v53.size.height = height;
      v30 = CGRectGetMinY(v53);
      v54.origin.x = a3;
      v54.origin.y = a4;
      v54.size.width = a5;
      v54.size.height = a6;
      v45.origin.y = v26 - (v30 - CGRectGetMinY(v54));
    }
  }

  if (v42 < 0.0)
  {
    v31 = x;
    v32 = v45.origin.y;
    v33 = width;
    v34 = height;
    v35 = width;
    v36 = a4;
    MaxY = CGRectGetMaxY(v45);
    v55.origin.x = a3;
    v55.origin.y = v36;
    v55.size.width = a5;
    v55.size.height = a6;
    if (MaxY < CGRectGetMaxY(v55))
    {
      v56.origin.x = a3;
      v56.origin.y = v36;
      v56.size.width = a5;
      v56.size.height = a6;
      CGRectGetMaxY(v56);
      v57.origin.x = x;
      v57.origin.y = v32;
      v57.size.width = v35;
      v57.size.height = height;
      CGRectGetMaxY(v57);
    }
  }

  return x;
}

uint64_t sub_1000F22DC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v6 = type metadata accessor for AspectRatio();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TodayCardArtworkSizedLayoutMetrics.LayoutSize();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.absolute(_:))
  {
    return (*(v11 + 96))(v14, v10);
  }

  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalHeight(_:))
  {
    (*(v11 + 96))(v14, v10);
    AspectRatio.init(_:_:)();
    AspectRatio.width(fromHeight:)();
    return (*(v7 + 8))(v9, v6);
  }

  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalWidth(_:))
  {
    (*(v11 + 96))(v14, v10);
    AspectRatio.init(_:_:)();
    AspectRatio.height(fromWidth:)();
    return (*(v7 + 8))(v9, v6);
  }

  if (v15 == enum case for TodayCardArtworkSizedLayoutMetrics.LayoutSize.fractionalSize(_:))
  {
    return (*(v11 + 96))(v14, v10);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1000F2608(double a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for AspectRatio();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v21 - v13;
  if (a3 > a1 || a4 > a2)
  {
    AspectRatio.init(_:_:)();
    AspectRatio.init(_:_:)();
    AspectRatio.horizontalFraction.getter();
    v17 = v16;
    AspectRatio.horizontalFraction.getter();
    v18 = (v9 + 8);
    if (v17 >= v19)
    {
      AspectRatio.height(fromWidth:)();
    }

    else
    {
      AspectRatio.width(fromHeight:)();
    }

    v20 = *v18;
    (*v18)(v11, v8);
    v20(v14, v8);
  }
}

double sub_1000F2794(unint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (a1 - 1 <= 1)
  {
    CGSize.fitting(_:mode:)();
    a4 = v17;
    a5 = v18;
  }

  if (a1 > 0xC)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0xA80) != 0)
  {
    v26.origin.x = a6;
    v26.origin.y = a7;
    v26.size.width = a8;
    v26.size.height = a9;
    MinX = CGRectGetMinX(v26);
    goto LABEL_10;
  }

  if (((1 << a1) & 0x1500) != 0)
  {
    v24.origin.x = a6;
    v24.origin.y = a7;
    v24.size.width = a8;
    v24.size.height = a9;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = a2;
    v25.origin.y = a3;
    v25.size.width = a4;
    v25.size.height = a5;
    Width = CGRectGetWidth(v25);
  }

  else
  {
LABEL_8:
    v27.origin.x = a6;
    v27.origin.y = a7;
    v27.size.width = a8;
    v27.size.height = a9;
    MaxX = CGRectGetMidX(v27);
    v28.origin.x = a2;
    v28.origin.y = a3;
    v28.size.width = a4;
    v28.size.height = a5;
    Width = CGRectGetMidX(v28);
  }

  MinX = MaxX - Width;
  if (a1 > 0xC)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (((1 << a1) & 0x620) != 0)
  {
    v31.origin.x = a6;
    v31.origin.y = a7;
    v31.size.width = a8;
    v31.size.height = a9;
    CGRectGetMinY(v31);
    return MinX;
  }

  if (((1 << a1) & 0x1840) == 0)
  {
LABEL_14:
    v32.origin.x = a6;
    v32.origin.y = a7;
    v32.size.width = a8;
    v32.size.height = a9;
    CGRectGetMidY(v32);
    v33.origin.x = MinX;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    CGRectGetMidY(v33);
    return MinX;
  }

  v29.origin.x = a6;
  v29.origin.y = a7;
  v29.size.width = a8;
  v29.size.height = a9;
  CGRectGetMaxY(v29);
  v30.origin.x = MinX;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  CGRectGetHeight(v30);
  return MinX;
}

double sub_1000F2994()
{
  v0 = type metadata accessor for ShelfLayoutContext();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemLayoutContext.parentShelfLayoutContext.getter();
  v4 = sub_1000F2A74();
  (*(v1 + 8))(v3, v0);
  return v4;
}

double sub_1000F2A74()
{
  v0 = type metadata accessor for ArcadeFooterLayout.Metrics();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PageGrid();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.componentMeasuringSize(spanning:)();
  v8 = *(v5 + 8);
  v8(v7, v4);
  ShelfLayoutContext.contentPageGrid.getter();
  PageGrid.containerWidth.getter();
  v10 = v9;
  v8(v7, v4);
  v11 = ShelfLayoutContext.traitCollection.getter();
  v12 = type metadata accessor for SnapshotPageTraitEnvironment();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_pageContainerSize];
  *v14 = v10;
  *(v14 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v13[OBJC_IVAR____TtC8AppStore28SnapshotPageTraitEnvironment_traitCollection] = v11;
  v20.receiver = v13;
  v20.super_class = v12;
  v15 = objc_msgSendSuper2(&v20, "init");
  if (qword_10096EAD8 != -1)
  {
    swift_once();
  }

  v16 = sub_1000056A8(v0, qword_10098ED30);
  __chkstk_darwin(v16);
  *(&v20 - 2) = v15;
  Copyable.copyWithOverrides(in:)();

  ShelfLayoutContext.traitEnvironment.getter();
  type metadata accessor for ArcadeFooterLayout();
  sub_1000F2DB4(&qword_100973FC0, &type metadata accessor for ArcadeFooterLayout, &protocol conformance descriptor for ArcadeFooterLayout);
  dispatch thunk of static EstimatedMeasurable.estimatedMeasurements(fitting:using:in:)();
  v18 = v17;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v3, v0);
  return v18;
}

uint64_t sub_1000F2DB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for ProductReviewSelectionHandlerCollectionElementsObserver(uint64_t a1)
{
  result = qword_100973FE0;
  if (!qword_100973FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000F2EAC()
{
  v1 = qword_100973FD8;
  v2 = *(v0 + qword_100973FD8);
  if (v2)
  {
    v3 = *(v0 + qword_100973FD8);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for ComponentViewOverflowTransitioning(0)) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1000F2F20(uint64_t a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v116 = a4;
  v113 = a3;
  v114 = a2;
  v112 = a1;
  v97 = type metadata accessor for FlowOrigin();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v98 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for FlowAnimationBehavior();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v96 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for FlowPresentationContext();
  v89 = *(v90 - 8);
  __chkstk_darwin(v90);
  v94 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v8 - 8);
  v91 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v10 - 8);
  v104 = &v81 - v11;
  v12 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v12 - 8);
  v103 = &v81 - v13;
  v88 = type metadata accessor for FlowPage();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v102 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v15 - 8);
  v107 = &v81 - v16;
  v17 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  __chkstk_darwin(v17 - 8);
  v101 = &v81 - v18;
  v19 = type metadata accessor for ItemLayoutContext();
  v110 = *(v19 - 8);
  v111 = v19;
  __chkstk_darwin(v19);
  v100 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v106 = &v81 - v22;
  v23 = type metadata accessor for ProductReview.ReviewSource();
  v108 = *(v23 - 8);
  v109 = v23;
  __chkstk_darwin(v23);
  v99 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v81 - v26;
  v28 = type metadata accessor for PageGrid();
  v105 = *(v28 - 8);
  __chkstk_darwin(v28);
  v30 = &v81 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Shelf.PresentationHints();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v37 = &v81 - v36;
  v115 = v4;
  sub_10002A400(&v4[qword_100973FD0], *&v4[qword_100973FD0 + 24]);
  v38 = v114;
  v39 = dispatch thunk of ShelfComponentTypeMappingProvider.componentType(for:asPartOf:)();
  if (!v39 || (v43 = v39, v83 = v42, v84 = v41, v85 = v40, type metadata accessor for ProductReview(), sub_1000F4028(&qword_100971EE0, &type metadata accessor for ProductReview, &protocol conformance descriptor for ProductRatingsAndReviewsComponent), ItemLayoutContext.typedModel<A>(as:)(), !v119))
  {
    type metadata accessor for SelectionHandlerCollectionElementsObserver();
    v52 = method lookup function for SelectionHandlerCollectionElementsObserver();
    v52(v112, v38, v113, v116);
    return;
  }

  v82 = v43;
  v86 = v119;
  swift_getKeyPath();
  ItemLayoutContext.subscript.getter();

  static Shelf.PresentationHints.isSeeAllContext.getter();
  sub_1000F4028(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
  v44 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  v45 = *(v32 + 8);
  v45(v34, v31);
  v45(v37, v31);
  if (v44)
  {
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    PageGrid.columnCount.getter();
    v47 = v46;
    (*(v105 + 8))(v30, v28);
    v48 = v116;
    v50 = v110;
    v49 = v111;
    v51 = v38;
    if (v47 <= 1.0)
    {
LABEL_11:
      type metadata accessor for SelectionHandlerCollectionElementsObserver();
      v76 = method lookup function for SelectionHandlerCollectionElementsObserver();
      v76(v112, v51, v113, v48);

      return;
    }
  }

  else
  {
    ProductReview.source.getter();
    v54 = v108;
    v53 = v109;
    v55 = (*(v108 + 88))(v27, v109);
    v56 = enum case for ProductReview.ReviewSource.editorsChoice(_:);
    (*(v54 + 8))(v27, v53);
    v48 = v116;
    v50 = v110;
    v49 = v111;
    v51 = v38;
    if (v55 == v56)
    {
      goto LABEL_11;
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v57 = v119;
    v58 = UITraitCollection.isSizeClassRegular.getter();

    if ((v58 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v59 = v99;
  ProductReview.source.getter();
  v61 = v108;
  v60 = v109;
  v62 = (*(v108 + 88))(v59, v109) == enum case for ProductReview.ReviewSource.reviewSummary(_:);
  (*(v61 + 8))(v59, v60);
  v63 = v106;
  ItemLayoutContext.withUpdatedLayoutOptions(_:)();
  v64 = v100;
  (*(v50 + 16))(v100, v63, v49);
  v65 = sub_10054A47C(v48, 0, 0, _swiftEmptyArrayStorage, 0xD000000000000011, 0x8000000100801690);
  v114 = type metadata accessor for ProductPageReviewsOverflowViewController(0);
  v66 = objc_allocWithZone(v114);
  v67 = sub_10018D534(v64, v82, v85, v84, v83, v65, v62);

  v68 = sub_1000F2EAC();
  v69 = v101;
  ItemLayoutContext.indexPath.getter();
  v70 = type metadata accessor for IndexPath();
  (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
  v71 = OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_selectedIndexPath;
  swift_beginAccess();
  sub_1000F4070(v69, &v68[v71]);
  swift_endAccess();
  v68[OBJC_IVAR____TtC8AppStore34ComponentViewOverflowTransitioning_isTransitioningFromContainer] = 1;
  v72 = v67;
  [v72 setTransitioningDelegate:v68];
  [v72 setModalPresentationStyle:4];

  v73 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
  v74 = v107;
  BaseObjectGraph.injectIfAvailable<A>(_:)();
  v75 = *(v73 - 8);
  if ((*(v75 + 48))(v74, 1, v73) == 1)
  {
    (*(v50 + 8))(v63, v49);

    sub_1000F40E0(v74);
  }

  else
  {
    v121 = 0;
    v119 = 0u;
    v120 = 0u;
    (*(v87 + 104))(v102, enum case for FlowPage.viewController(_:), v88);
    v77 = type metadata accessor for URL();
    (*(*(v77 - 8) + 56))(v103, 1, 1, v77);
    v78 = type metadata accessor for ReferrerData();
    (*(*(v78 - 8) + 56))(v104, 1, 1, v78);
    v118 = v114;
    v117 = v72;
    v115 = v72;
    static ActionMetrics.notInstrumented.getter();
    (*(v89 + 104))(v94, enum case for FlowPresentationContext.infer(_:), v90);
    (*(v92 + 104))(v96, enum case for FlowAnimationBehavior.infer(_:), v93);
    (*(v95 + 104))(v98, enum case for FlowOrigin.inapp(_:), v97);
    static FlowActionPresentation.stackPush.getter();
    type metadata accessor for FlowAction();
    swift_allocObject();
    v79 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
    v80 = v107;
    sub_1005F9C8C(v79, 1, v116, v107);

    (*(v50 + 8))(v106, v111);
    (*(v75 + 8))(v80, v73);
  }
}

uint64_t sub_1000F3DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ComponentLayoutOptions();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  static ComponentLayoutOptions.overflowed.getter();
  sub_10032B148(v10, v7);
  v11 = *(v5 + 8);
  v11(v7, v4);
  v11(v10, v4);
  return (*(v5 + 16))(a2, a1, v4);
}

void sub_1000F3F54()
{
  swift_unknownObjectWeakDestroy();
  sub_100007000((v0 + qword_100973FD0));
  v1 = *(v0 + qword_100973FD8);
}

uint64_t sub_1000F3FA4()
{
  v0 = SelectionHandlerCollectionElementsObserver.deinit();

  swift_unknownObjectWeakDestroy();
  sub_100007000((v0 + qword_100973FD0));
  v1 = *(v0 + qword_100973FD8);

  return swift_deallocClassInstance();
}

uint64_t sub_1000F4028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F4070(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002849C(&unk_10097DAE0, &qword_1007B5CA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F40E0(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000F4148()
{
  v1 = [v0 animationKeys];
  if (v1)
  {
    v3 = v1;
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = v4 + 40;
      do
      {

        v7 = String._bridgeToObjectiveC()();
        v8 = [v0 animationForKey:v7];

        if (v8)
        {
          if (([v8 isRemovedOnCompletion] & 1) == 0)
          {
            v9 = String._bridgeToObjectiveC()();

            [v0 removeAnimationForKey:v9];

            goto LABEL_6;
          }
        }

LABEL_6:
        v6 += 16;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void sub_1000F43F4(__n128 a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SubviewToAncestorResizingView();
  objc_msgSendSuper2(&v6, "layoutSubviews");
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      [v3 bounds];
      [v1 convertRect:v3 fromCoordinateSpace:?];
      [v5 setFrame:?];

      v3 = v5;
    }
  }
}

id sub_1000F44F4(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SubviewToAncestorResizingView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_1000F459C(void *a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect);
  if (v3)
  {
    v10 = v3;
    v4 = [v10 tintColor];
    if (v4)
    {
      v5 = v4;
      if (v2)
      {
        sub_100028BB8();
        v6 = v2;
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {

LABEL_13:
          a1 = v10;
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    else if (!v2)
    {
      goto LABEL_13;
    }

    [v10 setTintColor:v2];
    v8 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView);
    if (v8)
    {
      v9 = v8;
      [v9 setEffect:v10];

      a1 = v2;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_14:
}

void (*sub_1000F46CC(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect);
  if (v3)
  {
    v3 = [v3 tintColor];
  }

  *a1 = v3;
  return sub_1000F4734;
}

void sub_1000F4734(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_1000F459C(v2);
  }

  else
  {
    sub_1000F459C(*a1);
  }
}

void sub_1000F479C(char a1)
{
  v2 = v1[OBJC_IVAR____TtC8AppStore11OfferButton_isInstalling];
  v1[OBJC_IVAR____TtC8AppStore11OfferButton_isInstalling] = a1;
  if (v2 != (a1 & 1))
  {
    if (a1)
    {
      v3 = objc_opt_self();
      v4 = swift_allocObject();
      *(v4 + 16) = v1;
      v8[4] = sub_1000F789C;
      v8[5] = v4;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_100007A08;
      v8[3] = &unk_1008B43D0;
      v5 = _Block_copy(v8);
      v6 = v1;

      [v3 transitionWithView:v6 duration:5242880 options:v5 animations:0 completion:0.3];
      _Block_release(v5);
    }

    else
    {
      v7 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_imageView];

      [v7 setHidden:0];
    }
  }
}

uint64_t sub_1000F4A10(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v21.receiver = v6;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, "frame");
  v14 = v13 != a4 || v12 != a3;
  v15 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(v6 + v15, v19);
  sub_10002A400(v19, v20);
  if (dispatch thunk of OfferButtonConfiguration.shouldReapply(sizeChanged:)())
  {
    sub_100007000(v19);
    goto LABEL_6;
  }

  if (!v14)
  {
    return sub_100007000(v19);
  }

  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = 0.0;
  v23.size.height = 0.0;
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  v17 = CGRectEqualToRect(v22, v23);
  result = sub_100007000(v19);
  if (!v17)
  {
LABEL_6:
    sub_10002C0AC(v7 + v15, v19);
    sub_10002A400(v19, v20);
    sub_1000F78C4(&qword_1009741F0, v16, type metadata accessor for OfferButton, &unk_1007B5D98);
    dispatch thunk of OfferButtonConfiguration.unapply<A>(to:)();
    sub_100007000(v19);
    sub_10002C0AC(v7 + v15, v19);
    sub_10002A400(v19, v20);
    dispatch thunk of OfferButtonConfiguration.apply<A>(to:)();
    return sub_100007000(v19);
  }

  return result;
}

void sub_1000F4BF0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8AppStore11OfferButton_effectShape];
  [v2 setHidden:0];
  [v2 setFillColor:0];
  v3 = *&v0[OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape];
  [v3 setHidden:0];
  [v3 setFillColor:0];
  v4 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_imageView];
  [v4 setHidden:0];
  v5 = [v1 tintColor];
  [v4 setTintColor:v5];

  v6 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_label];
  [v6 setHidden:0];
  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:1];
  [*&v1[OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel] setHidden:1];
  [v4 bounds];
  [v4 setBounds:?];
  v7 = type metadata accessor for Feature();
  v65[3] = v7;
  v65[4] = sub_1000F78C4(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v8 = sub_1000056E0(v65);
  (*(*(v7 - 8) + 104))(v8, enum case for Feature.glass_offer_button_2025A(_:), v7);
  LOBYTE(v7) = isFeatureEnabled(_:)();
  sub_100007000(v65);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView;
    v10 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView];
    if (v10)
    {
      v11 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView];
    }

    else
    {
      v11 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView];
      v10 = 0;
    }

    v27 = v10;
    [v11 bounds];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v35 = v34;

    v72.origin.x = v29;
    v72.origin.y = v31;
    v72.size.width = v33;
    v72.size.height = v35;
    MidX = CGRectGetMidX(v72);
    v73.origin.x = v29;
    v73.origin.y = v31;
    v73.size.width = v33;
    v73.size.height = v35;
    [v4 setCenter:{MidX, CGRectGetMidY(v73)}];
    v37 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_shapeLayerView];
    [v37 bounds];
    x = v74.origin.x;
    y = v74.origin.y;
    width = v74.size.width;
    height = v74.size.height;
    v42 = CGRectGetMidX(v74);
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    [v2 setPosition:{v42, CGRectGetMidY(v75)}];
    [v37 bounds];
    v43 = v76.origin.x;
    v44 = v76.origin.y;
    v45 = v76.size.width;
    v46 = v76.size.height;
    v47 = CGRectGetMidX(v76);
    v77.origin.x = v43;
    v77.origin.y = v44;
    v77.size.width = v45;
    v77.size.height = v46;
    [v3 setPosition:{v47, CGRectGetMidY(v77)}];
    v48 = *&v1[v9];
    if (v48)
    {
      v49 = *&v1[v9];
    }

    else
    {
      v49 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView];
      v48 = 0;
    }

    v50 = v48;
    [v49 bounds];
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;

    v78.origin.x = v52;
    v78.origin.y = v54;
    v78.size.width = v56;
    v78.size.height = v58;
    v59 = CGRectGetMidX(v78);
    v79.origin.x = v52;
    v79.origin.y = v54;
    v79.size.width = v56;
    v79.size.height = v58;
    [v6 setCenter:{v59, CGRectGetMidY(v79)}];
    v60 = *&v1[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v62 = Strong;
      v63 = swift_unknownObjectWeakLoadStrong();
      if (v63)
      {
        v64 = v63;
        [v62 bounds];
        [v60 convertRect:v62 fromCoordinateSpace:?];
        [v64 setFrame:?];
      }

      else
      {
      }
    }
  }

  else
  {
    [v3 position];
    [v4 setCenter:?];
    [v1 bounds];
    v12 = v66.origin.x;
    v13 = v66.origin.y;
    v14 = v66.size.width;
    v15 = v66.size.height;
    v16 = CGRectGetMidX(v66);
    v67.origin.x = v12;
    v67.origin.y = v13;
    v67.size.width = v14;
    v67.size.height = v15;
    [v2 setPosition:{v16, CGRectGetMidY(v67)}];
    [v1 bounds];
    v17 = v68.origin.x;
    v18 = v68.origin.y;
    v19 = v68.size.width;
    v20 = v68.size.height;
    v21 = CGRectGetMidX(v68);
    v69.origin.x = v17;
    v69.origin.y = v18;
    v69.size.width = v19;
    v69.size.height = v20;
    [v3 setPosition:{v21, CGRectGetMidY(v69)}];
    [v1 bounds];
    v22 = v70.origin.x;
    v23 = v70.origin.y;
    v24 = v70.size.width;
    v25 = v70.size.height;
    v26 = CGRectGetMidX(v70);
    v71.origin.x = v22;
    v71.origin.y = v23;
    v71.size.width = v24;
    v71.size.height = v25;
    [v6 setCenter:{v26, CGRectGetMidY(v71)}];
  }

  [v2 setStrokeStart:0.0];
  [v2 setStrokeEnd:0.0];
  [v3 setStrokeStart:0.0];
  [v3 setStrokeEnd:1.0];
  sub_1000F4148();
}

id sub_1000F51C0(char *a1, char a2, void *a3)
{
  [a1 setNeedsLayout];
  if (a2)
  {

    return [a1 layoutIfNeeded];
  }

  else
  {
    v8.receiver = a1;
    v8.super_class = type metadata accessor for OfferButton();
    objc_msgSendSuper2(&v8, "invalidateIntrinsicContentSize");
    v7 = &a1[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
    *v7 = 0;
    *(v7 + 1) = 0;
    v7[16] = 1;
    [a3 setNeedsLayout];
    return [a3 layoutIfNeeded];
  }
}

char *sub_1000F5284(int a1, uint64_t a2)
{
  v3 = v2;
  v102 = a1;
  ObjectType = swift_getObjectType();
  v97 = type metadata accessor for AutomationSemantics();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for OfferButtonMetrics();
  v107 = *(v108 - 8);
  __chkstk_darwin(v108);
  v105 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v103 = &v94 - v7;
  v104 = v8;
  __chkstk_darwin(v9);
  v106 = &v94 - v10;
  v11 = type metadata accessor for UICornerConfiguration();
  __chkstk_darwin(v11 - 8);
  v94 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for DirectionalTextAlignment();
  v13 = *(v111 - 8);
  __chkstk_darwin(v111);
  v110 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v94 - v16;
  v18 = OBJC_IVAR____TtC8AppStore11OfferButton_effectShape;
  *&v2[v18] = [objc_allocWithZone(CAShapeLayer) init];
  v19 = OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape;
  *&v2[v19] = [objc_allocWithZone(CAShapeLayer) init];
  v20 = OBJC_IVAR____TtC8AppStore11OfferButton_shapeLayerView;
  *&v2[v20] = [objc_allocWithZone(UIView) init];
  v21 = OBJC_IVAR____TtC8AppStore11OfferButton_imageView;
  *&v2[v21] = [objc_allocWithZone(UIImageView) init];
  v101 = OBJC_IVAR____TtC8AppStore11OfferButton_label;
  if (qword_10096E0F0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for FontUseCase();
  v23 = sub_1000056A8(v22, qword_1009D1250);
  v24 = *(v22 - 8);
  v100 = *(v24 + 16);
  v100(v17, v23, v22);
  v99 = *(v24 + 56);
  v99(v17, 0, 1, v22);
  v25 = enum case for DirectionalTextAlignment.none(_:);
  v98 = *(v13 + 104);
  v98(v110, enum case for DirectionalTextAlignment.none(_:), v111);
  v26 = type metadata accessor for DynamicTypeLabel();
  v27 = objc_allocWithZone(v26);
  *&v2[v101] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v28 = OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v29 = sub_1000056A8(v22, qword_1009D1298);
  v100(v17, v29, v22);
  v99(v17, 0, 1, v22);
  static OfferButtonStyling.maxNumberOfLinesForSubtitle.getter();
  v98(v110, v25, v111);
  v30 = objc_allocWithZone(v26);
  *&v2[v28] = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v31 = OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *&v2[v31] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v32 = OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect;
  *&v2[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect] = 0;
  v33 = OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView;
  *&v2[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView] = 0;
  v34 = &v2[OBJC_IVAR____TtC8AppStore11OfferButton_presenter];
  *v34 = 0u;
  *(v34 + 1) = 0u;
  *(v34 + 4) = 0;
  *&v2[OBJC_IVAR____TtC8AppStore11OfferButton_displayProperties] = 0;
  v2[OBJC_IVAR____TtC8AppStore11OfferButton_isInstalling] = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v35 = &v2[OBJC_IVAR____TtC8AppStore11OfferButton_isEnabledObserver];
  *v35 = 0u;
  *(v35 + 1) = 0u;
  v2[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled] = 1;
  v2[OBJC_IVAR____TtC8AppStore11OfferButton_includeTopPadding] = 2;
  v36 = &v2[OBJC_IVAR____TtC8AppStore11OfferButton__configuration];
  v36[3] = type metadata accessor for EmptyConfiguration();
  v36[4] = &protocol witness table for EmptyConfiguration;
  sub_1000056E0(v36);
  EmptyConfiguration.init()();
  v37 = &v2[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  *v37 = 0;
  *(v37 + 1) = 0;
  v37[16] = 1;
  *&v2[OBJC_IVAR____TtC8AppStore11OfferButton_traitChangeRegistration] = 0;
  if (v102)
  {
    v38 = type metadata accessor for Feature();
    *(&v114 + 1) = v38;
    v115 = sub_1000F78C4(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v39 = sub_1000056E0(&aBlock);
    v40 = enum case for Feature.glass_offer_button_2025A(_:);
    (*(*(v38 - 8) + 104))(v39, enum case for Feature.glass_offer_button_2025A(_:), v38);
    LOBYTE(v38) = isFeatureEnabled(_:)();
    sub_100007000(&aBlock);
    if (v38)
    {
      v41 = [objc_allocWithZone(UIGlassEffect) init];
      v42 = *&v3[v32];
      *&v3[v32] = v41;

      v43 = [objc_allocWithZone(UIVisualEffectView) init];
      goto LABEL_10;
    }
  }

  else
  {
    v40 = enum case for Feature.glass_offer_button_2025A(_:);
  }

  v44 = *&v3[v32];
  *&v3[v32] = 0;

  v43 = 0;
LABEL_10:
  v45 = *&v3[v33];
  *&v3[v33] = v43;

  v117.receiver = v3;
  v117.super_class = ObjectType;
  v46 = objc_msgSendSuper2(&v117, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v46 setScalesLargeContentImage:1];
  v47 = [objc_opt_self() mainScreen];
  [v47 scale];
  v49 = v48;

  v50 = OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape;
  [*&v46[OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape] setContentsScale:v49];
  [*&v46[v50] setFillColor:0];
  v51 = OBJC_IVAR____TtC8AppStore11OfferButton_effectShape;
  [*&v46[OBJC_IVAR____TtC8AppStore11OfferButton_effectShape] setContentsScale:v49];
  [*&v46[v51] setFillColor:0];
  v52 = OBJC_IVAR____TtC8AppStore11OfferButton_label;
  v53 = *&v46[OBJC_IVAR____TtC8AppStore11OfferButton_label];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  v54 = OBJC_IVAR____TtC8AppStore11OfferButton_imageView;
  [*&v46[OBJC_IVAR____TtC8AppStore11OfferButton_imageView] setContentMode:4];
  v55 = type metadata accessor for Feature();
  *(&v114 + 1) = v55;
  v115 = sub_1000F78C4(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v56 = sub_1000056E0(&aBlock);
  (*(*(v55 - 8) + 104))(v56, v40, v55);
  v57 = isFeatureEnabled(_:)();
  sub_100007000(&aBlock);
  if (v57)
  {
    v58 = *&v46[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView];
    if (v58 && (v59 = *&v46[OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect]) != 0)
    {
      v60 = v58;
      v61 = v59;
      static UICornerConfiguration.capsule(maximumRadius:)();
      UIView.cornerConfiguration.setter();
      [v60 setUserInteractionEnabled:0];
      [v60 setEffect:v61];
      v62 = [v60 contentView];
      [v62 addSubview:*&v46[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView]];

      [v46 addSubview:v60];
    }

    else
    {
      [v46 addSubview:*&v46[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView]];
    }

    v66 = OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView;
    swift_unknownObjectWeakAssign();
    v67 = OBJC_IVAR____TtC8AppStore11OfferButton_shapeLayerView;
    swift_unknownObjectWeakAssign();
    v68 = [*&v46[v67] layer];
    [v68 addSublayer:*&v46[v50]];

    v69 = [*&v46[v67] layer];
    [v69 addSublayer:*&v46[v51]];

    [*&v46[v66] addSubview:*&v46[v67]];
    [*&v46[v66] addSubview:*&v46[v52]];
    [*&v46[v66] addSubview:*&v46[v54]];
  }

  else
  {
    v63 = v46;
    v64 = [v63 layer];
    [v64 addSublayer:*&v46[v50]];

    v65 = [v63 layer];
    [v65 addSublayer:*&v46[v51]];

    [v63 addSubview:*&v46[v52]];
    [v63 addSubview:*&v46[v54]];
  }

  v70 = OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel;
  v71 = *&v46[OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel];
  dispatch thunk of DynamicTypeLabel.wantsFastBaselineMeasurement.setter();

  [v46 addSubview:*&v46[v70]];
  [*&v46[v70] setShowsLargeContentViewer:1];
  v72 = [objc_allocWithZone(UILargeContentViewerInteraction) init];
  [v46 addInteraction:v72];

  isEscapingClosureAtFileLocation = [v46 traitCollection];
  v74 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v75 = v108;
  v76 = v107;
  v77 = v106;
  if ((v74 & 1) == 0)
  {
    if (qword_10096ECC0 != -1)
    {
      swift_once();
    }

    v78 = qword_100991028;
    goto LABEL_23;
  }

  if (qword_10096ECB8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v78 = qword_100991010;
LABEL_23:
    v79 = sub_1000056A8(v75, v78);
    v80 = *(v76 + 16);
    v81 = v103;
    v80(v103, v79, v75);

    v82 = *(v76 + 32);
    v82(v77, v81, v75);
    v83 = objc_opt_self();
    v84 = v105;
    v80(v105, v77, v75);
    v85 = (*(v76 + 80) + 24) & ~*(v76 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = v46;
    v82((v86 + v85), v84, v75);
    v87 = swift_allocObject();
    *(v87 + 16) = sub_1000F7F6C;
    *(v87 + 24) = v86;
    v115 = sub_10006F094;
    v116 = v87;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v114 = sub_1000489A8;
    *(&v114 + 1) = &unk_1008B4448;
    v88 = _Block_copy(&aBlock);
    v46 = v46;

    [v83 performWithoutAnimation:v88];
    _Block_release(v88);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  v89 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(&v46[v89], &aBlock);
  sub_10002A400(&aBlock, *(&v114 + 1));
  sub_1000F78C4(&qword_1009741F0, v90, type metadata accessor for OfferButton, &unk_1007B5D98);
  dispatch thunk of OfferButtonConfiguration.apply<A>(to:)();
  sub_100007000(&aBlock);
  aBlock = 0u;
  v114 = 0u;
  memset(v112, 0, sizeof(v112));
  v91 = v95;
  static AutomationSemantics.offerButton(id:parentId:)();
  sub_10002B894(v112, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(&aBlock, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();
  (*(v96 + 8))(v91, v97);
  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v92 = swift_allocObject();
  *(v92 + 16) = xmmword_1007B10D0;
  *(v92 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v92 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  (*(v76 + 8))(v77, v75);

  return v46;
}

id sub_1000F62D4(uint64_t a1, double a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8AppStore11OfferButton_label);
  OfferButtonMetrics.minimumSize.getter();
  [v3 frame];
  [v3 setFrame:?];
  v4 = *(a1 + OBJC_IVAR____TtC8AppStore11OfferButton_effectShape);
  OfferButtonMetrics.minimumSize.getter();
  [v4 frame];
  [v4 setFrame:?];
  v5 = *(a1 + OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape);
  OfferButtonMetrics.minimumSize.getter();
  [v5 frame];

  return [v5 setFrame:?];
}

double sub_1000F65D4(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = [v2 superview];
  if (v3)
  {

    v5 = OBJC_IVAR____TtC8AppStore11OfferButton_traitChangeRegistration;
    if (*&v2[OBJC_IVAR____TtC8AppStore11OfferButton_traitChangeRegistration])
    {
      return result;
    }

    sub_10002849C(&qword_10097B110, &unk_1007B27C0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1007B5350;
    *(v6 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
    *(v6 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
    *(v6 + 48) = type metadata accessor for UITraitLayoutDirection();
    *(v6 + 56) = &protocol witness table for UITraitLayoutDirection;
    *(v6 + 64) = type metadata accessor for UITraitDisplayScale();
    *(v6 + 72) = &protocol witness table for UITraitDisplayScale;
    *(v6 + 80) = type metadata accessor for UITraitLegibilityWeight();
    *(v6 + 88) = &protocol witness table for UITraitLegibilityWeight;
    v7 = UIView.registerForTraitChanges<A>(_:handler:)();

    *&v2[v5] = v7;
  }

  else
  {
    if (!*&v2[OBJC_IVAR____TtC8AppStore11OfferButton_traitChangeRegistration])
    {
      return result;
    }

    swift_unknownObjectRetain();
    UIView.unregisterForTraitChanges(_:)();
  }

  swift_unknownObjectRelease();
  return result;
}

void sub_1000F6788(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v16.receiver = v2;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v4 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(&v2[v4], v13);
  sub_10002A400(v13, v14);
  [v2 bounds];
  [objc_opt_self() areAnimationsEnabled];
  sub_1000F78C4(&qword_1009741F0, v5, type metadata accessor for OfferButton, &unk_1007B5D98);
  dispatch thunk of OfferButtonConfiguration.layout<A>(button:in:disableAnimations:)();
  sub_100007000(v13);
  v6 = type metadata accessor for Feature();
  v14 = v6;
  v15 = sub_1000F78C4(&qword_100972E50, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v7 = sub_1000056E0(v13);
  (*(*(v6 - 8) + 104))(v7, enum case for Feature.glass_offer_button_2025A(_:), v6);
  LOBYTE(v6) = isFeatureEnabled(_:)();
  sub_100007000(v13);
  if (v6)
  {
    v8 = *&v3[OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView];
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v10 = Strong;
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
        v12 = v11;
        [v10 bounds];
        [v8 convertRect:v10 fromCoordinateSpace:?];
        [v12 setFrame:?];

        v10 = v12;
      }
    }
  }
}

id sub_1000F6D88(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

uint64_t sub_1000F6E50(char a1, uint64_t a2)
{
  swift_getObjectType();
  LODWORD(v4) = 1057971241;
  if (a1)
  {
    *&v4 = 1.0;
    v5 = 1.0;
  }

  else
  {
    v5 = 0.25;
  }

  if (a1)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.56;
  }

  [*(v2 + OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape) setOpacity:v4];
  [*(v2 + OBJC_IVAR____TtC8AppStore11OfferButton_imageView) setAlpha:v5];
  [*(v2 + OBJC_IVAR____TtC8AppStore11OfferButton_label) setAlpha:v6];
  v7 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(v2 + v7, v10);
  sub_10002A400(v10, v10[3]);
  sub_1000F78C4(&qword_1009741F0, v8, type metadata accessor for OfferButton, &unk_1007B5D98);
  dispatch thunk of OfferButtonConfiguration.reapply<A>(colorsTo:)();
  return sub_100007000(v10);
}

id sub_1000F6FAC(uint64_t a1, uint64_t a2)
{
  v12.receiver = v2;
  v12.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v12, "invalidateIntrinsicContentSize");
  v3 = &v2[OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = objc_opt_self();
  v5 = [v4 areAnimationsEnabled];
  [v4 setAnimationsEnabled:0];
  v6 = OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled;
  v2[OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled] = 0;
  v7 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
  swift_beginAccess();
  sub_10002C0AC(&v2[v7], v10);
  sub_10002A400(v10, v11);
  sub_1000F78C4(&qword_1009741F0, v8, type metadata accessor for OfferButton, &unk_1007B5D98);
  dispatch thunk of OfferButtonConfiguration.unapply<A>(to:)();
  sub_100007000(v10);
  sub_10002C0AC(&v2[v7], v10);
  sub_10002A400(v10, v11);
  dispatch thunk of OfferButtonConfiguration.apply<A>(to:)();
  sub_100007000(v10);
  [v4 setAnimationsEnabled:v5];
  v2[v6] = 1;
  [v2 setNeedsLayout];
  return [v2 setNeedsDisplay];
}

id sub_1000F7240@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_label);
  *a1 = v2;
  return v2;
}

id sub_1000F7254@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel);
  *a1 = v2;
  return v2;
}

id sub_1000F7268@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_imageView);
  *a1 = v2;
  return v2;
}

id sub_1000F727C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "isHighlighted");
}

id sub_1000F72B4()
{
  v1 = [v0 tintColor];

  return v1;
}

id sub_1000F72EC()
{
  result = [objc_opt_self() areAnimationsEnabled];
  if (result)
  {
    return *(v0 + OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled);
  }

  return result;
}

id (*sub_1000F735C(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = [v1 overrideUserInterfaceStyle];
  return sub_1000F73B0;
}

id sub_1000F73C4()
{
  result = *(v0 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect);
  if (result)
  {
    return [result tintColor];
  }

  return result;
}

uint64_t (*sub_1000F7400(void *a1))()
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
  v2[4] = sub_1000F46CC(v2);
  return sub_1000B4CAC;
}

void *sub_1000F7488()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView);
  v2 = v1;
  if (!v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView);
    v3 = v2;
  }

  v4 = v1;
  return v2;
}

id sub_1000F74D8()
{
  v1 = [v0 largeContentImage];

  return v1;
}

void sub_1000F7510(void *a1)
{
  [v1 setLargeContentImage:a1];
}

void (*sub_1000F7558(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 largeContentImage];
  return sub_1000F75B4;
}

void sub_1000F75B4(id *a1)
{
  v1 = *a1;
  [a1[1] setLargeContentImage:?];
}

uint64_t sub_1000F75FC()
{
  v1 = [v0 largeContentTitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

void sub_1000F7664(double a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  [v3 setLargeContentTitle:v4];
}

uint64_t (*sub_1000F76D0(uint64_t **a1))()
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
  v2[4] = sub_1000F7740(v2);
  return sub_1000C2700;
}

void (*sub_1000F7740(uint64_t *a1))(uint64_t a1, char a2, double a3)
{
  a1[2] = v1;
  v3 = [v1 largeContentTitle];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return sub_1000F77C8;
}

void sub_1000F77C8(uint64_t a1, char a2, double a3)
{
  v4 = *(a1 + 8);
  if (a2)
  {
    if (v4)
    {

      v5 = String._bridgeToObjectiveC()();
    }

    else
    {
      v5 = 0;
    }

    [*(a1 + 16) setLargeContentTitle:v5];
  }

  else if (v4)
  {
    v5 = String._bridgeToObjectiveC()();

    [*(a1 + 16) setLargeContentTitle:v5];
  }

  else
  {
    v5 = 0;
    [*(a1 + 16) setLargeContentTitle:0];
  }
}

uint64_t sub_1000F78C4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1000F790C(uint64_t a1)
{
  v1 = a1 + OBJC_IVAR____TtC8AppStore11OfferButton_presenter;
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_10002C0AC(v1, v2);
    sub_10002A400(v2, v2[3]);
    dispatch thunk of OfferButtonPresenter.update(ignoringCache:)();
    sub_100007000(v2);
  }
}

uint64_t sub_1000F79BC()
{
  v1 = v0 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize;
  if (*(v0 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize + 16))
  {
    v2 = OBJC_IVAR____TtC8AppStore11OfferButton__configuration;
    swift_beginAccess();
    sub_10002C0AC(v0 + v2, v8);
    sub_10002A400(v8, v8[3]);
    dispatch thunk of OfferButtonConfiguration.size(in:)();
    v4 = v3;
    v6 = v5;
    result = sub_100007000(v8);
    *v1 = v4;
    *(v1 + 8) = v6;
    *(v1 + 16) = 0;
  }

  return result;
}

void sub_1000F7A7C()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = OBJC_IVAR____TtC8AppStore11OfferButton_effectShape;
  *(v1 + v8) = [objc_allocWithZone(CAShapeLayer) init];
  v9 = OBJC_IVAR____TtC8AppStore11OfferButton_outlineShape;
  *(v1 + v9) = [objc_allocWithZone(CAShapeLayer) init];
  v10 = OBJC_IVAR____TtC8AppStore11OfferButton_shapeLayerView;
  *(v1 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC8AppStore11OfferButton_imageView;
  *(v1 + v11) = [objc_allocWithZone(UIImageView) init];
  v29 = OBJC_IVAR____TtC8AppStore11OfferButton_label;
  if (qword_10096E0F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v13 = sub_1000056A8(v12, qword_1009D1250);
  v14 = *(v12 - 8);
  v28 = *(v14 + 16);
  v28(v7, v13, v12);
  v27 = *(v14 + 56);
  v27(v7, 0, 1, v12);
  v15 = enum case for DirectionalTextAlignment.none(_:);
  v16 = *(v3 + 104);
  v30 = v3 + 104;
  v31 = v2;
  v16(v32, enum case for DirectionalTextAlignment.none(_:), v2);
  v17 = type metadata accessor for DynamicTypeLabel();
  v18 = objc_allocWithZone(v17);
  *(v1 + v29) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v19 = OBJC_IVAR____TtC8AppStore11OfferButton_subtitleLabel;
  if (qword_10096E108 != -1)
  {
    swift_once();
  }

  v20 = sub_1000056A8(v12, qword_1009D1298);
  v28(v7, v20, v12);
  v27(v7, 0, 1, v12);
  static OfferButtonStyling.maxNumberOfLinesForSubtitle.getter();
  v16(v32, v15, v31);
  v21 = objc_allocWithZone(v17);
  *(v1 + v19) = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
  v22 = OBJC_IVAR____TtC8AppStore11OfferButton_buttonContainerView;
  type metadata accessor for SubviewToAncestorResizingView();
  *(v1 + v22) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffect) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_glassEffectView) = 0;
  v23 = v1 + OBJC_IVAR____TtC8AppStore11OfferButton_presenter;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_displayProperties) = 0;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_isInstalling) = 0;
  swift_weakInit();
  swift_unknownObjectWeakInit();
  v24 = (v1 + OBJC_IVAR____TtC8AppStore11OfferButton_isEnabledObserver);
  *v24 = 0u;
  v24[1] = 0u;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_isConfigurationLayoutEnabled) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_includeTopPadding) = 2;
  v25 = (v1 + OBJC_IVAR____TtC8AppStore11OfferButton__configuration);
  v25[3] = type metadata accessor for EmptyConfiguration();
  v25[4] = &protocol witness table for EmptyConfiguration;
  sub_1000056E0(v25);
  EmptyConfiguration.init()();
  v26 = v1 + OBJC_IVAR____TtC8AppStore11OfferButton_cachedIntrinsicContentSize;
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 1;
  *(v1 + OBJC_IVAR____TtC8AppStore11OfferButton_traitChangeRegistration) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1000F7F6C()
{
  type metadata accessor for OfferButtonMetrics();
  v2 = *(v0 + 16);

  return sub_1000F62D4(v2, v1);
}

double sub_1000F7FD8()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_1009CDF98);
  sub_1000056A8(v0, qword_1009CDF98);
  AspectRatio.init(_:_:)();
  return result;
}

uint64_t sub_1000F802C()
{
  v0 = sub_10002849C(&qword_100974248, qword_1007B5F58);
  __chkstk_darwin(v0 - 8);
  v20 = v19 - v1;
  v2 = type metadata accessor for FontSource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AspectRatio();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BrickLayout.Metrics();
  sub_100005644(v10, qword_1009CDFB0);
  v19[2] = sub_1000056A8(v10, qword_1009CDFB0);
  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v11 = sub_1000056A8(v6, qword_1009CDF98);
  (*(v7 + 16))(v9, v11, v6);
  v19[1] = v9;
  if (qword_10096E2B0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for FontUseCase();
  v19[0] = sub_1000056A8(v12, qword_1009D1790);
  v13 = *(*(v12 - 8) + 16);
  v13(v5, v19[0], v12);
  v14 = enum case for FontSource.useCase(_:);
  v15 = *(v3 + 104);
  v15(v5, enum case for FontSource.useCase(_:), v2);
  v22[3] = type metadata accessor for StaticDimension();
  v22[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v22);
  v21[3] = v2;
  v21[4] = &protocol witness table for FontSource;
  v16 = sub_1000056E0(v21);
  (*(v3 + 16))(v16, v5, v2);
  StaticDimension.init(_:scaledLike:)();
  (*(v3 + 8))(v5, v2);
  v17 = v20;
  v13(v20, v19[0], v12);
  v15(v17, v14, v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  return BrickLayout.Metrics.init(artworkAspectRatio:labelSpace:labelFontSource:isLabelFullWidth:numberOfLines:)();
}

uint64_t sub_1000F83D0()
{
  v0 = sub_10002849C(&qword_100974248, qword_1007B5F58);
  __chkstk_darwin(v0 - 8);
  v2 = v11 - v1;
  v3 = type metadata accessor for AspectRatio();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BrickLayout.Metrics();
  sub_100005644(v7, qword_1009CDFC8);
  sub_1000056A8(v7, qword_1009CDFC8);
  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v8 = sub_1000056A8(v3, qword_1009CDF98);
  (*(v4 + 16))(v6, v8, v3);
  v9 = type metadata accessor for FontSource();
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  return BrickLayout.Metrics.init(artworkAspectRatio:labelSpace:labelFontSource:isLabelFullWidth:numberOfLines:)();
}

char *sub_1000F85B8(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_itemLayoutContext;
  v14 = type metadata accessor for ItemLayoutContext();
  (*(*(v14 - 8) + 56))(&v7[v13], 1, 1, v14);
  *&v7[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel] = 0;
  v15 = &v7[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText];
  type metadata accessor for ArtworkView();
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v7[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_artworkView] = static ArtworkView.brickArtworkView.getter();
  v21.receiver = v7;
  v21.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_artworkView]];

  sub_10002849C(&qword_10097B110, &unk_1007B27C0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1007B10D0;
  *(v19 + 32) = type metadata accessor for UITraitLegibilityWeight();
  *(v19 + 40) = &protocol witness table for UITraitLegibilityWeight;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v16;
}

id sub_1000F88B0()
{
  v1 = v0;
  v2 = type metadata accessor for DirectionalTextAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  *&v7 = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v30 - v8;
  v10 = *&v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText + 8];
  if (v10)
  {
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *&v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabelText] & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      v12 = OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel;
      v13 = *&v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel];
      v14 = &StringUserDefaultsDebugSetting;
      if (v13)
      {
      }

      else
      {
        v17 = qword_10096E2B0;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for FontUseCase();
        v19 = sub_1000056A8(v18, qword_1009D1790);
        v20 = *(v18 - 8);
        (*(v20 + 16))(v9, v19, v18);
        (*(v20 + 56))(v9, 0, 1, v18);
        (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
        v21 = objc_allocWithZone(type metadata accessor for DynamicTypeLabel());
        v22 = DynamicTypeLabel.init(useCase:numberOfLines:lineBreakMode:isUserInteractionEnabled:directionalTextAlignment:contentSizeCategoryMapping:)();
        v23 = *&v1[v12];
        if (v23)
        {
          [v23 removeFromSuperview];
          v24 = *&v1[v12];
        }

        else
        {
          v24 = 0;
        }

        v14 = &StringUserDefaultsDebugSetting;
        *&v1[v12] = v22;
        v25 = v22;

        v26 = [v1 contentView];
        [v26 addSubview:v25];

        [v1 setNeedsLayout];
        v13 = *&v1[v12];
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      [v13 setHidden:0];
      v27 = *&v1[v12];
      if (v27)
      {
        v28 = v27;
        v29 = String._bridgeToObjectiveC()();

        [v28 setText:v29];

        return [v1 v14[41].base_meths];
      }

LABEL_20:

      return [v1 v14[41].base_meths];
    }
  }

  v15 = *&v1[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel];
  if (v15)
  {
    [v15 setHidden:{1, v7}];
  }

  return [v1 setNeedsLayout];
}

uint64_t sub_1000F8C64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for LayoutRect();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BrickLayout.Metrics();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v34 - v13;
  v35 = type metadata accessor for BrickLayout();
  v15 = *(v35 - 8);
  *&v16 = __chkstk_darwin(v35).n128_u64[0];
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44.receiver = v3;
  v44.super_class = ObjectType;
  objc_msgSendSuper2(&v44, "layoutSubviews", v16);
  v19 = OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel;
  v20 = *&v3[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_shortDescriptionLabel];
  if (!v20)
  {
    goto LABEL_4;
  }

  v21 = v20;
  if ([v21 isHidden])
  {

LABEL_4:
    if (qword_10096D060 != -1)
    {
      swift_once();
    }

    v22 = sub_1000056A8(v8, qword_1009CDFC8);
    (*(v9 + 16))(v11, v22, v8);
    v23 = *&v3[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_artworkView];
    v42 = type metadata accessor for ArtworkView();
    v43 = &protocol witness table for UIView;
    v41 = v23;
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v24 = v23;
    BrickLayout.init(metrics:artworkView:labelView:)();
    goto LABEL_13;
  }

  if (qword_10096D058 != -1)
  {
    swift_once();
  }

  v25 = sub_1000056A8(v8, qword_1009CDFB0);
  (*(v9 + 16))(v14, v25, v8);
  v26 = *&v3[OBJC_IVAR____TtC8AppStore23BrickCollectionViewCell_artworkView];
  v42 = type metadata accessor for ArtworkView();
  v43 = &protocol witness table for UIView;
  v41 = v26;
  v27 = *&v3[v19];
  if (v27)
  {
    v28 = type metadata accessor for DynamicTypeLabel();
    v29 = &protocol witness table for UILabel;
  }

  else
  {
    v28 = 0;
    v29 = 0;
    *(&v38 + 1) = 0;
    *&v39 = 0;
  }

  *&v38 = v27;
  *(&v39 + 1) = v28;
  v40 = v29;
  v30 = v26;
  v31 = v27;
  BrickLayout.init(metrics:artworkView:labelView:)();

LABEL_13:
  v32 = [v3 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();

  BrickLayout.placeChildren(relativeTo:in:)();
  (*(v36 + 8))(v7, v37);
  return (*(v15 + 8))(v18, v35);
}

uint64_t type metadata accessor for BrickCollectionViewCell(uint64_t a1)
{
  result = qword_100974230;
  if (!qword_100974230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000F920C(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_1000F92CC()
{
  v1 = v0;
  if (qword_10096D050 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AspectRatio();
  sub_1000056A8(v2, qword_1009CDF98);
  v3 = [v0 contentView];
  sub_100028004();
  LayoutMarginsAware<>.layoutFrame.getter();

  AspectRatio.height(fromWidth:)();
  v4 = [v1 contentView];
  LayoutMarginsAware<>.layoutFrame.getter();
  v6 = v5;

  return v6;
}

uint64_t sub_1000F93C4(uint64_t a1, uint64_t a2)
{
  ArtworkView.isImageHidden.setter();
  type metadata accessor for ArtworkView();
  sub_1000F94B4(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  return ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
}

uint64_t sub_1000F945C(uint64_t a1)
{
  result = sub_1000F94B4(&qword_100974240, type metadata accessor for BrickCollectionViewCell, &unk_1007B5F08);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000F94B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TodayCardVideoView(uint64_t a1)
{
  result = qword_100974250;
  if (!qword_100974250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1000F959C(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v95 = a7;
  v93 = a6;
  v96 = a5;
  v97 = a4;
  v98 = a3;
  v99 = a2;
  v88 = type metadata accessor for AutomationSemantics();
  v87 = *(v88 - 8);
  __chkstk_darwin(v88);
  v86 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&unk_100973A50, &unk_1007B4FD0);
  __chkstk_darwin(v11 - 8);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v78 - v15;
  v17 = type metadata accessor for VideoConfiguration();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v78 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v79 = &v78 - v25;
  __chkstk_darwin(v26);
  v28 = &v78 - v27;
  v29 = objc_allocWithZone(v8);
  v29[qword_1009CDFF8] = 7;
  v29[qword_1009CE000] = 0;
  v90 = a1;
  sub_10003D4AC(a1, v104);
  v91 = v22;
  v30 = *(v22 + 16);
  v92 = v21;
  v80 = v30;
  v30(v28, v99, v21);
  v89 = v18;
  v31 = *(v18 + 16);
  v85 = v20;
  v94 = v17;
  v84 = v18 + 16;
  v83 = v31;
  v31(v20, v98, v17);
  v32 = v16;
  sub_100031660(v97, v16, &unk_100973A50, &unk_1007B4FD0);
  sub_100031660(v96, v13, &unk_100973A50, &unk_1007B4FD0);
  sub_100031660(v93, v103, &unk_100988E00, qword_1007B5FC0);
  swift_weakInit();
  *&v29[qword_100988CA8 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_100988CB0 + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v29[qword_100988CB8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v33 = qword_100988CC0;
  *&v29[v33] = [objc_allocWithZone(UIImageView) init];
  v29[qword_100988CC8] = 0;
  v29[qword_100988CD0] = 0;
  v29[qword_100988CD8] = 0;
  *&v29[qword_100988CE0] = 0;
  *&v29[qword_100988CE8] = 0;
  v34 = qword_100988CF0;
  type metadata accessor for AutoPlayVideoSettingsManager();
  *&v29[v34] = static AutoPlayVideoSettingsManager.shared.getter();
  v35 = qword_100988CF8;
  *&v29[v35] = [objc_allocWithZone(type metadata accessor for PlayButton()) init];
  v36 = v28;
  v37 = &v29[qword_1009D21B0];
  v38 = *&UIEdgeInsetsZero.bottom;
  *v37 = *&UIEdgeInsetsZero.top;
  v37[1] = v38;
  v39 = &v29[qword_1009D21B8];
  *v39 = 0;
  *(v39 + 1) = 0;
  v39[16] = 1;
  *&v29[qword_1009D21C0] = 1;
  v29[qword_100988D00] = 0;
  v40 = &v29[qword_1009D21D0];
  *v40 = 0;
  v40[1] = 0;
  *&v29[qword_1009D21E0 + 8] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_1009D21E8] = 0;
  v29[qword_1009D21F0] = 0;
  swift_unknownObjectWeakInit();
  v29[qword_100988D08] = 0;
  v29[qword_1009D2208] = 0;
  *&v29[qword_100988D10] = 0;
  v29[qword_100988D18] = 0;
  swift_beginAccess();
  swift_weakAssign();
  sub_10003D4AC(v104, &v29[qword_1009D21D8]);
  v41 = URL.scheme.getter();
  v43 = v42;
  v44 = static Artwork.URLTemplate.resourceScheme.getter();
  v82 = v36;
  if (v43)
  {
    if (v41 == v44 && v43 == v45)
    {

      v46 = v92;
    }

    else
    {
      v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v46 = v92;
      if ((v47 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v48 = [objc_opt_self() mainBundle];
    URL.lastPathComponent.getter();
    v49 = String._bridgeToObjectiveC()();

    v50 = [v48 URLForResource:v49 withExtension:0];

    if (v50)
    {
      v51 = v78;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = *(v91 + 32);
      v53 = v79;
      v52(v79, v51, v46);
      v52(&v29[qword_1009D21C8], v53, v46);
      goto LABEL_10;
    }
  }

  else
  {

    v46 = v92;
  }

LABEL_9:
  v80(&v29[qword_1009D21C8], v36, v46);
LABEL_10:
  v81 = v32;
  sub_100031660(v32, &v29[qword_1009D2198], &unk_100973A50, &unk_1007B4FD0);
  v54 = v13;
  sub_100031660(v13, &v29[qword_1009D21A0], &unk_100973A50, &unk_1007B4FD0);
  v55 = v85;
  v56 = v94;
  v83(&v29[qword_1009D2200], v85, v94);
  sub_100031660(v103, &v29[qword_1009D21A8], &unk_100988E00, qword_1007B5FC0);
  v57 = type metadata accessor for VideoView(0);
  v102.receiver = v29;
  v102.super_class = v57;
  v58 = objc_msgSendSuper2(&v102, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v58 setClipsToBounds:0];
  v59 = qword_100988CC0;
  [*&v58[qword_100988CC0] setUserInteractionEnabled:0];
  [*&v58[v59] setClipsToBounds:1];
  [v58 addSubview:*&v58[v59]];
  v60 = objc_opt_self();
  v61 = [v60 defaultCenter];
  v62 = static NSNotificationName.AutoPlayVideoSettingsDidChange.getter();
  [v61 addObserver:v58 selector:"didChangeAutoPlayVideoSetting" name:v62 object:0];

  v63 = [v60 defaultCenter];
  [v63 addObserver:v58 selector:"handleMediaServicesReset" name:AVAudioSessionMediaServicesWereResetNotification object:0];

  v64 = qword_100988CF8;
  [*&v58[qword_100988CF8] setHidden:1];
  v65 = *&v58[v64];
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = &v65[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock];
  v68 = *&v65[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock];
  v69 = *&v65[OBJC_IVAR____TtC8AppStore10PlayButton_tapActionBlock + 8];
  *v67 = sub_1000FA7C8;
  v67[1] = v66;
  v70 = v65;

  sub_10001F63C(v68, v69);

  memset(v101, 0, sizeof(v101));
  memset(v100, 0, sizeof(v100));
  v71 = v86;
  static AutomationSemantics.shelfItemSubComponent(itemKind:id:parentId:)();
  sub_10002B894(v100, &unk_1009711D0, &unk_1007B1A10);
  sub_10002B894(v101, &unk_1009711D0, &unk_1007B1A10);
  UIView.setAutomationSemantics(_:)();
  (*(v87 + 8))(v71, v88);
  [v58 addSubview:*&v58[v64]];
  sub_1004E77F8();

  sub_10002B894(v103, &unk_100988E00, qword_1007B5FC0);
  sub_10002B894(v54, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v81, &unk_100973A50, &unk_1007B4FD0);
  v72 = *(v89 + 8);
  v72(v55, v56);
  v73 = *(v91 + 8);
  v74 = v92;
  v73(v82, v92);
  sub_10003D614(v104);
  v75 = v58[qword_100988CD8];
  v58[qword_100988CD8] = 1;
  if (v75)
  {
  }

  else
  {
    v76 = v58;
    sub_1004E1178();
  }

  sub_10002B894(v93, &unk_100988E00, qword_1007B5FC0);
  sub_10002B894(v96, &unk_100973A50, &unk_1007B4FD0);
  sub_10002B894(v97, &unk_100973A50, &unk_1007B4FD0);
  v72(v98, v94);
  v73(v99, v74);
  sub_10003D614(v90);
  return v58;
}

void sub_1000FA22C()
{
  v1 = v0;
  v2 = qword_1009CDFF8;
  v3 = *(v0 + qword_1009CDFF8);
  if (v3 == 4)
  {
    v5 = *(v0 + qword_1009CE000);
    v6 = *(v0 + qword_100988CD8);
    *(v0 + qword_100988CD8) = v5 ^ 1;
    if (v5 & 1) != 0 || (v6)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v3 != 7)
  {
    *(v0 + qword_100988CD8) = 0;
    goto LABEL_9;
  }

  v4 = *(v0 + qword_100988CD8);
  *(v0 + qword_100988CD8) = 1;
  if ((v4 & 1) == 0)
  {
LABEL_7:
    sub_1004E1178();
  }

LABEL_9:
  v7 = qword_100988CE0;
  v8 = *(v0 + qword_100988CE0);
  if (v8)
  {
    v9 = v8;
    v10 = dispatch thunk of VideoPlayer.isPlaying.getter();

    if (v10 & 1) != 0 || (v11 = *(v1 + v7)) != 0 && (v12 = v11, v13 = dispatch thunk of VideoPlayer.shouldBePlaying.getter(), v12, (v13))
    {
      if ((*(v1 + qword_1009CE000) & 1) == 0)
      {
        v14 = *(v1 + v2);
        if (v14 == 7 || v14 == 4)
        {
          v16 = *(v1 + v7);
          if (v16)
          {
            v17 = v16;
            if (dispatch thunk of VideoPlayer.shouldBePlaying.getter())
            {
              [v17 pause];
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1000FA3AC()
{
  v1 = v0;
  v2 = type metadata accessor for VideoConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1009D2200;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = VideoConfiguration.allowsAutoPlay.getter();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0 || (dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v1 + qword_1009CDFF8);
  if (v7 == 7 || v7 == 4)
  {
    return *(v1 + qword_1009CE000);
  }

  else
  {
    return 1;
  }
}

void sub_1000FA508()
{
  v1 = v0;
  v2 = type metadata accessor for VideoConfiguration();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_1009CDFF8;
  v7 = *(v0 + qword_1009CDFF8);
  if (v7 == 4)
  {
    v9 = *(v0 + qword_1009CE000);
    v10 = *(v0 + qword_100988CD8);
    *(v0 + qword_100988CD8) = v9 ^ 1;
    if (v9 & 1) != 0 || (v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v7 != 7)
  {
    *(v0 + qword_100988CD8) = 0;
    goto LABEL_9;
  }

  v8 = *(v0 + qword_100988CD8);
  *(v0 + qword_100988CD8) = 1;
  if ((v8 & 1) == 0)
  {
LABEL_7:
    sub_1004E1178();
  }

LABEL_9:
  v11 = qword_1009CE000;
  if (*(v0 + qword_1009CE000) == 1 && (v12 = qword_1009D2200, swift_beginAccess(), (*(v3 + 16))(v5, v1 + v12, v2), LOBYTE(v12) = VideoConfiguration.allowsAutoPlay.getter(), (*(v3 + 8))(v5, v2), (v12 & 1) != 0) && (dispatch thunk of AutoPlayVideoSettingsManager.isAutoPlayEnabled.getter() & 1) != 0 && ((v13 = *(v1 + v6), v13 != 7) && v13 != 4 || *(v1 + v11) == 1))
  {
    sub_1004DF87C();
  }

  else
  {
    v14 = qword_100988CE0;
    v15 = *(v1 + qword_100988CE0);
    if (v15)
    {
      v16 = v15;
      v17 = dispatch thunk of VideoPlayer.isPlaying.getter();

      if (v17 & 1) != 0 || (v18 = *(v1 + v14)) != 0 && (v19 = v18, v20 = dispatch thunk of VideoPlayer.shouldBePlaying.getter(), v19, (v20))
      {
        if ((*(v1 + v11) & 1) == 0)
        {
          v21 = *(v1 + v6);
          if (v21 == 7 || v21 == 4)
          {
            v23 = *(v1 + v14);
            if (v23)
            {
              v24 = v23;
              if (dispatch thunk of VideoPlayer.shouldBePlaying.getter())
              {
                [v24 pause];
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000FA78C()
{
  v1 = *(v0 + qword_1009CDFF8);
  v2 = v1 == 7 || v1 == 4;
  if (!v2 || *(v0 + qword_1009CE000) == 1)
  {
    sub_1004DF87C();
  }
}

void sub_1000FA7F8(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

double sub_1000FA8B0(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = type metadata accessor for HorizontalRule.Style();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((HorizontalRule.isFullWidth.getter() & 1) == 0)
  {
    [a7 pageMarginInsets];
    a1 = a1 - v13 - v14;
  }

  HorizontalRule.style.getter();
  v15 = [a7 traitCollection];
  HorizontalRule.Style.lineThickness(traitCollection:)();

  (*(v10 + 8))(v12, v9);
  return a1;
}

void sub_1000FA9EC()
{
  v0 = type metadata accessor for HorizontalRule.Style();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  HorizontalRule.style.getter();
  sub_10075D014(v2);
  v3 = HorizontalRule.color.getter();
  sub_10075DB40(v3);
}

uint64_t sub_1000FAB24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1000FAB6C(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_10002849C(&qword_100972ED0, &unk_1007B17B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v68 - v11;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_objectGraph] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView] = 0;
  swift_weakInit();
  v13 = &v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsUpdateBlock];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator] = 0;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsScrollObserver] = 0;
  v14 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v15 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *&v4[v14] = CompoundScrollObserver.init(children:)();
  v16 = &v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration];
  *v16 = 0;
  *(v16 + 1) = 1;
  v17 = [objc_allocWithZone(type metadata accessor for ImageHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v18 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_iconHeadingView;
  *&v4[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_iconHeadingView] = v17;
  v19 = qword_10096D068;
  v20 = v17;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = *&v20[OBJC_IVAR____TtC8AppStore16ImageHeadingView_imageView];
  v22 = qword_100974320;
  v23 = [v21 image];
  if (!v23 || (v24 = v23, sub_100005744(0, &qword_1009744B0, UIImage_ptr), v25 = v22, v26 = static NSObject.== infix(_:_:)(), v24, v25, (v26 & 1) == 0))
  {
    [v21 setImage:v22];
    [v20 setNeedsLayout];
  }

  v27 = qword_10096D070;
  v28 = *&v5[v18];
  if (v27 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for FontUseCase();
  v30 = sub_1000056A8(v29, qword_100974328);
  v31 = *(v29 - 8);
  v32 = *(v31 + 16);
  v32(v12, v30, v29);
  v33 = *(v31 + 56);
  v33(v12, 0, 1, v29);
  sub_1006DD1E4(v12);

  v34 = qword_10096D078;
  v35 = *&v5[v18];
  if (v34 != -1)
  {
    swift_once();
  }

  sub_1000FE7DC(&qword_100974340, v69);
  v36 = OBJC_IVAR____TtC8AppStore16ImageHeadingView_metrics;
  swift_beginAccess();
  sub_1000FE838(v69, v35 + v36);
  swift_endAccess();
  [v35 setNeedsLayout];

  sub_1000FE894(v69);
  [*(*&v5[v18] + OBJC_IVAR____TtC8AppStore16ImageHeadingView_headingLabel) setNumberOfLines:1];
  v37 = [objc_allocWithZone(type metadata accessor for SearchHeadingView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v38 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_titleHeadingView;
  *&v5[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_titleHeadingView] = v37;
  v39 = qword_10096D080;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_1000056A8(v29, qword_100974368);
  v32(v12, v41, v29);
  v33(v12, 0, 1, v29);
  sub_1004442A4(v12);

  [*(*&v5[v38] + OBJC_IVAR____TtC8AppStore17SearchHeadingView_headingLabel) setNumberOfLines:2];
  v42 = type metadata accessor for SearchLockupListCollectionViewCell();
  v68.receiver = v5;
  v68.super_class = v42;
  v43 = objc_msgSendSuper2(&v68, "initWithFrame:", a1, a2, a3, a4);
  v45 = sub_1000FC3DC(v43, v44);
  v46 = [objc_allocWithZone(UICollectionView) initWithFrame:v45 collectionViewLayout:{a1, a2, a3, a4}];

  v47 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView;
  v48 = *&v43[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView];
  *&v43[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView] = v46;
  v49 = v46;

  if (!v49)
  {
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for NestedCollectionViewImpressionsCoordinator();
  swift_allocObject();
  *&v43[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator] = NestedCollectionViewImpressionsCoordinator.init(collectionView:)();

  v50 = v43;
  v51 = [v50 contentView];
  [v51 addSubview:*&v50[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_iconHeadingView]];

  v52 = [v50 contentView];
  [v52 addSubview:*&v50[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_titleHeadingView]];

  v53 = *&v43[v47];
  if (!v53)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v53 setDelegate:v50];
  v54 = *&v43[v47];
  if (!v54)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v55 = objc_opt_self();
  v56 = v54;
  v57 = [v55 clearColor];
  [v56 setBackgroundColor:v57];

  v58 = *&v43[v47];
  if (!v58)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  type metadata accessor for SmallSearchLockupCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v60 = v58;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v61 = String._bridgeToObjectiveC()();

  [v60 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v61];

  v62 = *&v43[v47];
  if (!v62)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  type metadata accessor for SeparatorSpacerReusableView();
  v63 = swift_getObjCClassFromMetadata();
  v64 = v62;
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v65 = String._bridgeToObjectiveC()();

  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v66 = String._bridgeToObjectiveC()();

  [v64 registerClass:v63 forSupplementaryViewOfKind:v65 withReuseIdentifier:v66];

  v67 = [v50 contentView];
  if (*&v43[v47])
  {
    [v67 addSubview:?];

    return;
  }

LABEL_24:
  __break(1u);
}

void sub_1000FB358()
{
  if (*(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    swift_beginAccess();
    swift_weakLoadStrong();

    dispatch thunk of NestedCollectionViewImpressionsCoordinator.impressionsCalculator.setter();

    if (swift_weakLoadStrong())
    {
      type metadata accessor for ImpressionsScrollObserver();
      swift_allocObject();
      *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsScrollObserver) = ImpressionsScrollObserver.init(_:)();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000FB428()
{
  v0 = type metadata accessor for SystemImage();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for SystemImage.appstore(_:), v0, v2);
  v5 = static SystemImage.load(_:with:)();
  result = (*(v1 + 8))(v4, v0);
  qword_100974320 = v5;
  return result;
}

void sub_1000FB534()
{
  qword_100974358 = &type metadata for CGFloat;
  unk_100974360 = &protocol witness table for CGFloat;
  qword_100974340 = 0x4008000000000000;
}

id sub_1000FB570(uint64_t a1, uint64_t *a2, id *a3)
{
  v5 = type metadata accessor for FontUseCase();
  sub_100005644(v5, a2);
  v6 = sub_1000056A8(v5, a2);
  v8 = *a3;
  *v6 = *a3;
  *(v6 + 8) = UIFontWeightSemibold;
  (*(*(v5 - 8) + 104))();

  return v8;
}

uint64_t sub_1000FB62C()
{
  v0 = type metadata accessor for FontUseCase();
  sub_100005644(v0, qword_100974380);
  v1 = sub_1000056A8(v0, qword_100974380);
  if (qword_10096DCD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000056A8(v0, qword_1009D0608);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000FB6F4()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for CGFloat;
  v15 = &protocol witness table for CGFloat;
  *&v13 = 0x4010000000000000;
  if (qword_10096D088 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for FontUseCase();
  v5 = sub_1000056A8(v4, qword_100974380);
  (*(*(v4 - 8) + 16))(v3, v5, v4);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v11 = type metadata accessor for StaticDimension();
  v12 = &protocol witness table for StaticDimension;
  sub_1000056E0(&v10);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v6 = sub_1000056E0(v9);
  (*(v1 + 16))(v6, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  (*(v1 + 8))(v3, v0);
  sub_100005A38(&v13, &unk_100974398);
  return sub_100005A38(&v10, &unk_1009743C0);
}

id sub_1000FB91C(id result, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration];
  if (v2[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration] == (result & 1) && *&v2[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration + 8] == a2)
  {
    return result;
  }

  v5 = result;
  *v3 = result & 1;
  *(v3 + 1) = a2;
  v6 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView;
  result = *&v2[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = [result collectionViewLayout];
  [v7 invalidateLayout];

  result = *&v2[v6];
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  [result setScrollEnabled:(v5 & 1) == 0];

  return [v2 setNeedsLayout];
}

void sub_1000FB9F8()
{
  v1 = v0;
  v2 = type metadata accessor for LayoutRect();
  v57 = *(v2 - 8);
  v58 = v2;
  __chkstk_darwin(v2);
  v56 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FontSource();
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin(v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SearchLockupListLayout.Metrics();
  v54 = *(v6 - 8);
  v55 = v6;
  __chkstk_darwin(v6);
  v52 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v47 - v9;
  v10 = type metadata accessor for OfferButtonMetrics();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v47 = &v47 - v15;
  v16 = type metadata accessor for SmallLockupLayout.Metrics();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SearchLockupListCollectionViewCell();
  v68.receiver = v0;
  v68.super_class = v20;
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v21 = [v0 contentView];
  [v21 bounds];
  v49 = v22;

  v23 = [v1 contentView];
  [v23 layoutMargins];

  v59 = *&v1[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration + 8];
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v24 = sub_1000056A8(v16, qword_1009D3798);
  v25 = [v1 traitCollection];
  (*(v17 + 16))(v19, v24, v16);
  v26 = SmallLockupLayout.Metrics.offerButtonSize.getter();
  if ((v28 & 1) == 0 && ((v26 | v27) & 0x7FFFFFFFFFFFFFFFLL) == 0)
  {
    if (UITraitCollection.prefersAccessibilityLayouts.getter())
    {
      if (qword_10096ECB8 != -1)
      {
        swift_once();
      }

      v29 = qword_100991010;
    }

    else
    {
      if (qword_10096ECC0 != -1)
      {
        swift_once();
      }

      v29 = qword_100991028;
    }

    v30 = sub_1000056A8(v10, v29);
    v31 = v13;
    (*(v11 + 16))(v13, v30, v10);
    v32 = v47;
    (*(v11 + 32))(v47, v31, v10);
    OfferButtonMetrics.minimumSize.getter();
    OfferButtonMetrics.estimatedHeight.getter();
    SmallLockupLayout.Metrics.offerButtonSize.setter();
    (*(v11 + 8))(v32, v10);
  }

  static SmallLockupLayout.estimatedMeasurements(fitting:using:with:)();

  (*(v17 + 8))(v19, v16);
  if (__OFSUB__(v59, 1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v33 = *&v1[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_iconHeadingView];
  v67[3] = type metadata accessor for ImageHeadingView();
  v67[4] = &protocol witness table for UIView;
  v67[0] = v33;
  v34 = *&v1[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_titleHeadingView];
  v66[3] = type metadata accessor for SearchHeadingView();
  v66[4] = &protocol witness table for UIView;
  v66[0] = v34;
  if (*&v1[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView])
  {
    v64[0] = *&v1[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView];
    sub_100005744(0, &qword_100978E50, UICollectionView_ptr);
    v35 = v33;
    v36 = v34;
    LayoutView.withMeasurements(representing:)();
    v64[3] = type metadata accessor for ZeroDimension();
    v64[4] = &protocol witness table for ZeroDimension;
    sub_1000056E0(v64);
    static ZeroDimension.zero.getter();
    if (qword_10096D080 == -1)
    {
LABEL_16:
      v37 = type metadata accessor for FontUseCase();
      v38 = sub_1000056A8(v37, qword_100974368);
      v39 = v48;
      (*(*(v37 - 8) + 16))(v48, v38, v37);
      v41 = v50;
      v40 = v51;
      (*(v50 + 104))(v39, enum case for FontSource.useCase(_:), v51);
      v63[3] = type metadata accessor for StaticDimension();
      v63[4] = &protocol witness table for StaticDimension;
      sub_1000056E0(v63);
      v61 = v40;
      v62 = &protocol witness table for FontSource;
      v42 = sub_1000056E0(v60);
      (*(v41 + 16))(v42, v39, v40);
      StaticDimension.init(_:scaledLike:)();
      (*(v41 + 8))(v39, v40);
      v61 = &type metadata for CGFloat;
      v62 = &protocol witness table for CGFloat;
      v60[0] = 0x4030000000000000;
      v43 = v53;
      SearchLockupListLayout.Metrics.init(headingLeadingSpace:titleLeadingSpace:lockupCollectionViewTopSpace:layoutMargins:)();
      v45 = v54;
      v44 = v55;
      (*(v54 + 16))(v52, v43, v55);
      sub_10002C0AC(v67, v64);
      sub_10002C0AC(v66, v63);
      sub_10002C0AC(v65, v60);
      type metadata accessor for SearchLockupListLayout();
      swift_allocObject();
      v64[0] = SearchLockupListLayout.init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)();
      (*(v45 + 8))(v43, v44);
      sub_100007000(v65);
      sub_100007000(v66);
      sub_100007000(v67);
      sub_1000FE794(&unk_1009744A0, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
      v46 = v56;
      dispatch thunk of Layout.placeChildren(relativeTo:in:)();
      (*(v57 + 8))(v46, v58);

      return;
    }

LABEL_18:
    swift_once();
    goto LABEL_16;
  }

  __break(1u);
}

id sub_1000FC3DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = ObjectType;
  v5 = objc_allocWithZone(UICollectionViewCompositionalLayout);
  v9[4] = sub_1000FDCE0;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1002E9BD4;
  v9[3] = &unk_1008B4698;
  v6 = _Block_copy(v9);

  v7 = [v5 initWithSectionProvider:v6];
  _Block_release(v6);

  return v7;
}

unsigned __int8 *sub_1000FC508(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration];
    v6 = *&result[OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_listConfiguration + 8];

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v7 = result;
      v8 = [result contentView];

      if (v8)
      {
        [v8 layoutMargins];
        v11 = sub_1000FDCE8(v5, v6, a2, v9, v10);
        if (v11)
        {
          v12 = v11;
          v13 = swift_allocObject();
          swift_beginAccess();
          Strong = swift_unknownObjectWeakLoadStrong();
          swift_unknownObjectWeakInit();
          v15 = v12;
          v16 = v12;

          aBlock[4] = sub_1000FE19C;
          aBlock[5] = v13;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1006BBC70;
          aBlock[3] = &unk_1008B46C0;
          v17 = _Block_copy(aBlock);

          [v16 setVisibleItemsInvalidationHandler:v17];

          _Block_release(v17);
          v8 = v16;
        }

        else
        {
          v15 = 0;
        }

        return v15;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1000FC6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsScrollObserver);
    v5 = Strong;

    if (v4)
    {
      type metadata accessor for ImpressionsScrollObserver();
      ScrollObserver.didScroll(visibleItems:layoutEnvironment:contentOffset:)();
    }
  }
}

id sub_1000FC9B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SearchLockupListCollectionViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for SearchLockupListCollectionViewCell.ListConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchLockupListCollectionViewCell.ListConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double sub_1000FCBBC(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
  sub_1000FB358();

  return result;
}

void (*sub_1000FCC20(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1000FCCB8;
}

void sub_1000FCCB8(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    sub_1000FB358();
  }

  free(v3);
}

uint64_t sub_1000FCD40()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_1000FCD9C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

double sub_1000FCE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, double a14, void *a15, uint64_t a16)
{
  v85 = a8;
  v84 = a7;
  v81 = a5;
  v82 = a6;
  v79 = a3;
  v80 = a4;
  v78 = a1;
  v16 = type metadata accessor for FontSource();
  v87 = *(v16 - 8);
  v88 = v16;
  __chkstk_darwin(v16);
  v86 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SearchLockupListLayout.Metrics();
  v91 = *(v18 - 8);
  v92 = v18;
  __chkstk_darwin(v18);
  v89 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v90 = &v72 - v21;
  v94 = type metadata accessor for LabelPlaceholderCompatibility();
  v96 = *(v94 - 8);
  __chkstk_darwin(v94);
  v23 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ImageHeadingView();
  if (qword_10096D068 != -1)
  {
    swift_once();
  }

  v24 = qword_100974320;
  if (qword_10096D070 != -1)
  {
    swift_once();
  }

  v83 = type metadata accessor for FontUseCase();
  sub_1000056A8(v83, qword_100974328);
  if (qword_10096D078 != -1)
  {
    swift_once();
  }

  v25 = sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  v26 = [a15 traitCollection];
  v93 = v25;
  v27 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v28 = objc_opt_self();
  v76 = v27;
  v29 = [v28 configurationWithFont:v27];
  v30 = [v24 imageByApplyingSymbolConfiguration:v29];
  v31 = v30;
  if (v30)
  {
    [v30 size];
  }

  v32 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v33 = LayoutViewPlaceholder.init(representing:)();

  v95 = a15;
  v34 = [a15 traitCollection];
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v35 = type metadata accessor for Feature();
  *(&v104 + 1) = v35;
  v75 = sub_1000FE794(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  *&v105 = v75;
  v36 = sub_1000056E0(&v103);
  v37 = *(v35 - 8);
  v38 = *(v37 + 104);
  v74 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v72 = v37 + 104;
  v73 = v38;
  v38(v36);
  isFeatureEnabled(_:)();
  sub_100007000(&v103);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  v39 = LabelPlaceholderCompatibility.referableLayoutTextView.getter();
  v41 = v40;
  v42 = *(v96 + 8);
  v96 += 8;
  v42(v23, v94);
  v43 = *(v41 + 8);

  swift_unknownObjectRetain();
  sub_1006DDD30(v33, &protocol witness table for LayoutViewPlaceholder, v39, v43, qword_100974340, &v103);

  swift_unknownObjectRelease();
  sub_10002A39C(&v103, &v108);
  v44 = swift_allocObject();
  sub_1000FDA14(&v108, (v44 + 16));
  swift_allocObject();
  v78 = LayoutViewPlaceholder.init(measureWith:)();

  swift_unknownObjectRelease();

  sub_100007000(&v103);
  if (qword_10096D080 != -1)
  {
    swift_once();
  }

  v45 = v83;
  v46 = sub_1000056A8(v83, qword_100974368);
  if (qword_10096D088 != -1)
  {
    swift_once();
  }

  sub_1000056A8(v45, qword_100974380);
  if (qword_10096D090 != -1)
  {
    swift_once();
  }

  v47 = [v95 traitCollection];
  v77 = v46;
  static UIFont.preferredFont(forUseWith:compatibleWith:)();

  *(&v104 + 1) = v35;
  *&v105 = v75;
  v48 = sub_1000056E0(&v103);
  v73(v48, v74, v35);
  isFeatureEnabled(_:)();
  sub_100007000(&v103);
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  v49 = LabelPlaceholderCompatibility.referableLayoutTextView.getter();
  v51 = v50;
  v42(v23, v94);
  v52 = swift_allocObject();
  v53 = v82;
  *(v52 + 16) = v81;
  *(v52 + 24) = v53;
  swift_allocObject();

  v54 = LayoutViewPlaceholder.init(measureWith:)();
  sub_1000FDA3C(&unk_100974398, &v103);
  v55 = swift_allocObject();
  v56 = v106;
  *(v55 + 48) = v105;
  *(v55 + 64) = v56;
  *(v55 + 80) = v107;
  v57 = v104;
  *(v55 + 16) = v103;
  *(v55 + 32) = v57;
  *(v55 + 96) = v49;
  *(v55 + 104) = v51;
  *(v55 + 112) = v54;
  swift_allocObject();
  v58 = LayoutViewPlaceholder.init(measureWith:)();
  v59 = swift_allocObject();
  *(v59 + 16) = a16;
  *(v59 + 24) = v84 & 1;
  *(v59 + 32) = v85;
  swift_allocObject();
  v60 = LayoutViewPlaceholder.init(measureWith:)();
  *(&v104 + 1) = v32;
  *&v105 = &protocol witness table for LayoutViewPlaceholder;
  v102[4] = &protocol witness table for LayoutViewPlaceholder;
  *&v103 = v78;
  v109 = v32;
  v110 = &protocol witness table for LayoutViewPlaceholder;
  *&v108 = v58;
  v102[3] = v32;
  v102[0] = v60;
  v101[3] = type metadata accessor for ZeroDimension();
  v101[4] = &protocol witness table for ZeroDimension;
  sub_1000056E0(v101);

  static ZeroDimension.zero.getter();
  v61 = v86;
  (*(*(v45 - 8) + 16))(v86, v77, v45);
  v63 = v87;
  v62 = v88;
  (*(v87 + 104))(v61, enum case for FontSource.useCase(_:), v88);
  v100[3] = type metadata accessor for StaticDimension();
  v100[4] = &protocol witness table for StaticDimension;
  sub_1000056E0(v100);
  v98 = v62;
  v99 = &protocol witness table for FontSource;
  v64 = sub_1000056E0(v97);
  (*(v63 + 16))(v64, v61, v62);
  StaticDimension.init(_:scaledLike:)();
  (*(v63 + 8))(v61, v62);
  v98 = &type metadata for CGFloat;
  v99 = &protocol witness table for CGFloat;
  v97[0] = 0x4030000000000000;
  v65 = v90;
  SearchLockupListLayout.Metrics.init(headingLeadingSpace:titleLeadingSpace:lockupCollectionViewTopSpace:layoutMargins:)();
  v67 = v91;
  v66 = v92;
  (*(v91 + 16))(v89, v65, v92);
  sub_10002C0AC(&v103, v101);
  sub_10002C0AC(&v108, v100);
  sub_10002C0AC(v102, v97);
  type metadata accessor for SearchLockupListLayout();
  swift_allocObject();
  v68 = SearchLockupListLayout.init(metrics:iconHeadingView:titleHeadingView:lockupCollectionView:)();
  (*(v67 + 8))(v65, v66);
  sub_100007000(v102);
  sub_100007000(&v108);
  sub_100007000(&v103);
  *&v103 = v68;
  sub_1000FE794(&qword_100978E20, &type metadata accessor for SearchLockupListLayout, &protocol conformance descriptor for SearchLockupListLayout);
  dispatch thunk of Measurable.measurements(fitting:in:)();
  v70 = v69;

  return v70;
}

_OWORD *sub_1000FDA14(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

void sub_1000FDAA8(void *a1, uint64_t a2, double a3, double a4)
{
  v8 = *(v4 + 16);
  v9 = *(v4 + 32);
  ObjectType = swift_getObjectType();
  sub_1000FDC00(v9, a1, a3, a4, v8, ObjectType);
}

void sub_1000FDB10()
{
  *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_objectGraph) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupCollectionView) = 0;
  swift_weakInit();
  v1 = (v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator) = 0;
  *(v0 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsScrollObserver) = 0;
  v2 = OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_compoundScrollObserver;
  v3 = objc_allocWithZone(type metadata accessor for CompoundScrollObserver());
  *(v0 + v2) = CompoundScrollObserver.init(children:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1000FDC00(uint64_t a1, void *a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for SmallLockupView(0);
  if (qword_10096EE80 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for SmallLockupLayout.Metrics();
  v11 = sub_1000056A8(v10, qword_1009D3798);
  sub_10070B598(v11, a2, a3, a4);
  if (__OFSUB__(a1, 1))
  {
    __break(1u);
  }
}

id sub_1000FDCE8(char a1, uint64_t a2, void *a3, double a4, double a5)
{
  v8 = [objc_opt_self() layoutAnchorWithEdges:4 absoluteOffset:{0.0, 16.0}];
  v9 = objc_opt_self();
  v10 = 1.0;
  v11 = [v9 fractionalWidthDimension:1.0];
  v12 = [v9 absoluteDimension:16.0];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v11 heightDimension:v12];

  type metadata accessor for SeparatorSpacerReusableView();
  static UICollectionReusableView.defaultReuseIdentifier.getter();
  v15 = v8;
  v16 = String._bridgeToObjectiveC()();

  v17 = [objc_opt_self() supplementaryItemWithLayoutSize:v14 elementKind:v16 containerAnchor:v15];

  v18 = [v9 fractionalWidthDimension:1.0];
  v42 = a2;
  v19 = [v9 fractionalHeightDimension:1.0 / a2];
  v20 = [v13 sizeWithWidthDimension:v18 heightDimension:v19];

  sub_10002849C(&qword_100973210, qword_1007B0BB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007B0B70;
  *(v21 + 32) = v17;
  sub_100005744(0, &qword_100982860, NSCollectionLayoutSupplementaryItem_ptr);
  v22 = v17;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v24 = [objc_opt_self() itemWithLayoutSize:v20 supplementaryItems:isa];

  [objc_msgSend(a3 "container")];
  v26 = v25;
  swift_unknownObjectRelease();
  if (v26 <= 0.0)
  {
    v29 = &selRef_estimatedDimension_;
    v28 = a1;
  }

  else
  {
    [objc_msgSend(a3 "container")];
    v10 = v27;
    swift_unknownObjectRelease();
    v28 = a1;
    if ((a1 & 1) == 0)
    {
      v10 = v10 - a4 - a5;
    }

    v29 = &selRef_absoluteDimension_;
  }

  v30 = [v9 *v29];
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v9 fractionalHeightDimension:1.0];
  v34 = [v13 sizeWithWidthDimension:v32 heightDimension:v33];

  v35 = [v31 verticalGroupWithLayoutSize:v34 subitem:v24 count:v42];
  v36 = [objc_opt_self() fixedSpacing:16.0];
  [v35 setInterItemSpacing:v36];

  v37 = [objc_opt_self() sectionWithGroup:v35];
  [v37 setInterGroupSpacing:8.0];
  [v37 setContentInsets:{0.0, a4, 0.0, a5}];
  if (v28)
  {
    v38 = 0;
  }

  else
  {
    v38 = 4;
  }

  [v37 setOrthogonalScrollingBehavior:v38];

  return v37;
}

void sub_1000FE1A4(uint64_t a1)
{
  v2 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_10002849C(&qword_100974470, &qword_1007B6130);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_10002849C(&qword_100974478, &qword_1007BE9A0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *(v1 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_objectGraph);
  if (v13)
  {
    v14 = *(v1 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource);
    if (v14)
    {

      v15 = v14;
      dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        (*(v9 + 32))(v12, v7, v8);
        DiffableLens.value.getter();
        v19 = Lockup.clickAction.getter();

        if (!v19)
        {
          (*(v9 + 8))(v12, v8);

          return;
        }

        v20 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
        BaseObjectGraph.injectIfAvailable<A>(_:)();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v4, 1, v20) != 1)
        {
          sub_1005F9AF4(v19, 1, v13, v4);

          (*(v9 + 8))(v12, v8);
          (*(v21 + 8))(v4, v20);
          return;
        }

        (*(v9 + 8))(v12, v8);

        v16 = &unk_100972A00;
        v17 = &unk_1007B3130;
        v18 = v4;
        goto LABEL_7;
      }
    }

    else
    {
      (*(v9 + 56))(v7, 1, 1, v8, v10);
    }

    v16 = &qword_100974470;
    v17 = &qword_1007B6130;
    v18 = v7;
LABEL_7:
    sub_10002B894(v18, v16, v17);
  }
}

uint64_t sub_1000FE528(uint64_t a1, uint64_t a2)
{
  v3 = sub_10002849C(&qword_100974470, &qword_1007B6130);
  __chkstk_darwin(v3 - 8);
  v5 = &v15[-1] - v4;
  v6 = sub_10002849C(&qword_100974478, &qword_1007BE9A0);
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v15[-1] - v9;
  v11 = *(v2 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_lockupDataSource);
  if (!v11)
  {
    (*(v7 + 56))(v5, 1, 1, v6, v8);
    return sub_10002B894(v5, &qword_100974470, &qword_1007B6130);
  }

  v12 = v11;
  dispatch thunk of UICollectionViewDiffableDataSource.itemIdentifier(for:)();

  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_10002B894(v5, &qword_100974470, &qword_1007B6130);
  }

  result = (*(v7 + 32))(v10, v5, v6);
  if (*(v2 + OBJC_IVAR____TtC8AppStore34SearchLockupListCollectionViewCell_impressionsCoordinator))
  {
    v15[3] = type metadata accessor for Lockup();
    v15[4] = sub_1000FE794(&qword_100974480, &type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);

    DiffableLens.value.getter();
    dispatch thunk of NestedCollectionViewImpressionsCoordinator.register(model:for:)();

    (*(v7 + 8))(v10, v6);
    return sub_100007000(v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FE794(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000FE8FC()
{
  result = qword_1009744B8;
  if (!qword_1009744B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009744B8);
  }

  return result;
}

unint64_t sub_1000FE96C()
{
  result = qword_1009744C0;
  if (!qword_1009744C0)
  {
    type metadata accessor for ArcadeSubscriptionStateAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009744C0);
  }

  return result;
}

Swift::Int sub_1000FE9C4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000FEA30(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000FEA88(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ArcadeState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v8 = Promise.__allocating_init()();
  type metadata accessor for ArcadeSubscriptionManager();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  v9 = v25[1];
  ArcadeSubscriptionManager.subscriptionState.getter();
  v10 = (*(v5 + 88))(v7, v4);
  if (v10 == enum case for ArcadeState.notSubscribed(_:))
  {
    (*(v5 + 96))(v7, v4);
    v11 = ArcadeSubscriptionStateAction.notSubscribedAction.getter();
    v12 = type metadata accessor for ArcadeIntroOfferState();
    v13 = *(*(v12 - 8) + 8);

    v13(v7, v12);
    if (!v11)
    {
      goto LABEL_14;
    }
  }

  else if (v10 == enum case for ArcadeState.purchasing(_:))
  {
    (*(v5 + 8))(v7, v4);
    v14 = ArcadeSubscriptionStateAction.purchasingAction.getter();

    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v10 != enum case for ArcadeState.subscribed(_:))
    {
      v19 = enum case for ArcadeState.unknown(_:);
      v20 = v10;
      v21 = ArcadeSubscriptionStateAction.unknownAction.getter();
      if (v20 == v19)
      {

        if (v21)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v23 = *(v5 + 8);

        v23(v7, v4);
        if (v21)
        {
          goto LABEL_12;
        }
      }

LABEL_14:
      sub_1000FEE00();
      swift_allocError();
      Promise.reject(_:)();

      return v8;
    }

    (*(v5 + 96))(v7, v4);

    v15 = *(sub_10002849C(&qword_100973ED8, &qword_1007B5A08) + 48);
    v16 = ArcadeSubscriptionStateAction.subscribedAction.getter();
    v17 = type metadata accessor for ArcadeTrialEnrolledState();
    v18 = *(*(v17 - 8) + 8);

    v18(v7 + v15, v17);
    if (!v16)
    {
      goto LABEL_14;
    }
  }

LABEL_12:

  sub_1005D0214(v22, 1, a3);

  Promise.pipe(to:)();

  return v8;
}

unint64_t sub_1000FEE00()
{
  result = qword_1009744C8;
  if (!qword_1009744C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009744C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArcadeSubscriptionStateActionImplementation.ArcadeSubscriptionStateActionImplementationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ArcadeSubscriptionStateActionImplementation.ArcadeSubscriptionStateActionImplementationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1000FEF38()
{
  result = qword_1009744D0;
  if (!qword_1009744D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009744D0);
  }

  return result;
}

uint64_t sub_1000FEF8C(uint64_t a1, uint64_t a2)
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

void sub_1000FF0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_10002849C(&unk_100972A00, &unk_1007B3130);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    ContingentOffer.offerLockup.getter();
    v9 = Lockup.clickAction.getter();

    if (v9)
    {
      v10 = sub_10002849C(&unk_100974490, &qword_1007B3DD0);
      BaseObjectGraph.injectIfAvailable<A>(_:)();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v6, 1, v10) == 1)
      {

        sub_10002B894(v6, &unk_100972A00, &unk_1007B3130);
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

void sub_1000FF2B8(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for Artwork.Style();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Artwork.Crop();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002C0AC(a1, v32);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for ContingentOffer();
  if (swift_dynamicCast())
  {
    v15 = ContingentOffer.backgroundArtwork.getter();
    if (qword_10096EBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
    sub_1000056A8(v16, qword_1009D31A8);
    AspectRatio.height(fromWidth:)();
    if (v15)
    {

      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v12 + 8))(v14, v11);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v17 = *(v5 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v17 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      type metadata accessor for ArtworkView();
      sub_1001028D8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    v18 = *(v5 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView);
    v19 = ContingentOffer.offerLockup.getter();
    sub_100504CB0(v19, a2, a3, a4);
  }

  else
  {
    sub_10002C0AC(a1, v32);
    type metadata accessor for OfferItem();
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v31 = v12;
    v20 = v4;
    v21 = *(v4 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView);
    v22 = OfferItem.offerLockup.getter();
    sub_100504CB0(v22, a2, a3, a4);

    if (OfferItem.moduleArtwork.getter())
    {
      v23 = qword_10096EBE0;

      if (v23 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
      sub_1000056A8(v24, qword_1009D31A8);
      AspectRatio.height(fromWidth:)();

      Artwork.crop.getter();
      Artwork.Crop.preferredContentMode.getter();
      (*(v31 + 8))(v14, v11);
      Artwork.config(_:mode:prefersLayeredImage:)();
      v25 = *(v20 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView);
      Artwork.style.getter();
      ArtworkView.style.setter();
      [v25 setContentMode:Artwork.contentMode.getter()];
      ArtworkLoaderConfig.size.getter();
      ArtworkView.imageSize.setter();
      if (!Artwork.backgroundColor.getter())
      {
        sub_100005744(0, &qword_100970180, UIColor_ptr);
        static UIColor.placeholderBackground.getter();
      }

      ArtworkView.backgroundColor.setter();
      type metadata accessor for ArtworkView();
      sub_1001028D8(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
    }

    else
    {
      v26 = *(v4 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView);
      v27 = a1[3];
      v28 = a1[4];
      v29 = sub_10002A400(a1, v27);
      sub_1005BFE40(v29, a2, v26, v27, v28);
    }
  }
}

double sub_1000FF8A4(uint64_t *a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = *a1;
  ObjectType = swift_getObjectType();

  return sub_100100904(v12, a8, v8, ObjectType, a3, a4);
}

double sub_1000FF910(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ContingentOffer();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;

    sub_100100AE8(v5, a3);
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

    sub_1001018CC(v8, a3);
  }

  return result;
}

double sub_1000FFA50(void *a1, void *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, double a8, double a9, uint64_t a10, void *a11)
{
  v103 = a6;
  v102 = a5;
  v101 = a4;
  v110 = a3;
  v109 = a2;
  v111 = a1;
  v106 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  __chkstk_darwin(v106);
  v108 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for AppPromotionCardLayout(0);
  __chkstk_darwin(v107);
  v16 = (&v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for LabelPlaceholderCompatibility();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v89 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v81 - v21;
  v23 = type metadata accessor for LayoutViewPlaceholder();
  swift_allocObject();
  v104 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v99 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v98 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v97 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v95 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v93 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v105 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v100 = LayoutViewPlaceholder.init(representing:)();
  v24 = [a7 traitCollection];
  static Separator.thickness(compatibleWith:)();

  swift_allocObject();
  v96 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v94 = LayoutViewPlaceholder.init(representing:)();
  swift_allocObject();
  v92 = LayoutViewPlaceholder.init(representing:)();
  v25 = [a7 traitCollection];
  v26 = [v25 preferredContentSizeCategory];
  static UIContentSizeCategory.>= infix(_:_:)();

  sub_100005744(0, &qword_1009730E0, UIFont_ptr);
  if (qword_10096E3A0 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for FontUseCase();
  sub_1000056A8(v27, qword_1009D1A60);
  v28 = [a7 traitCollection];
  v29 = static UIFont.preferredFont(forUseWith:compatibleWith:)();

  v30 = type metadata accessor for Feature();
  v114 = v30;
  v86 = sub_1001028D8(&qword_100972E50, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v115 = v86;
  v31 = sub_1000056E0(aBlock);
  v32 = *(v30 - 8);
  v33 = *(v32 + 104);
  v85 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v87 = v30;
  v84 = v33;
  v83 = v32 + 104;
  v33(v31);
  isFeatureEnabled(_:)();
  sub_100007000(aBlock);

  v88 = v29;
  LabelPlaceholderCompatibility.init(text:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v35 = *(v18 + 8);
  v34 = v18 + 8;
  v91 = v17;
  v82 = v35;
  v35(v22, v17);
  if (qword_10096E650 != -1)
  {
    swift_once();
  }

  v36 = qword_1009D2238;
  v37 = unk_1009D2240;
  v38 = qword_1009D2248;
  v39 = [a7 traitCollection];
  v40 = UITraitCollection.prefersAccessibilityLayouts.getter();
  v90 = v34;
  if (v40)
  {
  }

  else
  {
    v41 = UITraitCollection.isSizeClassCompact.getter();

    if (v41)
    {
      v38 = v36;
    }

    else
    {
      v38 = v37;
    }
  }

  v42 = v38;
  v109 = a7;
  v43 = [a7 traitCollection];
  v44 = objc_allocWithZone(NSMutableAttributedString);
  v45 = v42;
  v46 = v44;
  v47 = v111;
  v48 = [v46 initWithAttributedString:v111];
  v110 = [v47 length];
  v49 = swift_allocObject();
  *(v49 + 16) = v42;
  *(v49 + 24) = v43;
  *(v49 + 32) = v48;
  *(v49 + 40) = 1;
  v50 = swift_allocObject();
  v50[2] = sub_10010279C;
  v50[3] = v49;
  v115 = sub_1001027AC;
  v116 = v50;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1006606C4;
  v114 = &unk_1008B4980;
  v51 = _Block_copy(aBlock);
  v52 = v45;
  v53 = v43;
  v54 = v48;

  [v47 enumerateAttributesInRange:0 options:v110 usingBlock:{0x100000, v51}];

  _Block_release(v51);
  LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

  if (v53)
  {
    __break(1u);
    goto LABEL_24;
  }

  v111 = a11;
  v55 = v87;
  v114 = v87;
  v115 = v86;
  v56 = sub_1000056E0(aBlock);
  v84(v56, v85, v55);
  v57 = v52;
  isFeatureEnabled(_:)();
  sub_100007000(aBlock);
  v58 = v89;
  v110 = v57;
  LabelPlaceholderCompatibility.init(attributedText:font:textAlignment:lineBreakMode:lineSpacing:numberOfLines:isLanguageAware:shouldUseLabelPlaceholder:)();
  LabelPlaceholderCompatibility.layoutTextView.getter();
  v82(v58, v91);
  v59 = v102;
  if (v102)
  {
    v60 = HIBYTE(v102) & 0xF;
    v61 = v101;
    if ((v102 & 0x2000000000000000) == 0)
    {
      v60 = v101 & 0xFFFFFFFFFFFFLL;
    }

    LODWORD(v91) = v60 != 0;
    v50 = v109;
  }

  else
  {
    LODWORD(v91) = 0;
    v50 = v109;
    v61 = v101;
  }

  type metadata accessor for AppPromotionSubtitleView(0);
  v62 = [v50 traitCollection];
  sub_100585D88(v61, v59, v103, 0, v62, v112);

  v63 = [v50 traitCollection];
  LOBYTE(v62) = UITraitCollection.prefersAccessibilityLayouts.getter();

  if (v62)
  {
    if (qword_10096EBE8 == -1)
    {
LABEL_18:
      v64 = qword_1009D31C0;
      goto LABEL_22;
    }

LABEL_24:
    swift_once();
    goto LABEL_18;
  }

  if (qword_10096EBE0 != -1)
  {
    swift_once();
  }

  v64 = qword_1009D31A8;
LABEL_22:
  v65 = v108;
  v66 = sub_1000056A8(v106, v64);
  sub_1001027B4(v66, v65);
  v67 = v107;
  v68 = (v16 + *(v107 + 20));
  v68[3] = v23;
  v68[4] = &protocol witness table for LayoutViewPlaceholder;
  *v68 = v104;
  v69 = (v16 + v67[6]);
  v69[3] = v23;
  v69[4] = &protocol witness table for LayoutViewPlaceholder;
  *v69 = v99;
  v70 = (v16 + v67[7]);
  v70[3] = v23;
  v70[4] = &protocol witness table for LayoutViewPlaceholder;
  *v70 = v98;
  v71 = (v16 + v67[8]);
  v71[3] = v23;
  v71[4] = &protocol witness table for LayoutViewPlaceholder;
  *v71 = v97;
  v72 = (v16 + v67[9]);
  v72[3] = v23;
  v72[4] = &protocol witness table for LayoutViewPlaceholder;
  *v72 = v95;
  v73 = (v16 + v67[10]);
  v73[3] = v23;
  v73[4] = &protocol witness table for LayoutViewPlaceholder;
  *v73 = v93;
  v74 = (v16 + v67[11]);
  v74[3] = v23;
  v74[4] = &protocol witness table for LayoutViewPlaceholder;
  *v74 = v105;
  v75 = (v16 + v67[12]);
  v75[3] = v23;
  v75[4] = &protocol witness table for LayoutViewPlaceholder;
  *v75 = v100;
  sub_10002C0AC(&v117, v16 + v67[13]);
  sub_10002C0AC(aBlock, v16 + v67[14]);
  sub_10002C0AC(v112, v16 + v67[15]);
  v76 = (v16 + v67[16]);
  v76[3] = v23;
  v76[4] = &protocol witness table for LayoutViewPlaceholder;
  *v76 = v96;
  v77 = (v16 + v67[17]);
  v77[3] = v23;
  v77[4] = &protocol witness table for LayoutViewPlaceholder;
  *v77 = v94;
  v78 = (v16 + v67[18]);
  v78[3] = v23;
  v78[4] = &protocol witness table for LayoutViewPlaceholder;
  *v78 = v92;
  sub_100102818(v65, v16);
  *(v16 + v67[19]) = v91;

  sub_1005787A8(v50, v16, a8, a9);

  sub_100007000(v112);
  sub_100007000(aBlock);
  sub_100007000(&v117);
  sub_10010287C(v16, v79);
  return a8;
}

void sub_1001006C8(uint64_t a1, char *a2, uint64_t a3)
{
  v4 = type metadata accessor for AdamId();
  __chkstk_darwin(v4 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InAppPurchaseLockup();
  if (swift_dynamicCastClass())
  {
    swift_retain_n();
    if (Lockup.offerDisplayProperties.getter())
    {
      v7 = OfferDisplayProperties.subscriptionFamilyId.getter();
      v9 = v8;

      if (v9)
      {
        type metadata accessor for StreamlinedInAppPurchaseOfferButtonPresenter();
        v10 = static StreamlinedInAppPurchaseOfferButtonPresenter.activeStateDataSource.getter();
        if (v10)
        {
          v11 = v10;
          Lockup.adamId.getter();

          sub_10002849C(&unk_100973AF0, &qword_1007B3960);
          type metadata accessor for BaseObjectGraph();

          inject<A, B>(_:from:)();
          v12 = v18[1];
          v13 = v18[2];
          type metadata accessor for SubscriptionLockupPresenter(0);
          swift_allocObject();
          v14 = a2;
          v15 = SubscriptionLockupPresenter.init(subscriptionFamilyId:iapAdamId:view:iapDataSource:appStateController:)(v7, v9, v6, a2, &off_1008C69D8, v11, v12, v13);
          v16 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_subscriptionLockupPresenter;
          swift_beginAccess();
          *&v14[v16] = v15;

          return;
        }
      }
    }
  }

  v17 = OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_subscriptionLockupPresenter;
  swift_beginAccess();
  *&a2[v17] = 0;

  sub_100506E98(0, 0);
}

double sub_100100904(uint64_t a1, void *a2, uint64_t a3, void *a4, double a5, double a6)
{
  type metadata accessor for ContingentOffer();
  if (swift_dynamicCastClass())
  {

    ContingentOffer.title.getter();
    v11 = Paragraph.text.getter();

    v12 = a4;
    v28 = a3;
    v13 = ContingentOffer.badge.getter();
    v15 = v14;
    v16 = ContingentOffer.subtitle.getter();
    v18 = v17;
    v19 = ContingentOffer.trunkAppIcon.getter();
    v20 = sub_1000FFA50(v11, v13, v15, v16, v18, v19, a2, a5, a6, v28, v12);
  }

  else
  {
    type metadata accessor for OfferItem();
    if (!swift_dynamicCastClass())
    {
      return 0.0;
    }

    OfferItem.title.getter();
    v21 = Paragraph.text.getter();

    v22 = OfferItem.badge.getter();
    v24 = v23;
    v25 = OfferItem.subtitle.getter();
    v20 = sub_1000FFA50(v21, v22, v24, v25, v26, 0, a2, a5, a6, a3, a4);
  }

  return v20;
}

double sub_100100AE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v116 = a2;
  v5 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v5 - 8);
  v105 = &v86 - v6;
  v104 = type metadata accessor for OfferButtonSubtitlePosition();
  v101 = *(v104 - 8);
  __chkstk_darwin(v104);
  v102 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v113 = *(v115 - 8);
  __chkstk_darwin(v115);
  v103 = &v86 - v8;
  v9 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v9 - 8);
  v108 = &v86 - v10;
  v11 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v11 - 8);
  v110 = &v86 - v12;
  v13 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v13 - 8);
  v109 = &v86 - v14;
  v15 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v15 - 8);
  v114 = &v86 - v16;
  v17 = sub_10002849C(&qword_100974528, qword_1007E0520);
  __chkstk_darwin(v17 - 8);
  v19 = &v86 - v18;
  v20 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v20 - 8);
  v100 = &v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v112 = &v86 - v23;
  v107 = type metadata accessor for MediaOverlayStyle();
  v24 = *(v107 - 8);
  __chkstk_darwin(v107);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = ContingentOffer.badge.getter();
  sub_10065FA88(v27, v28);
  ContingentOffer.title.getter();
  v29 = Paragraph.text.getter();

  sub_10065FBE8(v29);
  v30 = ContingentOffer.subtitle.getter();
  v32 = v31;
  v33 = ContingentOffer.trunkAppIcon.getter();
  sub_10058625C(v30, v32, v33);
  v34 = v19;

  v35 = v114;

  v36 = *(v2 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView);
  ContingentOffer.mediaOverlayStyle.getter();
  v37 = MediaOverlayStyle.userInterfaceStyle.getter();
  v38 = v107;
  (*(v24 + 8))(v26, v107);
  [v36 setOverrideUserInterfaceStyle:v37];
  sub_100660130();
  [*(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView) setHidden:0];
  [*(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView) setHidden:1];
  v111 = v3;
  v39 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView);
  v40 = v112;
  v41 = v39;
  v42 = ContingentOffer.offerLockup.getter();
  v43 = sub_10002849C(&unk_100973240, qword_1007B2220);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v99 = v44 + 56;
  v45(v40, 1, 1, v43);
  (*(v24 + 56))(v34, 1, 1, v38);
  v46 = v41;
  v47 = type metadata accessor for OfferStyle();
  (*(*(v47 - 8) + 56))(v35, 1, 1, v47);
  type metadata accessor for InAppPurchaseLockup();
  v48 = swift_dynamicCastClass();
  v49 = *&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  if (v48)
  {
    v94 = v45;
    v95 = v43;
    v97 = v34;
    v98 = a1;
    v50 = v48;
    v106 = v48;
    v51 = v49;
    v91 = type metadata accessor for OfferEnvironment();
    v52 = *(v91 - 8);
    v90 = *(v52 + 56);
    v92 = v52 + 56;
    v53 = v109;
    v90(v109, 1, 1, v91);
    v89 = *(v113 + 56);
    v107 = v42;
    v54 = v110;
    v89(v110, 1, 1, v115);
    v55 = type metadata accessor for OfferTint();
    v56 = *(v55 - 8);
    v87 = *(v56 + 56);
    v88 = v56 + 56;
    v57 = v108;
    v87(v108, 1, 1, v55);
    swift_retain_n();
    sub_1004F3190(v50, v51, v40, v116, 1, 0, v35, v53, v57, v54);
    sub_10002B894(v57, &unk_100973AD0, &unk_1007B17C0);
    v51[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    v93 = v51;
    [v51 setNeedsLayout];
    sub_10002B894(v54, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v53, &unk_100970160, &unk_1007BDDE0);
    v58 = v35;
    v96 = v41;
    v59 = *&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v60 = InAppPurchaseLockup.parent.getter();
    v90(v53, 1, 1, v91);
    v89(v54, 1, 1, v115);
    v87(v57, 1, 1, v55);
    sub_1004F3190(v60, v59, v40, v116, 0, 0, v58, v53, v57, v54);
    sub_10002B894(v57, &unk_100973AD0, &unk_1007B17C0);
    v59[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v59 setNeedsLayout];

    v61 = v54;
    v62 = v107;
    sub_10002B894(v61, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v53, &unk_100970160, &unk_1007BDDE0);
    v63 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
    [*&v59[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v59[v63] setUserInteractionEnabled:0];
    [v59 setHidden:1];
    v64 = Lockup.icon.getter();
    if (v64)
    {
    }

    sub_100709C80(v64 != 0);
    v65 = *&v59[v63];
    v66 = Lockup.offerDisplayProperties.getter();

    v67 = Lockup.buttonAction.getter();

    v68 = v100;
    v94(v100, 1, 1, v95);
    v69 = v101;
    v70 = v104;
    (*(v101 + 104))(v102, enum case for OfferButtonSubtitlePosition.below(_:), v104);
    (*(v69 + 56))(v105, 1, 1, v70);
    sub_1001028D8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v71 = v103;
    AccessibilityConditional.init(value:axValue:)();
    v72 = v116;
    sub_10064AFA4(v66, v67, 0, v68, v71, v116, 0, 0);

    (*(v113 + 8))(v71, v115);
    sub_10002B894(v68, &unk_100973230, &unk_1007B17E0);
    v46 = v96;
    sub_1001006C8(v62, v96, v72);

    v34 = v97;
    sub_1005076FC(v46, v97);
    a1 = v98;
    v35 = v114;
    v40 = v112;
  }

  else
  {
    [*&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView] setHidden:1];
    v73 = *&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v74 = type metadata accessor for OfferEnvironment();
    v75 = v109;
    (*(*(v74 - 8) + 56))(v109, 1, 1, v74);
    v76 = v110;
    (*(v113 + 56))(v110, 1, 1, v115);
    v77 = type metadata accessor for OfferTint();
    v78 = v108;
    (*(*(v77 - 8) + 56))(v108, 1, 1, v77);
    sub_1004F3190(v42, v73, v40, v116, 0, 0, v35, v75, v78, v76);
    sub_10002B894(v78, &unk_100973AD0, &unk_1007B17C0);
    v73[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v73 setNeedsLayout];
    sub_10002B894(v76, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v75, &unk_100970160, &unk_1007BDDE0);
    sub_1005076FC(v46, v34);
  }

  sub_10002B894(v35, &qword_100973AE0, &unk_1007B17D0);
  sub_10002B894(v34, &qword_100974528, qword_1007E0520);
  sub_10002B894(v40, &unk_100973230, &unk_1007B17E0);
  v79 = swift_allocObject();
  v80 = v111;
  swift_unknownObjectWeakInit();
  v81 = swift_allocObject();
  *(v81 + 2) = v79;
  *(v81 + 3) = a1;
  *(v81 + 4) = v116;
  v82 = (v80 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction);
  v83 = *(v80 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction);
  v84 = v82[1];
  *v82 = sub_1001018C0;
  v82[1] = v81;

  sub_10001F63C(v83, v84);

  return result;
}

uint64_t sub_1001018CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10002849C(&unk_100970E00, "ο\a");
  __chkstk_darwin(v6 - 8);
  v115 = v95 - v7;
  v114 = type metadata accessor for OfferButtonSubtitlePosition();
  v111 = *(v114 - 8);
  __chkstk_darwin(v114);
  v112 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_10002849C(&unk_1009701A0, &unk_1007B17F0);
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v113 = v95 - v9;
  v10 = sub_10002849C(&unk_100973AD0, &unk_1007B17C0);
  __chkstk_darwin(v10 - 8);
  v117 = v95 - v11;
  v12 = sub_10002849C(&unk_100970150, &unk_1007BDDD0);
  __chkstk_darwin(v12 - 8);
  v119 = v95 - v13;
  v14 = sub_10002849C(&unk_100970160, &unk_1007BDDE0);
  __chkstk_darwin(v14 - 8);
  v118 = v95 - v15;
  v16 = sub_10002849C(&qword_100973AE0, &unk_1007B17D0);
  __chkstk_darwin(v16 - 8);
  v125 = v95 - v17;
  v18 = sub_10002849C(&qword_100974528, qword_1007E0520);
  __chkstk_darwin(v18 - 8);
  v123 = v95 - v19;
  v20 = sub_10002849C(&unk_100973230, &unk_1007B17E0);
  __chkstk_darwin(v20 - 8);
  v110 = v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v121 = v95 - v23;
  v24 = type metadata accessor for MediaOverlayStyle();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = OfferItem.badge.getter();
  sub_10065FA88(v28, v29);
  OfferItem.title.getter();
  v30 = Paragraph.text.getter();

  sub_10065FBE8(v30);
  v31 = *(v2 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_subtitleView);
  OfferItem.subtitle.getter();
  v32 = *(v31 + qword_10098CA38);
  if (v33)
  {
    v34 = String._bridgeToObjectiveC()();
  }

  else
  {
    v34 = 0;
  }

  [v32 setText:v34];

  [*(v31 + qword_10098CA40) setHidden:1];
  type metadata accessor for ArtworkLoader();
  v35 = a2;
  BaseObjectGraph.optional<A>(_:)();

  v36 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_mediaContentView);
  OfferItem.mediaOverlayStyle.getter();
  v37 = MediaOverlayStyle.userInterfaceStyle.getter();
  (*(v25 + 8))(v27, v24);
  [v36 setOverrideUserInterfaceStyle:v37];
  v38 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkFallbackView);
  sub_1005BFBEC();
  sub_100660130();
  [*(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupContainerView) setHidden:0];
  if (OfferItem.moduleArtwork.getter())
  {
  }

  else
  {
    v38 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_artworkView);
  }

  v39 = v123;
  v40 = v121;
  v116 = v35;
  [v38 setHidden:1];
  v41 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupView);
  v42 = OfferItem.offerLockup.getter();
  v43 = sub_10002849C(&unk_100973240, qword_1007B2220);
  v44 = *(v43 - 8);
  v108 = *(v44 + 56);
  v109 = v43;
  v107 = v44 + 56;
  v108(v40, 1, 1);
  (*(v25 + 56))(v39, 1, 1, v24);
  v45 = type metadata accessor for OfferStyle();
  (*(*(v45 - 8) + 56))(v125, 1, 1, v45);
  type metadata accessor for InAppPurchaseLockup();
  v46 = v42;
  v47 = swift_dynamicCastClass();
  v48 = *&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_iapLockupView];
  v120 = v41;
  if (v47)
  {
    v49 = v47;
    v105 = a1;
    v106 = v3;
    v101 = type metadata accessor for OfferEnvironment();
    v50 = *(v101 - 8);
    v100 = *(v50 + 56);
    v102 = v50 + 56;
    v51 = v118;
    v100(v118, 1, 1, v101);
    v99 = *(v122 + 56);
    v52 = v119;
    v99(v119, 1, 1, v124);
    v97 = type metadata accessor for OfferTint();
    v53 = *(v97 - 8);
    v96 = *(v53 + 56);
    v98 = v53 + 56;
    v54 = v117;
    v96(v117, 1, 1, v97);
    v55 = v46;
    swift_retain_n();
    v56 = v40;
    v57 = v40;
    v58 = v116;
    v59 = v125;
    sub_1004F3190(v49, v48, v57, v116, 1, 0, v125, v51, v54, v52);
    sub_10002B894(v54, &unk_100973AD0, &unk_1007B17C0);
    v48[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    v103 = v48;
    [v48 setNeedsLayout];
    sub_10002B894(v52, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v51, &unk_100970160, &unk_1007BDDE0);
    v60 = v49;
    v61 = *&v120[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v104 = v60;
    v62 = v58;
    v63 = InAppPurchaseLockup.parent.getter();
    v100(v51, 1, 1, v101);
    v99(v52, 1, 1, v124);
    v96(v54, 1, 1, v97);
    v64 = v62;
    sub_1004F3190(v63, v61, v56, v62, 0, 0, v59, v51, v54, v52);
    sub_10002B894(v54, &unk_100973AD0, &unk_1007B17C0);
    v61[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v61 setNeedsLayout];

    sub_10002B894(v52, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v51, &unk_100970160, &unk_1007BDDE0);
    v65 = OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton;
    [*&v61[OBJC_IVAR____TtC8AppStore14BaseLockupView_offerButton] setAlpha:0.0];
    [*&v61[v65] setUserInteractionEnabled:0];
    [v61 setHidden:1];
    v66 = Lockup.icon.getter();
    v67 = v55;
    if (v66)
    {
    }

    sub_100709C80(v66 != 0);
    v68 = *&v61[v65];
    v69 = Lockup.offerDisplayProperties.getter();

    v70 = Lockup.buttonAction.getter();

    v71 = v110;
    (v108)(v110, 1, 1, v109);
    v72 = v111;
    v73 = v114;
    (*(v111 + 104))(v112, enum case for OfferButtonSubtitlePosition.below(_:), v114);
    (*(v72 + 56))(v115, 1, 1, v73);
    sub_1001028D8(&qword_100987130, &type metadata accessor for OfferButtonSubtitlePosition, &protocol conformance descriptor for OfferButtonSubtitlePosition);
    v74 = v113;
    AccessibilityConditional.init(value:axValue:)();
    v75 = v64;
    sub_10064AFA4(v69, v70, 0, v71, v74, v64, 0, 0);

    (*(v122 + 8))(v74, v124);
    sub_10002B894(v71, &unk_100973230, &unk_1007B17E0);
    v76 = v120;
    sub_1001006C8(v67, v120, v64);

    v39 = v123;
    sub_1005076FC(v76, v123);
    v3 = v106;
    v77 = v125;
    v78 = v121;
  }

  else
  {
    [v48 setHidden:1];
    v95[1] = v42;
    v79 = *&v41[OBJC_IVAR____TtC8AppStore22SubscriptionLockupView_appLockupView];
    v80 = type metadata accessor for OfferEnvironment();
    v81 = v118;
    (*(*(v80 - 8) + 56))(v118, 1, 1, v80);
    v82 = v119;
    (*(v122 + 56))(v119, 1, 1, v124);
    v83 = type metadata accessor for OfferTint();
    v84 = v117;
    (*(*(v83 - 8) + 56))(v117, 1, 1, v83);
    v85 = v42;
    v78 = v40;
    v86 = v40;
    v87 = v116;
    v77 = v125;
    sub_1004F3190(v85, v79, v86, v116, 0, 0, v125, v81, v84, v82);
    sub_10002B894(v84, &unk_100973AD0, &unk_1007B17C0);
    v79[OBJC_IVAR____TtC8AppStore15SmallLockupView_enforceMaximumOfTwoLinesOverall] = 0;
    sub_10070AB34();
    [v79 setNeedsLayout];
    v76 = v120;
    v75 = v87;
    sub_10002B894(v82, &unk_100970150, &unk_1007BDDD0);
    sub_10002B894(v81, &unk_100970160, &unk_1007BDDE0);
    sub_1005076FC(v76, v39);
  }

  sub_10002B894(v77, &qword_100973AE0, &unk_1007B17D0);
  sub_10002B894(v39, &qword_100974528, qword_1007E0520);
  sub_10002B894(v78, &unk_100973230, &unk_1007B17E0);
  OfferItem.offerLockup.getter();
  v88 = Lockup.clickAction.getter();

  if (v88)
  {
    v89 = swift_allocObject();
    *(v89 + 16) = v75;
    *(v89 + 24) = v88;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_10010276C;
    *(v88 + 24) = v89;

    v90 = sub_100102774;
  }

  else
  {
    v90 = 0;
  }

  v91 = (v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction);
  v92 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction);
  v93 = *(v3 + OBJC_IVAR____TtC8AppStore20AppPromotionCardView_lockupViewTappedAction + 8);
  *v91 = v90;
  v91[1] = v88;
  return sub_10001F63C(v92, v93);
}

uint64_t sub_1001027B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100102818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPromotionCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010287C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for AppPromotionCardLayout(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001028D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100102920()
{
  v0 = type metadata accessor for FontSource();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticDimension();
  sub_100005644(v4, qword_100974530);
  sub_1000056A8(v4, qword_100974530);
  if (qword_10096E240 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for FontUseCase();
  v6 = sub_1000056A8(v5, qword_1009D1640);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_1000056E0(v10);
  (*(v1 + 16))(v7, v3, v0);
  StaticDimension.init(_:scaledLike:)();
  return (*(v1 + 8))(v3, v0);
}

double sub_100102AF4()
{
  v0 = type metadata accessor for AspectRatio();
  sub_100005644(v0, qword_100974548);
  sub_1000056A8(v0, qword_100974548);
  AspectRatio.init(_:_:)();
  return result;
}

char *sub_100102B48(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_itemLayoutContext;
  v13 = type metadata accessor for ItemLayoutContext();
  (*(*(v13 - 8) + 56))(&v6[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView;
  *&v6[v14] = [objc_allocWithZone(type metadata accessor for AppShowcaseLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_showcaseType;
  v16 = enum case for AppShowcaseType.large(_:);
  v17 = type metadata accessor for AppShowcaseType();
  (*(*(v17 - 8) + 104))(&v6[v15], v16, v17);
  v22.receiver = v6;
  v22.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v20 = [v18 contentView];
  [v20 addSubview:*&v18[OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView]];

  return v18;
}

uint64_t sub_100102E9C(void *a1)
{
  if (a1)
  {
    v2 = [a1 superview];
  }

  else
  {
    v2 = 0;
  }

  v3 = [v1 contentView];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_100005744(0, &qword_100972EB0, UIView_ptr);
      v5 = static NSObject.== infix(_:_:)();
    }

    else
    {
      v5 = 0;
    }

    v4 = v2;
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
  }

  return v5 & 1;
}

void sub_100102F60(void *a1)
{
  sub_100105720();
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

void (*sub_100103010(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_100103064;
}

void sub_100103064(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_100105720();
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
    sub_100105720();
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

uint64_t sub_10010318C()
{
  v0 = type metadata accessor for VideoConfiguration();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for AspectRatio();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_5;
  }

  v12 = qword_1009D2200;
  v13 = Strong;
  swift_beginAccess();
  (*(v1 + 16))(v3, &v13[v12], v0);

  VideoConfiguration.aspectRatio.getter();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_5:
    sub_10002B894(v6, &unk_1009732A0, &unk_1007B4FE0);
    v14 = 0;
    return v14 & 1;
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = AspectRatio.isLandscape.getter();
  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

void sub_10010343C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v11.receiver = v2;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "prepareForReuse");
  v4 = *(*&v2[OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView);
  v12.value.super.isa = 0;
  v12.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v12, v5);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    [Strong setHidden:1];
  }

  [v3 setNeedsLayout];
  sub_100105720();
  swift_unknownObjectWeakAssign();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = [v3 contentView];
    [v10 addSubview:v9];

    [v3 setNeedsLayout];
  }
}

void sub_1001035A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v122 = type metadata accessor for FloatingPointRoundingRule();
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v120 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for VideoConfiguration();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v127 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002849C(&unk_1009732A0, &unk_1007B4FE0);
  __chkstk_darwin(v7 - 8);
  v135 = &v120 - v8;
  v137 = type metadata accessor for AspectRatio();
  v136 = *(v137 - 8);
  __chkstk_darwin(v137);
  v126 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppShowcaseType();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v124 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v123 = &v120 - v14;
  __chkstk_darwin(v15);
  v134 = &v120 - v16;
  __chkstk_darwin(v17);
  v133 = &v120 - v18;
  __chkstk_darwin(v19);
  *&v142 = &v120 - v20;
  __chkstk_darwin(v21);
  v125 = &v120 - v22;
  __chkstk_darwin(v23);
  *&v130 = &v120 - v24;
  __chkstk_darwin(v25);
  v140 = &v120 - v26;
  __chkstk_darwin(v27);
  v29 = &v120 - v28;
  __chkstk_darwin(v30);
  v32 = &v120 - v31;
  *&v34 = __chkstk_darwin(v33).n128_u64[0];
  v36 = &v120 - v35;
  v151.receiver = v3;
  v151.super_class = ObjectType;
  objc_msgSendSuper2(&v151, "layoutSubviews", v34);
  v37 = [v3 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v46 = OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v47 = v11[2];
  v144 = v46;
  v141 = *&v3;
  v145 = v47;
  v146 = v11 + 2;
  v47(v36, &v3[v46], v10);
  v48 = v11;
  v49 = v11[13];
  v143 = enum case for AppShowcaseType.large(_:);
  v49(v32);
  sub_10010626C(&qword_1009745B0, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v147 == v149 && v148 == v150)
  {
    v50 = 1;
  }

  else
  {
    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v51 = v11[1];
  v51(v32, v10);
  v139 = v11 + 1;
  v138 = v51;
  v51(v36, v10);

  if (v50)
  {
    v52 = v141;
    v132 = sub_10010318C();
  }

  else
  {
    v132 = 0;
    v52 = v141;
  }

  v53 = v140;
  v145(v29, *&v52 + v144, v10);
  sub_10010318C();
  v54 = v48;
  v55 = v48[4];
  v55(v53, v29, v10);
  v56 = v54[11];
  v140 = (v54 + 11);
  v57 = v56(v53, v10);
  v131 = v55;
  if (v57 == v143 || v57 == enum case for AppShowcaseType.small(_:))
  {
    v58 = v141;
  }

  else
  {
    v58 = v141;
    if (v57 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v138(v53, v10);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  Width = 0.0;
  v61 = &StringUserDefaultsDebugSetting;
  if (!Strong)
  {
    goto LABEL_26;
  }

  v62 = Strong;
  v63 = [Strong isHidden];

  v64 = v144;
  if (v63)
  {
    goto LABEL_27;
  }

  v65 = v130;
  v66 = v145;
  v145(*&v130, *&v58 + v144, v10);
  v67 = sub_10010318C();
  v152.origin.x = v39;
  v152.origin.y = v41;
  v152.size.width = v43;
  v152.size.height = v45;
  Width = CGRectGetWidth(v152);
  v68 = v125;
  v66(v125, *&v65, v10);
  v69 = v56(v68, v10);
  if (v69 != v143)
  {
    if (v69 != enum case for AppShowcaseType.small(_:) && v69 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v138(*&v130, v10);
      Width = 0.0;
      v130 = *&v125;
      v61 = &StringUserDefaultsDebugSetting;
      goto LABEL_25;
    }

    v61 = &StringUserDefaultsDebugSetting;
    if (qword_10096D0A0 == -1)
    {
LABEL_24:
      sub_1000056A8(v137, qword_100974548);
      AspectRatio.width(fromHeight:)();
      Width = v70;
      goto LABEL_25;
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  if ((v67 & 1) == 0)
  {
    v61 = &StringUserDefaultsDebugSetting;
    if (qword_10096D0A0 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v61 = &StringUserDefaultsDebugSetting;
LABEL_25:
  v138(*&v130, v10);
LABEL_26:
  v64 = v144;
LABEL_27:
  v145(*&v142, *&v58 + v64, v10);
  v71 = swift_unknownObjectWeakLoadStrong();
  v130 = Width;
  if (v71)
  {
    v72 = v71;
    v73 = [v71 v61[51].base_prots];
  }

  else
  {
    v73 = 1;
  }

  v74 = v131;
  v75 = sub_10010318C();
  v153.origin.x = v39;
  v153.origin.y = v41;
  v153.size.width = v43;
  v153.size.height = v45;
  v76 = CGRectGetWidth(v153);
  v141 = v39;
  v77 = v143;
  if (v73 || (v75 & 1) != 0)
  {
    v138(*&v142, v10);
    v78 = v134;
    goto LABEL_46;
  }

  v79 = v123;
  v145(v123, *&v142, v10);
  v80 = v56(v79, v10);
  v78 = v134;
  if (v80 == v77)
  {
    if (qword_10096D0A0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  if (v80 != enum case for AppShowcaseType.small(_:) && v80 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    v138(v79, v10);
    v81 = 0.0;
    goto LABEL_41;
  }

  if (qword_10096D0A0 != -1)
  {
LABEL_70:
    swift_once();
  }

LABEL_40:
  sub_1000056A8(v137, qword_100974548);
  AspectRatio.width(fromHeight:)();
  v81 = v82;
LABEL_41:
  v83 = v124;
  v74(v124, *&v142, v10);
  v84 = v56(v83, v10);
  v85 = 0.0;
  v86 = 25.0;
  if (v84 != v77)
  {
    v85 = 30.0;
    if (v84 != enum case for AppShowcaseType.small(_:))
    {
      v85 = 25.0;
      if (v84 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v138)(v83, v10, 25.0, 25.0);
        v86 = 0.0;
        v85 = 0.0;
      }
    }
  }

  v76 = v76 - (v81 + v86 + v85);
  v39 = v141;
LABEL_46:
  v87 = *(*&v58 + OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView);
  v154.origin.x = v39;
  v154.origin.y = v41;
  v154.size.width = v43;
  v154.size.height = v45;
  Height = CGRectGetHeight(v154);
  v89.n128_f64[0] = v76;
  v90 = sub_1002966E0(v89, Height);
  v92 = v91;
  v155.origin.x = v39;
  v155.origin.y = v41;
  v142 = v43;
  v155.size.width = v43;
  v155.size.height = v45;
  MinX = CGRectGetMinX(v155);
  v94 = v133;
  v145(v133, *&v58 + v144, v10);
  v74(v78, v94, v10);
  v95 = v56(v78, v10);
  v96 = 0.0;
  v97 = v45;
  v98 = v41;
  if (v95 == v77)
  {
    v99 = v137;
    v100 = v136;
    v101 = v132;
  }

  else
  {
    v96 = 30.0;
    v99 = v137;
    v100 = v136;
    v101 = v132;
    if (v95 != enum case for AppShowcaseType.small(_:))
    {
      v96 = 25.0;
      if (v95 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v138)(v78, v10, 25.0);
        v96 = 0.0;
      }
    }
  }

  v102 = MinX + v96;
  v103 = 20.0;
  if ((v101 & 1) == 0)
  {
    v156.origin.x = v141;
    v156.origin.y = v98;
    v156.size.width = v142;
    v156.size.height = v97;
    v103 = CGRectGetMidY(v156) + v92 * -0.5;
  }

  CGRect.withLayoutDirection(in:relativeTo:)();
  [v87 setFrame:?];
  v104 = swift_unknownObjectWeakLoadStrong();
  if (!v104)
  {
    v111 = v135;
    (*(v100 + 56))(v135, 1, 1, v99);
    goto LABEL_59;
  }

  v105 = qword_1009D2200;
  v106 = v104;
  swift_beginAccess();
  v107 = v128;
  v108 = &v106[v105];
  v109 = v127;
  v110 = v129;
  (*(v128 + 16))(v127, v108, v129);

  v111 = v135;
  VideoConfiguration.aspectRatio.getter();
  (*(v107 + 8))(v109, v110);
  if ((*(v100 + 48))(v111, 1, v99) == 1)
  {
LABEL_59:
    sub_10002B894(v111, &unk_1009732A0, &unk_1007B4FE0);
    goto LABEL_60;
  }

  v112 = v126;
  (*(v100 + 32))(v126, v111, v99);
  v113 = swift_unknownObjectWeakLoadStrong();
  if (v113 && (v114 = v113, v115 = [v113 isHidden], v114, v112 = v126, (v115 & 1) == 0))
  {
    AspectRatio.height(fromWidth:)();
    if (v101)
    {
      v157.origin.x = v141;
      v157.origin.y = v98;
      v157.size.width = v142;
      v157.size.height = v97;
      CGRectGetMinX(v157);
      v158.origin.x = v102;
      v158.origin.y = v103;
      v158.size.width = v90;
      v158.size.height = v92;
      CGRectGetMaxY(v158);
      if (qword_10096D098 != -1)
      {
        swift_once();
      }

      v118 = type metadata accessor for StaticDimension();
      sub_1000056A8(v118, qword_100974530);
      v119 = v120;
      static Dimensions.defaultRoundingRule.getter();
      AnyDimension.value(in:rounded:)();
      (*(v121 + 8))(v119, v122);
      (*(v100 + 8))(v126, v99);
    }

    else
    {
      v159.origin.x = v102;
      v159.origin.y = v103;
      v159.size.width = v90;
      v159.size.height = v92;
      CGRectGetMaxX(v159);
      v160.origin.x = v141;
      v160.origin.y = v98;
      v160.size.width = v142;
      v160.size.height = v97;
      CGRectGetHeight(v160);
      (*(v100 + 8))(v112, v99);
    }
  }

  else
  {
    (*(v100 + 8))(v112, v99);
  }

LABEL_60:
  v116 = swift_unknownObjectWeakLoadStrong();
  if (v116)
  {
    v117 = v116;
    CGRect.withLayoutDirection(in:relativeTo:)();
    [v117 setFrame:?];
  }
}

uint64_t type metadata accessor for AppShowcaseCollectionViewCell(uint64_t a1)
{
  result = qword_100974588;
  if (!qword_100974588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100104844(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AppShowcaseType();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_100104948(uint64_t **a1))()
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
  v2[4] = sub_100103010(v2);
  return sub_1000B4CAC;
}

uint64_t sub_1001049B8(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = sub_10010626C(&qword_1009745A8, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007B6408);

  return VideoViewProviding.someVideoView.getter(ObjectType, v3);
}

uint64_t sub_100104A2C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10010626C(&qword_1009745A8, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007B6408);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_100104AB8(uint64_t *a1, uint64_t a2))()
{
  swift_getObjectType();
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
  sub_10010626C(&qword_1009745A8, type metadata accessor for AppShowcaseCollectionViewCell, &unk_1007B6408);
  *(v4 + 32) = VideoViewProviding.someVideoView.modify();
  return sub_1000C2700;
}

void sub_100104C50(char *a1, void *a2, double a3, double a4)
{
  v82 = a2;
  v73 = type metadata accessor for FloatingPointRoundingRule();
  v77 = *(v73 - 8);
  __chkstk_darwin(v73);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppShowcaseType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v76 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v74 = &v68 - v12;
  __chkstk_darwin(v13);
  v70 = &v68 - v14;
  __chkstk_darwin(v15);
  v72 = &v68 - v16;
  __chkstk_darwin(v17);
  v81 = &v68 - v18;
  __chkstk_darwin(v19);
  v71 = &v68 - v20;
  __chkstk_darwin(v21);
  v84 = &v68 - v22;
  __chkstk_darwin(v23);
  v83 = &v68 - v24;
  __chkstk_darwin(v25);
  v27 = &v68 - v26;
  v28 = type metadata accessor for AspectRatio();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v69 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v78 = &v68 - v32;
  __chkstk_darwin(v33);
  v35 = &v68 - v34;
  v36 = AppShowcase.video.getter();
  v79 = v29;
  v80 = v28;
  if (v36)
  {
    Video.preview.getter();

    Artwork.size.getter();

    AspectRatio.init(_:_:)();
    v37 = AspectRatio.isLandscape.getter();
    (*(v29 + 8))(v35, v28);
  }

  else
  {
    v37 = 0;
  }

  if (!AppShowcase.video.getter())
  {
    v38 = v37;
    AppShowcase.type.getter();
    goto LABEL_8;
  }

  AppShowcase.type.getter();
  if (v37)
  {
    v38 = v37;
LABEL_8:
    v9[1](v27, v8);
    v39 = a3;
    goto LABEL_23;
  }

  v40 = v71;
  (v9[2])(v71, v27, v8);
  v41 = v9;
  v42 = v9[11];
  v43 = (v42)(v40, v8);
  v44 = enum case for AppShowcaseType.large(_:);
  if (v43 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_10096D0A0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

  if (v43 == enum case for AppShowcaseType.small(_:) || v43 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_10096D0A0 == -1)
    {
LABEL_16:
      sub_1000056A8(v80, qword_100974548);
      AspectRatio.width(fromHeight:)();
      v45 = v46;
      goto LABEL_17;
    }

LABEL_43:
    swift_once();
    goto LABEL_16;
  }

  v41[1](v40, v8);
  v45 = 0.0;
LABEL_17:
  v47 = v81;
  (v41[4])(v81, v27, v8);
  v48 = (v42)(v47, v8);
  v49 = 0.0;
  v50 = 25.0;
  if (v48 == v44)
  {
    v9 = v41;
  }

  else
  {
    v49 = 30.0;
    v9 = v41;
    if (v48 != enum case for AppShowcaseType.small(_:))
    {
      v49 = 25.0;
      if (v48 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v41[1])(v47, v8, 25.0, 25.0);
        v50 = 0.0;
        v49 = 0.0;
      }
    }
  }

  v38 = v37;
  v39 = a3 - (v45 + v50 + v49);
LABEL_23:
  type metadata accessor for AppShowcaseLockupView(0);
  v51.n128_f64[0] = v39;
  sub_100296ADC(a1, v82, v51, a4);
  v81 = a1;
  AppShowcase.type.getter();
  v52 = enum case for AppShowcaseType.large(_:);
  v53 = v9[13];
  (v53)(v84, enum case for AppShowcaseType.large(_:), v8);
  sub_10010626C(&qword_1009745B0, &type metadata accessor for AppShowcaseType, &protocol conformance descriptor for AppShowcaseType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v87 != v85 || v88 != v86)
  {
    v38 &= _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v71 = v9;
  v54 = v9[1];
  v54(v84, v8);
  v54(v83, v8);

  if (v38)
  {
    if (qword_10096D098 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for StaticDimension();
    sub_1000056A8(v55, qword_100974530);
    v56 = v75;
    static Dimensions.defaultRoundingRule.getter();
    AnyDimension.value(in:rounded:)();
    (*(v77 + 8))(v56, v73);
    v57 = AppShowcase.video.getter();
    v59 = v79;
    v58 = v80;
    v60 = v78;
    if (v57)
    {
      Video.preview.getter();

      Artwork.size.getter();

      v61 = v69;
      AspectRatio.init(_:_:)();
      (*(v59 + 32))(v60, v61, v58);
      v62 = v72;
      AppShowcase.type.getter();
      v63 = v71;
      v64 = v70;
      (*(v71 + 2))(v70, v62, v8);
      v65 = (*(v63 + 11))(v64, v8);
      if (v65 != v52)
      {
        if (v65 == enum case for AppShowcaseType.small(_:) || v65 == enum case for AppShowcaseType.smallAlignedLeft(_:))
        {
          if (qword_10096D0A0 != -1)
          {
            swift_once();
          }

          sub_1000056A8(v58, qword_100974548);
          AspectRatio.width(fromHeight:)();
        }

        else
        {
          v54(v62, v8);
          v62 = v64;
        }
      }

      v54(v62, v8);
      AspectRatio.height(fromWidth:)();
      (*(v59 + 8))(v60, v58);
    }
  }

  else
  {
    v66 = v74;
    AppShowcase.type.getter();
    v67 = v76;
    (v53)(v76, v52, v8);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v87 != v85 || v88 != v86)
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v54(v67, v8);
    v54(v66, v8);
  }
}

void sub_100105720()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_10010626C(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    Strong = v1;
  }

  v2 = sub_100102E9C(Strong);

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

void sub_1001057F0(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v4 = type metadata accessor for AspectRatio();
  v52 = *(v4 - 8);
  v53 = v4;
  __chkstk_darwin(v4);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Artwork.Style();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v46 - v11;
  __chkstk_darwin(v13);
  v15 = &v46 - v14;
  v54 = type metadata accessor for AppShowcaseType();
  v56 = *(v54 - 8);
  __chkstk_darwin(v54);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v49 = &v46 - v19;
  __chkstk_darwin(v20);
  v22 = &v46 - v21;
  __chkstk_darwin(v23);
  v25 = &v46 - v24;
  sub_10002C0AC(a1, v58);
  sub_10002849C(&unk_1009793D0, qword_1007B4FF0);
  type metadata accessor for AppShowcase();
  if (!swift_dynamicCast())
  {
    return;
  }

  v47 = v17;
  v26 = v57;
  v27 = *(*&v2[OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView);
  Strong = swift_unknownObjectWeakLoadStrong();
  v50 = v27;
  v28 = [v2 contentView];
  sub_100005744(0, &qword_100972EB0, UIView_ptr);
  LayoutMarginsAware<>.layoutFrame.getter();

  AppShowcase.lockup.getter();
  v29 = Lockup.icon.getter();

  if (v29)
  {
    v46 = v26;
    AppShowcase.type.getter();
    v30 = v56;
    v31 = v54;
    (*(v56 + 32))(v22, v25, v54);
    v32 = (*(v30 + 88))(v22, v31);
    if (v32 != enum case for AppShowcaseType.large(_:) && v32 != enum case for AppShowcaseType.small(_:) && v32 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v56 + 8))(v22, v31);
    }

    Artwork.style.getter();
    (*(v7 + 104))(v9, enum case for Artwork.Style.roundedRect(_:), v6);
    Artwork.Style.orIfUnspecified(_:)();
    v33 = *(v7 + 8);
    v33(v9, v6);
    v33(v12, v6);
    Artwork.Style.iconWidth(fromHeight:)();
    Artwork.config(_:mode:prefersLayeredImage:)();
    v34 = v50;
    Artwork.style.getter();
    ArtworkView.style.setter();
    [v34 setContentMode:Artwork.contentMode.getter()];
    ArtworkLoaderConfig.size.getter();
    ArtworkView.imageSize.setter();
    if (!Artwork.backgroundColor.getter())
    {
      sub_100005744(0, &qword_100970180, UIColor_ptr);
      static UIColor.placeholderBackground.getter();
    }

    ArtworkView.backgroundColor.setter();
    type metadata accessor for ArtworkView();
    sub_10010626C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();

    v33(v15, v6);
  }

  if (!AppShowcase.video.getter())
  {

    return;
  }

  Video.preview.getter();

  Artwork.size.getter();
  Artwork.size.getter();
  v35 = v51;
  AspectRatio.init(_:_:)();
  v36 = v49;
  AppShowcase.type.getter();
  v37 = AspectRatio.isLandscape.getter();
  v38 = v56;
  v39 = v47;
  v40 = v54;
  (*(v56 + 16))(v47, v36, v54);
  v41 = (*(v38 + 88))(v39, v40);
  v42 = Strong;
  if (v41 == enum case for AppShowcaseType.large(_:))
  {
    v43 = v53;
    if (v37)
    {
LABEL_21:
      (*(v56 + 8))(v36, v40);
      goto LABEL_22;
    }

    if (qword_10096D0A0 == -1)
    {
LABEL_20:
      sub_1000056A8(v43, qword_100974548);
      AspectRatio.width(fromHeight:)();
      goto LABEL_21;
    }

LABEL_27:
    swift_once();
    goto LABEL_20;
  }

  v43 = v53;
  if (v41 == enum case for AppShowcaseType.small(_:) || v41 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_10096D0A0 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v44 = *(v56 + 8);
  v44(v36, v40);
  v44(v47, v40);
LABEL_22:
  AspectRatio.height(fromWidth:)();
  Artwork.config(_:mode:prefersLayeredImage:)();
  if (v42)
  {
    type metadata accessor for VideoView(0);
    sub_10010626C(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
    v45 = v42;
    ArtworkLoader.fetchArtwork<A>(using:closestMatch:into:)();
  }

  else
  {
    ArtworkLoader.prefetchArtwork(using:)();
  }

  (*(v52 + 8))(v35, v43);
}

void sub_1001060A4(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore29AppShowcaseCollectionViewCell_lockupView);
  v4 = OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView;
  v5 = *(v3 + OBJC_IVAR____TtC8AppStore21AppShowcaseLockupView_iconView);
  v14.value.super.isa = 0;
  v14.is_nil = 0;
  ArtworkView.setImage(image:animated:)(v14, v6);

  v7 = *(v3 + v4);
  type metadata accessor for ArtworkView();
  sub_10010626C(&qword_100970E80, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v8 = v7;
  ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = qword_100988CC0;
    v12 = Strong;
    v11 = [*(Strong + qword_100988CC0) layer];
    [v11 removeAllAnimations];

    [*&v12[v10] setImage:0];
    type metadata accessor for VideoView(0);
    sub_10010626C(&unk_1009840E0, type metadata accessor for VideoView, &unk_1007DDE78);
    ArtworkLoader.forgetFetch<A>(forView:deprioritizingFetch:)();
  }
}

uint64_t sub_10010626C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1001062B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1001062FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10010635C()
{
  result = qword_1009745B8;
  if (!qword_1009745B8)
  {
    type metadata accessor for GameCenterAchievementsAction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009745B8);
  }

  return result;
}

uint64_t sub_1001063B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    type metadata accessor for GameCenter();
    v8 = a1;
    GameCenterAchievementsAction.bundleId.getter();
    static GameCenter.fetchGameRecord(for:with:)();

    v9 = swift_allocObject();
    v9[2] = a3;
    v9[3] = a4;
    v9[4] = a2;
    v10 = sub_1000076C0();
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

    sub_100106DE8();
    swift_allocError();
    Promise.reject(_:)();
  }
}

double sub_100106674(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a3;
  v39 = a4;
  v5 = type metadata accessor for FlowOrigin();
  v36 = *(v5 - 8);
  v37 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FlowAnimationBehavior();
  v33 = *(v7 - 8);
  v34 = v7;
  __chkstk_darwin(v7);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FlowPresentationContext();
  v9 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActionMetrics();
  __chkstk_darwin(v11 - 8);
  v12 = sub_10002849C(&unk_1009767C0, &unk_1007B1880);
  __chkstk_darwin(v12 - 8);
  v14 = &v28 - v13;
  v15 = sub_10002849C(&qword_100982460, &unk_1007B5C90);
  __chkstk_darwin(v15 - 8);
  v17 = &v28 - v16;
  v18 = type metadata accessor for FlowPage();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = GameCenterAchievementsAction.achievementIdsToHighlight.getter();
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  (*(v19 + 104))(v21, enum case for FlowPage.gameAchievements(_:), v18);
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v17, 1, 1, v24);
  v25 = type metadata accessor for ReferrerData();
  (*(*(v25 - 8) + 56))(v14, 1, 1, v25);
  v42 = &type metadata for GameCenterAchievementsPage;
  v40 = v22;
  v41 = v23;
  v29 = v22;

  static ActionMetrics.notInstrumented.getter();
  (*(v9 + 104))(v30, enum case for FlowPresentationContext.infer(_:), v31);
  (*(v33 + 104))(v32, enum case for FlowAnimationBehavior.infer(_:), v34);
  (*(v36 + 104))(v35, enum case for FlowOrigin.inapp(_:), v37);
  static FlowActionPresentation.stackPush.getter();
  type metadata accessor for FlowAction();
  swift_allocObject();
  v26 = FlowAction.init(id:title:artwork:page:url:referrerUrl:referrerData:pageData:actionMetrics:presentationContext:animationBehavior:origin:presentationStyle:presentation:)();
  sub_1005D01FC(v26, 1, v38);
  Promise.pipe(to:)();

  return result;
}

uint64_t sub_100106B8C(uint64_t a1)
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

uint64_t sub_100106CE4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_10002849C(&qword_1009764A0, &unk_1007B6230);
  v4 = Promise.__allocating_init()();
  type metadata accessor for GameCenter();
  v7[3] = sub_1000076C0();
  v7[4] = &protocol witness table for OS_dispatch_queue;
  v7[0] = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = a2;

  static GameCenter.withLocalPlayer(on:_:)();

  sub_100007000(v7);
  return v4;
}

unint64_t sub_100106DE8()
{
  result = qword_1009745C0;
  if (!qword_1009745C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009745C0);
  }

  return result;
}

unint64_t sub_100106E64()
{
  result = qword_1009745C8;
  if (!qword_1009745C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009745C8);
  }

  return result;
}

id sub_100106EB8(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_itemLayoutContext;
  v10 = type metadata accessor for ItemLayoutContext();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = &v4[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_weakInit();
  v12 = &v4[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsUpdateBlock];
  v13 = type metadata accessor for SearchResultCollectionViewCell(0);
  *v12 = 0;
  *(v12 + 1) = 0;
  v21.receiver = v4;
  v21.super_class = v13;
  v14 = objc_msgSendSuper2(&v21, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = v14;
  [v18 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v19 = [v18 contentView];
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  return v18;
}

void sub_100107128(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
  if (v2)
  {
    if (a1)
    {
      if (v2 == a1)
      {
        return;
      }

      v5 = v2;
      [a1 removeFromSuperview];
    }

    else
    {
      v3 = v2;
    }

    v16 = v2;
    v6 = [v1 contentView];
    [v6 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    [v16 setFrame:{v8, v10, v12, v14}];
    v15 = [v1 contentView];
    [v15 addSubview:v16];

    [v1 setNeedsLayout];
  }
}

void (*sub_100107278(void *a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents;
  a1[2] = v2;
  a1[3] = v4;
  v5 = *(v2 + v4);
  if (!v5)
  {
    goto LABEL_5;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    v5 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v6 = v5;
  v5 = dispatch thunk of AdRotationDisabling.disableAdvertRotation.getter();
  v8 = v7;

LABEL_6:
  *a1 = v5;
  a1[1] = v8;
  return sub_100107338;
}

void sub_100107338(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1[2] + a1[3]);
  if (a2)
  {
    if (v4)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_10000827C(v3, v2);
        v5 = v4;
        dispatch thunk of AdRotationDisabling.disableAdvertRotation.setter();
      }
    }

    goto LABEL_10;
  }

  if (!v4 || (swift_getObjectType(), !swift_conformsToProtocol2()))
  {
LABEL_10:

    sub_10001F63C(v3, v2);
    return;
  }

  v6 = v4;
  dispatch thunk of AdRotationDisabling.disableAdvertRotation.setter();
}

void sub_100107474(void *a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v4 && (swift_getObjectType(), swift_conformsToProtocol2()))
  {
    if (a1)
    {
      sub_10010AD30(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    }

    swift_getObjectType();
    v7 = a1;
    v6 = v4;
    dispatch thunk of AnyVideoViewProviding.someVideoView.setter();

    v5 = v7;
  }

  else
  {
    v5 = a1;
  }
}

uint64_t sub_100107578(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v3)
  {
    swift_getObjectType();
    result = swift_conformsToProtocol2();
    if (!result)
    {
      return result;
    }

    v5 = v3;
    v6 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();

    if (v6)
    {
      type metadata accessor for VideoView(0);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }
  }

  return 0;
}

void (*sub_100107618(uint64_t *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents;
  a1[1] = v2;
  a1[2] = v4;
  v5 = *(v2 + v4);
  if (!v5)
  {
    goto LABEL_6;
  }

  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v5;
    v8 = dispatch thunk of AnyVideoViewProviding.someVideoView.getter();

    if (!v8)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    type metadata accessor for VideoView(0);
    v6 = swift_dynamicCastClass();
    if (!v6)
    {

      goto LABEL_6;
    }
  }

LABEL_7:
  *a1 = v6;
  return sub_1001076EC;
}

void sub_1001076EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    if (v5)
    {
      v11 = v4;
      swift_getObjectType();
      v6 = swift_conformsToProtocol2();
      v4 = v11;
      if (v6)
      {
        if (v11)
        {
          sub_10010AD30(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
        }

        v7 = v11;
        v8 = v5;
        dispatch thunk of AnyVideoViewProviding.someVideoView.setter();

LABEL_11:
        v4 = v11;
      }
    }
  }

  else
  {
    if (!v5)
    {
      goto LABEL_13;
    }

    v11 = v4;
    swift_getObjectType();
    if (!swift_conformsToProtocol2())
    {
      goto LABEL_11;
    }

    if (v11)
    {
      sub_10010AD30(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
    }

    v9 = v11;
    v10 = v5;
    dispatch thunk of AnyVideoViewProviding.someVideoView.setter();

    v4 = v9;
  }

LABEL_13:
}

id sub_1001078AC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10002849C(&qword_100974640, &qword_1007B6A88), sub_10002849C(&qword_100988830, &unk_1007B6A90), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10002A400(&v8, *(&v9 + 1));
      v5 = (*(v4 + 8))(v3, v4);
      sub_100007000(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10002B894(&v8, &qword_100974638, &qword_1007B6A80);

  return v7;
}

id sub_1001079D8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10002849C(&qword_100974640, &qword_1007B6A88), sub_10002849C(&qword_100988830, &unk_1007B6A90), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10002A400(&v8, *(&v9 + 1));
      v5 = (*(v4 + 16))(v3, v4);
      sub_100007000(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10002B894(&v8, &qword_100974638, &qword_1007B6A80);

  return v7;
}

id sub_100107B04()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10002849C(&qword_100974640, &qword_1007B6A88), sub_10002849C(&qword_100988830, &unk_1007B6A90), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v9 + 1);
    if (*(&v9 + 1))
    {
      v4 = v10;
      sub_10002A400(&v8, *(&v9 + 1));
      v5 = (*(v4 + 24))(v3, v4);
      sub_100007000(&v8);
      return v5;
    }
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
  }

  sub_10002B894(&v8, &qword_100974638, &qword_1007B6A80);

  return v7;
}

uint64_t sub_100107C30()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10002849C(&qword_100974640, &qword_1007B6A88), sub_10002849C(&qword_100988830, &unk_1007B6A90), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10002A400(&v6, *(&v7 + 1));
      (*(v4 + 32))(v3, v4);
      return sub_100007000(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10002B894(&v6, &qword_100974638, &qword_1007B6A80);
}

uint64_t sub_100107D6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v1 && (v2 = v1, sub_10002849C(&qword_100974640, &qword_1007B6A88), sub_10002849C(&qword_100988830, &unk_1007B6A90), (swift_dynamicCast() & 1) != 0))
  {
    v3 = *(&v7 + 1);
    if (*(&v7 + 1))
    {
      v4 = v8;
      sub_10002A400(&v6, *(&v7 + 1));
      (*(v4 + 40))(v3, v4);
      return sub_100007000(&v6);
    }
  }

  else
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
  }

  return sub_10002B894(&v6, &qword_100974638, &qword_1007B6A80);
}

void sub_100107E88(__n128 a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SearchResultCollectionViewCell(0);
  objc_msgSendSuper2(&v13, "layoutSubviews");
  v2 = *&v1[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
  if (v2)
  {
    v3 = v2;
    v4 = [v1 contentView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    [v3 setFrame:{v6, v8, v10, v12}];
  }
}

void sub_100108048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PageEnvironment();
  v67 = *(v6 - 8);
  v68 = v6;
  __chkstk_darwin(v6);
  v65 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  v63 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v58 - v9;
  v11 = type metadata accessor for PageGrid.Direction();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v64 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v17 = type metadata accessor for PageGrid();
  v69 = *(v17 - 8);
  v70 = v17;
  __chkstk_darwin(v17);
  v66 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v71 = &v58 - v20;
  type metadata accessor for SearchResult();
  sub_10010AD30(&qword_10096FAA0, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v72)
  {
    v60 = v16;
    v21 = sub_100484CDC();
    if (!v21)
    {
LABEL_20:

      return;
    }

    v23 = v22;
    v59 = a2;
    v61 = &v3[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
    v62 = v3;
    if (!*&v3[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents] || sub_10002849C(&qword_100974630, &qword_1007B6A78) != v21)
    {
      v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v25 = v61;
      v26 = *v61;
      *v61 = v24;
      *(v25 + 1) = v23;
      v27 = v11;
      v28 = a1;
      v29 = v24;
      sub_100107128(v26);

      a1 = v28;
      v11 = v27;
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v30 = v72;
    v31 = UITraitCollection.isSizeClassCompact.getter();

    if ((v31 & 1) == 0)
    {
      v49 = *v61;
      if (*v61)
      {
        v50 = *(v61 + 1);
        goto LABEL_18;
      }

LABEL_19:
      [v62 setNeedsLayout];
      goto LABEL_20;
    }

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    (*(v63 + 8))(v10, v8);
    v32 = &enum case for PageGrid.Direction.horizontal(_:);
    if (!v72)
    {
      v32 = &enum case for PageGrid.Direction.vertical(_:);
    }

    v33 = v60;
    (*(v12 + 104))(v60, *v32, v11);
    PageGrid.containerWidth.getter();
    v63 = v34;
    PageGrid.containerHeight.getter();
    v58 = v35;
    PageGrid.safeAreaInsets.getter();
    swift_getKeyPath();
    ItemLayoutContext.subscript.getter();

    v36 = v65;
    PageEnvironment.init(traitCollection:hasHorizontalSafeArea:)();
    (*(v12 + 16))(v64, v33, v11);
    if (qword_10096EF00 != -1)
    {
      swift_once();
    }

    v37 = v66;
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v67 + 8))(v36, v68);
    v38 = v61;
    if (*v61)
    {
      [*v61 layoutMargins];
      v40 = v39;
      v42 = v41;
      PageGrid.horizontalMargins.getter();
      v44 = v43;
      PageGrid.horizontalMargins.getter();
      v45 = *v38;
      if (!*v38)
      {
        goto LABEL_14;
      }
    }

    else
    {
      PageGrid.horizontalMargins.getter();
      v40 = v55;
      v44 = v56;
      v42 = v57;
      v45 = *v38;
      if (!*v38)
      {
LABEL_14:
        v46 = *(v69 + 8);
        v47 = v37;
        v48 = v70;
        v46(v47, v70);
        (*(v12 + 8))(v33, v11);
        v46(v71, v48);
        v49 = *v38;
        if (*v38)
        {
          v50 = *(v38 + 1);
LABEL_18:
          ObjectType = swift_getObjectType();
          v52 = a1;
          v53 = *(v50 + 48);
          v54 = v49;
          v53(v52, v59, ObjectType, v50);

          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    [v45 setLayoutMargins:{v40, v44, v42}];
    goto LABEL_14;
  }
}

void sub_100108780(uint64_t a1, uint64_t a2)
{
  v11 = *(v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v11)
  {
    type metadata accessor for AdvertsSearchResultContentView();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = v5;
      if (a1)
      {
        v7 = objc_opt_self();
        v8 = v11;
        v9 = [v7 clearColor];
        [v6 setBackgroundColor:v9];
      }

      else
      {
        v10 = v11;
      }

      [v6 setNeedsLayout];
    }
  }
}

void sub_100108894(uint64_t a1, uint64_t (*a2)(char *, void, uint64_t, __n128), char *a3, void *a4, char *a5, int a6)
{
  v72 = a6;
  v78 = a5;
  v71 = a4;
  v69 = a3;
  v70 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v77 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v76 = *(v11 - 8);
  __chkstk_darwin(v11);
  v75 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTimeInterval();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for DispatchTime();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v64 - v20;
  sub_10002C0AC(a1, aBlock);
  sub_10002849C(&unk_100980530, &qword_1007B69B0);
  type metadata accessor for MixedMediaLockup();
  if (swift_dynamicCast())
  {
    v67 = v11;
    v22 = *&v6[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
    if (v22 && (v68 = v80[0], v64 = v9, v23 = type metadata accessor for AdvertsSearchResultContentView(), (v24 = swift_dynamicCastClass()) != 0))
    {
      v25 = v24;
      v26 = v22;
      [v6 setUserInteractionEnabled:0];
      v65 = v26;
      [v25 frame];
      v31 = [objc_allocWithZone(v23) initWithFrame:{v27, v28, v29, v30}];
      v32 = *(*&v25[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView] + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_regularWidthColumnSpacing);
      [v25 layoutMargins];
      v66 = v21;
      v33 = v68;
      v34 = v70;
      v35 = v69;
      v69 = v6;
      sub_1006C65C8(v68, v70, v35, v78, v32, v36, v37, v38, v39);
      [v31 layoutIfNeeded];
      [v25 frame];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v80[0] = v41;
      v80[1] = v43;
      v80[2] = v45;
      v80[3] = v47;
      v81 = 0;
      sub_1006C89B8(v33, v80, v71, v34);
      v48 = &v25[OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_disableAdvertRotation];
      swift_beginAccess();
      v71 = v8;
      v49 = *v48;
      v50 = v48[1];
      sub_10000827C(*v48, v50);
      sub_10068D354(v49, v50);
      sub_10001F63C(v49, v50);
      sub_1000076C0();
      v70 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v51 = 333;
      if ((v72 & 1) == 0)
      {
        v51 = 0;
      }

      *v16 = v51;
      (*(v14 + 104))(v16, enum case for DispatchTimeInterval.milliseconds(_:), v13);
      + infix(_:_:)();
      (*(v14 + 8))(v16, v13);
      v73 = *(v73 + 8);
      v52 = v74;
      (v73)(v18, v74);
      v53 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v54 = swift_allocObject();
      v54[2] = v53;
      v54[3] = v25;
      v55 = v78;
      v54[4] = v31;
      v54[5] = v55;
      aBlock[4] = sub_10010AD18;
      aBlock[5] = v54;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100007A08;
      aBlock[3] = &unk_1008B4BC8;
      v56 = _Block_copy(aBlock);
      v57 = v65;
      v58 = v31;

      v59 = v75;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10010AD30(&qword_100976F50, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10002849C(&unk_1009729F0, &unk_1007B3D80);
      sub_1000079A4();
      v60 = v77;
      v61 = v71;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v62 = v66;
      v63 = v70;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

      _Block_release(v56);

      (*(v64 + 8))(v60, v61);
      (*(v76 + 8))(v59, v67);
      (v73)(v62, v52);
    }

    else
    {
    }
  }
}

void sub_10010904C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    v10[2] = a4;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = v8;
    aBlock[4] = sub_10010AD24;
    aBlock[5] = v10;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100504C5C;
    aBlock[3] = &unk_1008B4C18;
    v11 = _Block_copy(aBlock);

    v12 = a2;
    v13 = a3;
    v14 = v8;

    [v9 transitionFromView:v12 toView:v13 duration:5242880 options:v11 completion:0.666];
    _Block_release(v11);
  }
}

void sub_1001091AC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, char *a6)
{
  type metadata accessor for VideoPlaybackCoordinator();
  type metadata accessor for BaseObjectGraph();
  inject<A, B>(_:from:)();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_10010AD30(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  }

  sub_10010AD30(&unk_100973DE0, type metadata accessor for AdvertsSearchResultContentView, &unk_1007DC960);
  dispatch thunk of VideoPlaybackCoordinator.unregister(videoView:videoContainer:pausingPlayback:)();

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    sub_10010AD30(&qword_100973190, type metadata accessor for VideoView, &unk_1007D1B30);
  }

  dispatch thunk of VideoPlaybackCoordinator.register(videoView:videoContainer:)();

  v10 = sub_10010AD30(&qword_10096FAE0, type metadata accessor for AdvertsSearchResultContentView, &unk_1007DCB5C);
  v11 = &a6[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
  v12 = *&a6[OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents];
  *v11 = a5;
  *(v11 + 1) = v10;
  v13 = a5;
  sub_100107128(v12);

  [a6 setUserInteractionEnabled:1];
}

void sub_1001093E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_weakAssign();
  v3 = (v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_10001F63C(v4, v5);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v6)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v6;
      dispatch thunk of NestedModelImpressionsRecording.startRecordingNestedImpressions(for:using:)();
    }
  }
}

void sub_1001094D4(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    ImpressionsCalculator.removeAllElements()();
  }

  swift_weakAssign();
  v3 = (v1 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = 0;
  v3[1] = 0;
  sub_10001F63C(v4, v5);
  v6 = *(v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v6)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v7 = v6;
      dispatch thunk of NestedModelImpressionsRecording.stopRecordingNestedImpressions(using:)();
    }
  }
}

uint64_t sub_1001095D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = type metadata accessor for ComponentSeparator.Position();
  v40 = *(v42 - 8);
  __chkstk_darwin(v42);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfLayoutContext();
  __chkstk_darwin(v5 - 8);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for PageGrid();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ItemBackground();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10002849C(&qword_100974620, &unk_1007B69A0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = sub_10002849C(&unk_1009804F0, &unk_1007B3800);
  __chkstk_darwin(v14 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v34 - v18;
  __chkstk_darwin(v20);
  v22 = &v34 - v21;
  type metadata accessor for AdvertsSearchResult();
  sub_10010AD30(&qword_10096FA98, &type metadata accessor for AdvertsSearchResult, &protocol conformance descriptor for SearchResult);
  v37 = a1;
  ItemLayoutContext.typedModel<A>(as:)();
  if (!v45)
  {
    v26 = 1;
    v25 = v44;
    goto LABEL_14;
  }

  v34 = v4;
  v43 = v45;
  dispatch thunk of AdvertsSearchResult.itemBackground.getter();
  (*(v9 + 104))(v19, enum case for ItemBackground.clearAdWithSeparator(_:), v8);
  (*(v9 + 56))(v19, 0, 1, v8);
  v23 = *(v11 + 48);
  sub_100031660(v22, v13, &unk_1009804F0, &unk_1007B3800);
  sub_100031660(v19, &v13[v23], &unk_1009804F0, &unk_1007B3800);
  v24 = *(v9 + 48);
  if (v24(v13, 1, v8) != 1)
  {
    sub_100031660(v13, v16, &unk_1009804F0, &unk_1007B3800);
    if (v24(&v13[v23], 1, v8) != 1)
    {
      v27 = v35;
      (*(v9 + 32))(v35, &v13[v23], v8);
      sub_10010AD30(&qword_100974628, &type metadata accessor for ItemBackground, &protocol conformance descriptor for ItemBackground);
      v28 = dispatch thunk of static Equatable.== infix(_:_:)();
      v29 = *(v9 + 8);
      v29(v27, v8);
      sub_10002B894(v19, &unk_1009804F0, &unk_1007B3800);
      sub_10002B894(v22, &unk_1009804F0, &unk_1007B3800);
      v29(v16, v8);
      sub_10002B894(v13, &unk_1009804F0, &unk_1007B3800);
      v25 = v44;
      if (v28)
      {
        goto LABEL_11;
      }

LABEL_9:

      v26 = 1;
      goto LABEL_14;
    }

    sub_10002B894(v19, &unk_1009804F0, &unk_1007B3800);
    sub_10002B894(v22, &unk_1009804F0, &unk_1007B3800);
    (*(v9 + 8))(v16, v8);
LABEL_8:
    sub_10002B894(v13, &qword_100974620, &unk_1007B69A0);
    v25 = v44;
    goto LABEL_9;
  }

  sub_10002B894(v19, &unk_1009804F0, &unk_1007B3800);
  sub_10002B894(v22, &unk_1009804F0, &unk_1007B3800);
  if (v24(&v13[v23], 1, v8) != 1)
  {
    goto LABEL_8;
  }

  sub_10002B894(v13, &unk_1009804F0, &unk_1007B3800);
  v25 = v44;
LABEL_11:
  ItemLayoutContext.parentShelfLayoutContext.getter();
  if (qword_10096EF00 != -1)
  {
    swift_once();
  }

  v30 = v38;
  PageGrid.init(from:breakpointOverrides:)();
  PageGrid.horizontalDirectionalMargins.getter();
  (*(v40 + 104))(v34, enum case for ComponentSeparator.Position.bottom(_:), v42);
  v31 = [objc_opt_self() systemGray3Color];
  ComponentSeparator.init(position:leadingInset:trailingInset:color:)();

  (*(v39 + 8))(v30, v41);
  v26 = 0;
LABEL_14:
  v32 = type metadata accessor for ComponentSeparator();
  return (*(*(v32 - 8) + 56))(v25, v26, 1, v32);
}

id sub_100109D20()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchResultCollectionViewCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SearchResultCollectionViewCell(uint64_t a1)
{
  result = qword_1009745F8;
  if (!qword_1009745F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100109E2C(uint64_t a1)
{
  sub_100027FAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100109ED0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100031660(v1 + v3, a1, &unk_1009731E0, &unk_1007B0B60);
}

uint64_t sub_100109F38(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_10009761C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_100109FFC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchResult();
  sub_10010AD30(&qword_10096FAA0, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v2)
  {
    if (sub_100484CDC())
    {
      dispatch thunk of static ExactHeightProviding.height(in:asPartOf:)();
    }
  }
}

void sub_10010A0DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    type metadata accessor for SearchResultCollectionViewCell(0);
    v10 = v4;
    LayoutMarginsAware<>.layoutFrame.getter();
    (*(v8 + 56))(a1, a2, a3, ObjectType, v8);
  }
}

void sub_10010A1C0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v4)
  {
    v8 = *(v3 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents + 8);
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 64);
    v11 = v4;
    v10(a1, a2, a3 & 1, ObjectType, v8);
  }
}

uint64_t static CondensedEditorialSearchResultContentView.sizingForArtworkPrefetch(in:asPartOf:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ComponentPrefetchSizing();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

double sub_10010A30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SearchResult();
  sub_10010AD30(&qword_10096FAA0, &type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
  ItemLayoutContext.typedModel<A>(as:)();
  if (v4)
  {
    if (sub_100484CDC())
    {
      dispatch thunk of static ArtworkPrefetchingShelfComponentView.prefetchArtwork(for:with:asPartOf:)();
    }
  }

  return result;
}

uint64_t (*sub_10010A3E4(uint64_t **a1))()
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
  v2[4] = sub_100107618(v2, v3);
  return sub_1000B4CAC;
}

uint64_t sub_10010A458()
{
  if (!*(v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents))
  {
    return 0;
  }

  type metadata accessor for AdvertsSearchResultContentView();
  result = swift_dynamicCastClass();
  if (result)
  {
    return *(*(result + OBJC_IVAR____TtC8AppStore30AdvertsSearchResultContentView_lockupView) + OBJC_IVAR____TtC8AppStore21SmallSearchLockupView_isDisplayingSearchAd);
  }

  return result;
}

uint64_t sub_10010A4E8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (!v3)
  {
    return 0;
  }

  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = v3;
    v6 = dispatch thunk of AdRotationDisabling.disableAdvertRotation.getter();

    return v6;
  }

  return result;
}

void sub_10010A57C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (v3)
  {
    v4 = a1;
    v5 = a2;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v6 = v3;
      dispatch thunk of AdRotationDisabling.disableAdvertRotation.setter();

      return;
    }

    a1 = v4;
    a2 = v5;
  }

  sub_10001F63C(a1, a2);
}

uint64_t (*sub_10010A65C(void *a1))()
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
  v2[4] = sub_100107278(v2, v3);
  return sub_1000C2700;
}

double sub_10010A714(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*sub_10010A774(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsCalculator;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_100078E88;
}

uint64_t sub_10010A80C()
{
  v1 = (v0 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_10000827C(*v1, v1[1]);
  return v2;
}

uint64_t sub_10010A868(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10001F63C(v6, v7);
}

uint64_t sub_10010A9FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_10010AA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_10010AABC(uint64_t *a1, uint64_t a2))()
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

uint64_t sub_10010AB58(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC8AppStore30SearchResultCollectionViewCell_resultContents);
  if (!v3)
  {
    return 0;
  }

  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {
    return 0;
  }

  v4 = v3;
  v5 = dispatch thunk of VideoViewContainer.currentlyOwns(videoView:)();

  return v5 & 1;
}

uint64_t sub_10010AD30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010AD80(uint64_t a1)
{
  v2 = sub_10002849C(&qword_100970EE0, &unk_1007DF4C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v45 - v3;
  v58 = type metadata accessor for PageGrid.HorizontalMargins();
  v62 = *(v58 - 8);
  __chkstk_darwin(v58);
  v6 = (&v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v45 - v11;
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v61 = &v45 - v17;
  sub_10002849C(&qword_100970EF0, qword_1007DF4D0);
  v18 = *(type metadata accessor for PageGrid.Breakpoint() - 8);
  v59 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v51 = v20;
  *(v20 + 16) = xmmword_1007B23A0;
  v21 = v20 + v19;
  v22 = a1;
  v63 = a1;
  sub_10005E808();
  PageGrid.DirectionalValue.init(_:)();
  v63 = 15.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #16.0 }

  *v6 = _Q0;
  v56 = enum case for PageGrid.HorizontalMargins.absolute(_:);
  v28 = *(v62 + 104);
  v62 += 104;
  v57 = v28;
  v29 = v58;
  (v28)(v6);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v60 = v15;
  v54 = v12;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v63 = a1;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 15.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v33 = v56;
  v57(v6, v56, v29);
  LOBYTE(v63) = 0;
  v52 = v4;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  v55 = v9;
  PageGrid.DirectionalValue.init(_:)();
  v34 = v59;
  v53 = v21;
  top = UIEdgeInsetsZero.top;
  v49 = left;
  v50 = bottom;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v46 = 2 * v34;
  v63 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 20.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v47 = vdupq_n_s64(0x4041000000000000uLL);
  v35 = v6;
  *v6 = v47;
  v36 = v33;
  v37 = v33;
  v38 = v57;
  v39 = v58;
  v57(v6, v37, v58);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v40 = v46;
  v41 = v35;
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v42 = v59;
  v46 = v40 + v59;
  v63 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 20.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  *v41 = v47;
  v38(v41, v36, v39);
  static UIEdgeInsets.horizontal(left:right:)();
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v46 = 4 * v42;
  v63 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 24.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  v47 = vdupq_n_s64(0x404A000000000000uLL);
  *v41 = v47;
  v43 = v58;
  v38(v41, v56, v58);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  v63 = v22;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 24.0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  *v41 = v47;
  v57(v41, v56, v43);
  LOBYTE(v63) = 0;
  PageGrid.DirectionalValue.init(_:)();
  v63 = 0.0;
  PageGrid.DirectionalValue.init(_:)();
  PageGrid.Breakpoint.init(range:columnCount:columnExtendsToFillWidth:minimumColumnWidth:interColumnSpace:interRowSpace:horizontalMargins:additionalSafeAreaHorizontalMargins:)();
  return v51;
}

uint64_t sub_10010B764@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, uint64_t a7@<D1>, double a8@<D6>, double a9@<D7>, char *a10, char *a11)
{
  v128 = a4;
  v139 = a2;
  v140 = a3;
  v141 = a1;
  v133 = a5;
  v124 = sub_10002849C(&qword_100970EE8, &qword_1007CF5F0);
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v121 = &v111 - v17;
  v120 = type metadata accessor for AspectRatio();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Shelf.PresentationHints();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v114 = &v111 - v21;
  v126 = type metadata accessor for DynamicTypeSize();
  v127 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10002849C(&unk_100992460, &qword_1007B6BF0);
  __chkstk_darwin(v23 - 8);
  v131 = &v111 - v24;
  v135 = type metadata accessor for Shelf.ContentType();
  v25 = *(v135 - 8);
  __chkstk_darwin(v135);
  v136 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v111 - v28;
  __chkstk_darwin(v30);
  v32 = &v111 - v31;
  v33 = type metadata accessor for PageGrid.Direction();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v113 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v111 = &v111 - v37;
  __chkstk_darwin(v38);
  v112 = &v111 - v39;
  __chkstk_darwin(v40);
  v132 = &v111 - v41;
  __chkstk_darwin(v42);
  v44 = &v111 - v43;
  v45 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  v46 = v45 - 8;
  __chkstk_darwin(v45);
  v48 = &v111 - v47;
  sub_100031660(v139, &v111 - v47, &unk_10098FFB0, qword_1007B3890);
  v49 = *(v46 + 56);
  v134 = v48;
  v50 = &v48[v49];
  v51 = v34;
  sub_100031660(v140, v50, &unk_10098FFB0, qword_1007B3890);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  ReadOnlyLens.subscript.getter();

  v52 = *(v34 + 104);
  v53 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v144)
  {
    v53 = &enum case for PageGrid.Direction.vertical(_:);
  }

  v54 = *v53;
  v137 = v33;
  v138 = v44;
  v55 = v44;
  v56 = v135;
  v52(v55, v54, v33);
  swift_getKeyPath();
  ReadOnlyLens.subscript.getter();

  (*(v25 + 104))(v29, enum case for Shelf.ContentType.placeholder(_:), v56);
  sub_10010E3D0(&qword_100971EE8, &type metadata accessor for Shelf.ContentType, &protocol conformance descriptor for Shelf.ContentType);
  v139 = v32;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v144 == v142 && v145 == v143)
  {
    v57 = 1;
  }

  else
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v140 = *(v25 + 8);
  v140(v29, v56);

  v58 = v139;
  if (v57)
  {
    swift_getKeyPath();
    v59 = v131;
    ReadOnlyLens.subscript.getter();

    if ((*(v25 + 48))(v59, 1, v56) == 1)
    {
      sub_10002B894(v59, &unk_100992460, &qword_1007B6BF0);
    }

    else
    {
      v140(v58, v56);
      (*(v25 + 32))(v58, v59, v56);
    }
  }

  v60 = a11;
  v61 = v136;
  (*(v25 + 16))(v136, v58, v56);
  v62 = (*(v25 + 88))(v61, v56);
  if (v62 == enum case for Shelf.ContentType.smallLockup(_:) || v62 == enum case for Shelf.ContentType.purchasesLockup(_:) || v62 == enum case for Shelf.ContentType.mediumLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeLockup(_:))
  {
LABEL_15:
    v63 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    v64 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v127 + 8))(v63, v126);
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10035F3AC(v64 & 1);
LABEL_41:
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v65;
    v77 = v66;
    goto LABEL_42;
  }

  if (v62 == enum case for Shelf.ContentType.productTopLockup(_:))
  {
LABEL_17:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_10096DB10 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.inAppPurchaseLockup(_:) || v62 == enum case for Shelf.ContentType.inAppPurchaseTiledLockup(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithAlignedRegionBackground(_:) || v62 == enum case for Shelf.ContentType.mediumAdLockupWithScreenshotsBackground(_:) || v62 == enum case for Shelf.ContentType.condensedAdLockupWithIconBackground(_:) || v62 == enum case for Shelf.ContentType.action(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.ribbonBar(_:) || v62 == enum case for Shelf.ContentType.ribbonFlow(_:))
  {
    v71 = v121;
    static PageGrid.DirectionalValue<>.zero.getter();
    v72 = v122;
    static PageGrid.DirectionalValue<>.zero.getter();
    v68 = v137;
    v73 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_1001ABF90(v71, v72);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v74 = *(*&v123 + 8);
    v75 = v72;
    v76 = v124;
    v74(v75, v124);
    v74(v71, v76);
    v140(v58, v56);
    v69 = *(v51 + 8);
    v70 = v73;
    goto LABEL_32;
  }

  if (v62 == enum case for Shelf.ContentType.paragraph(_:) || v62 == enum case for Shelf.ContentType.annotation(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.footnote(_:))
  {
LABEL_30:
    v68 = v137;
    v67 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v140(v58, v56);
    v69 = *(v34 + 8);
    v70 = v67;
LABEL_32:
    v77 = v68;
LABEL_42:
    v69(v70, v77);
    return sub_10002B894(v134, &qword_100974650, &unk_1007B6B70);
  }

  if (v62 == enum case for Shelf.ContentType.editorialCard(_:))
  {
    if (PageEnvironment.isHorizontalSizeClassRegular.getter())
    {
      v78 = v118;
      AspectRatio.init(_:_:)();
      v79 = AspectRatio.isPortrait.getter();
      (*(v119 + 8))(v78, v120);
      if (v79)
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_10096DB78 == -1)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v81 = v137;
        v80 = v138;
        v82 = v132;
        if (qword_10096DB80 == -1)
        {
LABEL_50:

          (*(v51 + 16))(v82, v80, v81);
          PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
          v140(v58, v56);
          (*(v51 + 8))(v80, v81);
          return sub_10002B894(v134, &qword_100974650, &unk_1007B6B70);
        }
      }
    }

    else
    {
      v81 = v137;
      v80 = v138;
      v82 = v132;
      if (qword_10096ED30 == -1)
      {
        goto LABEL_50;
      }
    }

    swift_once();
    goto LABEL_50;
  }

  if (v62 == enum case for Shelf.ContentType.videoCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.brick(_:))
  {
LABEL_47:
    v131 = v60;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_10096EEF0 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_85;
  }

  if (v62 == enum case for Shelf.ContentType.categoryBrick(_:))
  {
LABEL_52:
    swift_getKeyPath();
    v84 = v114;
    ReadOnlyLens.subscript.getter();

    v85 = v115;
    static Shelf.PresentationHints.isSeeAllContext.getter();
    sub_10010E3D0(&unk_100970E20, &type metadata accessor for Shelf.PresentationHints, &protocol conformance descriptor for Shelf.PresentationHints);
    v86 = v117;
    v87 = dispatch thunk of SetAlgebra.isSuperset(of:)();
    v88 = *(v116 + 8);
    v88(v85, v86);
    v88(v84, v86);
    v89 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    LOBYTE(v88) = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v127 + 8))(v89, v126);
    v91 = v137;
    v90 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10060A4CC(v88 & 1, v87 & 1);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v140(v58, v56);
    (*(v51 + 8))(v90, v91);
    return sub_10002B894(v134, &qword_100974650, &unk_1007B6B70);
  }

  if (v62 == enum case for Shelf.ContentType.productCapability(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.reviews(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.reviewsContainer(_:))
  {
    goto LABEL_17;
  }

  v131 = a11;
  v121 = a10;
  v122 = (v25 + 8);
  v123 = a6;
  v124 = a7;
  v129 = a8;
  v130 = a9;
  v92 = v56;
  v93 = v137;
  v94 = v34;
  if (v62 == enum case for Shelf.ContentType.reviewSummary(_:) || v62 == enum case for Shelf.ContentType.editorsChoice(_:))
  {
    v95 = 0.0;
    if (PageEnvironment.isHorizontalSizeClassRegular.getter())
    {
      v96 = v125;
      PageEnvironment.dynamicTypeSize.getter();
      v97 = DynamicTypeSize.isAccessibilitySize.getter();
      (*(v127 + 8))(v96, v126);
      if (v97)
      {
        v95 = 0.0;
      }

      else
      {
        v95 = 190.0;
      }
    }

    v98 = v138;
    (*(v34 + 16))(v113, v138, v93);
    sub_10069F96C(v95);
    goto LABEL_68;
  }

  if (v62 == enum case for Shelf.ContentType.todayCard(_:))
  {
    (*(v34 + 16))(v132, v138, v137);
    if (qword_10096E9A0 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.miniTodayCard(_:))
  {
    (*(v34 + 16))(v112, v138, v137);
    if (PageEnvironment.isAX.getter())
    {
      if (qword_10096DC48 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_10096DC40 == -1)
    {
LABEL_83:

      PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
      v140(v139, v56);
      (*(v34 + 8))(v138, v93);
      return sub_10002B894(v134, &qword_100974650, &unk_1007B6B70);
    }

LABEL_109:
    swift_once();
    goto LABEL_83;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.editorialLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.framedArtwork(_:) || v62 == enum case for Shelf.ContentType.screenshots(_:) || v62 == enum case for Shelf.ContentType.productMedia(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.appTrailerLockup(_:) || v62 == enum case for Shelf.ContentType.productPageLink(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.productRatings(_:))
  {
    v99 = v138;
    (*(v51 + 16))(v132, v138, v137);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v140(v139, v56);
    (*(v51 + 8))(v99, v93);
    return sub_10002B894(v134, &qword_100974650, &unk_1007B6B70);
  }

  if (v62 == enum case for Shelf.ContentType.productReview(_:))
  {
    v100 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_1001E6E40(v100, 0);
LABEL_91:
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v127 + 8))(v100, v126);
    goto LABEL_69;
  }

  if (v62 == enum case for Shelf.ContentType.productReviewAction(_:))
  {
    v100 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    v98 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_100479FD4(v100);
    goto LABEL_91;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  v60 = v131;
  if (v62 == enum case for Shelf.ContentType.framedVideo(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.screenshotsLockup(_:) || v62 == enum case for Shelf.ContentType.roundedButton(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.titledButtonStack(_:))
  {
    goto LABEL_30;
  }

  if (v62 == enum case for Shelf.ContentType.smallStoryCard(_:))
  {
    goto LABEL_47;
  }

  if (v62 == enum case for Shelf.ContentType.largeStoryCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v62 == enum case for Shelf.ContentType.upsellBreakout(_:) || v62 == enum case for Shelf.ContentType.smallBreakout(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.editorialStoryCard(_:) || v62 == enum case for Shelf.ContentType.mixedMediaLockup(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.gameCenterActivityFeedCard(_:))
  {
    goto LABEL_39;
  }

  if (v62 == enum case for Shelf.ContentType.largeGameCenterPlayer(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.posterLockup(_:))
  {
    swift_getKeyPath();
    ReadOnlyLens.subscript.getter();

    v101 = *(v144 + 16);

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_10005DDB8(v101);
LABEL_108:
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    v140(v139, v92);
    (*(v102 + 8))(v103, v93);
    return sub_10002B894(v134, &qword_100974650, &unk_1007B6B70);
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.smallContactCard(_:))
  {
    goto LABEL_15;
  }

  if (v62 == enum case for Shelf.ContentType.informationRibbon(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.privacyType(_:))
  {
LABEL_113:
    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v137);
    v104 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    sub_10055F7F4(v104);
    (*(v127 + 8))(v104, v126);
    goto LABEL_108;
  }

  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.appPromotion(_:))
  {
LABEL_39:
    v129 = a8;
    v130 = a9;
    v66 = v137;
    v65 = v138;
    (*(v51 + 16))(v132, v138, v137);
    if (qword_10096ED30 == -1)
    {
LABEL_40:

      goto LABEL_41;
    }

LABEL_85:
    swift_once();
    goto LABEL_40;
  }

  if (v62 == enum case for Shelf.ContentType.searchResult(_:))
  {
    v105 = PageEnvironment.isHorizontalSizeClassCompact.getter();
    (*(v34 + 16))(v111, v138, v93);
    if (v105)
    {
      if (qword_10096EF08 == -1)
      {
        goto LABEL_83;
      }
    }

    else if (qword_10096EF00 == -1)
    {
      goto LABEL_83;
    }

    goto LABEL_109;
  }

  if (v62 == enum case for Shelf.ContentType.searchResultsContextCard(_:))
  {
    v98 = v138;
    (*(v34 + 16))(v132, v138, v137);
    sub_1001D19A0();
LABEL_68:
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
LABEL_69:
    v140(v139, v92);
    (*(v34 + 8))(v98, v93);
    return sub_10002B894(v134, &qword_100974650, &unk_1007B6B70);
  }

  if (v62 == enum case for Shelf.ContentType.searchChartsAndCategories(_:))
  {
    v106 = v125;
    PageEnvironment.dynamicTypeSize.getter();
    v107 = DynamicTypeSize.isAccessibilitySize.getter();
    (*(v127 + 8))(v106, v126);
    if (v107)
    {
      if (PageEnvironment.isHorizontalSizeClassCompact.getter())
      {
        v108 = 1;
      }

      else
      {
        v108 = 2;
      }
    }

    else
    {
      v108 = 2;
    }

    v102 = v34;
    v103 = v138;
    (*(v34 + 16))(v132, v138, v93);
    sub_1001D231C(v108);
    goto LABEL_108;
  }

  v51 = v34;
  v58 = v139;
  a9 = v130;
  a8 = v129;
  if (v62 == enum case for Shelf.ContentType.heroCarousel(_:) || v62 == enum case for Shelf.ContentType.uber(_:) || v62 == enum case for Shelf.ContentType.mediaPageHeader(_:))
  {
    goto LABEL_17;
  }

  if (v62 == enum case for Shelf.ContentType.tagBrick(_:))
  {
    goto LABEL_52;
  }

  if (v62 == enum case for Shelf.ContentType.accessibilityFeatures(_:))
  {
    goto LABEL_113;
  }

  v109 = v138;
  (*(v94 + 16))(v132, v138, v137);
  sub_10069F96C(0.0);
  PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
  v110 = v140;
  v140(v139, v56);
  (*(v94 + 8))(v109, v93);
  sub_10002B894(v134, &qword_100974650, &unk_1007B6B70);
  return (v110)(v136, v56);
}

uint64_t sub_10010DBD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a11@<D4>, double a12@<D5>, double a15, double a16)
{
  v39 = a5;
  v42 = a4;
  v43 = a2;
  v45 = a3;
  v46 = a6;
  v40 = a11;
  v41 = a12;
  v44 = type metadata accessor for Shelf.ContentType();
  v47 = *(v44 - 8);
  __chkstk_darwin(v44);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PageGrid.Direction();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v38 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v37 - v23;
  v25 = sub_10002849C(&qword_100974650, &unk_1007B6B70);
  __chkstk_darwin(v25);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v30 = &v37 - v29;
  sub_100031660(v43, &v37 - v29, &unk_10098FFB0, qword_1007B3890);
  v37 = v25;
  sub_100031660(v45, &v30[*(v25 + 48)], &unk_10098FFB0, qword_1007B3890);
  swift_getKeyPath();
  sub_10002849C(&unk_1009731F0, &qword_1007B0DA0);
  ReadOnlyLens.subscript.getter();

  v45 = v20;
  v31 = &enum case for PageGrid.Direction.horizontal(_:);
  if (!v49)
  {
    v31 = &enum case for PageGrid.Direction.vertical(_:);
  }

  (*(v20 + 104))(v24, *v31, v19);
  swift_getKeyPath();
  v32 = v44;
  v43 = a1;
  ReadOnlyLens.subscript.getter();

  v33 = (*(v47 + 88))(v18, v32);
  if (v33 == enum case for Shelf.ContentType.reviews(_:) || v33 == enum case for Shelf.ContentType.reviewsContainer(_:) || v33 == enum case for Shelf.ContentType.todayCard(_:) || v33 == enum case for Shelf.ContentType.framedArtwork(_:) || v33 == enum case for Shelf.ContentType.productMedia(_:) || v33 == enum case for Shelf.ContentType.framedVideo(_:) || v33 == enum case for Shelf.ContentType.largeHeroBreakout(_:) || v33 == enum case for Shelf.ContentType.upsellBreakout(_:) || v33 == enum case for Shelf.ContentType.smallBreakout(_:) || v33 == enum case for Shelf.ContentType.arcadeFooter(_:))
  {
    v36 = v45;
    (*(v45 + 16))(v38, v24, v19);
    sub_10069F96C(0.0);
    PageGrid.init(name:direction:containerSize:readableContentInsets:safeAreaInsets:requiresAdditionalSafeAreaMargins:breakpoints:)();
    (*(v36 + 8))(v24, v19);
    return sub_10002B894(v30, &qword_100974650, &unk_1007B6B70);
  }

  else
  {
    v48 = v39;
    sub_100031660(v30, v27, &qword_100974650, &unk_1007B6B70);
    v34 = *(v37 + 48);
    sub_10010E37C();
    PageGridCaching.contentPageGrid(for:surroundedBy:containerSize:readableContentInsets:safeAreaInsets:environment:)();
    (*(v45 + 8))(v24, v19);
    sub_10002B894(v30, &qword_100974650, &unk_1007B6B70);
    sub_10002B894(&v27[v34], &unk_10098FFB0, qword_1007B3890);
    sub_10002B894(v27, &unk_10098FFB0, qword_1007B3890);
    return (*(v47 + 8))(v18, v32);
  }
}