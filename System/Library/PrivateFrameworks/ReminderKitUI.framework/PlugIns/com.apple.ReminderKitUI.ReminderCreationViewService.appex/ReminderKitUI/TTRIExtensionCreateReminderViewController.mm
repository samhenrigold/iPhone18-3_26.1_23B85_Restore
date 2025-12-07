@interface TTRIExtensionCreateReminderViewController
- (UIBarButtonItem)addBarButtonItem;
- (UITableView)tableView;
- (_TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapAdd:(id)add;
- (void)didTapCancel:(id)cancel;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRIExtensionCreateReminderViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100012544();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100013708(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = v6.receiver;
  [(TTRIExtensionCreateReminderViewController *)&v6 viewWillDisappear:disappearCopy];
  if (*&v4[OBJC_IVAR____TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver])
  {

    sub_1000162DC();
  }

  sub_100015AB0(&qword_100026098, v5, type metadata accessor for TTRIExtensionCreateReminderViewController, &unk_1000180FC);
  sub_100015EFC();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100013928();
}

- (UITableView)tableView
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIBarButtonItem)addBarButtonItem
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100016A6C();
  swift_unknownObjectRelease();
  sub_100009E78();
  sub_10000CDB0(v5);
}

- (void)didTapAdd:(id)add
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100016A6C();
  swift_unknownObjectRelease();
  sub_1000169DC();
  [(TTRIExtensionCreateReminderViewController *)selfCopy resignFirstResponder];
  sub_100009A04();
  sub_10000CDB0(v5);
}

- (_TtC51com_apple_ReminderKitUI_ReminderCreationViewService41TTRIExtensionCreateReminderViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end