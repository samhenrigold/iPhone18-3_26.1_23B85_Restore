@interface TraitNavigationController
- (_TtC5Music25TraitNavigationController)initWithCoder:(id)coder;
- (_TtC5Music25TraitNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC5Music25TraitNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC5Music25TraitNavigationController)initWithRootViewController:(id)controller;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
- (void)removeChildViewController:(id)controller notifyDidMove:(BOOL)move;
@end

@implementation TraitNavigationController

- (_TtC5Music25TraitNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TraitNavigationController();
  return [(TraitNavigationController *)&v7 initWithNavigationBarClass:class toolbarClass:toolbarClass];
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  sub_10010FC20(&unk_10119F3A0, &qword_100EC7CD0);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v9 = type metadata accessor for UITraitOverrides();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = *((swift_isaMask & self->super.super.super.super.isa) + 0x50);
  controllerCopy = controller;
  selfCopy = self;
  v10(controllerCopy, v8, animatedCopy);

  sub_1000095E8(v8, &unk_10119F3A0, &qword_100EC7CD0);
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_10005A6C0(environment);
  swift_unknownObjectRelease();

  return v6;
}

- (void)removeChildViewController:(id)controller notifyDidMove:(BOOL)move
{
  moveCopy = move;
  controllerCopy = controller;
  selfCopy = self;
  viewControllers = [(TraitNavigationController *)selfCopy viewControllers];
  sub_100009F78(0, &qword_101183D40, UIViewController_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = controllerCopy;
  v12[2] = &v15;
  LOBYTE(viewControllers) = sub_10044AC70(sub_1007E9E88, v12, v9);

  v10 = type metadata accessor for TraitNavigationController();
  if (viewControllers)
  {
    v13.receiver = selfCopy;
    v11 = &v13;
  }

  else
  {
    v14 = selfCopy;
    v11 = &v14;
  }

  v11->super_class = v10;
  [(objc_super *)v11 removeChildViewController:controllerCopy notifyDidMove:moveCopy];
}

- (_TtC5Music25TraitNavigationController)initWithRootViewController:(id)controller
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TraitNavigationController();
  return [(TraitNavigationController *)&v5 initWithRootViewController:controller];
}

- (_TtC5Music25TraitNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for TraitNavigationController();
  v9 = [(TraitNavigationController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC5Music25TraitNavigationController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TraitNavigationController();
  coderCopy = coder;
  v5 = [(TraitNavigationController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end