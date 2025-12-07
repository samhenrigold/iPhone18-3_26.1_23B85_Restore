@interface ICMoveNavigationController
- (ICMoveNavigationController)initWithCoder:(id)coder;
- (ICMoveNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (ICMoveNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (ICMoveNavigationController)initWithRootViewController:(id)controller;
- (ICMoveNavigationController)initWithViewControllerManager:(id)manager sourceObjectIds:(id)ids;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation ICMoveNavigationController

- (ICMoveNavigationController)initWithViewControllerManager:(id)manager sourceObjectIds:(id)ids
{
  sub_10025239C();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  return sub_1003FDB40(manager, v5);
}

- (ICMoveNavigationController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___ICMoveNavigationController_canAppearAbovePasswordEntryView) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___ICMoveNavigationController_moveViewController) + OBJC_IVAR___ICMoveViewController_completionHandler;
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 1);
    selfCopy = self;
    sub_100010854(v4, v5);
    v4(0);
    sub_10000C840(v4, v5);
  }
}

- (ICMoveNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICMoveNavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (ICMoveNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end