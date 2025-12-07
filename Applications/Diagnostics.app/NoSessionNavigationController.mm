@interface NoSessionNavigationController
- (_TtC11Diagnostics29NoSessionNavigationController)initWithCoder:(id)coder;
- (_TtC11Diagnostics29NoSessionNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC11Diagnostics29NoSessionNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC11Diagnostics29NoSessionNavigationController)initWithRootViewController:(id)controller;
- (void)viewDidLoad;
@end

@implementation NoSessionNavigationController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1001307F0();
}

- (_TtC11Diagnostics29NoSessionNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoSessionNavigationController();
  return [(NoSessionNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (_TtC11Diagnostics29NoSessionNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for NoSessionNavigationController();
  return [(NoSessionNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC11Diagnostics29NoSessionNavigationController)initWithNibName:(id)name bundle:(id)bundle
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
  v20.super_class = type metadata accessor for NoSessionNavigationController();
  v18 = [(NoSessionNavigationController *)&v20 initWithNibName:v9 bundle:bundle];

  return v18;
}

- (_TtC11Diagnostics29NoSessionNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for NoSessionNavigationController();
  coderCopy = coder;
  v5 = [(NoSessionNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end