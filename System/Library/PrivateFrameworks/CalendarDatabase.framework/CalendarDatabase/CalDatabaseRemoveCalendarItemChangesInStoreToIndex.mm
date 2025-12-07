@interface CalDatabaseRemoveCalendarItemChangesInStoreToIndex
@end

@implementation CalDatabaseRemoveCalendarItemChangesInStoreToIndex

uint64_t ___CalDatabaseRemoveCalendarItemChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 40));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  result = CPRecordStoreDeleteChangesForClassToIndexWhereWithBindBlock();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t ___CalDatabaseRemoveCalendarItemChangesInStoreToIndex_block_invoke_2(uint64_t a1, uint64_t a2, int a3)
{
  sqlite3_bind_int(*(a2 + 8), a3, *(a1 + 40));
  v5 = *(a2 + 8);
  ID = CPRecordGetID();

  return sqlite3_bind_int(v5, a3 + 1, ID);
}

@end