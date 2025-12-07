@interface HeadphoneEndCallUpsellViewController
- (_TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadphoneEndCallUpsellViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10009492C();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadphoneEndCallUpsellViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (_TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController)initWithContentView:(id)view
{
  ObjectType = swift_getObjectType();
  *&self->presenter[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService36HeadphoneEndCallUpsellViewController_type] = 6;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(HeadphoneEndCallUpsellViewController *)&v7 initWithContentView:view];
}

@end