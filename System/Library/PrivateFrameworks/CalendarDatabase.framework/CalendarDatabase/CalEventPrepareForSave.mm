@interface CalEventPrepareForSave
@end

@implementation CalEventPrepareForSave

void ___CalEventPrepareForSave_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (*v2)
    {
      if (*(*v2 + 104))
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v5 = CPSqliteConnectionStatementForSQL();
  if (v5)
  {
    v6 = v5;
    CStringFromCFString = CalCreateCStringFromCFString(*(a1 + 40));
    v8 = CalCreateCStringFromCFString(*(a1 + 48));
    v9 = v6[1];
    ID = CPRecordGetID();
    sqlite3_bind_int(v9, 1, ID);
    sqlite3_bind_int(v6[1], 2, 1);
    v11 = v6[1];
    EntityType = _CalCalendarItemGetEntityType(*(a1 + 56));
    sqlite3_bind_int(v11, 3, EntityType);
    v13 = v6[1];
    Store = CPRecordGetStore();
    if (CDBLockingAssertionsEnabled == 1 && Store != 0)
    {
      v16 = CPRecordStoreGetContext();
      if (v16)
      {
        os_unfair_lock_assert_owner(v16 + 20);
      }
    }

    LastSequenceNumber = CPRecordStoreGetLastSequenceNumber();
    sqlite3_bind_int(v13, 4, LastSequenceNumber);
    sqlite3_bind_int(v6[1], 5, *(a1 + 64));
    sqlite3_bind_int(v6[1], 6, *(a1 + 68));
    sqlite3_bind_int(v6[1], 7, *(a1 + 72));
    v18 = MEMORY[0x1E69E9B38];
    sqlite3_bind_text(v6[1], 8, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
    sqlite3_bind_text(v6[1], 9, v8, -1, v18);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v6)
      {
        v19 = **v6;
        if (v19)
        {
          if (*(v19 + 104))
          {
            v20 = CPRecordStoreGetContext();
            if (v20)
            {
              os_unfair_lock_assert_owner(v20 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementPerform();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v6)
      {
        v21 = **v6;
        if (v21)
        {
          if (*(v21 + 104))
          {
            v22 = CPRecordStoreGetContext();
            if (v22)
            {
              os_unfair_lock_assert_owner(v22 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  CFRelease(@"INSERT INTO CalendarItemChanges (record, type, entity_type, sequence_number, store_id, calendar_id, old_calendar_id, external_id, old_external_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);");
  v23 = *(a1 + 40);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 48);
  if (v24)
  {

    CFRelease(v24);
  }
}

@end