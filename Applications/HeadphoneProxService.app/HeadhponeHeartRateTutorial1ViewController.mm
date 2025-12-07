@interface HeadhponeHeartRateTutorial1ViewController
- (_TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController)initWithContentView:(id)view;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadhponeHeartRateTutorial1ViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000B08D8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for HeadhponeHeartRateTutorial1ViewController();
  v4 = v5.receiver;
  [(HeadhponeHeartRateTutorial1ViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController_type]);
    swift_unknownObjectRelease();
  }
}

- (_TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController)initWithContentView:(id)view
{
  *&self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController____lazy_storage___topAsset] = 0;
  *&self->$__lazy_storage_$_topAsset[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController_presenter] = 0;
  swift_unknownObjectWeakInit();
  self->PRXCardContentViewController_opaque[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial1ViewController_type] = 30;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HeadhponeHeartRateTutorial1ViewController();
  return [(HeadhponeHeartRateTutorial1ViewController *)&v6 initWithContentView:view];
}

@end