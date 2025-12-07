@interface HeadphoneAdaptiveControlsUpsellViewController
- (_TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneAdaptiveControlsUpsellViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000626C();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneAdaptiveControlsUpsellViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_sectionWidth] = 0x4074000000000000;
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_estimatedSectionHeight] = 0x4056800000000000;
  *&self->sectionWidth[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService45HeadphoneAdaptiveControlsUpsellViewController_type] = 8;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneAdaptiveControlsUpsellViewController *)&v7 initWithContentView:view];
}

@end