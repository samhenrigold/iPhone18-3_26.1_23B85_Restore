@interface NavigationController
- (UIViewController)childViewControllerForStatusBarStyle;
- (_TtC10Blackbeard20NavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC10Blackbeard20NavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC10Blackbeard20NavigationController)initWithRootViewController:(id)controller;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (void)didMoveToParentViewController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation NavigationController

- (UIViewController)childViewControllerForStatusBarStyle
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  topViewController = [(NavigationController *)selfCopy topViewController];
  if (!topViewController)
  {
    v8.receiver = selfCopy;
    v8.super_class = ObjectType;
    topViewController = [(NavigationController *)&v8 childViewControllerForStatusBarStyle];
  }

  v6 = topViewController;

  return v6;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(NavigationController *)&v10 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  v8 = *&v7[OBJC_IVAR____TtC10Blackbeard20NavigationController_paletteViewController];
  if (v8)
  {
    v9 = v8;
    [v9 viewWillTransitionToSize:coordinator withTransitionCoordinator:{width, height, v10.receiver, v10.super_class}];
  }

  swift_unknownObjectRelease();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1E64C1914(appear);
}

- (void)didMoveToParentViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1E64C2160(controller);
}

- (_TtC10Blackbeard20NavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10Blackbeard20NavigationController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC10Blackbeard20NavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)targetForAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1E65E6708();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v15, 0, sizeof(v15));
    selfCopy2 = self;
  }

  sub_1E64C2B74(action, v15, v16);

  sub_1E5DFE50C(v15, &qword_1ED072B28, &unk_1E65F06A0);
  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
    v10 = *(v8 - 8);
    MEMORY[0x1EEE9AC00](v9);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v12);
    v13 = sub_1E65E6BF8();
    (*(v10 + 8))(v12, v8);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end