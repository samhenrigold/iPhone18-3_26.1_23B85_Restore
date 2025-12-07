void CalExceptionDateSetOrder(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalExceptionDateCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Owner = _CalExceptionDateGetOwner(a1);
  v4 = Owner;
  if (Owner)
  {
    CFRetain(Owner);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalExceptionDateSetOwner(void *a1, CFTypeRef a2)
{
  v4 = CalExceptionDateCopyOwner(a1);
  v5 = v4;
  if (v4 != a2)
  {
    if (v4)
    {
      CalCalendarItemRemoveExceptionDate(v4, a1);
    }

    if (a2)
    {
      CalCalendarItemAddExceptionDate(a2, a1);
    }
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t _CalInvalidateExceptionDatesWithOwnerID(uint64_t a1, int a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreInvalidateCachedInstancesOfClassWithBlock();
}

uint64_t CalDatabaseCopyExceptionDateChangesInCalendar(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    v6 = 0;
    goto LABEL_7;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = Mutable;
  *a3 = Mutable;
LABEL_7:
  os_unfair_lock_lock(a1 + 20);
  if ((a1[86]._os_unfair_lock_opaque & 0x80000000) != 0)
  {
    v8 = @"calendar_id = ?1 AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = ?2) AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?2) AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = ?3 AND client_identifier = ?2)";
  }

  else
  {
    v8 = [@"calendar_id = ?1 AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = ?2) AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = ?2) AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = ?3 AND client_identifier = ?2)" stringByAppendingString:@" AND sequence_number <= ?"];
  }

  v9 = _CalDatabaseCopyClientIdentifier(a1);
  ID = CPRecordGetID();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __CalDatabaseCopyExceptionDateChangesInCalendar_block_invoke;
  v28[3] = &unk_1E8691718;
  v31 = ID;
  v11 = v9;
  v29 = v11;
  v30 = a1;
  v12 = MEMORY[0x1E12C7520](v28);
  cf = 0;
  value = 0;
  v24 = 0;
  v25 = 0;
  v23 = 0;
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v14 = RecordStore;
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v7 = CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithBindBlockAndProperties(v14, &kCalExceptionDateClass, &value, &cf, &v25, &v23, v8, v12, "owner_id");
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v17 = value;
  if (value)
  {
    if (v6)
    {
      CFDictionaryAddValue(v6, @"ID", value);
      v17 = value;
    }

    CFRelease(v17);
  }

  v18 = cf;
  if (cf)
  {
    if (v6)
    {
      CFDictionaryAddValue(v6, @"Type", cf);
      v18 = cf;
    }

    CFRelease(v18);
  }

  v19 = v25;
  if (v25)
  {
    if (v6)
    {
      CFDictionaryAddValue(v6, @"ChangeID", v25);
      v19 = v25;
    }

    CFRelease(v19);
  }

  v20 = v24;
  if (v24)
  {
    if (v6)
    {
      CFDictionaryAddValue(v6, @"OwningEventID", v24);
      v20 = v24;
    }

    CFRelease(v20);
  }

  v21 = v23;
  if (v23)
  {
    if (v6)
    {
      CFDictionaryAddValue(v6, @"SequenceNumber", v23);
      v21 = v23;
    }

    CFRelease(v21);
  }

  return v7;
}

uint64_t __CalDatabaseCopyExceptionDateChangesInCalendar_block_invoke(uint64_t a1, uint64_t a2)
{
  sqlite3_bind_int(*(a2 + 8), 1, *(a1 + 48));
  sqlite3_bind_text(*(a2 + 8), 2, [*(a1 + 32) UTF8String], -1, 0);
  result = sqlite3_bind_int(*(a2 + 8), 3, 10);
  v5 = *(*(a1 + 40) + 344);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(a2 + 8);

    return sqlite3_bind_int(v6, 4, v5);
  }

  return result;
}

CFComparisonResult _CompareExceptionDatesByDate(uint64_t a1, uint64_t a2)
{
  Date = _CalExceptionDateGetDate(a1);
  v4 = _CalExceptionDateGetDate(a2);
  if (Date && v4)
  {

    return CFDateCompare(Date, v4, 0);
  }

  else
  {
    if (v4)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if (Date)
    {
      return 1;
    }

    else
    {
      return v6;
    }
  }
}

CFComparisonResult _CompareExceptionDatesBySyncOrder(uint64_t a1, uint64_t a2)
{
  ProviderIdentifier = _CalColorGetProviderIdentifier(a1);
  v4 = _CalColorGetProviderIdentifier(a2);
  if (ProviderIdentifier && v4)
  {

    return CFNumberCompare(ProviderIdentifier, v4, 0);
  }

  else if (ProviderIdentifier)
  {
    return -1;
  }

  else
  {
    return (v4 != 0);
  }
}

CFComparisonResult CompareExceptionDatesByDate(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v5 = _CompareExceptionDatesByDate(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

CFComparisonResult CompareExceptionDatesBySyncOrder(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v5 = _CompareExceptionDatesBySyncOrder(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

CFTypeRef _CalExceptionDateLoadStoreId(uint64_t a1, uint64_t a2)
{
  result = _CalExceptionDateGetOwner(a1);
  if (result)
  {
    _CalCalendarItemGetStoreId(result);
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    return CPRecordInitializeProperty();
  }

  return result;
}

CFTypeRef _CalExceptionDateLoadCalendarId(uint64_t a1, uint64_t a2)
{
  result = _CalExceptionDateGetOwner(a1);
  if (result)
  {
    _CalEventGetCalendarId(result);
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    return CPRecordInitializeProperty();
  }

  return result;
}

uint64_t _CalConferencePrepareForSave(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationOwnerWillSave(result);
  }

  return result;
}

void CalConferenceInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalConferenceClass, &kCalConferenceIndexes, 0);
}

void CalConferenceMigrateTables(uint64_t a1, void *a2, signed int a3)
{
  if (a3 <= 15008)
  {
    CalMigrateTableFull(a2, &kCalConferenceClass, 0, &kCalConferenceUpgradeInfo, 0, &kCalConferenceIndexes, 0, 0, a3);
  }
}

uint64_t CalConferenceGetPropertyIDWithPropertyName(void *key)
{
  if (CalConferenceGetPropertyIDWithPropertyName_onceToken != -1)
  {
    CalConferenceGetPropertyIDWithPropertyName_cold_1();
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(CalConferenceGetPropertyIDWithPropertyName_sPropDict, key, &value))
  {
    return value;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __CalConferenceGetPropertyIDWithPropertyName_block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = @"UUID";
  v2 = 0;
  v3 = @"owner";
  v4 = 8;
  v5 = @"urlString";
  v6 = 2;
  v7 = @"feature";
  v8 = 3;
  v9 = @"info";
  v10 = 4;
  v11 = @"language";
  v12 = 5;
  v13 = @"region";
  v14 = 6;
  CalConferenceGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&v1, 7);
  for (i = 96; i != -16; i -= 16)
  {
  }
}

void sub_1DEC48650(_Unwind_Exception *a1)
{
  for (i = 96; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

CFTypeRef _CalConferenceHasValidParent(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  result = CalRelationGetRelatedObject(Property);
  if (result)
  {

    return _CalRecordStillExists(result);
  }

  return result;
}

uint64_t _CalInvalidateConferencesWithOwnerID(uint64_t a1, int a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreInvalidateCachedInstancesOfClassWithBlock();
}

uint64_t _CalConferenceGetWithUID(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  return CPRecordStoreGetInstanceOfClassWithUID();
}

const void *CalDatabaseCopyConferenceWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = _CalConferenceGetWithUID(RecordStore, a2);
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v6;
}

const void *_CalDatabaseCreateConference(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 23);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  v8 = _CalDBCreateUUIDString();
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      v10 = CPRecordStoreGetContext();
      if (v10)
      {
        os_unfair_lock_assert_owner(v10 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(v8);
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateConference(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Conference = _CalDatabaseCreateConference(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Conference;
}

void *_CalRemoveConference(void *a1)
{
  Owner = _CalConferenceGetOwner(a1);
  if (Owner)
  {

    return _CalCalendarItemRemoveConference(Owner, a1);
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord(a1);

    return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }
}

CFTypeRef _CalConferenceGetOwner(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationGetRelatedObject(result);
  }

  return result;
}

void CalRemoveConference(void *a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRemoveConference(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalConferenceCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Owner = _CalConferenceGetOwner(a1);
  v4 = Owner;
  if (Owner)
  {
    CFRetain(Owner);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalConferenceSetOwner(void *a1, CFTypeRef a2)
{
  v4 = CalConferenceCopyOwner(a1);
  v5 = v4;
  if (v4 != a2)
  {
    CalCalendarItemRemoveConference(v4, a1);
  }

  if (a2)
  {
    CalCalendarItemAddConference(a2, a1);
  }

  if (v5)
  {

    CFRelease(v5);
  }
}

void CalConferenceSetURL(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalConferenceCopyURL(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalConferenceSetFeature(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalConferenceCopyFeature(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalConferenceSetInfo(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalConferenceCopyInfo(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalConferenceSetLanguage(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalConferenceCopyLanguage(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalConferenceSetRegion(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalConferenceCopyRegion(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalStoreInvalidateSubentities(uint64_t result, uint64_t a2, void *a3)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = result;
    Store = CPRecordGetStore();
    Context = CPRecordStoreGetContext();
    if ((*(Context + 366) & 1) == 0)
    {
      _CalInvalidateCalendarsForStoreId(Store, v4);
    }

    if (v4 == 1)
    {
      _CalStoreInsertNewLocal(a3);
      _CalCalendarInsertNewDefault(a3);
    }

    return _CalDatabaseSetDeletionFlags(Context, 1);
  }

  return result;
}

uint64_t _CalStorePrepareForSave(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  if (!CPRecordGetProperty())
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v3 = CPRecordStoreGetContext();
          if (v3)
          {
            os_unfair_lock_assert_owner(v3 + 20);
          }
        }
      }
    }

    OriginalProperty = CPRecordGetOriginalProperty();
    ID = CPRecordGetID();
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109378;
      v12[1] = ID;
      v13 = 2112;
      v14 = OriginalProperty;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "Saving a store with no persistent ID (source identifier). UID = %i, original persistent ID = %@", v12, 0x12u);
    }

    DatabaseForRecord = CalGetDatabaseForRecord(a1);
    _CalDatabaseIntegrityError(DatabaseForRecord, @"Store Without PersistentID");
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v8 = CPRecordStoreGetContext();
        if (v8)
        {
          os_unfair_lock_assert_owner(v8 + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property)
  {
    CalRelationOwnerWillSave(Property);
  }

  result = _CalStoreDefaultAlarmChanges(a1);
  if (result)
  {
    _CalStoreUpdateAlarmCacheForDefaultAlarmChanges(a1, result);
    if (a1 && (CDBLockingAssertionsEnabled & 1) != 0 && CPRecordGetStore())
    {
      v11 = CPRecordStoreGetContext();
      if (v11)
      {
        os_unfair_lock_assert_owner(v11 + 20);
      }
    }

    return CPRecordUnloadProperty();
  }

  return result;
}

void _CalStorePropertyChanged(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (_CalRecordHasValueChangedForProperty(a1, a2))
  {
    DatabaseForRecord = CalGetDatabaseForRecord(a1);
    v5 = DatabaseForRecord;
    v6 = 1;
    switch(v2)
    {
      case 0:
      case 1:
      case 3:
      case 5:
      case 29:
        _CalDatabaseSetChangeFlags(DatabaseForRecord, 2);
        if (v2 != 4)
        {
          goto LABEL_10;
        }

        goto LABEL_4;
      case 2:
        goto LABEL_34;
      case 4:
LABEL_4:
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              Context = CPRecordStoreGetContext();
              if (Context)
              {
                os_unfair_lock_assert_owner(Context + 20);
              }
            }
          }
        }

        CPRecordUnloadProperty();
        goto LABEL_10;
      case 7:
      case 8:
      case 24:
      case 25:
      case 28:
      case 30:
      case 34:
LABEL_10:
        if (a1)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      case 20:
      case 21:
      case 32:
        if (a1)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
            {
              v13 = CPRecordStoreGetContext();
              if (v13)
              {
                os_unfair_lock_assert_owner(v13 + 20);
              }
            }
          }
        }

        CPRecordSetProperty();
        return;
      case 31:
        v6 = 2;
LABEL_34:
        _CalStoreDefaultMarkAlarmChange(a1, v6);
        _CalDatabaseSetChangeFlags(v5, 2);
        if (!a1)
        {
          goto LABEL_15;
        }

LABEL_11:
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v8 = CPRecordStoreGetContext();
            if (v8)
            {
              os_unfair_lock_assert_owner(v8 + 20);
            }
          }
        }

LABEL_15:
        CPRecordSetProperty();
        if (v2 == 5)
        {
          v9 = _CalStoreCopyDelegatedAccountOwnerStoreID(a1);
          if (v9)
          {
            CFRelease(v9);
            if (_CalStoreDelegateToggled_onceToken != -1)
            {
              _CalStorePropertyChanged_cold_1();
            }

            v10 = [MEMORY[0x1E696AD98] numberWithInt:CPRecordGetID()];
            IsEnabled = _CalStoreIsEnabled(a1);
            v12 = _CalStoreDelegateToggled_storeIDsPendingCleanup;
            objc_sync_enter(v12);
            if (IsEnabled)
            {
              [_CalStoreDelegateToggled_storeIDsPendingCleanup removeObject:v10];
              objc_sync_exit(v12);
            }

            else
            {
              v14 = [_CalStoreDelegateToggled_storeIDsPendingCleanup containsObject:v10];
              objc_sync_exit(v12);

              if ((v14 & 1) == 0)
              {
                v15 = _CalStoreDelegateToggled_storeIDsPendingCleanup;
                objc_sync_enter(v15);
                [_CalStoreDelegateToggled_storeIDsPendingCleanup addObject:v10];
                objc_sync_exit(v15);

                v16 = _CalStoreDelegateToggled_delegateDataCleanupQueue;
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = ___CalStoreDelegateToggled_block_invoke_2;
                block[3] = &unk_1E8688700;
                v18 = v10;
                dispatch_async(v16, block);
              }
            }
          }
        }

        break;
      default:
        return;
    }
  }
}

void CalStoreInitializeTables(uint64_t a1, void *a2, char a3)
{
  CPRecordStoreCreateTablesForClass();
  _CalAttachmentFileRegisterFunctions(a1, a2);
  CalPerformSQLWithConnection(a2, @"CREATE INDEX StoreExternalId on Store(external_id)");
  _CalStoreInsertNewLocal(a2);
  Context = CPRecordStoreGetContext();
  if (Context && (*(Context + 362) & 1) == 0)
  {
    if ((a3 & 1) == 0)
    {
      _CalStoreInsertNativeStore(a2);
    }
  }

  else
  {
    CalPerformSQLWithConnection(a2, @"DELETE FROM Store WHERE ROWID = 1");
  }

  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER delete_store_members AFTER DELETE ON Store\nBEGIN\nDELETE FROM Calendar WHERE store_id = OLD.ROWID;\nDELETE FROM Error WHERE ROWID = OLD.error_id;\nEND;\n");
  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER delete_store_changes AFTER DELETE ON Store\nBEGIN\nDELETE FROM CalendarChanges WHERE store_id = OLD.ROWID;DELETE FROM CalendarItemChanges WHERE store_id = OLD.ROWID;DELETE FROM AlarmChanges WHERE store_id = OLD.ROWID;DELETE FROM RecurrenceChanges WHERE store_id = OLD.ROWID;DELETE FROM ParticipantChanges WHERE store_id = OLD.ROWID;DELETE FROM AttachmentChanges WHERE store_id = OLD.ROWID;DELETE FROM ContactChanges WHERE store_id = OLD.ROWID;DELETE FROM EventActionChanges WHERE store_id = OLD.ROWID;DELETE FROM ExceptionDateChanges WHERE store_id = OLD.ROWID;DELETE FROM NotificationChanges WHERE store_id = OLD.ROWID;DELETE FROM ShareeChanges WHERE store_id = OLD.ROWID;DELETE FROM ClientCursor WHERE store_id = OLD.ROWID;\nEND;\n");
  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER clean_attachments_store_deleted AFTER DELETE ON Store\nBEGIN\nSELECT CalNoteStoreDeleted(OLD.ROWID, OLD.external_id, OLD.persistent_id);\nEND;");

  CalMigrationCreateIndexes(a2, &kCalStoreClass, 0, &kCalStoreChangesIndexes);
}

void _CalStoreInsertNewLocal(void *a1)
{
  v2 = CFUUIDCreate(0);
  v3 = CFUUIDCreateString(0, v2);
  v4 = CFStringCreateWithFormat(0, 0, @"INSERT INTO Store (ROWID, type, name, persistent_id, flags, flags2) VALUES (%d, 0, 'Default', '%@', %u, %u);", 1, v3, 268435457, 32898);
  CalPerformSQLWithConnection(a1, v4);
  CFRelease(v4);
  CFRelease(v3);

  CFRelease(v2);
}

void _CalStoreInsertNativeStore(void *a1)
{
  v2 = CFUUIDCreate(0);
  v3 = CFStringCreateWithFormat(0, 0, @"INSERT INTO Store (type, name, persistent_id, flags) VALUES (%d, 'Other', '%@', %u);", 5, @"______NativeStorePersistentID_______", 4);
  CalPerformSQLWithConnection(a1, v3);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
        {
          v5 = CPRecordStoreGetContext();
          if (v5)
          {
            os_unfair_lock_assert_owner(v5 + 20);
          }
        }
      }
    }
  }

  CPSqliteConnectionRowidOfLastInsert();
  CPSqliteConnectionSetIntegerForProperty();
  CFRelease(v3);

  CFRelease(v2);
}

void _CalStoreRepairDefaultLocalStore(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 362))
  {
    return;
  }

  _CalDatabaseIntegrityError(a1, @"Local Store Not Local");
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (!RecordStore)
  {
    v11 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v17 = 134217984;
    v18 = a1;
    v12 = "Error repairing local store, could not get record store from database %p";
    v13 = v11;
    goto LABEL_24;
  }

  v3 = RecordStore;
  if (CDBLockingAssertionsEnabled == 1)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (!Database)
  {
    v14 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v17 = 134217984;
    v18 = v3;
    v12 = "Error repairing local store, could not get sqlitedb from recordStore %p";
LABEL_23:
    v13 = v14;
LABEL_24:
    v15 = 12;
    goto LABEL_25;
  }

  v6 = Database;
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(Database + 104))
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  v8 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (!v8)
  {
    v14 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v17 = 134217984;
    v18 = v3;
    v12 = "Error repairing local store, could not get coonnection from sqlitedb %p";
    goto LABEL_23;
  }

  v9 = v8;
  if (!__CalDatabaseBeginWriteTransaction(a1, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:449"))
  {
    v16 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v17) = 0;
    v12 = "Error repairing local store, could not start a transaction";
    v13 = v16;
    v15 = 2;
LABEL_25:
    _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, v12, &v17, v15);
    return;
  }

  if (_CalStoreVerifyAndRepairLocalStore(a1, v9))
  {
    __CalDatabaseCommitTransaction(a1, "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:455");
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_DEFAULT, "Flushing change in-memory change tracking and posting a database change notification because we just repaired the local store", &v17, 2u);
    }

    _CalDatabaseNoteUntrackedChange(a1);
  }

  else
  {
    __CalDatabaseRollbackTransaction(a1, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:460");
  }

  _CalDatabaseReportIntegrityErrors(v6);
}

