@interface ConfirmationSheetViewController
- (id)miniProductPagePresentingViewController;
- (void)dealloc;
- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)notification;
- (void)miniProductPageRequestDidFinish;
- (void)moreButtonPressed;
- (void)primaryButtonPressed;
- (void)viewDidLoad;
@end

@implementation ConfirmationSheetViewController

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  defaultCenter = [v3 defaultCenter];
  [defaultCenter removeObserver:selfCopy name:STRestrictionsPINControllerDidFinishNotification object:0];

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for ConfirmationSheetViewController(0);
  [(ConfirmationSheetViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = type metadata accessor for ConfirmationSheetViewController(0);
  selfCopy = self;
  [(ConfirmationSheetViewController *)&v4 viewDidLoad];
  sub_100023038();
  sub_1000256E8();
}

- (void)primaryButtonPressed
{
  v3 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = selfCopy;
  sub_100007654(0, 0, v5, &unk_100066770, v9);
}

- (void)miniProductPageRequestDidFinish
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000294EC();
}

- (id)miniProductPagePresentingViewController
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;

  return selfCopy;
}

- (void)moreButtonPressed
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)handleScreenTimePinCompletionNotificationWithNotification:(id)notification
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  notificationCopy = notification;
  selfCopy = self;
  sub_100028234(notificationCopy);
}

@end