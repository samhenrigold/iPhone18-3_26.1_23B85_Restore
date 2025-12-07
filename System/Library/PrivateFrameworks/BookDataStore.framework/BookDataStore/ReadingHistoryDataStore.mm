@interface ReadingHistoryDataStore
- (void)_handleSignificantDateChange:(id)change;
@end

@implementation ReadingHistoryDataStore

- (void)_handleSignificantDateChange:(id)change
{
  v3 = sub_1E47099BC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E470999C();

  ReadingHistoryDataStore.handleSignificantDateChange()();

  (*(v4 + 8))(v7, v3);
}

@end