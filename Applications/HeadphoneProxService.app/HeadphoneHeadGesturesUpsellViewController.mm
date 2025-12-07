@interface HeadphoneHeadGesturesUpsellViewController
- (_TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HeadphoneHeadGesturesUpsellViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10008CF20();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneHeadGesturesUpsellViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v12.receiver = self;
  v12.super_class = swift_getObjectType();
  v4 = v12.receiver;
  [(HeadphoneHeadGesturesUpsellViewController *)&v12 viewWillAppear:appearCopy];
  v5 = sub_10008CC70(&OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___movieLoopView, sub_10008C988);
  v6 = OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_videoPlayer;
  v7 = *&v5[OBJC_IVAR____TtC20HeadphoneProxService19ProxMovieLoopPlayer_videoPlayer];
  epoch = kCMTimeZero.epoch;
  v11[0] = kCMTimeZero.value;
  v11[1] = *&kCMTimeZero.timescale;
  v11[2] = epoch;
  [v7 seekToTime:v11];
  v9 = *&v5[v6];
  LODWORD(v10) = 1.0;
  [v9 playImmediatelyAtRate:v10];
}

- (_TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  viewCopy = view;
  *&self->PRXCardContentViewController_opaque[v6] = static HeadphoneProxFeatureManager.shared.getter();
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___movieLoopView] = 0;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController____lazy_storage___topAsset] = 0;
  *&self->headphoneProxFeatureManager[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService41HeadphoneHeadGesturesUpsellViewController_type] = 13;
  v10.receiver = self;
  v10.super_class = ObjectType;
  v8 = [(HeadphoneHeadGesturesUpsellViewController *)&v10 initWithContentView:viewCopy];

  return v8;
}

@end