uint64_t _CalStoreVerifyAndRepairLocalStore(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(a1 + 362))
  {
    return 0;
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT type FROM Store WHERE ROWID = %i", 1];
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a2)
      {
        if (*(*a2 + 104))
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }
  }

  v5 = CPSqliteConnectionStatementForSQL();
  if (!v5)
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      buf = 138543362;
      *buf_4 = v3;
      _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "Failed to create statement from SQL %{public}@.", &buf, 0xCu);
    }

    return 0;
  }

  v6 = v5;
  *v16 = 0;
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v5)
    {
      v7 = **v5;
      if (v7)
      {
        if (*(v7 + 104))
        {
          v8 = CPRecordStoreGetContext();
          if (v8)
          {
            os_unfair_lock_assert_owner(v8 + 20);
          }
        }
      }
    }
  }

  CPSqliteStatementIntegerResult();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v6)
    {
      v9 = **v6;
      if (v9)
      {
        if (*(v9 + 104))
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }
    }
  }

  CPSqliteStatementReset();
  v13 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    buf = 67109120;
    *buf_4 = *v16;
    _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Migration didn't find the default local store (sqlite returned %i). Inserting a new default local store.", &buf, 8u);
  }

  _CalStoreInsertNewLocal(a2);
  return 1;
}

void CalStoreRepairDefaultLocalStore(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  _CalStoreRepairDefaultLocalStore(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void CalStoreMigrateTables(uint64_t a1, void *a2, unsigned int a3)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a3 <= 6)
  {
    CalStoreInitializeTables(a1, a2, 1);
    goto LABEL_3;
  }

  if (a3 > 0x426C)
  {
    goto LABEL_76;
  }

  if (a3 <= 0xC)
  {
    CalPerformSQLWithConnection(a2, @"DROP TABLE StoreChanges;");
  }

  CalPerformSQLWithConnection(a2, @"DROP TRIGGER IF EXISTS delete_store_members;");
  CalPerformSQLWithConnection(a2, @"DROP TRIGGER IF EXISTS delete_store_changes;");
  CalPerformSQLWithConnection(a2, @"DROP TRIGGER IF EXISTS clean_attachments_store_deleted;");
  CalPerformSQLWithConnection(a2, @"ALTER TABLE Store RENAME TO Store_;");
  CalPerformSQLWithConnection(a2, @"ALTER TABLE StoreChanges RENAME TO StoreChanges_;");
  CPRecordStoreCreateTablesForClass();
  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER delete_store_members AFTER DELETE ON Store\nBEGIN\nDELETE FROM Calendar WHERE store_id = OLD.ROWID;\nDELETE FROM Error WHERE ROWID = OLD.error_id;\nEND;\n");
  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER delete_store_changes AFTER DELETE ON Store\nBEGIN\nDELETE FROM CalendarChanges WHERE store_id = OLD.ROWID;DELETE FROM CalendarItemChanges WHERE store_id = OLD.ROWID;DELETE FROM AlarmChanges WHERE store_id = OLD.ROWID;DELETE FROM RecurrenceChanges WHERE store_id = OLD.ROWID;DELETE FROM ParticipantChanges WHERE store_id = OLD.ROWID;DELETE FROM AttachmentChanges WHERE store_id = OLD.ROWID;DELETE FROM ContactChanges WHERE store_id = OLD.ROWID;DELETE FROM EventActionChanges WHERE store_id = OLD.ROWID;DELETE FROM ExceptionDateChanges WHERE store_id = OLD.ROWID;DELETE FROM NotificationChanges WHERE store_id = OLD.ROWID;DELETE FROM ShareeChanges WHERE store_id = OLD.ROWID;DELETE FROM ClientCursor WHERE store_id = OLD.ROWID;\nEND;\n");
  CalPerformSQLWithConnection(a2, @"CREATE TRIGGER clean_attachments_store_deleted AFTER DELETE ON Store\nBEGIN\nSELECT CalNoteStoreDeleted(OLD.ROWID, OLD.external_id, OLD.persistent_id);\nEND;");
  if (a3 - 16001 <= 0x1F)
  {
    if ((*(CPRecordStoreGetContext() + 362) & 1) == 0)
    {
      *buf = 0;
      v58 = buf;
      v59 = 0x3032000000;
      v60 = __Block_byref_object_copy__0;
      v61 = __Block_byref_object_dispose__0;
      v62 = 0;
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = __Block_byref_object_copy__0;
      v55 = __Block_byref_object_dispose__0;
      v56 = 0;
      if (a2)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a2)
          {
            if (*(*a2 + 104))
            {
              Context = CPRecordStoreGetContext();
              if (Context)
              {
                os_unfair_lock_assert_owner(Context + 20);
              }
            }
          }
        }
      }

      v17 = CPSqliteConnectionStatementForSQL();
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = ___CalStoreMigrateStoreTableData_block_invoke;
      v50[3] = &unk_1E86921D8;
      v50[4] = buf;
      v50[5] = &v51;
      CalSendResults(v17, v50);
      v18 = *(v58 + 5);
      if (v18)
      {
        CalAlarmSetDefaultTimedAlarmOffset(v18);
      }

      v19 = v52[5];
      if (v19)
      {
        CalAlarmSetDefaultAllDayAlarmOffset(v19);
      }

      CalPerformSQLWithConnection(a2, @"UPDATE Store_ SET default_alarm_offset=NULL, default_all_day_alarm_offset=NULL WHERE ROWID = 1 OR external_id=Subscribed Calendars");
      _Block_object_dispose(&v51, 8);

      _Block_object_dispose(buf, 8);
    }

    v20 = [CFSTR(""ROWID name];
    [v20 appendString:{@", display_order"}];
    [v20 appendString:{@", owner_name"}];
    goto LABEL_45;
  }

  if (a3 < 0x24)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, NULL, type, constraint_path, disabled, external_id, NULL, NULL, NULL, NULL, 0, NULL, 0, 0 FROM Store_;";
LABEL_70:
    CalPerformSQLWithConnection(a2, v24);
    v23 = [CFSTR(""record type];
    goto LABEL_71;
  }

  if (a3 < 0x33)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, NULL, type, constraint_path, disabled, external_id, persistent_id, NULL, NULL, NULL, 0, NULL, 0, 0 FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x44)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, NULL, NULL, NULL, 0, NULL, 0, 0 FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x70)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, NULL, NULL, 0, NULL, 0, 0 FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x80)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, 0, 0 FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x85)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, 0 FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x2AFD)
  {
    v24 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value FROM Store_;";
    goto LABEL_70;
  }

  if (a3 < 0x2EE2)
  {
    v48 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end FROM Store_;";
LABEL_139:
    CalPerformSQLWithConnection(a2, v48);
    v22 = @"INSERT INTO Error (store_owner_id, error_code) SELECT ROWID, last_sync_error FROM Store_ WHERE last_sync_error != 0";
    goto LABEL_52;
  }

  if (a3 >> 3 < 0x5DD)
  {
    v48 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id FROM Store_;";
    goto LABEL_139;
  }

  if (a3 == 12008)
  {
    v48 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id FROM Store_;";
    goto LABEL_139;
  }

  if (a3 < 0x2EEA)
  {
    v48 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id, shows_notifications) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id, shows_notifications FROM Store_;";
    goto LABEL_139;
  }

  if (a3 < 0x36B1)
  {
    v48 = @"INSERT INTO Store (ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id, shows_notifications, flags2) SELECT ROWID, name, default_alarm_offset, type, constraint_path, disabled, external_id, persistent_id, flags, creator_bundle_id, creator_code_signing_identity, only_creator_can_modify, external_mod_tag, preferred_event_private_value, strictest_event_private_value, last_sync_start, last_sync_end, delegated_account_owner_store_id, delegated_account_default_calendar_for_new_events_id, shows_notifications, flags2 FROM Store_;";
    goto LABEL_139;
  }

  v49 = [CFSTR(""ROWID name];
  v20 = v49;
  if (a3 >= 0x3A99)
  {
    [v49 appendString:{@", display_order"}];
    if (a3 >= 0x3A9E)
    {
      [v20 appendString:{@", owner_name"}];
      if (a3 >> 2 >= 0xEA9)
      {
LABEL_45:
        [v20 appendString:{@", default_all_day_alarm_offset"}];
        if (a3 >= 0x3E85)
        {
          [v20 appendString:{@", error_id"}];
          if (a3 >> 3 >= 0x7D1)
          {
            [v20 appendString:{@", notes"}];
            if (a3 >= 0x3E9D)
            {
              [v20 appendString:{@", cached_external_info"}];
              if (a3 >= 0x4269)
              {
                [v20 appendString:{@", app_group_id"}];
              }
            }
          }
        }
      }
    }
  }

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO Store (%@) SELECT %@ FROM Store_;", v20, v20];

  CalPerformSQLWithConnection(a2, v21);
  if (a3 >= 0x3E85)
  {
    v23 = [CFSTR(""record type];
    goto LABEL_57;
  }

  v22 = @"INSERT INTO Error (store_owner_id, error_code, user_info) SELECT ROWID, last_sync_error, last_sync_error_data FROM Store_ WHERE last_sync_error != 0";
LABEL_52:
  CalPerformSQLWithConnection(a2, v22);
  CalPerformSQLWithConnection(a2, @"UPDATE Store SET error_id = (SELECT ROWID FROM Error WHERE store_owner_id = Store.ROWID)");
  v23 = [CFSTR(""record type];
  if (a3 >> 2 >= 0xEA9)
  {
LABEL_57:
    [v23 appendString:{@", default_alarm_offset"}];
    [v23 appendString:{@", default_all_day_alarm_offset"}];
  }

LABEL_71:
  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO StoreChanges (%@) SELECT %@ FROM StoreChanges_", v23, v23];;
  CalPerformSQLWithConnection(a2, v25);

  CalPerformSQLWithConnection(a2, @"DROP TABLE Store_;");
  CalPerformSQLWithConnection(a2, @"DROP TABLE StoreChanges_;");
  if (a3 <= 0x23)
  {
LABEL_3:
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v5 = CPRecordStoreGetContext();
            if (v5)
            {
              os_unfair_lock_assert_owner(v5 + 20);
            }
          }
        }
      }
    }

    v6 = CPSqliteConnectionStatementForSQL();
    if (v6)
    {
      *buf = 0;
      do
      {
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v6)
          {
            v7 = **v6;
            if (v7)
            {
              if (*(v7 + 104))
              {
                v8 = CPRecordStoreGetContext();
                if (v8)
                {
                  os_unfair_lock_assert_owner(v8 + 20);
                }
              }
            }
          }
        }

        v9 = CPSqliteStatementIntegerResult();
        if (*buf != 100)
        {
          break;
        }

        v10 = v9;
        v11 = CFUUIDCreate(0);
        v12 = CFUUIDCreateString(0, v11);
        v13 = CFStringCreateWithFormat(0, 0, @"UPDATE Store SET persistent_id=%@ WHERE rowid = %d;", v12, v10);
        CFRelease(v12);
        CFRelease(v11);
        CalPerformSQLWithConnection(a2, v13);
        CFRelease(v13);
      }

      while (*buf == 100);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v6)
        {
          v14 = **v6;
          if (v14)
          {
            if (*(v14 + 104))
            {
              v15 = CPRecordStoreGetContext();
              if (v15)
              {
                os_unfair_lock_assert_owner(v15 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
    }

    if (a3 <= 31)
    {
      _CalStoreInsertNativeStore(a2);
    }
  }

  if (a3 - 7 <= 0x20)
  {
    CalPerformSQLWithConnection(a2, @"DELETE FROM Calendar WHERE rowid NOT IN (SELECT Calendar.rowid FROM Calendar, Store WHERE Calendar.store_id = Store.rowid);");
LABEL_75:
    CalPerformSQLWithConnection(a2, @"UPDATE Store SET constraint_path = NULL WHERE rowid = 1");
    goto LABEL_76;
  }

  if (a3 <= 66)
  {
    goto LABEL_75;
  }

LABEL_76:
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a2)
      {
        if (*(*a2 + 104))
        {
          v26 = CPRecordStoreGetContext();
          if (v26)
          {
            os_unfair_lock_assert_owner(v26 + 20);
          }
        }
      }
    }
  }

  v27 = CPSqliteConnectionIntegerForProperty();
  if (v27 >= 1)
  {
    v28 = CFStringCreateWithFormat(0, 0, @"UPDATE Store SET flags = %u WHERE ROWID = %d;", 4, v27);
    if (v28)
    {
      CalPerformSQLWithConnection(a2, v28);
      CFRelease(v28);
    }
  }

  v29 = CFStringCreateWithFormat(0, 0, @"UPDATE Store SET flags = (IFNULL(flags,0) & %u) | %u WHERE ROWID = %d;", 2, 0x10000000, 1);
  if (v29)
  {
    CalPerformSQLWithConnection(a2, v29);
    CFRelease(v29);
  }

  v30 = CFStringCreateWithFormat(0, 0, @"UPDATE Store SET flags2 = %u WHERE ROWID = %d;", 32898, 1);
  if (v30)
  {
    CalPerformSQLWithConnection(a2, v30);
    CFRelease(v30);
  }

  v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE Store SET flags = %u WHERE type = %d AND ROWID != %d", 268435457, 0, 1];
  CalPerformSQLWithConnection(a2, v31);
  v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE Store SET flags2 = %u WHERE type = %d AND ROWID != %d", 32898, 0, 1];
  CalPerformSQLWithConnection(a2, v32);
  if (a3 <= 91)
  {
    CalPerformSQLWithConnection(a2, @"CREATE INDEX StoreExternalId on Store(external_id)");
  }

  v33 = CFStringCreateWithFormat(0, 0, @"SELECT COUNT(rowid) from Store WHERE type = %i;", 5);
  if (((a2 != 0) & CDBLockingAssertionsEnabled) == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
      {
        v34 = CPRecordStoreGetContext();
        if (v34)
        {
          os_unfair_lock_assert_owner(v34 + 20);
        }
      }
    }
  }

  v35 = CPSqliteConnectionStatementForSQL();
  v36 = v35;
  if (v35)
  {
    LODWORD(v51) = 0;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v35)
      {
        v37 = **v35;
        if (v37)
        {
          if (*(v37 + 104))
          {
            v38 = CPRecordStoreGetContext();
            if (v38)
            {
              os_unfair_lock_assert_owner(v38 + 20);
            }
          }
        }
      }
    }

    v39 = CPSqliteStatementIntegerResult();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v36)
      {
        v40 = **v36;
        if (v40)
        {
          if (*(v40 + 104))
          {
            v41 = CPRecordStoreGetContext();
            if (v41)
            {
              os_unfair_lock_assert_owner(v41 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
    if (v51 == 100 && v39 >= 2)
    {
      if (a2)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a2)
          {
            if (*(*a2 + 104))
            {
              v42 = CPRecordStoreGetContext();
              if (v42)
              {
                os_unfair_lock_assert_owner(v42 + 20);
              }
            }
          }
        }
      }

      v43 = CPSqliteConnectionIntegerForProperty();
      v44 = CDBLogHandle;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109376;
        *&buf[4] = v39;
        LOWORD(v58) = 1024;
        *(&v58 + 2) = v43;
        _os_log_impl(&dword_1DEBB1000, v44, OS_LOG_TYPE_ERROR, "Found %i native stores.  Deleting all but store ID %i.", buf, 0xEu);
      }

      v45 = CFStringCreateWithFormat(0, 0, @"DELETE FROM Store WHERE type = %i AND rowid != %i", 5, v43);
      if (v45)
      {
        CalPerformSQLWithConnection(a2, v45);
        CFRelease(v45);
      }
    }
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (a3 <= 15010)
  {
    v46 = CFStringCreateWithFormat(0, 0, @"UPDATE Store SET persistent_id = '%@' WHERE type = %i;", @"______NativeStorePersistentID_______", 5);
    if (v46)
    {
      CalPerformSQLWithConnection(a2, v46);
      CFRelease(v46);
    }

    goto LABEL_127;
  }

  if (a3 <= 0x4651)
  {
LABEL_127:
    CalMigrationCreateIndexes(a2, &kCalStoreClass, 0, &kCalStoreChangesIndexes);
  }

  v47 = CPRecordStoreGetContext();
  _CalStoreVerifyAndRepairLocalStore(v47, a2);
}

