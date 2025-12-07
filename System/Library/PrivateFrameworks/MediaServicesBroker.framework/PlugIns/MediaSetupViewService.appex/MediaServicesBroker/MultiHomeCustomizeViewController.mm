@interface MultiHomeCustomizeViewController
- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)requestDismiss;
- (void)selectContinue;
- (void)switchDidChange:(id)change;
- (void)viewDidLayoutSubviews;
@end

@implementation MultiHomeCustomizeViewController

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_10001D284();
}

- (void)requestDismiss
{
  selfCopy = self;
  sub_100011B3C(1);
}

- (void)selectContinue
{
  selfCopy = self;
  sub_10001D58C();
}

- (void)switchDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10001D860(changeCopy);
}

- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21MediaSetupViewService32MultiHomeCustomizeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1000257AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002578C();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10001E2D0(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v4 = *&self->OBTableWelcomeController_opaque[OBJC_IVAR____TtC21MediaSetupViewService32MultiHomeCustomizeViewController_viewModel];
  if (v4 >> 62)
  {
    return sub_100025C3C();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

@end