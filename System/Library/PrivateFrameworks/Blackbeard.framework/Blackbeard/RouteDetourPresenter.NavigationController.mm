@interface RouteDetourPresenter.NavigationController
- (_TtCC10Blackbeard20RouteDetourPresenter20NavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtCC10Blackbeard20RouteDetourPresenter20NavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtCC10Blackbeard20RouteDetourPresenter20NavigationController)initWithRootViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation RouteDetourPresenter.NavigationController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1E6239BCC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(RouteDetourPresenter.NavigationController *)&v5 viewDidAppear:appearCopy];
  sub_1E623A04C();
}

- (_TtCC10Blackbeard20RouteDetourPresenter20NavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC10Blackbeard20RouteDetourPresenter20NavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC10Blackbeard20RouteDetourPresenter20NavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end