void sub_1DEC4AFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t CalStoreGetPropertyIDWithPropertyName(void *key)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = CalStoreGetPropertyIDWithPropertyName_sPropDict;
  if (!CalStoreGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalStoreGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalStoreGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"UUID";
      v6 = 7;
      v7 = @"externalID";
      v8 = 6;
      v9 = @"title";
      v10 = 0;
      v11 = @"notes";
      v12 = 1;
      v13 = @"defaultAlarmOffset";
      v14 = 2;
      v15 = @"sourceTypeRaw";
      v16 = 3;
      v17 = @"disabled";
      v18 = 5;
      v19 = @"flags";
      v20 = 8;
      v21 = @"flags2";
      v22 = 28;
      v23 = @"creatorBundleID";
      v24 = 13;
      v25 = @"creatorCodeSigningIdentity";
      v26 = 14;
      v27 = @"onlyCreatorCanModify";
      v28 = 15;
      v29 = @"externalModificationTag";
      v30 = 16;
      v31 = @"preferredEventPrivateValueRaw";
      v32 = 18;
      v33 = @"strictestEventPrivateValueRaw";
      v34 = 19;
      v35 = @"constraintsName";
      v36 = 4;
      v37 = @"lastSyncStartDate";
      v38 = 20;
      v39 = @"lastSyncEndDate";
      v40 = 21;
      v41 = @"delegatedAccountOwnerStoreID";
      v42 = 24;
      v43 = @"showsNotifications";
      v44 = 27;
      v45 = @"displayOrder";
      v46 = 29;
      v47 = @"ownerName";
      v48 = 30;
      v49 = @"defaultAllDayAlarmOffset";
      v50 = 31;
      v51 = @"syncError";
      v52 = 33;
      v53 = @"cachedExternalInfoData";
      v54 = 34;
      v55 = @"appGroupIdentifier";
      v56 = 35;
      CalStoreGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 26);
      for (i = 400; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalStoreGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalStoreGetPropertyIDWithPropertyName_sPropDict;
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(v2, key, &value))
  {
    return value;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1DEC4B3D0(_Unwind_Exception *a1)
{
  for (i = 400; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t CalDatabaseCopyStoreChangesInStore(const void *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v4 = CalCopyDatabaseForRecord(a2);
    v5 = v4 + 20;
    os_unfair_lock_lock(v4 + 20);
    v6 = _CalDatabaseCopyClientIdentifier(v4);
    ID = CPRecordGetID();
    v17 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"record = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN     (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN     (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v6, v6, 6, v6);
    CFRelease(v6);
  }

  else
  {
    v4 = CFRetain(a1);
    v5 = v4 + 20;
    os_unfair_lock_lock(v4 + 20);
    v17 = 0;
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(v4, &v17);
  v8 = v17;
  v17 = 0;
  if (!a3)
  {
    v10 = 0;
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v10 = Mutable;
    *a3 = Mutable;
LABEL_8:
    RecordStore = _CalDatabaseGetRecordStore(v4);
    if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    v14 = CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithProperties();
    if (v8)
    {
      CFRelease(v8);
    }

    v15 = v17;
    if (v17)
    {
      if (v10)
      {
        CFDictionaryAddValue(v10, @"ID", v17);
        v15 = v17;
      }

      CFRelease(v15);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v5);
    }

    os_unfair_lock_unlock(v5);
    CFRelease(v4);
    return v14;
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return 0xFFFFFFFFLL;
}

void _CalStoreUpdateAlarmCacheForDefaultAlarmChanges(uint64_t a1, uint64_t a2)
{
  if (CPRecordGetStore())
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      v5 = _CalDatabaseCopyEventOccurrenceCache(Context);
      if (v5)
      {
        v6 = v5;
        _CalEventOccurrenceCacheMarkStoreForDefaultAlarmChanges(v5, a1, a2);

        CFRelease(v6);
      }
    }
  }
}

void _CalStoreDeleteDisabledDelegateData(uint64_t a1)
{
  v2 = CalDatabaseCreateWithOptions(20);
  if (v2)
  {
    v3 = v2;
    v2 = CalDatabaseCopyStoreWithUID(v2, a1);
    if (!v2)
    {
      v7 = v3;
LABEL_14:
      v13 = v2;
      CFRelease(v7);
      v2 = v13;
      goto LABEL_15;
    }

    v4 = v2;
    v5 = CalStoreCopyExternalID(v2);
    if (v5)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.dataaccessd-%@", v5];
      CalDatabaseSetClientIdentifier(v3, v12);
      v6 = CalStoreCopyCalendars(v4);
      v7 = v6;
      if (v6)
      {
        Count = CFArrayGetCount(v6);
        if (Count >= 1)
        {
          v9 = Count;
          for (i = 0; i != v9; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
            CalRemoveCalendar(ValueAtIndex);
          }
        }

        CalStoreSetExternalModificationTag(v4, 0);
        CalStoreSetLastSyncStartTime(v4, 0);
        CalStoreSetLastSyncEndTime(v4, 0);
        CalDatabaseSave(v3);
      }
    }

    else
    {
      v12 = 0;
      v7 = 0;
    }

    CFRelease(v3);
    CFRelease(v4);
    if (v5)
    {
      CFRelease(v5);
    }

    v2 = v12;
    if (v7)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
}

const void *CalDatabaseCopyStoreWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  v4 = _CalDatabaseCopyStoreWithUID(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

uint64_t CalStoreCopyExternalID(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalStoreSetExternalModificationTag(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalStoreSetLastSyncStartTime(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalStoreSetLastSyncEndTime(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL _CalStoreHasDirtyInstanceAttributes(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty() != 0;
}

BOOL _CalStoreHasDirtySyncAttributes(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty() != 0;
}

uint64_t _CalStoreClearDirtyAttributes(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordUnloadProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v3 = CPRecordStoreGetContext();
        if (v3)
        {
          os_unfair_lock_assert_owner(v3 + 20);
        }
      }
    }
  }

  return CPRecordUnloadProperty();
}

uint64_t _CalStoreSaveAddedRecords(uint64_t a1, uint64_t a2)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  CPRecordStoreProcessAddedRecordsOfClassWithPolicyAndTransactionType();
  return 0;
}

uint64_t _CalDatabaseCreateLimitedAccessVirtualStore()
{
  v0 = CPRecordCreateWithRecordID();
  v1 = v0;
  if (CDBLockingAssertionsEnabled == 1 && v0 != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v1 != 0)
  {
    if (CPRecordGetStore())
    {
      v5 = CPRecordStoreGetContext();
      if (v5)
      {
        os_unfair_lock_assert_owner(v5 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v1 != 0)
  {
    if (CPRecordGetStore())
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v1 != 0)
  {
    if (CPRecordGetStore())
    {
      v9 = CPRecordStoreGetContext();
      if (v9)
      {
        os_unfair_lock_assert_owner(v9 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  LimitedAccessVirtualRecordIDForEntity = _CalDatbaseCreateLimitedAccessVirtualRecordIDForEntity(6);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v1)
    {
      if (CPRecordGetStore())
      {
        v11 = CPRecordStoreGetContext();
        if (v11)
        {
          os_unfair_lock_assert_owner(v11 + 20);
        }
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(LimitedAccessVirtualRecordIDForEntity);
  return v1;
}

uint64_t _CalDatabaseGetLimitedAccessVirtualStore(uint64_t a1)
{
  result = *(a1 + 56);
  if (!result)
  {
    result = _CalDatabaseCreateLimitedAccessVirtualStore();
    *(a1 + 56) = result;
  }

  return result;
}

const void *CalDatabaseCopyLimitedAccessVirtualStore(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  LimitedAccessVirtualStore = *(a1 + 56);
  if (LimitedAccessVirtualStore || (LimitedAccessVirtualStore = _CalDatabaseCreateLimitedAccessVirtualStore(), (*(a1 + 56) = LimitedAccessVirtualStore) != 0))
  {
    CFRetain(LimitedAccessVirtualStore);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return LimitedAccessVirtualStore;
}

const void *_CalDatabaseCreateStore(uint64_t a1)
{
  v2 = CPRecordCreate();
  v3 = CFUUIDCreate(0);
  v4 = CFUUIDCreateString(0, v3);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(v4);
  CFRelease(v3);
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 6);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      v9 = CPRecordStoreGetContext();
      if (v9)
      {
        os_unfair_lock_assert_owner(v9 + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  _CalDatabaseAddEntity(a1, v2);
  _CalDatabaseSetChangeFlags(a1, 2);
  v10 = *(a1 + 96);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 96) = 0;
  }

  return v2;
}

const void *CalDatabaseCreateStore(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Store = _CalDatabaseCreateStore(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Store;
}

const void *_CalDatabaseCopyStoreWithUID(uint64_t a1, uint64_t a2)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  InstanceOfClassWithUID = CPRecordStoreGetInstanceOfClassWithUID();
  v6 = InstanceOfClassWithUID;
  if (InstanceOfClassWithUID)
  {
    CFRetain(InstanceOfClassWithUID);
  }

  return v6;
}

const void *CalDatabaseCopyLocalStore(uint64_t a1)
{
  if (*(a1 + 362))
  {
    return 0;
  }

  os_unfair_lock_lock((a1 + 80));
  v1 = _CalDatabaseCopyStoreWithUID(a1, 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  if (!CalStoreGetType(v1))
  {
    return v1;
  }

  CalStoreRepairDefaultLocalStore(a1);
  CFRelease(v1);

  return CalDatabaseCopyStoreWithUID(a1, 1);
}

const void *CalDatabaseCopySubscribedCalendarStoreCore(os_unfair_lock_s *a1, int a2, int a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = CalDatabaseCopyStoresWithExternalID(a1, @"Subscribed Calendars");
  if (v6)
  {
    v7 = v6;
    Count = CFArrayGetCount(v6);
    if (Count < 2)
    {
      if (Count == 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
        if (!ValueAtIndex)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v9 = CFArrayGetCount(v7);
      if (v9 >= 1)
      {
        v10 = v9;
        ValueAtIndex = 0;
        v12 = 0;
        v13 = 0x7FFFFFFF;
        do
        {
          v14 = CFArrayGetValueAtIndex(v7, v12);
          UID = CalStoreGetUID(v14);
          if (UID < v13)
          {
            ValueAtIndex = v14;
            v13 = UID;
          }

          ++v12;
        }

        while (v10 != v12);
        if (ValueAtIndex)
        {
          v16 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            v29 = v10;
            v30 = 1024;
            v31 = v13;
            _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "Found %li subscribed calendar stores. Keeping store with ID %i and deleting the rest.", buf, 0x12u);
          }

          for (i = 0; i != v10; ++i)
          {
            v18 = CFArrayGetValueAtIndex(v7, i);
            if (v18 != ValueAtIndex)
            {
              v19 = v18;
              v20 = CalStoreCopyName(v18);
              v21 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                v22 = v21;
                v23 = CalStoreGetUID(v19);
                *buf = 138412546;
                v29 = v20;
                v30 = 1024;
                v31 = v23;
                _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_DEFAULT, "Deleting duplicate subscribed calendar store: %@ (%i)", buf, 0x12u);
              }

              CalRemoveStore(v19);
            }
          }

          if (a3)
          {
            CalDatabaseSave(a1);
          }

LABEL_23:
          CFRetain(ValueAtIndex);
          goto LABEL_27;
        }
      }

      v24 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_ERROR, "Didn't find any store at all when trying to clean up duplicates.", buf, 2u);
      }
    }

    ValueAtIndex = 0;
LABEL_27:
    CFRelease(v7);
    if (ValueAtIndex)
    {
      return ValueAtIndex;
    }

    goto LABEL_28;
  }

  ValueAtIndex = 0;
LABEL_28:
  if (a2)
  {
    v25 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_DEFAULT, "Subscribed calendar store not found. Creating one now", buf, 2u);
    }

    ValueAtIndex = CalDatabaseCreateStore(a1);
    CalStoreSetExternalID(ValueAtIndex, @"Subscribed Calendars");
    CalStoreSetType(ValueAtIndex, 4u);
    CalStoreSetName(ValueAtIndex, @"Subscribed Calendars");
    if (a3 && (CalDatabaseSave(a1) & 1) == 0)
    {
      v26 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v26, OS_LOG_TYPE_ERROR, "Failed to save database after creating subscribed calendar store", buf, 2u);
      }

      CFRelease(ValueAtIndex);
      return 0;
    }
  }

  return ValueAtIndex;
}

void _CalRemoveStore(uint64_t a1)
{
  DatabaseForRecord = CalGetDatabaseForRecord(a1);
  RecordStore = _CalDatabaseGetRecordStore(DatabaseForRecord);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  CPRecordStoreRemoveRecord();
  _CalDatabaseSetDeletionFlags(DatabaseForRecord, 1);
  _CalDatabaseSetChangeFlags(DatabaseForRecord, 2);
  v5 = *(DatabaseForRecord + 96);
  if (v5)
  {
    CFRelease(v5);
    *(DatabaseForRecord + 96) = 0;
  }
}

void CalRemoveStore(uint64_t a1)
{
  v2 = CalCopyDatabaseForRecord(a1);
  os_unfair_lock_lock(v2 + 20);
  _CalRemoveStore(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v2 + 20);
  }

  os_unfair_lock_unlock(v2 + 20);

  CFRelease(v2);
}

CFTypeRef _CalStoreCopyRelatedEntitiesDeletedByTriggers(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  cf = 0;
  v6 = _CalStoreCopyCalendars(a2);
  if (v6)
  {
    v7 = v6;
    CalDatabaseAddChangesToArray(&cf, v6, a3);
    Count = CFArrayGetCount(v7);
    if (Count)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        v12 = _CalCalendarCopyRelatedEntitiesDeletedByTriggers(a1, ValueAtIndex, a3);
        if (v12)
        {
          v13 = v12;
          CalDatabaseAddChangesToArray(&cf, v12, a3);
          CFRelease(v13);
        }

        else if (*a3 == 1 && cf != 0)
        {
          CFRelease(cf);
          cf = 0;
        }
      }
    }

    CFRelease(v7);
  }

  Error = _CalStoreGetError(a2);
  if (Error)
  {
    CalDatabaseAddChangeToArray(&cf, Error, a3);
  }

  return cf;
}

CFTypeRef _CalStoreGetError(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationGetRelatedObject(result);
  }

  return result;
}

