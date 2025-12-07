@interface InstallConfirmationViewController
- (_TtC26AppDistributionLaunchAngel33InstallConfirmationViewController)initWithCoder:(id)coder;
- (_TtC26AppDistributionLaunchAngel33InstallConfirmationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)preferredStatusBarStyle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation InstallConfirmationViewController

- (_TtC26AppDistributionLaunchAngel33InstallConfirmationViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  sub_10005F84C();
}

- (void)viewDidAppear:(BOOL)appear
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_10005AA10(appear);
}

- (int64_t)preferredStatusBarStyle
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26AppDistributionLaunchAngel33InstallConfirmationViewController_isIPad);

  return ~v3 & 1;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for InstallConfirmationViewController(0);
  swift_unknownObjectRetain();
  selfCopy = self;
  [(InstallConfirmationViewController *)&v9 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();

  swift_unknownObjectRelease();
}

- (_TtC26AppDistributionLaunchAngel33InstallConfirmationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end