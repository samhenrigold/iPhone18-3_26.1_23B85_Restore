@interface HeadphoneMuteCallUpsellViewController
- (_TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneMuteCallUpsellViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10004FA6C();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneMuteCallUpsellViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_tintColor] = 0;
  *&self->tintColor[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService37HeadphoneMuteCallUpsellViewController_type] = 7;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneMuteCallUpsellViewController *)&v7 initWithContentView:view];
}

@end