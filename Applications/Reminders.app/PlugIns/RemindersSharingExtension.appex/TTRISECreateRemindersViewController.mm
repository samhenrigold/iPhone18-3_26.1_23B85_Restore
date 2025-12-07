@interface TTRISECreateRemindersViewController
- (_TtC25RemindersSharingExtension35TTRISECreateRemindersViewController)initWithCollectionViewLayout:(id)layout;
- (_TtC25RemindersSharingExtension35TTRISECreateRemindersViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TTRISECreateRemindersViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001C4A4();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TTRISECreateRemindersViewController *)&v5 viewWillAppear:appearCopy];
  if (*&v4[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_currentTextInputModeObserver])
  {

    sub_10004B1D0();
  }
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRISECreateRemindersViewController *)&v3 viewWillLayoutSubviews];
  sub_10001DFC4();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10001E610(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_10001E728(disappear);
}

- (_TtC25RemindersSharingExtension35TTRISECreateRemindersViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC25RemindersSharingExtension35TTRISECreateRemindersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  sub_100049EF0();
  v7 = sub_10004C720();
  viewCopy = view;
  selfCopy = self;
  v10 = sub_1000273AC(v7);

  return v10;
}

@end