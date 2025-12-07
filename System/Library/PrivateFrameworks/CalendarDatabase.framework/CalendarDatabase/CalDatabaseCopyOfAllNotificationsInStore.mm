@interface CalDatabaseCopyOfAllNotificationsInStore
@end

@implementation CalDatabaseCopyOfAllNotificationsInStore

uint64_t ___CalDatabaseCopyOfAllNotificationsInStore_block_invoke_2(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 40));
  v3 = *(a2 + 8);
  ID = CPRecordGetID();

  return sqlite3_bind_int(v3, 2, ID);
}

@end