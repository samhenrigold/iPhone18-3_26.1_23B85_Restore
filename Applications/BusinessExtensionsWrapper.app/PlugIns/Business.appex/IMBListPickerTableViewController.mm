@interface IMBListPickerTableViewController
- (_TtC8Business32IMBListPickerTableViewController)initWithCoder:(id)coder;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation IMBListPickerTableViewController

- (_TtC8Business32IMBListPickerTableViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_multipleSelectionEnabled) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_cellShouldHaveSelectionIcon) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_rightButtonTapped) = 0;
  v3 = OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_selectedItems;
  *(&self->super.super.super.super.super.isa + v3) = sub_10004FC70(_swiftEmptyArrayStorage);
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10001BB78();
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC8Business32IMBListPickerTableViewController_listRequest);
  if (!v3)
  {
    return 1;
  }

  v4 = *(v3 + 24);
  if (v4 >> 62)
  {
    return sub_1000AC65C();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10001E984(section);

  return v8;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_10001D838(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10001DFFC(viewCopy, section);

  return v8;
}

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
{
  v4 = sub_1000AB97C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  (*(v5 + 8))(v7, v4);
  return 140.0;
}

- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path
{
  v4 = sub_1000AB97C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000413C(&qword_1000EFEA0, &qword_1000B11A8);
  __chkstk_darwin(v8 - 8);
  v10 = &v15 - v9;
  sub_1000AB93C();
  if (sub_10002CE60() == 2)
  {
    (*(v5 + 8))(v7, v4);
    v11 = 1;
  }

  else
  {
    (*(v5 + 32))(v10, v7, v4);
    v11 = 0;
  }

  (*(v5 + 56))(v10, v11, 1, v4);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    v12 = 0;
  }

  else
  {
    isa = sub_1000AB92C().super.isa;
    (*(v5 + 8))(v10, v4);
    v12 = isa;
  }

  return v12;
}

@end