void CalStoreSetName(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyName(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalStoreSetNotes(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyNotes(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalStoreSetDefaultAlarmOffset(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalStoreCopyDefaultAlarmOffset(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordCopyProperty();
}

uint64_t CalStoreCopyDefaultAlarmOffset(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalStoreCopyDefaultAlarmOffset(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalStoreSetDefaultAllDayAlarmOffset(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalStoreCopyDefaultAllDayAlarmOffset(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordCopyProperty();
}

uint64_t CalStoreCopyDefaultAllDayAlarmOffset(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalStoreCopyDefaultAllDayAlarmOffset(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t CalStoreGetDefaultAlarmOffsetNSInteger(uint64_t a1)
{
  v1 = 0x7FFFFFFFFFFFFFFFLL;
  valuePtr = 0x7FFFFFFFFFFFFFFFLL;
  v2 = CalStoreCopyDefaultAlarmOffset(a1);
  if (v2)
  {
    v3 = v2;
    CFNumberGetValue(v2, kCFNumberLongType, &valuePtr);
    CFRelease(v3);
    return valuePtr;
  }

  return v1;
}

uint64_t CalStoreGetDefaultAllDayAlarmOffsetNSInteger(uint64_t a1)
{
  v1 = 0x7FFFFFFFFFFFFFFFLL;
  valuePtr = 0x7FFFFFFFFFFFFFFFLL;
  v2 = CalStoreCopyDefaultAllDayAlarmOffset(a1);
  if (v2)
  {
    v3 = v2;
    CFNumberGetValue(v2, kCFNumberLongType, &valuePtr);
    CFRelease(v3);
    return valuePtr;
  }

  return v1;
}

uint64_t _CalStoreSetType(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordSetProperty();
}

void CalStoreSetType(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetType(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreGetPreferredEventPrivateValue(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Property;
}

void CalStoreSetPreferredEventPrivateValue(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalStoreGetStrictestEventPrivateValue(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

uint64_t _CalStoreSetStrictestEventPrivateValue(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordSetProperty();
}

uint64_t CalStoreGetStrictestEventPrivateValue(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  StrictestEventPrivateValue = _CalStoreGetStrictestEventPrivateValue(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return StrictestEventPrivateValue;
}

void CalStoreSetStrictestEventPrivateValue(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetStrictestEventPrivateValue(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalStoreSetDelegatedAccountOwnerStoreID(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL _CalStoreIsDelegate(uint64_t a1)
{
  v1 = _CalStoreCopyDelegatedAccountOwnerStoreID(a1);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

BOOL CalStoreIsDelegate(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalStoreCopyDelegatedAccountOwnerStoreID(a1);
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4 != 0;
}

void CalStoreSetDelegatedAccountDefaultCalendarForNewEvents(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property)
  {
    CalRelationSetRelatedObject(Property, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalStoreCopyDelegatedAccountDefaultCalendarForNewEvents(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property)
  {
    RelatedObject = CalRelationGetRelatedObject(Property);
    v6 = RelatedObject;
    if (RelatedObject)
    {
      CFRetain(RelatedObject);
    }
  }

  else
  {
    v6 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v6;
}

void *_CalStoreSetError(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalRelationSetRelatedObject(result, a2);
  }

  return result;
}

void CalStoreSetError(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetError(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalStoreCopyError(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Error = _CalStoreGetError(a1);
  if (Error)
  {
    v4 = CFRetain(Error);
  }

  else
  {
    v4 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalStoreGetAppGroupIdentifier(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

CFTypeRef CalStoreCopyAppGroupIdentifier(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  AppGroupIdentifier = _CalStoreGetAppGroupIdentifier(a1);
  if (AppGroupIdentifier)
  {
    v4 = CFRetain(AppGroupIdentifier);
  }

  else
  {
    v4 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalStoreSetEnabled(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalStoreIsEnabled(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IsEnabled = _CalStoreIsEnabled(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsEnabled;
}

void CalStoreSetOnlyCreatorCanModify(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalStoreOnlyCreatorCanModify(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Property != 0;
}

void CalStoreSetShowsNotifications(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalStoreShowsNotifications(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Property != 0;
}

void CalStoreSetDisplayOrder(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreGetDisplayOrder(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Property;
}

void CalStoreSetOwnerName(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyOwnerName(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

id CalStoreCopyCachedExternalInfo(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  if (v4)
  {
    v14 = 0;
    v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v14];
    v6 = v14;
    if (v5)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v5;
LABEL_18:

        goto LABEL_19;
      }

      v9 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v10 = v9;
        v11 = objc_opt_class();
        *buf = 138543362;
        v16 = v11;
        v12 = v11;
        _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_ERROR, "Deserialized data wasn't a dictionary (it was a %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v8 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v6;
        _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_ERROR, "Error deserializing cached external store info: %@", buf, 0xCu);
      }
    }

    v7 = 0;
    goto LABEL_18;
  }

  v7 = 0;
LABEL_19:

  return v7;
}

void CalStoreSetCachedExternalInfo(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v12 = 0;
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:&v12];
    v5 = v12;
    if (!v4)
    {
      v6 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v5;
        _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "Couldn't serialize external info: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v4 = 0;
  }

  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v9 = CPRecordGetProperty();
  v10 = v9;
  if (v4 | v9 && ([v9 isEqual:v4] & 1) == 0)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v11 = CPRecordStoreGetContext();
          if (v11)
          {
            os_unfair_lock_assert_owner(v11 + 20);
          }
        }
      }
    }

    CPRecordSetProperty();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalStoreSetFlags(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalStoreSetFlags2(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalStoreSetFlag(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetFlag(a1, v4, v3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalStoreSetConstraintsName(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 isAbsolutePath])
  {
    v4 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
    {
      v7 = 138543362;
      v8 = v3;
      v5 = "Attempting to set a path (%{public}@) with CalStoreSetConstraintsName. Only the name should be supplied without an extension.";
LABEL_10:
      _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_FAULT, v5, &v7, 0xCu);
    }
  }

  else if ([v3 hasSuffix:@".plist"])
  {
    v4 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
    {
      v7 = 138543362;
      v8 = v3;
      v5 = "Attempting to set a file name with .plist extension (%{public}@) with CalStoreSetConstraintsName. Only the name should be supplied without an extension.";
      goto LABEL_10;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E6992F20] constraintsURLForName:v3];

    if (!v6)
    {
      v4 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
      {
        v7 = 138543362;
        v8 = v3;
        v5 = "Attempting to set an unrecognized constraints name (%{public}@) with CalStoreSetConstraintsName. The given name should be a valid .plist resource in CalendarFoundation.";
        goto LABEL_10;
      }
    }
  }

  CalStoreSetConstraintsNameNoValidation(a1, v3);
}

void CalStoreSetConstraintsNameNoValidation(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v5 = CPRecordStoreGetContext();
        if (v5)
        {
          os_unfair_lock_assert_owner(v5 + 20);
        }
      }
    }
  }

  CPRecordUnloadProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyConstraintsName(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalStoreSetExternalID(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyExternalModificationTag(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalStoreSetCreatorBundleID(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordSetProperty();
}

void CalStoreSetCreatorBundleID(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetCreatorBundleID(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyCreatorBundleID(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalStoreSetCreatorCodeSigningIdentity(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordSetProperty();
}

void CalStoreSetCreatorCodeSigningIdentity(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalStoreSetCreatorCodeSigningIdentity(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyCreatorCodeSigningIdentity(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

const void *CalDatabaseCopyStoreWithExternalID(os_unfair_lock_s *a1, const __CFString *a2)
{
  v2 = CalDatabaseCopyStoresWithExternalID(a1, a2);
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) < 1)
    {
      v6 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "CalDatabaseCopyStoreWithExternalID: no results for query", buf, 2u);
      }

      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, 0);
      CFRetain(ValueAtIndex);
    }

    CFRelease(v3);
  }

  else
  {
    v5 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_ERROR, "CalDatabaseCopyStoreWithExternalID: query resulted in nil results", v8, 2u);
    }

    return 0;
  }

  return ValueAtIndex;
}

uint64_t CalDatabaseCopyStoresWithExternalID(os_unfair_lock_s *a1, const __CFString *a2)
{
  cf = 0;
  if (a2)
  {
    SelectPrefix = CPRecordStoreCreateSelectPrefix();
    if (!SelectPrefix)
    {
      v18 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v18, OS_LOG_TYPE_ERROR, "CalDatabaseCopyStoreWithExternalID: failed to create query", buf, 2u);
      }

      v16 = 0;
      goto LABEL_32;
    }

    v5 = SelectPrefix;
    CFStringAppend(SelectPrefix, @" WHERE external_id = ?;");
    os_unfair_lock_lock(a1 + 20);
    RecordStore = _CalDatabaseGetRecordStore(a1);
    v7 = RecordStore;
    if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    Database = CPRecordStoreGetDatabase();
    if (Database)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(Database + 104))
        {
          v11 = CPRecordStoreGetContext();
          if (v11)
          {
            os_unfair_lock_assert_owner(v11 + 20);
          }
        }
      }

      v12 = CPSqliteDatabaseStatementForReading();
      if (v12)
      {
        v13 = v12;
        CStringFromCFString = CalCreateCStringFromCFString(a2);
        sqlite3_bind_text(*(v13 + 8), 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v7)
          {
            v15 = CPRecordStoreGetContext();
            if (v15)
            {
              os_unfair_lock_assert_owner(v15 + 20);
            }
          }
        }

        v16 = CPRecordStoreProcessStatementWithPropertyIndices();
        goto LABEL_29;
      }
    }

    else
    {
      v19 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_impl(&dword_1DEBB1000, v19, OS_LOG_TYPE_ERROR, "CalDatabaseCopyStoreWithExternalID: failed to get sqlite database", v23, 2u);
      }
    }

    v16 = 0;
LABEL_29:
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(a1 + 20);
    }

    os_unfair_lock_unlock(a1 + 20);
    CFRelease(v5);
LABEL_32:
    if (cf)
    {
      CFRelease(cf);
    }

    return v16;
  }

  v17 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, "CalDatabaseCopyStoreWithExternalID: externalID is nil", v21, 2u);
  }

  return 0;
}

const void *CalDatabaseCopyStoreWithUUID(os_unfair_lock_s *a1, const __CFString *a2)
{
  if (!a2)
  {
    return 0;
  }

  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (!SelectPrefix)
  {
    return 0;
  }

  v5 = SelectPrefix;
  CFStringAppend(SelectPrefix, @" WHERE persistent_id = ?;");
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v7 = RecordStore;
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (!Database)
  {
    goto LABEL_23;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(Database + 104))
    {
      v11 = CPRecordStoreGetContext();
      if (v11)
      {
        os_unfair_lock_assert_owner(v11 + 20);
      }
    }
  }

  v12 = CPSqliteDatabaseStatementForReading();
  if (!v12)
  {
    goto LABEL_23;
  }

  v13 = v12;
  CStringFromCFString = CalCreateCStringFromCFString(a2);
  sqlite3_bind_text(*(v13 + 8), 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v7)
    {
      v15 = CPRecordStoreGetContext();
      if (v15)
      {
        os_unfair_lock_assert_owner(v15 + 20);
      }
    }
  }

  v16 = CPRecordStoreProcessStatementWithPropertyIndices();
  if (v16)
  {
    v17 = v16;
    if (CFArrayGetCount(v16) < 1)
    {
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v17, 0);
      CFRetain(ValueAtIndex);
    }

    CFRelease(v17);
  }

  else
  {
LABEL_23:
    ValueAtIndex = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  CFRelease(v5);
  return ValueAtIndex;
}

void CalStoreSetUUID(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v7 = CPRecordCopyProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v6 = CPRecordStoreGetContext();
        if (v6)
        {
          os_unfair_lock_assert_owner(v6 + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (a2 && v7 && ([v7 isEqualToString:a2] & 1) == 0)
  {
    _CalAttachmentFileMigrateAttachmentsInStoreFromOldPersistentIDToNewPersistentID(a1, v7, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyUUID(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalStoreCopyUUID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordCopyProperty();
}

void CalStoreAddCalendar(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalStoreAddCalendar(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalStoreAddCalendar(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (Property)
  {
    CalToManyRelationAddObject(Property, a2);
  }

  Flag = _CalStoreGetFlag(a1, 32);
  _CalCalendarSetCanBeShared(a2, Flag);

  return _CalCalendarSetCanBePublished(a2, Flag);
}

void *_CalStoreRemoveCalendar(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (result)
  {

    return CalToManyRelationRemoveObject(result, a2);
  }

  return result;
}

void CalStoreRemoveCalendar(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalStoreRemoveCalendar(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalStoreCopyLastSyncStartTime(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t CalStoreCopyLastSyncEndTime(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t CalStoreMigrateToStore(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 == a2 || !a1 || !a2)
  {
    return v2;
  }

  _purgeServerAttachmentsFromCalendarItemsInStore(a1, 0);
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  DatabaseForRecord = CalGetDatabaseForRecord(a1);
  if (!DatabaseForRecord)
  {
    goto LABEL_40;
  }

  v7 = DatabaseForRecord;
  if (!_CalDatabaseGetRecordStore(DatabaseForRecord))
  {
    goto LABEL_40;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (!Database)
  {
    goto LABEL_40;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(Database + 104))
    {
      v10 = CPRecordStoreGetContext();
      if (v10)
      {
        os_unfair_lock_assert_owner(v10 + 20);
      }
    }
  }

  v11 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (!v11)
  {
    goto LABEL_40;
  }

  v12 = v11;
  while (!__CalDatabaseBeginWriteTransaction(v7, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:2865"))
  {
    v13 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_INFO, "database was busy or locked; sleeping for 1 second…", v24, 2u);
    }

    usleep(0x3E8u);
  }

  if (_CalDatabasePrepareCalendarsInStoreForMigration(v7, v12, a1) && _CalDatabasePrepareCalendarItemsInStoreForMigration(v7, v12, a1))
  {
    if (_CalDatabasePrepareAlarmsInStoreForMigration(v7, v12, a1) && _CalDatabasePrepareRecurrencesInStoreForMigration(v7, v12, a1) && _CalDatabasePrepareParticipantsInStoreForMigration(v7, v12, a1) && _CalDatabasePrepareEventActionsInStoreForMigration(v7, v12, a1) && _CalDatabaseMigrateCalendarsWithConnection(v12, a1, a2))
    {
      v14 = _CalDatabaseCopyEventOccurrenceCache(v7);
      if (v14)
      {
        v15 = v14;
        v2 = _CalEventOccurrenceCacheMigrateEventOccurrencesWithConnection(v14, v12, a1, a2);
        CFRelease(v15);
      }

      else
      {
        v2 = 0;
      }

      _CalStoreSetFlag(a2, 8, 1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  if (CPRecordGetID() == 1)
  {
    Store = CPRecordGetStore();
    CalendarWithUID = _CalGetCalendarWithUID(Store, 1);
    if (CalendarWithUID)
    {
      if (_CalDatabaseCalendarHasCalendarItemsWithEntityType(v7, CalendarWithUID, 101))
      {
        CalendarInStoreImmediately = _CalDatabaseCreateCalendarInStoreImmediately(v7, a2, v12);
        if (CalendarInStoreImmediately < 2)
        {
          goto LABEL_39;
        }

        v19 = CalendarInStoreImmediately;
        if (!_CalMoveCalendarItemsFromCalendarWithUIDToCalendarWithUID(v12, 1, CalendarInStoreImmediately))
        {
          goto LABEL_39;
        }

        v20 = _CalDatabaseCopyEventOccurrenceCache(v7);
        if (v20)
        {
          v21 = v20;
          v22 = _CalDatabaseCopyEventOccurrenceCache(v7);
          v2 = _CalEventOccurrenceCacheMigrateEventOccurrencesBetweenCalendars(v22, v12, 1, v19);
          CFRelease(v21);
        }
      }
    }
  }

  if (!v2)
  {
LABEL_39:
    __CalDatabaseRollbackTransaction(v7, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:2937");
LABEL_40:
    v2 = 0;
    goto LABEL_41;
  }

  __CalDatabaseCommitTransaction(v7, "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalStore.m:2929");
  _CalDatabasePostChangeNotificationToExternalClients(v7, 0);
  _CalDatabaseRevertInternal(v7, 1);
LABEL_41:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v2;
}

void _purgeServerAttachmentsFromCalendarItemsInStore(uint64_t a1, int a2)
{
  v4 = CalCopyDatabaseForRecord(a1);
  v5 = CalDatabaseCopyOfAllAttachmentsInStore(v4, a1);
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        v11 = CalAttachmentCopyOwner(ValueAtIndex);
        v12 = v11;
        if (a2)
        {
          v13 = !CalEntityIsOfType(v11, a2);
        }

        else
        {
          v13 = 0;
        }

        if (!CalAttachmentIsBinary(ValueAtIndex) && !v13)
        {
          CalRemoveAttachment(ValueAtIndex);
        }

        if (v12)
        {
          CFRelease(v12);
        }
      }
    }

    CFRelease(v6);
  }

  CalDatabaseSave(v4);
  if (v4)
  {

    CFRelease(v4);
  }
}

BOOL CalDatabaseMigrateCalendarsWithEntityType(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a2 & 0xFFFFFFFE;
  if ((a2 & 0xFFFFFFFE) != 2)
  {
    CalDatabaseMigrateCalendarsWithEntityType_cold_1();
  }

  v8 = 0;
  if (a2 == 2)
  {
    v4 = 3;
  }

  v19 = v4;
  if (a3 != a4 && a1 && a3 && a4)
  {
    v10 = CalDatabaseCopyOfAllCalendarsInStore(a1, a3);
    if (v10)
    {
      v11 = v10;
      Count = CFArrayGetCount(v10);
      v8 = Count == 0;
      _purgeServerAttachmentsFromCalendarItemsInStore(a3, a2);
      if (Count >= 1)
      {
        v8 = 0;
        for (i = 0; Count != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
          if (CalCalendarGetUID(ValueAtIndex) == 1 || !CalCalendarCanContainEntityType(ValueAtIndex, a2))
          {
            continue;
          }

          CanContainEntityType = CalCalendarCanContainEntityType(ValueAtIndex, v19);
          v16 = _CopyMatchingCalendarForMigration(ValueAtIndex, a2, a4);
          v17 = v16;
          if (CanContainEntityType)
          {
            if (!v16)
            {
              v17 = CalDatabaseCopyCalendar(a1, ValueAtIndex);
              CalStoreAddCalendar(a4, v17);
              CalCalendarSetCanContainEntityType(v17, a2);
            }

            _moveCalendarItemsOfTypeIntoCalendar(a1, a2, ValueAtIndex, v17, 0);
            CalCalendarSetCanContainEntityType(ValueAtIndex, v19);
          }

          else
          {
            if (!v16)
            {
              CalStoreRemoveCalendar(a3, ValueAtIndex);
              CalStoreAddCalendar(a4, ValueAtIndex);
              CalCalendarClearExternalProperties(ValueAtIndex, 1);
              goto LABEL_20;
            }

            _moveCalendarItemsOfTypeIntoCalendar(a1, a2, ValueAtIndex, v16, 1);
            CalRemoveCalendar(ValueAtIndex);
          }

          CFRelease(v17);
LABEL_20:
          CalCalendarSetExternalModificationTag(ValueAtIndex, 0);
          CalCalendarSetSyncToken(ValueAtIndex, 0);
          CalCalendarSetIsPublished(ValueAtIndex, 0);
          CalCalendarSetPublishedURL(ValueAtIndex, 0);
          CalCalendarSetSharingStatus(ValueAtIndex, 0);
          v8 = 1;
        }
      }

      if (v8)
      {
        CalStoreSetFlag(a4, 8, 1);
      }

      CFRelease(v11);
    }

    else
    {
      return 1;
    }
  }

  return v8;
}

const void *_CopyMatchingCalendarForMigration(uint64_t a1, int a2, uint64_t a3)
{
  v6 = CalStoreCopyCalendars(a3);
  v7 = v6;
  if (!v6)
  {
    v9 = CalCalendarCopyTitle(a1);
LABEL_14:
    ValueAtIndex = 0;
    v14 = 0;
    if (v9)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  Count = CFArrayGetCount(v6);
  v9 = CalCalendarCopyTitle(a1);
  if (Count < 1)
  {
    goto LABEL_14;
  }

  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, v10);
    v12 = CalCalendarCopyTitle(ValueAtIndex);
    v13 = v12;
    if (v12)
    {
      if (v9)
      {
        break;
      }
    }

    if (v12)
    {
      goto LABEL_10;
    }

LABEL_11:
    if (Count == ++v10)
    {
      goto LABEL_14;
    }
  }

  if (CFStringCompare(v9, v12, 0) || CalCalendarGetCalendarSupportsExactlyOneEntityTypeInStore(a3))
  {
LABEL_10:
    CFRelease(v13);
    goto LABEL_11;
  }

  CanContainEntityType = CalCalendarCanContainEntityType(ValueAtIndex, a2);
  if ((CanContainEntityType & 1) == 0)
  {
    CalCalendarSetCanContainEntityType(ValueAtIndex, 0);
  }

  CFRetain(ValueAtIndex);
  CFRelease(v13);
LABEL_15:
  CFRelease(v9);
  v14 = ValueAtIndex;
LABEL_16:
  if (v7)
  {
    CFRelease(v7);
  }

  return v14;
}

void _moveCalendarItemsOfTypeIntoCalendar(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, const void *a4, int a5)
{
  v7 = a2;
  v8 = CalDatabaseCopyCalendarItemsWithCalendar(a1, a2, a3);
  if (v8)
  {
    v9 = v8;
    Count = CFArrayGetCount(v8);
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
        v14 = ValueAtIndex;
        if (a5)
        {
          if (v7 != 2 || !CalEventIsDetached(ValueAtIndex))
          {
            CopyPreservingUniqueIdentifier = _CalCalendarItemCreateCopyPreservingUniqueIdentifier(v14, 1);
            CalCalendarItemSetExternalID(CopyPreservingUniqueIdentifier, 0);
            CalCalendarAddCalendarItemAndDetached(a4, CopyPreservingUniqueIdentifier);
            CFRelease(CopyPreservingUniqueIdentifier);
          }
        }

        else
        {
          CalCalendarItemClearExternalProperties(ValueAtIndex, 1);
          CalCalendarAddCalendarItemAndDetached(a4, v14);
        }
      }
    }

    CFRelease(v9);
  }
}

uint64_t CalStoreRemoveItemsOfTypeOlderThanDateInStore(uint64_t a1, int a2, uint64_t a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    v6 = CalCopyDatabaseForRecord(a1);
    if (v6)
    {
      v7 = v6;
      os_unfair_lock_lock(v6 + 20);
      v3 = *&v7[6]._os_unfair_lock_opaque;
      if (v3)
      {
        if (CDBLockingAssertionsEnabled == 1)
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }

        Database = CPRecordStoreGetDatabase();
        v3 = Database;
        if (Database)
        {
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*(Database + 104))
            {
              v10 = CPRecordStoreGetContext();
              if (v10)
              {
                os_unfair_lock_assert_owner(v10 + 20);
              }
            }
          }

          v11 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
          if (!v11)
          {
            goto LABEL_67;
          }

          v12 = v11;
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v11)
            {
              if (*(*v11 + 104))
              {
                v13 = CPRecordStoreGetContext();
                if (v13)
                {
                  os_unfair_lock_assert_owner(v13 + 20);
                }
              }
            }
          }

          v14 = CPSqliteConnectionStatementForSQL();
          if (v14)
          {
            v15 = v14;
            if (a2)
            {
              sqlite3_bind_int(*(v14 + 8), 1, a2);
              v16 = 2;
            }

            else
            {
              v16 = 1;
            }

            v17 = v15[1];
            v18 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v17, v16, v18);
            v19 = v15[1];
            ID = CPRecordGetID();
            sqlite3_bind_int(v19, v16 + 1, ID);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v15)
              {
                v21 = **v15;
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

            CPSqliteStatementSendResults();
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v15)
              {
                v23 = **v15;
                if (v23)
                {
                  if (*(v23 + 104))
                  {
                    v24 = CPRecordStoreGetContext();
                    if (v24)
                    {
                      os_unfair_lock_assert_owner(v24 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementReset();
          }

          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v12)
            {
              if (*(*v12 + 104))
              {
                v25 = CPRecordStoreGetContext();
                if (v25)
                {
                  os_unfair_lock_assert_owner(v25 + 20);
                }
              }
            }
          }

          v26 = CPSqliteConnectionStatementForSQL();
          v3 = v26 != 0;
          if (v26)
          {
            v27 = v26;
            if (a2)
            {
              sqlite3_bind_int(*(v26 + 8), 1, a2);
              v28 = 2;
            }

            else
            {
              v28 = 1;
            }

            v29 = v27[1];
            v30 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v29, v28, v30);
            v31 = v27[1];
            v32 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v31, v28 + 1, v32);
            v33 = v27[1];
            v34 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v33, v28 + 2, v34);
            v35 = v27[1];
            v36 = CPRecordGetID();
            sqlite3_bind_int(v35, v28 + 3, v36);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v27)
              {
                v37 = **v27;
                if (v37)
                {
                  if (*(v37 + 104))
                  {
                    v38 = CPRecordStoreGetContext();
                    if (v38)
                    {
                      os_unfair_lock_assert_owner(v38 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementSendResults();
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v27)
              {
                v39 = **v27;
                if (v39)
                {
                  if (*(v39 + 104))
                  {
                    v40 = CPRecordStoreGetContext();
                    if (v40)
                    {
                      os_unfair_lock_assert_owner(v40 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementReset();
          }

          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v12)
            {
              if (*(*v12 + 104))
              {
                v41 = CPRecordStoreGetContext();
                if (v41)
                {
                  os_unfair_lock_assert_owner(v41 + 20);
                }
              }
            }
          }

          v42 = CPSqliteConnectionStatementForSQL();
          if (v42)
          {
            v43 = v42;
            v44 = *(v42 + 8);
            v45 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v44, 1, v45);
            if (a2)
            {
              sqlite3_bind_int(v43[1], 2, a2);
              v46 = 3;
            }

            else
            {
              v46 = 2;
            }

            v47 = v43[1];
            v48 = MEMORY[0x1E12C5EF0](a3);
            sqlite3_bind_double(v47, v46, v48);
            v49 = v43[1];
            v50 = CPRecordGetID();
            sqlite3_bind_int(v49, v46 + 1, v50);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v43)
              {
                v51 = **v43;
                if (v51)
                {
                  if (*(v51 + 104))
                  {
                    v52 = CPRecordStoreGetContext();
                    if (v52)
                    {
                      os_unfair_lock_assert_owner(v52 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementSendResults();
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v43)
              {
                v53 = **v43;
                if (v53)
                {
                  if (*(v53 + 104))
                  {
                    v54 = CPRecordStoreGetContext();
                    if (v54)
                    {
                      os_unfair_lock_assert_owner(v54 + 20);
                    }
                  }
                }
              }
            }

            CPSqliteStatementReset();
          }

          else
          {
LABEL_67:
            v3 = 0;
          }
        }
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }

      os_unfair_lock_unlock(v7 + 20);
      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t _DeleteCalendarItemRowHandler(uint64_t a1, __CFArray **a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  Mutable = *a2;
  if (!*a2)
  {
    Mutable = CFArrayCreateMutable(0, 1, 0);
    *a2 = Mutable;
  }

  CFArrayAppendValue(Mutable, v3);
  return 0;
}

BOOL _CalStoreGetBoolConstraintValue(uint64_t a1, const void *a2, const void *a3, _BOOL8 a4)
{
  v5 = _CalStoreCopyConstraintValue(a1, a2, a3);
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFBooleanGetTypeID())
    {
      a4 = CFBooleanGetValue(v6) != 0;
    }

    CFRelease(v6);
  }

  return a4;
}

const void *_CalStoreCopyConstraintValue(uint64_t a1, const void *a2, const void *a3)
{
  v5 = _CalParticipantCopyPhoneNumber(a1);
  TypeID = CFDictionaryGetTypeID();
  if (!v5)
  {
    return 0;
  }

  v7 = TypeID;
  if (CFGetTypeID(v5) == TypeID && (v8 = CFDictionaryGetValue(v5, a2)) != 0 && (v9 = v8, CFGetTypeID(v8) == v7))
  {
    Value = CFDictionaryGetValue(v9, a3);
    v11 = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v5);
  return v11;
}

BOOL CalStoreGetSupportsIncomingInvitations(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsIncomingInvitations", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL _CalStoreGetBoolConstraintValueForStore(uint64_t a1, const void *a2, _BOOL8 a3)
{
  v5 = _CalParticipantCopyPhoneNumber(a1);
  TypeID = CFDictionaryGetTypeID();
  if (v5)
  {
    v7 = TypeID;
    if (CFGetTypeID(v5) == TypeID && (Value = CFDictionaryGetValue(v5, @"CalStore")) != 0 && (v9 = Value, CFGetTypeID(Value) == v7) && (v10 = CFDictionaryGetValue(v9, a2)) != 0)
    {
      v11 = v10;
      CFRetain(v10);
      CFRelease(v5);
      v12 = CFGetTypeID(v11);
      if (v12 == CFBooleanGetTypeID())
      {
        a3 = CFBooleanGetValue(v11) != 0;
      }
    }

    else
    {
      v11 = v5;
    }

    CFRelease(v11);
  }

  return a3;
}

BOOL CalStoreGetSupportsInvitationModifications(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsInvitationModifications", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreGetSupportsOutgoingInvitations(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsOutgoingInvitations", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

uint64_t CalStoreAllowsTasks(uint64_t a1)
{
  if (CalIsReminderBridgeEnabled())
  {
    return 0;
  }

  return CalStoreAllowsTasksPrivate(a1);
}

uint64_t CalStoreAllowsTasksPrivate(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Flag = _CalStoreGetFlag(a1, 1);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v5 = CPRecordGetProperty() == 3 || Flag;
  if (v5)
  {
    goto LABEL_12;
  }

  v6 = _CalStoreCopyDelegatedAccountOwnerStoreID(a1);
  if (v6)
  {
    CFRelease(v6);
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v7 = 1;
LABEL_13:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v7;
}

void CalStoreSetAllowsTasks(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (CalIsReminderBridgeEnabled())
    {
      v3 = CDBLogHandle;
      v4 = 1;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        v5 = v3;
        v6 = CalStoreCopyExternalID(a1);
        v7[0] = 67109378;
        v7[1] = 1;
        v8 = 2114;
        v9 = v6;
        _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_INFO, "Ignoring attempt to set allowsTasks to %d on store %{public}@. Forcing to NO", v7, 0x12u);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  CalStoreSetFlag(a1, 1, v4);
}

BOOL _CalStoreAllowedEvents(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return (CPRecordGetOriginalProperty() & 2) == 0;
}

BOOL CalStoreRecurrenceSeriesMustIncludeMoreThanFirstOccurrence(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"RecurrenceSeriesMustIncludeMoreThanFirstOccurrence", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreSupportsStructuredLocations(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsStructuredLocations", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreSupportsReminderActions(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsReminderActions", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreSupportsReminderLocations(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsReminderLocations", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreSupportsAlarmProximity(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsAlarmProximity", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreGetFlag2(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return (Property & a2) != 0;
}

void CalStoreSetFlag2(uint64_t a1, int a2, int a3)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (a3)
  {
    v9 = Property | a2;
  }

  else
  {
    v9 = Property & ~a2;
  }

  if (v9 != Property)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }
    }

    CPRecordSetProperty();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalStoreSupportsAutoGeocodingStructuredLocations(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalStoreGetBoolConstraintValueForStore(a1, @"SupportsAutoGeocodingStructuredLocations", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreSupportsDelegation(uint64_t a1)
{
  result = CalStoreGetFlag(a1, 0x20000000);
  if (result)
  {
    return !CalStoreGetFlag(a1, 2);
  }

  return result;
}

BOOL CalStoreSupportsDelegateEnumeration(uint64_t a1)
{
  result = CalStoreGetFlag(a1, 0x40000000);
  if (result)
  {
    return !CalStoreGetFlag(a1, 2);
  }

  return result;
}

BOOL CalStoreRequiresSeparateFilesForAllAttachments(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalAttachment", @"RequiresSeparateFilesForAllAttachments", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalStoreRequiresMSFormattedUIDKey(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"RequiresMSFormattedUID", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetStatusIsAccurateInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"StatusIsAccurate", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventRequiresOutgoingInvitationsInDefaultCalendarInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"RequiresOutgoingInvitationsInDefaultCalendar", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetDeliverySourceOrExternalIDRequiredForResponseInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"ResponseRequiresDeliverySourceOrExternalID", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetProposedStatusRequiredForResponseInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"ResponseRequiresProposedStatus", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetRejectedStatusChangeRequiresNoExternalStatusInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"RejectedStatusChangeRequiresNoExternalStatus", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventDurationConstrainedToRecurrenceIntervalInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"DurationConstrainedToRecurrenceInterval", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetOccurrencesMustOccurOnSeparateDaysInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"OccurrencesMustOccurOnSeparateDays", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetFutureStartDateLimitedToOccurrenceCacheBoundsInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"FutureStartLimitedToOccurrenceCache", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

uint64_t CalCalendarItemGetAvailabilitySupportedByStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (_CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"SupportsLimitedAvailability", 0))
  {
    BoolConstraintValue = 2;
  }

  else
  {
    BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"SupportsAvailability", 0);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventCancelDeletedEventsInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"CancelDeletedEvents", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventDeclineDeletedInvitationsInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"DeclineDeletedInvitations", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventURLFieldSupportedInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"SupportsURL", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventGetOccurrenceOrderEnforcedAfterDetachmentInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"OccurrenceOrderEnforcedAfterDetachment", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalStoreSupportsAlarmTriggerKey(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v5 = _CalStoreSupportsAlarmTriggerKey(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

BOOL _CalStoreSupportsAlarmTriggerKey(uint64_t a1, const void *a2)
{
  v3 = _CalAlarmCopyConstraintsForStore(a1);
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  Value = CFDictionaryGetValue(v3, @"SupportedTriggers");
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFArrayGetTypeID()))
  {
    v10.length = CFArrayGetCount(v6);
    v10.location = 0;
    v8 = CFArrayContainsValue(v6, v10, a2) != 0;
  }

  else
  {
    v8 = 1;
  }

  CFRelease(v4);
  return v8;
}

BOOL CalStoreSupportsAlarmsTriggeringAfterStartDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAlarmCopyConstraintsForStore(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  if (!v3)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(v3, @"SupportsAlarmsTriggeringAfterStartDate");
  v7 = !Value || (v5 = Value, v6 = CFGetTypeID(Value), v6 != CFBooleanGetTypeID()) || CFBooleanGetValue(v5) != 0;
  CFRelease(v3);
  return v7;
}

uint64_t _CalStoreGetIntConstraintValue(uint64_t a1, const void *a2, const void *a3)
{
  v3 = 0xFFFFFFFFLL;
  valuePtr = -1;
  v4 = _CalStoreCopyConstraintValue(a1, a2, a3);
  if (v4)
  {
    v5 = v4;
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    }

    CFRelease(v5);
    return valuePtr;
  }

  return v3;
}

uint64_t CalStoreGetMaxAlarmsSupported(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IntConstraintValue = _CalStoreGetIntConstraintValue(a1, @"CalEvent", @"MaximumNumberOfAlarms");
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntConstraintValue;
}

uint64_t CalStoreGetMaxRecurrencesSupported(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IntConstraintValue = _CalStoreGetIntConstraintValue(a1, @"CalEvent", @"MaximumNumberOfRecurrences");
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntConstraintValue;
}

uint64_t CalStoreSupportsRecurrencesOnDetachedEvents(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return 0;
}

BOOL CalStoreAreRecurrencesPinnedToMonthDays(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"RecurrencesPinnedToMonthDays", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalStoreMustAcknowledgeMasterEvent(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"MustAcknowledgeMasterEvent", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL _CalAttendeeGetBoolConstraintValueForStore(uint64_t a1, const void *a2, _BOOL8 a3)
{
  v5 = _CalParticipantCopyPhoneNumber(a1);
  TypeID = CFDictionaryGetTypeID();
  if (v5)
  {
    v7 = TypeID;
    if (CFGetTypeID(v5) == TypeID && (Value = CFDictionaryGetValue(v5, @"CalAttendee")) != 0 && (v9 = Value, CFGetTypeID(Value) == v7) && (v10 = CFDictionaryGetValue(v9, a2)) != 0)
    {
      v11 = v10;
      CFRetain(v10);
      CFRelease(v5);
      v12 = CFGetTypeID(v11);
      if (v12 == CFBooleanGetTypeID())
      {
        a3 = CFBooleanGetValue(v11) != 0;
      }
    }

    else
    {
      v11 = v5;
    }

    CFRelease(v11);
  }

  return a3;
}

BOOL CalAttendeeGetUseDeletedByOrganizerStatusInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalAttendeeGetBoolConstraintValueForStore(a1, @"UseDeletedByOrganizerStatus", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalStoreAttendeeCanUpdateLastModified(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalAttendee", @"CanUpdateLastModified", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalEventResponseCommentsSupportedInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalEvent", @"SupportsResponseComment", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

BOOL CalAttendeeIsStatusKnownForOrganizedEventsInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalAttendeeGetBoolConstraintValueForStore(a1, @"StatusIsKnownForOrganizedEvents", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalAttendeeIsStatusKnownForInvitedEventsInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalAttendeeGetBoolConstraintValueForStore(a1, @"StatusIsKnownForInvitedEvents", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalAttendeeRequireSearchInSingleAccountInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValueForStore = _CalAttendeeGetBoolConstraintValueForStore(a1, @"RequireAttendeeSearchInSingleAccount", 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValueForStore;
}

BOOL CalTaskAllDayDueDatesSupportedInStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  BoolConstraintValue = _CalStoreGetBoolConstraintValue(a1, @"CalTask", @"supportsAllDayDueDates", 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return BoolConstraintValue;
}

uint64_t _CalStoreSaveAddedCalendars(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  if (!Property)
  {
    CPRecordGetID();
    if (!a1)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v5 = Property;
  Count = CFArrayGetCount(Property);
  ID = CPRecordGetID();
  if (Count >= 1)
  {
    v8 = ID;
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
      _CalCalendarSetStoreId(ValueAtIndex, v8);
    }
  }

  if (a1)
  {
LABEL_13:
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v11 = CPRecordStoreGetContext();
        if (v11)
        {
          os_unfair_lock_assert_owner(v11 + 20);
        }
      }
    }
  }

LABEL_17:

  return CPRecordInitializeProperty();
}

void _CalStoreLoadConstraints(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v4 = CPRecordCopyProperty();
  if (!v4)
  {
    v7 = 0;
    if (!a1)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  v5 = [MEMORY[0x1E6992F20] constraintsURLForName:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5];
    if (v6)
    {
      v13 = 0;
      v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:&v13];
      v8 = v13;
      if (!v7)
      {
        v9 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543618;
          v15 = v5;
          v16 = 2112;
          v17 = v8;
          _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_FAULT, "Failed to load constraints plist (%{public}@): %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v11 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v15 = v5;
        _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_FAULT, "Failed to load constraints data (%{public}@)", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v15 = v4;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_FAULT, "Failed to get URL for stored constraints name: %{public}@", buf, 0xCu);
    }

    v7 = 0;
  }

  if (a1)
  {
LABEL_23:
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v12 = CPRecordStoreGetContext();
        if (v12)
        {
          os_unfair_lock_assert_owner(v12 + 20);
        }
      }
    }
  }

LABEL_27:
  CPRecordInitializeProperty();
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _CalStoreDefaultMarkAlarmChange(uint64_t a1, uint64_t a2)
{
  _CalStoreDefaultAlarmChanges(a1);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordSetProperty();
}

uint64_t _CalStoreDefaultAlarmChanges(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

uint64_t _CalStoreSetFlag(uint64_t a1, int a2, int a3)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  result = CPRecordGetProperty();
  if (a3)
  {
    v8 = result | a2;
  }

  else
  {
    v8 = result & ~a2;
  }

  if (v8 != result)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v9 = CPRecordStoreGetContext();
          if (v9)
          {
            os_unfair_lock_assert_owner(v9 + 20);
          }
        }
      }
    }

    return CPRecordSetProperty();
  }

  return result;
}

const void *_CalAlarmCopyConstraintsForStore(uint64_t a1)
{
  v1 = _CalParticipantCopyPhoneNumber(a1);
  TypeID = CFDictionaryGetTypeID();
  if (!v1)
  {
    return 0;
  }

  v3 = TypeID;
  if (CFGetTypeID(v1) != TypeID)
  {
    goto LABEL_6;
  }

  Value = CFDictionaryGetValue(v1, @"CalAlarm");
  v5 = Value;
  if (Value)
  {
    if (CFGetTypeID(Value) == v3)
    {
      CFRetain(v5);
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:
  CFRelease(v1);
  return v5;
}

void sub_1DEC535A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CalEventUpdateFromICSEventWithOptions(void *a1, void *a2, const void *a3, uint64_t a4, os_unfair_lock_s *a5, uint64_t a6, void *a7, void *a8, unsigned __int8 a9)
{
  v208 = *MEMORY[0x1E69E9840];
  v16 = a1;
  v17 = a2;
  v18 = a7;
  v19 = a8;
  if (v16)
  {
    if (a3)
    {
      v20 = [v16 isAllDay];
      IsAllDay = CalCalendarItemIsAllDay(a3);
      if (v19 && v20 != IsAllDay)
      {
        [v19 addObject:II_ALL_DAY_KEY];
      }

      CalCalendarItemSetAllDay(a3, v20);
      started = _CalOriginalStartDateFromICSComponent(v16, v17);
      CalEventSetOriginalStartDate(a3, started);
      v23 = [v16 recurrence_id];

      v177 = a6;
      if (v23)
      {
        v24 = a4;
      }

      else
      {
        v24 = a3;
      }

      v28 = CalEventCopyAttendees(v24);
      v170 = a5;
      v176 = v18;
      v171 = v19;
      v179 = a3;
      v167 = v28;
      if ([(__CFArray *)v28 count])
      {
        v29 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[__CFArray count](v28, "count")}];
        v193 = 0u;
        v194 = 0u;
        v195 = 0u;
        v196 = 0u;
        v30 = v28;
        v31 = [(__CFArray *)v30 countByEnumeratingWithState:&v193 objects:v207 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v194;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v194 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = CalAttendeeCopyAddress(*(*(&v193 + 1) + 8 * i));
              if (v35)
              {
                [v29 addObject:v35];
              }
            }

            v32 = [(__CFArray *)v30 countByEnumeratingWithState:&v193 objects:v207 count:16];
          }

          while (v32);
        }

        v19 = v171;
        a3 = v179;
      }

      else
      {
        v29 = 0;
      }

      v36 = MEMORY[0x1E695DF20];
      v37 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
      v38 = [v36 dictionaryWithObject:v37 forKey:@"ItemBridgeOptions"];

      v165 = v38;
      v18 = v176;
      v166 = CalCalendarItemUpdateFromICSComponent(a3, a4, v16, v17, v170, v38, v176, v19, a9);
      if ((v166 & 1) == 0)
      {
        v45 = CDBiCalendarConversionHandle;
        if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1DEBB1000, v45, OS_LOG_TYPE_DEBUG, "CalCalendarItemUpdateFromICSComponent failed", buf, 2u);
        }

LABEL_159:

        v26 = v166;
        goto LABEL_160;
      }

      v39 = v16;
      v160 = v17;
      v40 = [v39 isAllDay];
      v41 = [v39 dtend];

      v178 = v39;
      if (v41)
      {
        v42 = [v39 dtend];
        v43 = v42;
        if (v40)
        {
          v44 = CalDateFromICSDateAsUTC(v42) + -1.0;
        }

        else
        {
          v49 = [v42 hasFloatingTimeZone];

          v50 = [v39 dtend];
          v43 = v50;
          if (!v49)
          {
            v44 = CalDateFromICSDate(v50, v160);

            v99 = [v39 dtend];
            CalCreateDateTimeFromICSDate(v99, v160);
            v101 = v100;

            if (CFStringCompare(v101, @"_float", 0))
            {
              v102 = CFTimeZoneCreateWithName(0, v101, 1u);
              CalCalendarItemSetEndTimeZone(a3, v102);
              if (v102)
              {
                CFRelease(v102);
              }
            }

            else
            {
              CalCalendarItemSetEndTimeZone(a3, 0);
            }

            CalDateTimeRelease();
            v39 = v178;
LABEL_41:
            EndDate = CalEventGetEndDate(a3);
            CalEventSetEndDate(a3, v44);

            if (v19 && EndDate != v44)
            {
              [v19 addObject:II_TO_KEY];
            }

            Availability = CalEventGetAvailability(a3);
            v56 = [v39 transp] == 2;
            if (Availability != v56)
            {
              CalEventSetAvailability(a3, v56);
            }

            v156 = [v39 x_calendarserver_private_comment];
            CalEventSetResponseComment(a3, v156);
            v159 = [v39 x_calendarserver_attendee_comment];
            v168 = CalEventCopyAttendees(a3);
            v157 = v17;
            v158 = v16;
            if (v168)
            {
              v57 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v159, "count")}];
              v189 = 0u;
              v190 = 0u;
              v191 = 0u;
              v192 = 0u;
              v58 = v159;
              v59 = [v58 countByEnumeratingWithState:&v189 objects:v206 count:16];
              v60 = v168;
              if (v59)
              {
                v61 = v59;
                v62 = *v190;
                do
                {
                  for (j = 0; j != v61; ++j)
                  {
                    if (*v190 != v62)
                    {
                      objc_enumerationMutation(v58);
                    }

                    v64 = *(*(&v189 + 1) + 8 * j);
                    v65 = [v64 x_calendarserver_attendee_ref];
                    if (v65)
                    {
                      v66 = v65;
                      v67 = [v64 value];

                      if (v67)
                      {
                        v68 = [v64 x_calendarserver_attendee_ref];
                        [v57 setObject:v64 forKeyedSubscript:v68];
                      }
                    }
                  }

                  v61 = [v58 countByEnumeratingWithState:&v189 objects:v206 count:16];
                }

                while (v61);
              }

              v69 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
              v70 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
              Count = CFArrayGetCount(v168);
              if (Count >= 1)
              {
                v72 = Count;
                v161 = v70;
                v163 = v69;
                v154 = 0;
                v73 = 0;
                v74 = *MEMORY[0x1E6993100];
                a3 = v179;
                v174 = Count;
                while (1)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v60, v73);
                  if (ValueAtIndex)
                  {
                    break;
                  }

LABEL_75:
                  if (v72 == ++v73)
                  {
                    CFRelease(v60);

                    v39 = v178;
                    if (v154)
                    {
                      goto LABEL_82;
                    }

                    goto LABEL_79;
                  }
                }

                v76 = ValueAtIndex;
                v77 = CalAttendeeCopyAddress(ValueAtIndex);
                v78 = v77;
                if (!v77)
                {
LABEL_74:

                  goto LABEL_75;
                }

                v181 = [v77 absoluteString];
                v183 = CalAttendeeCopyResponseComment(v76);
                v79 = [v57 objectForKeyedSubscript:v181];
                v80 = [v79 x_calendarserver_dtstamp];
                v81 = v74;
                if (v80)
                {
                  v82 = NSDateFromICSValueInTimeZone();
                  [v82 timeIntervalSinceReferenceDate];
                  v81 = v83;
                }

                CalParticipantSetCommentLastModified(v76, v81);
                v84 = [v79 value];
                if (CalEqualStrings())
                {
LABEL_73:

                  a3 = v179;
                  v72 = v174;
                  goto LABEL_74;
                }

                CalAttendeeSetResponseComment(v76, v84);
                v85 = [v29 containsObject:v78];
                v86 = [v183 CalStringByRemovingAutoComment];
                v87 = [v84 CalStringByRemovingAutoComment];
                v88 = 0;
                v172 = v87;
                if (v85 && v87)
                {
                  if ([v87 length])
                  {
                    if ((CalEqualStrings() & 1) != 0 || CalAttendeeGetType(v76) == 2)
                    {
                      goto LABEL_72;
                    }

                    v88 = 1;
                    v154 = 1;
                  }

                  else
                  {
                    v88 = 0;
                  }
                }

                CalParticipantSetCommentChanged(v76, v88);
LABEL_72:

                v60 = v168;
                goto LABEL_73;
              }

              CFRelease(v168);

              v39 = v178;
              a3 = v179;
            }

LABEL_79:
            InvitationChangedProperties = CalEventGetInvitationChangedProperties(a3);
            CalEventRemoveInvitationChangedProperties(a3, 16);
            v90 = CalEventGetInvitationChangedProperties(a3);
            if (InvitationChangedProperties && !v90)
            {
              CalEventSetNeedsNotification(a3, 0);
            }

LABEL_82:
            v91 = [v39 x_apple_travel_duration];
            v92 = [v91 duration];
            v173 = v92;
            if (v92)
            {
              [v92 timeInterval];
              v93 = [MEMORY[0x1E696AD98] numberWithDouble:?];
            }

            else
            {
              v93 = 0;
            }

            v94 = CalEventCopyTravelTime(a3);
            v95 = v94;
            if (!v94 && v93 || v94 && ([v94 isEqual:v93] & 1) == 0)
            {
              CalEventSetTravelTime(a3, v93);
            }

            v164 = [v39 x_apple_travel_advisory_behavior];
            v96 = [v164 value];
            v97 = v96;
            v175 = v91;
            if (v96 && [v96 length])
            {
              if ([v97 isEqualToString:*MEMORY[0x1E69E3C30]])
              {
                v98 = 2;
                goto LABEL_101;
              }

              if ([v97 isEqualToString:*MEMORY[0x1E69E3C38]])
              {
                v98 = 1;
                goto LABEL_101;
              }

              [v97 isEqualToString:*MEMORY[0x1E69E3C28]];
            }

            v98 = 0;
LABEL_101:
            v169 = v93;
            CalEventSetTravelAdvisoryBehavior(a3, v98);
            v103 = [v39 x_apple_suggestionInfoOpaqueKey];
            v104 = v39;
            v105 = [v39 x_apple_suggestionInfoUniqueKey];
            v106 = v105;
            v182 = v95;
            v184 = v103;
            v162 = v97;
            if (v103 && v105)
            {
              SuggestedEventInfo = CalEventCopySuggestedEventInfo(a3);
              v108 = CDBiCalendarConversionHandle;
              v109 = os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG);
              if (SuggestedEventInfo)
              {
                if (v109)
                {
                  *buf = 136315906;
                  v199 = "BOOL CalEventUpdateFromICSEventWithOptions(ICSEvent *__strong, ICSCalendar *__strong, CalEventRef, CalEventRef, CalDatabaseRef, NSUInteger, __strong id<CDBAccountInfo>, NSMutableSet *__strong, BOOL)";
                  v200 = 2112;
                  v201 = SuggestedEventInfo;
                  v202 = 2112;
                  v203 = a3;
                  v204 = 2112;
                  v205 = v178;
                  _os_log_impl(&dword_1DEBB1000, v108, OS_LOG_TYPE_DEBUG, "%s - Existing suggested event info %@ found for calEvent %@ and icsEvent %@", buf, 0x2Au);
                }
              }

              else
              {
                if (v109)
                {
                  *buf = 136315650;
                  v199 = "BOOL CalEventUpdateFromICSEventWithOptions(ICSEvent *__strong, ICSCalendar *__strong, CalEventRef, CalEventRef, CalDatabaseRef, NSUInteger, __strong id<CDBAccountInfo>, NSMutableSet *__strong, BOOL)";
                  v200 = 2112;
                  v201 = a3;
                  v202 = 2112;
                  v203 = v178;
                  _os_log_impl(&dword_1DEBB1000, v108, OS_LOG_TYPE_DEBUG, "%s - No existing suggested event info for calEvent %@ and icsEvent %@, creating one", buf, 0x20u);
                }

                SuggestedEventInfo = CalDatabaseCreateSuggestedEventInfo(v170);
                CalEventSetSuggestedEventInfo(a3, SuggestedEventInfo);
              }

              v110 = CalSuggestedEventInfoCopyOpaqueKey(SuggestedEventInfo);
              if (([v110 isEqualToString:v184] & 1) == 0)
              {
                CalSuggestedEventInfoSetOpaqueKey(SuggestedEventInfo, v184);
              }

              v111 = CalSuggestedEventInfoCopyUniqueKey(SuggestedEventInfo);
              if (([v111 isEqualToString:v106] & 1) == 0)
              {
                CalSuggestedEventInfoSetUniqueKey(SuggestedEventInfo, v106);
              }

              ChangedFields = CalSuggestedEventInfoGetChangedFields(SuggestedEventInfo);
              v113 = [v178 x_apple_suggestionInfoChangedFields];
              if (ChangedFields != v113)
              {
                CalSuggestedEventInfoSetChangedFields(SuggestedEventInfo, v113);
              }

              v114 = v106;
              ChangesAcknowledged = CalSuggestedEventInfoGetChangesAcknowledged(SuggestedEventInfo);
              v116 = [v178 x_apple_suggestionInfoChangesAcknowledged];
              if (ChangesAcknowledged != v116)
              {
                CalSuggestedEventInfoSetChangesAcknowledged(SuggestedEventInfo, v116);
              }

              v117 = [v178 x_apple_suggestionInfoTimestamp];
              v118 = [v160 systemDateForDate:v117 options:1];

              v119 = CalSuggestedEventInfoGetTimestamp(SuggestedEventInfo);
              if (([v119 isEqualToDate:v118] & 1) == 0)
              {
                CalSuggestedEventInfoSetTimestamp(SuggestedEventInfo, v118);
              }

              CFRelease(SuggestedEventInfo);

              v104 = v178;
              v106 = v114;
              v95 = v182;
            }

            v155 = v106;
            v187 = 0u;
            v188 = 0u;
            v185 = 0u;
            v186 = 0u;
            v120 = [v104 relatedTo];
            v121 = [v120 countByEnumeratingWithState:&v185 objects:v197 count:16];
            if (v121)
            {
              v122 = v121;
              v123 = *v186;
              v124 = *MEMORY[0x1E69E3FB0];
              while (2)
              {
                for (k = 0; k != v122; ++k)
                {
                  if (*v186 != v123)
                  {
                    objc_enumerationMutation(v120);
                  }

                  v126 = *(*(&v185 + 1) + 8 * k);
                  v127 = [v126 parameterValueForName:v124];
                  v128 = v127;
                  if (v127 && [v127 longValue] == 1)
                  {
                    v129 = [v126 value];

                    goto LABEL_132;
                  }
                }

                v122 = [v120 countByEnumeratingWithState:&v185 objects:v197 count:16];
                if (v122)
                {
                  continue;
                }

                break;
              }

              v129 = 0;
LABEL_132:
              a3 = v179;
              v95 = v182;
            }

            else
            {
              v129 = 0;
            }

            v130 = CalEventCopyRecurrenceSet(a3);
            if ((CalEqualStrings() & 1) == 0)
            {
              CalEventSetRecurrenceSet(a3, v129);
            }

            if ((*&v177 & 0x800000) != 0)
            {
              v131 = [v178 x_apple_etag];
              CalEventSetExternalModificationTag(a3, v131);

              v132 = [v178 x_apple_scheduletag];
              CalEventSetExternalScheduleID(a3, v132);
            }

            if ((v177 & 2) != 0)
            {
              v133 = CalEventCopyCalendar(a3);
              if (v133)
              {
                v134 = v133;
                CalCalendarItemSetupOrganizerAndSelfAttendeeForImportedItem(a3, v133, v176);
                CFRelease(v134);
              }

              else
              {
                v135 = CDBiCalendarConversionHandle;
                if (os_log_type_enabled(v135, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1DEBB1000, v135, OS_LOG_TYPE_DEBUG, "No calendar; skipping setting self attendee and organizer properties during iMIP import", buf, 2u);
                }
              }

              IsPhantomMaster = CalCalendarItemIsPhantomMaster(a3);
              IsNew = CalEntityIsNew(a3);
              IsInvite = CalEventIsInvite(a3);
              v139 = CalCalendarItemCopySelfAttendee(a3);
              if (v139)
              {
                CFRelease(v139);
                if (!IsPhantomMaster && IsNew && IsInvite)
                {
                  v140 = CalCalendarItemCopyOrganizer(a3);
                  if (v140)
                  {
                    v141 = v140;
                    CalParticipantSetScheduleAgent(v140, 1u);
                    CFRelease(v141);
                  }
                }
              }
            }

            v142 = [v178 x_apple_special_day];
            if (v142)
            {
              CalEventSetSpecialDayString(a3, v142);
            }

            v143 = [v178 x_apple_creator_identity];
            if (v143)
            {
              CalEventSetCreatorIdentityString(a3, v143);
            }

            v144 = [v178 x_apple_creator_team_identity];
            if (v144)
            {
              CalEventSetCreatorTeamIdentityString(a3, v144);
            }

            if ((*&v177 & 0x800000) != 0)
            {
              v145 = [v178 x_apple_ews_itemid];

              if (v145)
              {
                v146 = [v178 x_apple_ews_itemid];
                [v178 x_apple_ews_changekey];
                v180 = v129;
                v147 = v130;
                v149 = v148 = v95;
                v150 = [v178 x_apple_ews_permission];
                v151 = a3;
                v152 = v150;
                CalSetEWSComponentsOnCalCalendarItem(v151, v146, v149, v150);

                v95 = v148;
                v130 = v147;
                v129 = v180;
              }
            }

            v17 = v157;
            v16 = v158;
            v18 = v176;
            v19 = v171;
            goto LABEL_159;
          }

          v44 = CalDateFromICSDateAsUTC(v50);
        }
      }

      else if (v40)
      {
        v46 = [v39 duration];
        [v46 timeInterval];
        v48 = v47 + -1.0;

        if (v48 < 0.0)
        {
          v48 = 0.0;
        }

        v43 = [v39 dtstart];
        v44 = v48 + CalDateFromICSDateAsUTC(v43);
      }

      else
      {
        v43 = [v39 dtstart];
        v51 = CalDateFromICSDate(v43, v160);
        v52 = [v39 duration];
        [v52 timeInterval];
        v44 = v51 + v53;
      }

      goto LABEL_41;
    }

    v27 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v27, OS_LOG_TYPE_DEBUG, "Cannot update a NULL Cal event", buf, 2u);
    }

    v26 = 0;
  }

  else
  {
    v25 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_DEBUG, "icsEvent is nil. There's nothing for us to do", buf, 2u);
    }

    v26 = 1;
  }

LABEL_160:

  return v26;
}

id ICSEventFromCalEventFixUpCalEventWithOptions(id a1, int a2, unint64_t a3)
{
  v3 = a1;
  v120 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69E3CC0]);
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v7 = CalEventCopyDetachedEvents(v3);
    v115 = v6;
    if (v7)
    {
      v8 = v7;
      if (CFArrayGetCount(v7))
      {
        Count = CFArrayGetCount(v8);
        if (Count >= 1)
        {
          v10 = Count;
          for (i = 0; i != v10; ++i)
          {
            v12 = MEMORY[0x1E695DF00];
            ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
            v14 = [v12 dateWithTimeIntervalSinceReferenceDate:CalEventGetOriginalStartDate(ValueAtIndex)];
            [v6 addObject:v14];
          }
        }
      }

      [v5 setObject:v6 forKey:@"ItemBridgeExceptionDates"];
      CFRelease(v8);
    }

    else
    {
      [v5 setObject:v6 forKey:@"ItemBridgeExceptionDates"];
    }

    CalEventCopyStartDate(v3);
    IsAllDay = CalEventIsAllDay(v3);
    v16 = [MEMORY[0x1E696AD98] numberWithBool:IsAllDay];
    [v5 setObject:v16 forKey:@"ItemBridgeIsAllDay"];

    v17 = CalEventCopyOriginalEvent(v3);
    v18 = v17;
    v116 = v5;
    if (v17)
    {
      UID = CalEventGetUID(v17);
      if (UID != CalEventGetUID(v3))
      {
        v20 = CalEventIsAllDay(v18);
        v21 = 0;
LABEL_14:
        started = CalCalendarItemCopyStartTimeZone(v3);
        v23 = started;
        cf = v18;
        if (IsAllDay)
        {

          v23 = 0;
        }

        else if (started)
        {
          [v116 setObject:started forKey:@"ItemBridgeStartDateTimezone"];
        }

        EndDate = CalEventGetEndDate(v3);
        v25 = CalCalendarItemCopyEndTimeZone(v3);
        v111 = v25;
        if (IsAllDay)
        {
          v26 = CFDateCreate(0, EndDate + 1.0);
          ICSFloatingDateOnlyFromCFDate(v26, v25);
        }

        else
        {
          v26 = CFDateCreate(0, EndDate);
          ICSDateFromCFDate(v26, v25);
        }
        v27 = ;
        if (v26)
        {
          CFRelease(v26);
        }

        [v4 setDtend:v27];
        OriginalStartDate = CalEventGetOriginalStartDate(v3);
        v29 = CFDateCreate(0, OriginalStartDate);
        if (fabs(OriginalStartDate) >= 2.22044605e-16 && vabdd_f64(OriginalStartDate, *MEMORY[0x1E6993100]) >= 2.22044605e-16)
        {
          v30 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134217984;
            v119 = OriginalStartDate;
            _os_log_impl(&dword_1DEBB1000, v30, OS_LOG_TYPE_DEBUG, "Setting a recurrence_id based on %f", buf, 0xCu);
          }

          if (v20)
          {
            ICSFloatingDateOnlyFromCFDate(v29, v23);
          }

          else
          {
            ICSDateFromCFDate(v29, v23);
          }
          v31 = ;
          [v4 setRecurrence_id:v31];
        }

        v112 = v23;
        if (v29)
        {
          CFRelease(v29);
        }

        CalDateTimeRelease();
        v32 = v116;
        v33 = a3;
        if ((CalCalendarItemUpdateICSComponent(v3, v4, v116, a3) & 1) == 0)
        {
          v37 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            v38 = v37;
            v39 = CalEventGetUID(v3);
            *buf = 67109120;
            LODWORD(v119) = v39;
            _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_DEBUG, "Couldn't update the calendar item components of event %d", buf, 8u);
          }

          if ((v21 & 1) == 0)
          {
            CFRelease(cf);
          }

          v3 = 0;
          v40 = v115;
          v41 = v111;
          goto LABEL_103;
        }

        [v4 setX_apple_needs_reply:CalEventShouldDisplayNotification(v3)];
        if (CalCalendarItemGetAvailability(v3) == 1)
        {
          v34 = 2;
        }

        else
        {
          v34 = 1;
        }

        [v4 setTransp:v34];
        v35 = CalEventCopyUniqueIdentifier(v3);
        if (v35)
        {
          v36 = v35;
          if (v21)
          {
            [v4 setUid:v36];
          }

          else
          {
            v44 = CalEventCopyUniqueIdentifier(cf);
            [v4 setUid:v44];
            if (a2)
            {
              v45 = CalGetRealUIDFromRecurrenceUID(v36);
              if (CFStringCompare(v45, v44, 0))
              {
                v46 = CalGetRecurrenceUIDFromRealUID(v44, OriginalStartDate);
                CalEventSetUniqueIdentifier(v3, v46);
              }
            }

            if (v44)
            {
              CFRelease(v44);
            }
          }

          CFRelease(v36);
          goto LABEL_64;
        }

        if (v21)
        {
          v36 = [MEMORY[0x1E69E3C80] makeUID];
          [v4 setUid:v36];
          v42 = CDBiCalendarConversionHandle;
          if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_62;
          }

          *buf = 138412290;
          v119 = *&v36;
          v43 = "This event has no original event. Creating a new uid %@";
        }

        else
        {
          v47 = CalEventCopyUniqueIdentifier(cf);
          if (v47)
          {
            v48 = v47;
            v49 = CDBiCalendarConversionHandle;
            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v119 = *&v48;
              _os_log_impl(&dword_1DEBB1000, v49, OS_LOG_TYPE_DEBUG, "Using uid from owning event: %@", buf, 0xCu);
            }

            [v4 setUid:v48];
            v36 = CalGetRecurrenceUIDFromRealUID(v48, OriginalStartDate);
            CFRelease(v48);
            goto LABEL_62;
          }

          v36 = [MEMORY[0x1E69E3C80] makeUID];
          [v4 setUid:v36];
          v42 = CDBiCalendarConversionHandle;
          if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
LABEL_62:
            if (a2)
            {
              CalEventSetUniqueIdentifier(v3, v36);
            }

LABEL_64:

            if ((v21 & 1) == 0)
            {
              CFRelease(cf);
            }

            v40 = v115;
            if ((a3 & 0x41000) == 0)
            {
              v50 = CalEventCopyResponseComment(v3);
              if (v50)
              {
                [v4 setX_calendarserver_private_comment:v50];
              }
            }

            v51 = CalEventCopyTravelTime(v3);
            v52 = v51;
            if (v51)
            {
              v53 = [v51 integerValue];
              if (v53 < 1)
              {
                [v4 setX_apple_travel_duration:0];
              }

              else
              {
                v54 = v53;
                v55 = objc_alloc_init(MEMORY[0x1E69E3D00]);
                v56 = [objc_alloc(MEMORY[0x1E69E3CB8]) initWithWeeks:0 days:0 hours:0 minutes:0 seconds:v54];
                [v55 setDuration:v56];
                [v4 setX_apple_travel_duration:v55];
              }
            }

            TravelAdvisoryBehavior = CalEventGetTravelAdvisoryBehavior(v3);
            v108 = v52;
            if (TravelAdvisoryBehavior == 1)
            {
              v58 = MEMORY[0x1E69E3C38];
            }

            else
            {
              if (TravelAdvisoryBehavior != 2)
              {
                goto LABEL_80;
              }

              v58 = MEMORY[0x1E69E3C30];
            }

            v59 = *v58;
            if (v59)
            {
              v106 = v59;
              v60 = [objc_alloc(MEMORY[0x1E69E3CF8]) initWithString:v59];
              [v4 setX_apple_travel_advisory_behavior:v60];

LABEL_81:
              v61 = CalEventCopySuggestedEventInfo(v3);
              cfa = v27;
              if (v61)
              {
                v62 = v61;
                v63 = CalSuggestedEventInfoCopyOpaqueKey(v61);
                v64 = CalSuggestedEventInfoCopyUniqueKey(v62);
                v65 = CalSuggestedEventInfoGetTimestamp(v62);
                [v4 setX_apple_suggestionInfoOpaqueKey:v63];
                [v4 setX_apple_suggestionInfoUniqueKey:v64];
                [v4 setX_apple_suggestionInfoChangesAcknowledged:CalSuggestedEventInfoGetChangesAcknowledged(v62)];
                [v4 setX_apple_suggestionInfoChangedFields:CalSuggestedEventInfoGetChangedFields(v62)];
                if (v65)
                {
                  v66 = [MEMORY[0x1E695DEE8] currentCalendar];
                  [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
                  v67 = v104 = v63;
                  [v66 setTimeZone:v67];

                  [v66 components:252 fromDate:v65];
                  v68 = v102 = v65;
                  v101 = objc_alloc(MEMORY[0x1E69E3C90]);
                  v100 = [v68 year];
                  v99 = [v68 month];
                  v69 = [v68 day];
                  v70 = [v68 hour];
                  v71 = [v68 minute];
                  v72 = [v68 second];
                  [v66 timeZone];
                  v73 = v103 = v64;
                  v74 = v70;
                  v40 = v115;
                  v75 = [v101 initWithYear:v100 month:v99 day:v69 hour:v74 minute:v71 second:v72 timeZone:v73];
                  [v4 setX_apple_suggestionInfoTimestamp:v75];

                  v63 = v104;
                  v64 = v103;

                  v65 = v102;
                  v33 = a3;
                }

                CFRelease(v62);
              }

              v76 = CalEventCopySpecialDayString(v3);
              [v4 setX_apple_special_day:v76];
              v77 = CalEventCopyCreatorIdentityString(v3);
              [v4 setX_apple_creator_identity:v77];
              v78 = CalEventCopyCreatorTeamIdentityString(v3);
              [v4 setX_apple_creator_team_identity:v78];
              v114 = v77;
              if ((v33 & 0x40000) == 0)
              {
                v79 = CalCalendarItemCopyAttendees(v3);
                if (v79)
                {
                  v80 = v79;
                  v105 = v76;
                  v81 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  v82 = CFArrayGetCount(v80);
                  if (v82 >= 1)
                  {
                    v83 = v82;
                    for (j = 0; j != v83; ++j)
                    {
                      v85 = CFArrayGetValueAtIndex(v80, j);
                      v86 = ICSUserAddressFromCalAttendee(v85);
                      v87 = ICSAttendeeCommentFromCalAttendee(v85, v86);
                      if (v87)
                      {
                        [v81 addObject:v87];
                      }
                    }
                  }

                  if ([v81 count])
                  {
                    [v4 setX_calendarserver_attendee_comment:v81];
                  }

                  CFRelease(v80);

                  v77 = v114;
                  v40 = v115;
                  v76 = v105;
                }
              }

              v88 = CalEventCopyRecurrenceSet(v3);
              if (v88)
              {
                v89 = [objc_alloc(MEMORY[0x1E69E3CD0]) initWithValue:v88 type:5007];
                v90 = [MEMORY[0x1E69E3CE0] relationshipParameterFromCode:1];
                [v89 setParameterValue:v90 forName:*MEMORY[0x1E69E3FB0]];
                v91 = [v4 relatedTo];
                v92 = v91;
                if (v91)
                {
                  v93 = [v91 arrayByAddingObject:v89];
                }

                else
                {
                  v117 = v89;
                  v93 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v117 count:1];
                }

                v94 = v93;
                [v4 setRelatedTo:v93];

                v77 = v114;
                v40 = v115;
              }

              v95 = CalCalendarItemCopyExternalRepresentation(v3);
              if (v95)
              {
                [CalItemMetadata metadataWithData:v95];
                v97 = v96 = v76;
                [v97 applyToComponent:v4];

                v76 = v96;
              }

              v3 = v4;

              v32 = v116;
              v27 = cfa;
              v41 = v111;
LABEL_103:

              goto LABEL_104;
            }

LABEL_80:
            v106 = 0;
            goto LABEL_81;
          }

          *buf = 138412290;
          v119 = *&v36;
          v43 = "Owning event had no uid. Creating a new one: %@";
        }

        _os_log_impl(&dword_1DEBB1000, v42, OS_LOG_TYPE_DEBUG, v43, buf, 0xCu);
        goto LABEL_62;
      }

      CFRelease(v18);
      v18 = 0;
    }

    v20 = 0;
    v21 = 1;
    goto LABEL_14;
  }

LABEL_104:

  return v3;
}

void sub_1DEC55D44(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = [v2 logHandle];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(CalExchangeCalendarExternalRepresentation *)v3 dictionaryWithExternalRepresentationData:v4, v5, v6, v7, v8, v9, v10];
    }

    objc_end_catch();
    JUMPOUT(0x1DEC55CF8);
  }

  _Unwind_Resume(exception_object);
}

