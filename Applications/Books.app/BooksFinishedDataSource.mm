@interface BooksFinishedDataSource
- (_TtC5Books23BooksFinishedDataSource)init;
- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify;
@end

@implementation BooksFinishedDataSource

- (_TtC5Books23BooksFinishedDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)managedObjectBackgroundMonitor:(id)monitor didSaveNotify:(id)notify
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC5Books23BooksFinishedDataSource_onChange);
  if (v4)
  {
    v5 = *&self->onChange[OBJC_IVAR____TtC5Books23BooksFinishedDataSource_onChange];
    selfCopy = self;
    v7 = sub_1000260E8(v4, v5);
    v4(v7);

    sub_100007020(v4, v5);
  }
}

@end