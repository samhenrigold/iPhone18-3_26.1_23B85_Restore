@interface HeadphoneAdaptiveControlsAdaptiveModeViewController
- (_TtC20HeadphoneProxService51HeadphoneAdaptiveControlsAdaptiveModeViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneAdaptiveControlsAdaptiveModeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10003FF84();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneAdaptiveControlsAdaptiveModeViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneAdaptiveControlsAdaptiveModeViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC20HeadphoneProxService51HeadphoneAdaptiveControlsAdaptiveModeViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneAdaptiveControlsAdaptiveModeViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService51HeadphoneAdaptiveControlsAdaptiveModeViewController_type] = 9;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneAdaptiveControlsAdaptiveModeViewController *)&v7 initWithContentView:view];
}

@end