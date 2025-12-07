@interface CalDatabaseCopyOfAllAttachmentFilesInStore
@end

@implementation CalDatabaseCopyOfAllAttachmentFilesInStore

uint64_t ___CalDatabaseCopyOfAllAttachmentFilesInStore_block_invoke(uint64_t result, uint64_t a2)
{
  if (*(result + 32))
  {
    v2 = *(a2 + 8);
    if (CDBLockingAssertionsEnabled == 1 && *(result + 40) != 0)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    CPRecordGetID();
    RowidForRecordID = CPRecordStoreGetRowidForRecordID();

    return sqlite3_bind_int64(v2, 1, RowidForRecordID);
  }

  return result;
}

@end