void _CalSaveLazyString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E695E480];
  v6 = *CPRecordGetClass();
  PropertyDescriptor = CPRecordGetPropertyDescriptor();
  v8 = CFStringCreateWithFormat(v5, 0, @"UPDATE %s SET %s = ? WHERE ROWID = ?", v6, *PropertyDescriptor);
  if (a3)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a3)
      {
        if (*(*a3 + 104))
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }
  }

  v10 = CPSqliteConnectionStatementForSQL();
  if (v10)
  {
    v11 = v10;
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }
    }

    Property = CPRecordGetProperty();
    if (Property && (v14 = Property, Length = CFStringGetLength(Property), Length >= 1))
    {
      v16 = Length;
      usedBufLen = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v17 = malloc_type_malloc(usedBufLen + 1, 0x33E1A653uLL);
      v25.location = 0;
      v25.length = v16;
      CFStringGetBytes(v14, v25, 0x8000100u, 0, 0, v17, usedBufLen, &usedBufLen);
      v17[usedBufLen] = 0;
      sqlite3_bind_text(v11[1], 1, v17, -1, MEMORY[0x1E69E9B38]);
    }

    else
    {
      sqlite3_bind_null(v11[1], 1);
    }

    v18 = v11[1];
    ID = CPRecordGetID();
    sqlite3_bind_int(v18, 2, ID);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v11)
      {
        v20 = **v11;
        if (v20)
        {
          if (*(v20 + 104))
          {
            v21 = CPRecordStoreGetContext();
            if (v21)
            {
              os_unfair_lock_assert_owner(v21 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementPerform();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v11)
      {
        v22 = **v11;
        if (v22)
        {
          if (*(v22 + 104))
          {
            v23 = CPRecordStoreGetContext();
            if (v23)
            {
              os_unfair_lock_assert_owner(v23 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  if (v8)
  {
    CFRelease(v8);
  }
}

void _CalSaveLazyData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E695E480];
  v6 = *CPRecordGetClass();
  PropertyDescriptor = CPRecordGetPropertyDescriptor();
  v8 = CFStringCreateWithFormat(v5, 0, @"UPDATE %s SET %s = ? WHERE ROWID = ?", v6, *PropertyDescriptor);
  if (a3)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a3)
      {
        if (*(*a3 + 104))
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }
  }

  v10 = CPSqliteConnectionStatementForSQL();
  if (v10)
  {
    v11 = v10;
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }
    }

    Property = CPRecordGetProperty();
    if (Property && (v14 = Property, Length = CFDataGetLength(Property), (Length - 1) <= 0x7FFFFFFE))
    {
      v16 = Length;
      BytePtr = CFDataGetBytePtr(v14);
      sqlite3_bind_blob(v11[1], 1, BytePtr, v16, 0);
    }

    else
    {
      sqlite3_bind_null(v11[1], 1);
    }

    v18 = v11[1];
    ID = CPRecordGetID();
    sqlite3_bind_int(v18, 2, ID);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v11)
      {
        v20 = **v11;
        if (v20)
        {
          if (*(v20 + 104))
          {
            v21 = CPRecordStoreGetContext();
            if (v21)
            {
              os_unfair_lock_assert_owner(v21 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementPerform();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v11)
      {
        v22 = **v11;
        if (v22)
        {
          if (*(v22 + 104))
          {
            v23 = CPRecordStoreGetContext();
            if (v23)
            {
              os_unfair_lock_assert_owner(v23 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  if (v8)
  {

    CFRelease(v8);
  }
}

BOOL locationInverseRelationShouldChange(uint64_t a1, const void *a2, int a3)
{
  Owner = CalRelationGetOwner(a1);
  result = _CalEntityIsOfType(a2, 2);
  if (result)
  {
    StartLocation = 0;
    if (a3 > 102)
    {
      if (a3 == 103)
      {
        StartLocation = _CalCalendarItemGetStartLocation(a2);
      }

      else if (a3 == 104)
      {
        StartLocation = _CalCalendarItemGetEndLocation(a2);
      }
    }

    else if (a3 == 101)
    {
      StartLocation = _CalCalendarItemGetLocation(a2);
    }

    else if (a3 == 102)
    {
      StartLocation = _CalCalendarItemGetClientLocation(a2);
    }

    return StartLocation && StartLocation == Owner;
  }

  return result;
}

void _CalLocationPrepareForSave(uint64_t a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  Property = CPRecordGetProperty();
  CalRelationOwnerWillSave(Property);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v4 = CPRecordStoreGetContext();
        if (v4)
        {
          os_unfair_lock_assert_owner(v4 + 20);
        }
      }
    }
  }

  v5 = CPRecordGetProperty();
  CalRelationOwnerWillSave(v5);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v6 = CPRecordStoreGetContext();
        if (v6)
        {
          os_unfair_lock_assert_owner(v6 + 20);
        }
      }
    }
  }

  v7 = CPRecordGetProperty();
  CalRelationOwnerWillSave(v7);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v8 = CPRecordStoreGetContext();
        if (v8)
        {
          os_unfair_lock_assert_owner(v8 + 20);
        }
      }
    }
  }

  v9 = CPRecordGetProperty();
  CalRelationOwnerWillSave(v9);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v10 = CPRecordStoreGetContext();
        if (v10)
        {
          os_unfair_lock_assert_owner(v10 + 20);
        }
      }
    }
  }

  v11 = CPRecordGetProperty();
  CalRelationOwnerWillSave(v11);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v12 = CPRecordStoreGetContext();
        if (v12)
        {
          os_unfair_lock_assert_owner(v12 + 20);
        }
      }
    }
  }

  v13 = CPRecordGetProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v14 = CPRecordStoreGetContext();
        if (v14)
        {
          os_unfair_lock_assert_owner(v14 + 20);
        }
      }
    }
  }

  v15 = CPRecordGetProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v16 = CPRecordStoreGetContext();
        if (v16)
        {
          os_unfair_lock_assert_owner(v16 + 20);
        }
      }
    }
  }

  v17 = CPRecordGetProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v18 = CPRecordStoreGetContext();
        if (v18)
        {
          os_unfair_lock_assert_owner(v18 + 20);
        }
      }
    }
  }

  v19 = CPRecordGetProperty();
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v20 = CPRecordStoreGetContext();
        if (v20)
        {
          os_unfair_lock_assert_owner(v20 + 20);
        }
      }
    }
  }

  v21 = CPRecordGetProperty();
  ID = CPRecordGetID();
  if (ID >= 1 && v13 <= 0 && v15 <= 0 && v17 <= 0 && v19 <= 0 && v21 <= 0)
  {
    v23 = ID;
    v24 = CDBLogHandle;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v25 = CPRecordStoreGetContext();
            if (v25)
            {
              os_unfair_lock_assert_owner(v25 + 20);
            }
          }
        }
      }

      OriginalProperty = CPRecordGetOriginalProperty();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v26 = CPRecordStoreGetContext();
            if (v26)
            {
              os_unfair_lock_assert_owner(v26 + 20);
            }
          }
        }
      }

      v30 = CPRecordGetOriginalProperty();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            v27 = CPRecordStoreGetContext();
            if (v27)
            {
              os_unfair_lock_assert_owner(v27 + 20);
            }
          }
        }
      }

      v28 = CPRecordGetOriginalProperty();
      if (a1 && (CDBLockingAssertionsEnabled & 1) != 0 && CPRecordGetStore())
      {
        v29 = CPRecordStoreGetContext();
        if (v29)
        {
          os_unfair_lock_assert_owner(v29 + 20);
        }
      }

      *buf = 67111424;
      v33 = v23;
      v34 = 1024;
      v35 = v13;
      v36 = 1024;
      v37 = v15;
      v38 = 1024;
      v39 = v17;
      v40 = 1024;
      v41 = v19;
      v42 = 1024;
      v43 = v21;
      v44 = 1024;
      v45 = OriginalProperty;
      v46 = 1024;
      v47 = v30;
      v48 = 1024;
      v49 = v28;
      v50 = 1024;
      v51 = CPRecordGetOriginalProperty();
      _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_ERROR, "Location is being saved with no valid inverse relationship. location id = %i; alarm_owner_id = %i; item_owner_id = %i; start_location_owner_id = %i; end_location_owner_id = %i; client_location_owner_id = %i; previous alarm_owner_id = %i; previous location_owner_id = %i; previous start_location_owner_id = %i; previous client_location_owner_id = %i;", buf, 0x3Eu);
    }
  }
}

