@interface FollowUpViewController
- (_TtC20SWTFollowUpExtension22FollowUpViewController)init;
- (_TtC20SWTFollowUpExtension22FollowUpViewController)initWithCoder:(id)coder;
- (_TtC20SWTFollowUpExtension22FollowUpViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation FollowUpViewController

- (_TtC20SWTFollowUpExtension22FollowUpViewController)init
{
  v3 = sub_100003914();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003904();
  (*(v4 + 32))(self + OBJC_IVAR____TtC20SWTFollowUpExtension22FollowUpViewController_log, v6, v3);
  v7 = type metadata accessor for FollowUpViewController(0);
  v9.receiver = self;
  v9.super_class = v7;
  return [(FollowUpViewController *)&v9 initWithNibName:0 bundle:0];
}

- (_TtC20SWTFollowUpExtension22FollowUpViewController)initWithCoder:(id)coder
{
  result = sub_100003A04();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for FollowUpViewController(0);
  [(FollowUpViewController *)&v2 viewDidLoad];
}

- (void)processFollowUpItem:(id)item selectedAction:(id)action completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_1000037AC;
  }

  else
  {
    v9 = 0;
  }

  itemCopy = item;
  actionCopy = action;
  selfCopy = self;
  FollowUpViewController.processFollowUpItem(_:selectedAction:completion:)(item, action, v8, v9);
  sub_100003764(v8, v9);
}

- (_TtC20SWTFollowUpExtension22FollowUpViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end