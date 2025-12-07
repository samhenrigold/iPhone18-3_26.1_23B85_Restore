@interface CombinedApprovalAndInstallSheetViewController
- (CGSize)preferredContentSize;
- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action;
- (void)cancelPressed;
- (void)setPreferredContentSize:(CGSize)size;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation CombinedApprovalAndInstallSheetViewController

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5 = sub_1000047BC(&unk_100088F10, &qword_100065D60);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = type metadata accessor for CombinedApprovalAndInstallSheetViewController(0);
  v14.receiver = self;
  v14.super_class = v8;
  selfCopy = self;
  [(CombinedApprovalAndInstallSheetViewController *)&v14 viewDidAppear:appearCopy];
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = selfCopy;
  v12 = static MainActor.shared.getter();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = v11;
  sub_100007954(0, 0, v7, &unk_100067280, v13);
}

- (CGSize)preferredContentSize
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = 624.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setPreferredContentSize:(CGSize)size
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (id)textView:(id)view primaryActionForTextItem:(id)item defaultAction:(id)action
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  itemCopy = item;
  actionCopy = action;
  selfCopy = self;
  v13 = sub_100040CCC(itemCopy, actionCopy);

  return v13;
}

- (void)cancelPressed
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
  sub_100007954(0, 0, v5, &unk_100067240, v9);
}

@end