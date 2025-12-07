@interface ReadingHistoryDataStore
- (void)_handleSignificantDateChange:(id)change;
@end

@implementation ReadingHistoryDataStore

- (void)_handleSignificantDateChange:(id)change
{
  v3 = sub_1001C4868();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001C4848();

  ReadingHistoryDataStore.handleSignificantDateChange()();

  (*(v4 + 8))(v6, v3);
}

@end