@interface ImportRemoteViewController
- (_TtC16FinanceUIService26ImportRemoteViewController)initWithCoder:(id)coder;
- (_TtC16FinanceUIService26ImportRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)loadView;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ImportRemoteViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for ImportRemoteViewController(0);
  selfCopy = self;
  [(ImportRemoteViewController *)&v6 viewWillAppear:appearCopy];
  sub_100006F98();
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = sub_100003FFC(&qword_1000191A8, &unk_10000FDC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = type metadata accessor for ImportRemoteViewController(0);
  v13.receiver = self;
  v13.super_class = v8;
  selfCopy = self;
  [(ImportRemoteViewController *)&v13 viewWillDisappear:disappearCopy];
  v10 = *&selfCopy->_anon_0[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection];
  if (v10)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    v12[5] = sub_100006754;
    v12[6] = 0;

    sub_10000C2C8(0, 0, v7, &unk_10000FED8, v12);
  }

  else
  {
  }
}

- (void)loadView
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = objc_allocWithZone(UIView);
  selfCopy = self;
  v4 = [v3 init];
  [(ImportRemoteViewController *)selfCopy setView:v4];

  view = [(ImportRemoteViewController *)selfCopy view];
  if (view)
  {
    v6 = view;
    [view setHidden:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)dealloc
{
  if (*&self->_anon_0[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection])
  {
    v6 = *&self->_anon_0[OBJC_IVAR____TtC16FinanceUIService26ImportRemoteViewController_daemonConnection];
    selfCopy = self;
    sub_100003FFC(&qword_100019190, &qword_10000FDB0);
    sub_100005904();
    FinanceXPCConnection.invalidate()();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for ImportRemoteViewController(0);
  [(ImportRemoteViewController *)&v5 dealloc];
}

- (_TtC16FinanceUIService26ImportRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (name)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    name = v7;
  }

  else
  {
    v6 = 0;
  }

  bundleCopy = bundle;
  v9 = sub_1000088F8(v6, name, bundle);

  return v9;
}

- (_TtC16FinanceUIService26ImportRemoteViewController)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_100008ABC(coder);

  return v4;
}

@end