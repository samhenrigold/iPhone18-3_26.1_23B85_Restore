@interface IMBTimeSelectionTableViewController
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation IMBTimeSelectionTableViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10008D3D8(selfCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_10008D4EC(appearCopy);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates;
  swift_beginAccess();
  v5 = *(&self->super.super.super.super.super.isa + v4);
  if (v5 >> 62)
  {
    v6 = sub_1000AC65C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v6 != 0;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = OBJC_IVAR____TtC8Business35IMBTimeSelectionTableViewController_dates;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.isa + v5);
  if (v6 >> 62)
  {
    return sub_1000AC65C();
  }

  else
  {
    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  viewCopy = view;
  selfCopy = self;
  sub_10008DBEC(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

@end