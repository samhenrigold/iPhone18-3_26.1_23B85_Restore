@interface FMRenameItemViewController
- (void)dismissKeyboard;
- (void)saveRole;
- (void)scrollViewDidScroll:(id)scroll;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMRenameItemViewController

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMRenameItemViewController(0);
  v4 = v7.receiver;
  [(FMSettingsUpdateViewController *)&v7 viewWillAppear:appearCopy];
  v5 = *(*&v4[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 24);

  v6 = sub_1003F366C(v4, v5);

  *&v4[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_devicesSubscription] = v6;

  sub_1000C6AE8();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMRenameItemViewController(0);
  v4 = v6.receiver;
  [(FMRenameItemViewController *)&v6 viewDidAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_customRoleView];
  *(v5 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiPickerEnabled) = 1;
  [*(v5 + OBJC_IVAR____TtC6FindMy16FMCustomRoleView_emojiBackground) setUserInteractionEnabled:{1, v6.receiver, v6.super_class}];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000C6170(disappear, selfCopy);
}

- (void)dismissKeyboard
{
  selfCopy = self;
  sub_1000C73E4();
}

- (void)scrollViewDidScroll:(id)scroll
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_scrollHandler);
  if (v3)
  {
    v5 = *&self->super.super.mediator[OBJC_IVAR____TtC6FindMy26FMRenameItemViewController_scrollHandler];
    scrollCopy = scroll;
    selfCopy = self;
    v8 = sub_100062900(v3, v5);
    v3(scrollCopy, v8);

    sub_10001835C(v3, v5);
  }
}

- (void)saveRole
{
  selfCopy = self;
  sub_1000C7BFC();
}

@end