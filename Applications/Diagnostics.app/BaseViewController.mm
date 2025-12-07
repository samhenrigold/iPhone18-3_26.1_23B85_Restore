@interface BaseViewController
- (_TtC11Diagnostics18BaseViewController)initWithCoder:(id)coder;
- (_TtC11Diagnostics18BaseViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation BaseViewController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BaseViewController();
  v2 = v6.receiver;
  viewDidLoad = [(BaseViewController *)&v6 viewDidLoad];
  v4 = (*((swift_isaMask & *v2) + 0x50))(viewDidLoad);
  v5 = (*((swift_isaMask & *v2) + 0x58))(v4);
  (*((swift_isaMask & *v2) + 0x60))(v5);
}

- (_TtC11Diagnostics18BaseViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
    bundleCopy = bundle;
    v9 = String._bridgeToObjectiveC()();
    v7, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    bundleCopy2 = bundle;
    v9 = 0;
  }

  v20.receiver = self;
  v20.super_class = type metadata accessor for BaseViewController();
  v18 = [(BaseViewController *)&v20 initWithNibName:v9 bundle:bundle];

  return v18;
}

- (_TtC11Diagnostics18BaseViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for BaseViewController();
  coderCopy = coder;
  v5 = [(BaseViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end