uint64_t _CalLocationPropertyDidChange(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (a2 > 9)
  {
    goto LABEL_36;
  }

  result = _CalLocationGetOwner(result);
  if (!result)
  {
    goto LABEL_36;
  }

  v4 = result;
  if (_CalEntityIsOfType(result, 4))
  {
    if (CDBLockingAssertionsEnabled != 1)
    {
      goto LABEL_29;
    }

    if (!CPRecordGetStore())
    {
      goto LABEL_29;
    }

    Context = CPRecordStoreGetContext();
    if (!Context)
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (!_CalEntityIsOfType(v4, 101))
  {
    goto LABEL_30;
  }

  ID = CPRecordGetID();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (CPRecordGetStore())
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  Property = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (CPRecordGetStore())
    {
      v9 = CPRecordStoreGetContext();
      if (v9)
      {
        os_unfair_lock_assert_owner(v9 + 20);
      }
    }
  }

  v10 = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (CPRecordGetStore())
    {
      v11 = CPRecordStoreGetContext();
      if (v11)
      {
        os_unfair_lock_assert_owner(v11 + 20);
      }
    }
  }

  v12 = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (CPRecordGetStore())
    {
      v13 = CPRecordStoreGetContext();
      if (v13)
      {
        os_unfair_lock_assert_owner(v13 + 20);
      }
    }
  }

  v14 = CPRecordGetProperty();
  if (ID == Property)
  {
    if (CDBLockingAssertionsEnabled != 1)
    {
      goto LABEL_29;
    }

    if (!CPRecordGetStore())
    {
      goto LABEL_29;
    }

    Context = CPRecordStoreGetContext();
    if (!Context)
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (ID == v10)
  {
    if (CDBLockingAssertionsEnabled != 1)
    {
      goto LABEL_29;
    }

    if (!CPRecordGetStore())
    {
      goto LABEL_29;
    }

    Context = CPRecordStoreGetContext();
    if (!Context)
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (ID == v12)
  {
    if (CDBLockingAssertionsEnabled != 1)
    {
      goto LABEL_29;
    }

    if (!CPRecordGetStore())
    {
      goto LABEL_29;
    }

    Context = CPRecordStoreGetContext();
    if (!Context)
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (ID == v14)
  {
    if (CDBLockingAssertionsEnabled != 1)
    {
      goto LABEL_29;
    }

    if (!CPRecordGetStore())
    {
      goto LABEL_29;
    }

    Context = CPRecordStoreGetContext();
    if (!Context)
    {
      goto LABEL_29;
    }

LABEL_7:
    os_unfair_lock_assert_owner(Context + 20);
LABEL_29:
    CPRecordMarkPropertyChanged();
  }

LABEL_30:
  result = _CalEntityIsNew(v4);
  if ((result & 1) == 0)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (CPRecordGetStore())
      {
        v15 = CPRecordStoreGetContext();
        if (v15)
        {
          os_unfair_lock_assert_owner(v15 + 20);
        }
      }
    }

    result = CPRecordMarkChanged();
  }

LABEL_36:
  if (a2 <= 8 && ((1 << a2) & 0x15C) != 0)
  {
    DatabaseForRecord = CalGetDatabaseForRecord(v3);

    return _CalDatabaseSetChangeFlags(DatabaseForRecord, 8);
  }

  return result;
}

void CalLocationInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalLocationClass, &kCalLocationIndexes, 0);
}

void CalLocationMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 > 62)
  {
    if (a3 > 0x3EE6)
    {
      return;
    }

    CalMigrateTableFull(a2, &kCalLocationClass, 0, &kCalLocationPropertyDBVersions, 0, &kCalLocationIndexes, 0, 0, a3);
    if (a3 > 0x2EE6)
    {
      return;
    }
  }

  else
  {
    CPRecordStoreCreateTablesForClass();
    CalMigrationCreateIndexes(a2, &kCalLocationClass, &kCalLocationIndexes, 0);
  }

  CalPerformSQLWithConnection(a2, @"UPDATE Location SET start_loc_owner_id = item_owner_id, item_owner_id = NULL WHERE rowid in (SELECT location.rowid FROM location INNER JOIN calendaritem ON calendaritem.start_location_id=location.rowid);");

  CalPerformSQLWithConnection(a2, @"UPDATE Location SET client_loc_owner_id = item_owner_id, item_owner_id = NULL WHERE rowid in (SELECT location.rowid FROM location INNER JOIN calendaritem ON calendaritem.client_location_id=location.rowid);");
}

CFTypeRef _CalLocationHasValidParent(uint64_t a1)
{
  result = _CalLocationGetOwner(a1);
  if (result)
  {

    return _CalRecordStillExists(result);
  }

  return result;
}

