@interface HeadphonePauseMediaOnSleepViewController
- (_TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphonePauseMediaOnSleepViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10002E104();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphonePauseMediaOnSleepViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_headphoneProxFeatureManager;
  type metadata accessor for HeadphoneProxFeatureManager();
  viewCopy = view;
  *&self->PRXCardContentViewController_opaque[v6] = static HeadphoneProxFeatureManager.shared.getter();
  *&self->headphoneProxFeatureManager[OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_type] = 32;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_flowController] = 0;
  v8 = OBJC_IVAR____TtC20HeadphoneProxService40HeadphonePauseMediaOnSleepViewController_headphoneModel;
  v9 = type metadata accessor for HeadphoneModel(0);
  (*(*(v9 - 8) + 56))(&self->PRXCardContentViewController_opaque[v8], 1, 1, v9);
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(HeadphonePauseMediaOnSleepViewController *)&v12 initWithContentView:viewCopy];

  return v10;
}

@end