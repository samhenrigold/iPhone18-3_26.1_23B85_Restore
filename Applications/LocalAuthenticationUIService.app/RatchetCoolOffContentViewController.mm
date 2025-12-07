@interface RatchetCoolOffContentViewController
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithCoder:(id)coder;
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithRootViewController:(id)controller;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)setCoolOffDuration:(double)duration;
- (void)viewDidLoad;
- (void)willMoveToParent:(id)parent;
@end

@implementation RatchetCoolOffContentViewController

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithCoder:(id)coder
{
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_cancellables) = v4;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(RatchetCoolOffContentViewController *)&v5 viewDidLoad];
  interactivePopGestureRecognizer = [v2 interactivePopGestureRecognizer];
  if (interactivePopGestureRecognizer)
  {
    v4 = interactivePopGestureRecognizer;
    [interactivePopGestureRecognizer setEnabled:0];
  }

  RatchetCoolOffContentViewController.setup()();
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  ObjectType = swift_getObjectType();
  controllerCopy = controller;
  selfCopy = self;
  navigationItem = [controllerCopy navigationItem];
  [navigationItem setHidesBackButton:1];

  v11.receiver = selfCopy;
  v11.super_class = ObjectType;
  [(RatchetCoolOffContentViewController *)&v11 pushViewController:controllerCopy animated:animatedCopy];
}

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)willMoveToParent:(id)parent
{
  parentCopy = parent;
  selfCopy = self;
  [parentCopy addChildViewController:selfCopy];
  [(RatchetCoolOffContentViewController *)selfCopy willMoveToParentViewController:parentCopy];
}

- (void)setCoolOffDuration:(double)duration
{
  v5 = *&self->viewModel[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel];
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 24);
  selfCopy = self;
  v7(ObjectType, v5, duration);
}

@end