void _CalLocationCleanUpDanglingEntities(uint64_t a1, void *a2)
{
  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM Location WHERE item_owner_id > 0 AND item_owner_id NOT IN (SELECT ROWID FROM CalendarItem);", 0);
  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM Location WHERE alarm_owner_id > 0 AND alarm_owner_id NOT IN (SELECT ROWID FROM Alarm);", 0);
  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM Location WHERE start_loc_owner_id > 0 AND start_loc_owner_id NOT IN (SELECT ROWID FROM CalendarItem);", 0);
  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM Location WHERE end_loc_owner_id > 0 AND end_loc_owner_id NOT IN (SELECT ROWID FROM CalendarItem);", 0);

  CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM Location WHERE client_loc_owner_id > 0 AND client_loc_owner_id NOT IN (SELECT ROWID FROM CalendarItem);", 0);
}

uint64_t CalLocationGetPropertyIDWithPropertyName(void *key)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = CalLocationGetPropertyIDWithPropertyName_sPropDict;
  if (!CalLocationGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalLocationGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalLocationGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"title";
      v6 = 0;
      v7 = @"address";
      v8 = 1;
      v9 = @"latitude";
      v10 = 2;
      v11 = @"longitude";
      v12 = 3;
      v13 = @"referenceFrame";
      v14 = 4;
      v15 = @"contactLabel";
      v16 = 5;
      v17 = @"mapKitHandle";
      v18 = 6;
      v19 = @"radius";
      v20 = 7;
      v21 = @"routing";
      v22 = 8;
      v23 = @"derivedFrom";
      v24 = 9;
      v25 = @"calendarItemOwner";
      v26 = 15;
      v27 = @"alarmOwner";
      v28 = 16;
      CalLocationGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 12);
      for (i = 176; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalLocationGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalLocationGetPropertyIDWithPropertyName_sPropDict;
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(v2, key, &value))
  {
    return value;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_1DEC58CDC(_Unwind_Exception *a1)
{
  for (i = 176; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t _CalLocationGetRecordID(uint64_t a1)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  return CPRecordGetProperty();
}

const void *_CalDatabaseCreateLocation(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 14);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateLocation(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Location = _CalDatabaseCreateLocation(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Location;
}

const void *_CalLocationCopy(uint64_t a1, uint64_t a2)
{
  Location = _CalDatabaseCreateLocation(a1);
  v4 = Location;
  if (CDBLockingAssertionsEnabled == 1 && Location != 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v7 = CPRecordStoreGetContext();
        if (v7)
        {
          os_unfair_lock_assert_owner(v7 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
  {
    if (CPRecordGetStore())
    {
      v9 = CPRecordStoreGetContext();
      if (v9)
      {
        os_unfair_lock_assert_owner(v9 + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v10 = CPRecordStoreGetContext();
        if (v10)
        {
          os_unfair_lock_assert_owner(v10 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
  {
    if (CPRecordGetStore())
    {
      v12 = CPRecordStoreGetContext();
      if (v12)
      {
        os_unfair_lock_assert_owner(v12 + 20);
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v13 = CPRecordStoreGetContext();
        if (v13)
        {
          os_unfair_lock_assert_owner(v13 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v14 = CPRecordStoreGetContext();
        if (v14)
        {
          os_unfair_lock_assert_owner(v14 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v15 = CPRecordStoreGetContext();
        if (v15)
        {
          os_unfair_lock_assert_owner(v15 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v16 = CPRecordStoreGetContext();
        if (v16)
        {
          os_unfair_lock_assert_owner(v16 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v17 = CPRecordStoreGetContext();
        if (v17)
        {
          os_unfair_lock_assert_owner(v17 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v18 = CPRecordStoreGetContext();
        if (v18)
        {
          os_unfair_lock_assert_owner(v18 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v19 = CPRecordStoreGetContext();
        if (v19)
        {
          os_unfair_lock_assert_owner(v19 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v20 = CPRecordStoreGetContext();
        if (v20)
        {
          os_unfair_lock_assert_owner(v20 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v21 = CPRecordStoreGetContext();
        if (v21)
        {
          os_unfair_lock_assert_owner(v21 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v22 = CPRecordStoreGetContext();
        if (v22)
        {
          os_unfair_lock_assert_owner(v22 + 20);
        }
      }
    }
  }

  v23 = CPRecordCopyProperty();
  if (v23)
  {
    v24 = v23;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v4)
      {
        if (CPRecordGetStore())
        {
          v25 = CPRecordStoreGetContext();
          if (v25)
          {
            os_unfair_lock_assert_owner(v25 + 20);
          }
        }
      }
    }

    CPRecordSetProperty();
    CFRelease(v24);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v26 = CPRecordStoreGetContext();
        if (v26)
        {
          os_unfair_lock_assert_owner(v26 + 20);
        }
      }
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v27 = CPRecordStoreGetContext();
        if (v27)
        {
          os_unfair_lock_assert_owner(v27 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  return v4;
}