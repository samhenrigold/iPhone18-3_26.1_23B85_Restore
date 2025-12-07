@interface IMBTimeSelectedViewController
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation IMBTimeSelectedViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100093808();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for IMBTimeSelectedViewController();
  v4 = v7.receiver;
  [(IMBTimeSelectedViewController *)&v7 viewWillAppear:appearCopy];
  v5 = OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView;
  [*&v4[OBJC_IVAR____TtC8Business37IMBDetailedMessageTableViewController_tableView] setPreservesSuperviewLayoutMargins:{1, v7.receiver, v7.super_class}];
  v6 = *&v4[v5];
  [v6 layoutMargins];
  [v6 setLayoutMargins:?];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = OBJC_IVAR____TtC8Business29IMBTimeSelectedViewController_tableViewData;
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
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  viewCopy = view;
  selfCopy = self;
  sub_1000957F8(viewCopy, v12);
  v14 = v13;

  (*(v7 + 8))(v9, v6);

  return v14;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  viewCopy = view;
  selfCopy = self;
  sub_1000966C8(v12);
  v14 = v13;

  (*(v7 + 8))(v9, v6);
  return v14;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1000AB97C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000AB93C();
  viewCopy = view;
  selfCopy = self;
  sub_100095F74(viewCopy, v12);

  (*(v7 + 8))(v9, v6);
}

@end