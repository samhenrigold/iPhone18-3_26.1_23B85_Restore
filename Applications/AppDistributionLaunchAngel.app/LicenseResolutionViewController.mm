@interface LicenseResolutionViewController
- (_TtC26AppDistributionLaunchAngel31LicenseResolutionViewController)initWithCoder:(id)coder;
- (_TtC26AppDistributionLaunchAngel31LicenseResolutionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)preferredStatusBarStyle;
- (void)presentationControllerDidDismiss:(id)dismiss;
- (void)safariViewControllerDidFinish:(id)finish;
@end

@implementation LicenseResolutionViewController

- (_TtC26AppDistributionLaunchAngel31LicenseResolutionViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_dismissAction);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_isIPad;
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  *(&self->super.super.super.isa + v5) = userInterfaceIdiom == 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
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

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC26AppDistributionLaunchAngel31LicenseResolutionViewController_isIPad);

  return ~v3 & 1;
}

- (_TtC26AppDistributionLaunchAngel31LicenseResolutionViewController)initWithNibName:(id)name bundle:(id)bundle
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

- (void)safariViewControllerDidFinish:(id)finish
{
  v4 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = self;
  selfCopy = self;
  sub_100007654(0, 0, v6, &unk_1000662F0, v8);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_100012C50();
}

@end