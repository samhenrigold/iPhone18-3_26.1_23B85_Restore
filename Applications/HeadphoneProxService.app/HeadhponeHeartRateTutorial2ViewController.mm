@interface HeadhponeHeartRateTutorial2ViewController
- (_TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController)initWithContentView:(id)view;
- (void)handleTapOnLabel:(id)label;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation HeadhponeHeartRateTutorial2ViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100052588();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HeadhponeHeartRateTutorial2ViewController *)&v5 viewDidAppear:appearCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000BB1F8(v4[OBJC_IVAR____TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController_type]);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)handleTapOnLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  sub_100052A94(labelCopy);
}

- (_TtC20HeadphoneProxService41HeadhponeHeartRateTutorial2ViewController)initWithContentView:(id)view
{
  viewCopy = view;
  v5 = sub_100053100(view);

  return v5;
}

@end