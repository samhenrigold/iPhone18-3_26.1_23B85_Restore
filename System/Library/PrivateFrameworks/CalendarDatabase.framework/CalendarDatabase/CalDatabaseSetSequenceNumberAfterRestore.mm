@interface CalDatabaseSetSequenceNumberAfterRestore
@end

@implementation CalDatabaseSetSequenceNumberAfterRestore

uint64_t ___CalDatabaseSetSequenceNumberAfterRestore_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (CDBLockingAssertionsEnabled == 1 && v1 != 0)
  {
    if (*v1)
    {
      if (*(*v1 + 104))
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPSqliteConnectionSetIntegerForProperty();
}

@end