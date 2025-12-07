void *_CalRemoveLocation(const void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  Owner = _CalLocationGetOwner(a1);
  if (Owner)
  {
    v3 = Owner;
    if (_CalEntityIsOfType(Owner, 101))
    {
      ID = CPRecordGetID();
      if (CDBLockingAssertionsEnabled == 1)
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

      Property = CPRecordGetProperty();
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

      v8 = CPRecordGetProperty();
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
      if (ID == Property)
      {

        return _CalCalendarItemSetLocation(v3, 0);
      }

      else if (ID == v8)
      {

        return _CalCalendarItemSetClientLocation(v3, 0);
      }

      else if (ID == v10)
      {

        return _CalCalendarItemSetStartLocation(v3, 0);
      }

      else if (ID == v12)
      {

        return _CalCalendarItemSetEndLocation(v3, 0);
      }

      else
      {
        v15 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          v16 = v15;
          v18[0] = 67109376;
          v18[1] = CPRecordGetID();
          v19 = 1024;
          v20 = CPRecordGetID();
          _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "Location to be removed (%i) has an owner of calendar item %i, but that calendar item doesn't reference that location.", v18, 0xEu);
        }

        DatabaseForRecord = CalGetDatabaseForRecord(a1);
        return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
      }
    }

    else
    {

      return _CalAlarmSetLocation(v3, 0);
    }
  }

  else
  {
    v14 = CalGetDatabaseForRecord(a1);

    return _CalDatabaseRemoveEntity(v14, a1);
  }
}

void CalRemoveLocation(const void *a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRemoveLocation(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalLocationSetTitle(uint64_t a1, uint64_t a2)
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
  _CalLocationInvaliateOwnerDetectedConferenceURL(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalLocationInvaliateOwnerDetectedConferenceURL(uint64_t a1)
{
  result = _CalLocationGetOwner(a1);
  if (result)
  {
    v2 = result;
    result = _CalEntityIsOfType(result, 101);
    if (result)
    {

      return _CalEventInvalidateDetectedConferenceURL(v2);
    }
  }

  return result;
}

uint64_t CalLocationCopyTitle(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalEventCopySummary(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalLocationSetAddress(uint64_t a1, uint64_t a2)
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
  _CalLocationInvaliateOwnerDetectedConferenceURL(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalLocationCopyAddress(uint64_t a1)
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

uint64_t CalLocationCopyAddress(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalLocationCopyAddress(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

CFTypeRef _CalLocationCopyFullDisplayString(uint64_t a1)
{
  if (a1)
  {
    v2 = _CalEventCopySummary(a1);
    v3 = _CalLocationCopyAddress(a1);
    v4 = [MEMORY[0x1E6992FD8] fullDisplayStringWithTitle:v2 address:v3];
    if (v4)
    {
      v5 = CFRetain(v4);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "NULL 'location' given.  Will not return a full display string.", v8, 2u);
    }

    return 0;
  }

  return v5;
}

CFTypeRef CalLocationCopyFullDisplayString(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalLocationCopyFullDisplayString(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalLocationSetRouting(uint64_t a1, uint64_t a2)
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

uint64_t CalLocationCopyRouting(uint64_t a1)
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

void CalLocationSetCoordinates(uint64_t a1, CFNumberRef a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = CFNumberCreate(0, kCFNumberDoubleType, a2);
    a2 = CFNumberCreate(0, kCFNumberDoubleType, a2 + 8);
    v6 = v5 == 0;
    if (v6 == (a2 != 0))
    {
      if (!v5)
      {
        goto LABEL_18;
      }

LABEL_17:
      CFRelease(v5);
      goto LABEL_18;
    }
  }

  else
  {
    v5 = 0;
    LOBYTE(v6) = 1;
  }

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
        v8 = CPRecordStoreGetContext();
        if (v8)
        {
          os_unfair_lock_assert_owner(v8 + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (!v6)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (a2)
  {
    CFRelease(a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalLocationHasCoordinates(uint64_t a1)
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

  v6 = CPRecordGetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  if (Property)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  os_unfair_lock_unlock(RecordLock);
  return v8;
}

uint64_t CalLocationGetCoordinates(uint64_t a1, uint64_t a2)
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
  if (a1)
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

  v8 = CPRecordGetProperty();
  if (Property)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9 || a2 == 0;
  v11 = !v10;
  if (!v10)
  {
    v12 = v8;
    CFNumberGetValue(Property, kCFNumberDoubleType, a2);
    CFNumberGetValue(v12, kCFNumberDoubleType, (a2 + 8));
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v11;
}

void CalLocationSetReferenceFrame(uint64_t a1, uint64_t a2)
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

uint64_t CalLocationCopyReferenceFrame(uint64_t a1)
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

uint64_t CalLocationHasKnownSpatialData(uint64_t a1)
{
  if ((CalLocationHasCoordinates(a1) & 1) == 0)
  {
    result = CalLocationCopyMapKitHandle(a1);
    if (!result)
    {
      return result;
    }

    CFRelease(result);
  }

  return 1;
}

uint64_t CalLocationCopyMapKitHandle(uint64_t a1)
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

void CalLocationSetRadius(uint64_t a1, uint64_t a2)
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

uint64_t CalLocationCopyRadius(uint64_t a1)
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

void CalLocationSetAddressBookEntityID(uint64_t a1, uint64_t a2)
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

uint64_t CalLocationCopyAddressBookEntityID(uint64_t a1)
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

void CalLocationSetMapKitHandle(uint64_t a1, uint64_t a2)
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

void CalLocationSetDerivedFrom(uint64_t a1, uint64_t a2)
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

uint64_t CalLocationCopyDerivedFrom(uint64_t a1)
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

uint64_t _CalLocationGetWithUID(uint64_t a1, uint64_t a2)
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

const void *CalDatabaseCopyLocationWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = _CalLocationGetWithUID(RecordStore, a2);
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

uint64_t CalDatabaseCreateLocationSearchStatement(uint64_t a1, const __CFString *a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 80));
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 32));
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
    goto LABEL_13;
  }

  v8 = Database;
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(Database + 104))
    {
      v9 = CPRecordStoreGetContext();
      if (v9)
      {
        os_unfair_lock_assert_owner(v9 + 20);
      }
    }
  }

  if (!CPSqliteDatabaseRegisterMatchesSearchStringFunction())
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v8 + 104))
      {
        v12 = CPRecordStoreGetContext();
        if (v12)
        {
          os_unfair_lock_assert_owner(v12 + 20);
        }
      }
    }

    v11 = CPSqliteDatabaseStatementForReading();
    v13 = *(v11 + 8);
    CStringFromCFString = CalCreateCStringFromCFString(a2);
    v15 = MEMORY[0x1E69E9B38];
    sqlite3_bind_text(v13, 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
    v16 = *(v11 + 8);
    v17 = CalCreateCStringFromCFString(a2);
    sqlite3_bind_text(v16, 2, v17, -1, v15);
  }

  else
  {
LABEL_13:
    v10 = *(a1 + 32);
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v10 + 20);
    }

    os_unfair_lock_unlock(v10 + 20);
    return 0;
  }

  return v11;
}

void CalDatabaseCopyLocationIdsThatMatchSearch(sqlite3_stmt **a1, uint64_t a2)
{
  v4 = 1;
  while (1)
  {
    v5 = sqlite3_step(a1[1]);
    if (v5 != 100)
    {
      break;
    }

    v6 = sqlite3_column_int(a1[1], 0);
    if (v4 == 1 && CFArrayGetCount(*a2))
    {
      CFArrayRemoveAllValues(*a2);
    }

    CFArrayAppendValue(*a2, v6);
    if ((**(a2 + 24) & 1) == 0 && v4++ != *(a2 + 8))
    {
      continue;
    }

    if (!**(a2 + 24))
    {
      return;
    }

    goto LABEL_13;
  }

  if (v5 - 102) > 0xFFFFFFFD || (sqlite3_errmsg(*(*a1 + 1)), CFLog(), (**(a2 + 24)))
  {
LABEL_13:
    **(a2 + 16) = 0;
  }
}

void CalDatabaseDeleteLocationSearchStatement(uint64_t **a1, uint64_t a2)
{
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        v3 = **a1;
        if (v3)
        {
          if (*(v3 + 104))
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
  }

  CPSqliteStatementReset();
  v5 = *(a2 + 32);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
}

CFTypeRef CalFilterCreateWithDatabaseShowingAll(uint64_t a1)
{
  v1 = [[EKCalendarFilter alloc] initWithDatabase:a1];
  v2 = CFRetain(v1);

  return v2;
}

CFTypeRef CalFilterCreateWithDatabaseShowingAllIncludingDisabledStores(uint64_t a1)
{
  v1 = [[EKCalendarFilter alloc] initWithDatabase:a1];
  [(EKCalendarFilter *)v1 setIncludeDisabledStores:1];
  v2 = CFRetain(v1);

  return v2;
}

CFTypeRef CalFilterCreateWithDatabaseAndEntityTypeShowingAll(uint64_t a1, uint64_t a2)
{
  v2 = [[EKCalendarFilter alloc] initWithDatabase:a1 entityType:a2];
  v3 = CFRetain(v2);

  return v3;
}

CFTypeRef CalFilterCreateWithDatabaseShowingCalendars(uint64_t a1, uint64_t a2)
{
  v2 = [[EKCalendarFilter alloc] initWithDatabase:a1 showingCalendars:a2];
  v3 = CFRetain(v2);

  return v3;
}

CFTypeRef CalFilterCreateWithDatabaseFilteringCalendars(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [[EKCalendarFilter alloc] initWithDatabase:a1 entityType:a2 filteringCalendars:a3];
  v4 = CFRetain(v3);

  return v4;
}

CFTypeRef CalFilterCreateWithDatabaseFilteringAll(uint64_t a1)
{
  v1 = [[EKCalendarFilter alloc] initFilteringAllWithDatabase:a1];
  v2 = CFRetain(v1);

  return v2;
}

void *CalFilterCopyVisibleCalendars(void *a1, uint64_t a2)
{
  v2 = [a1 visibleCalendarsWithOptions:a2];
  v3 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  return v3;
}

uint64_t CalFilterIsCalendarUIDVisible(void *a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  v4 = [a1 isCalendarUIDVisible:v3];

  return v4;
}

BOOL CalFilterIsSearchFilter(void *a1)
{
  v1 = [a1 searchTerm];
  v2 = [v1 length] != 0;

  return v2;
}

void *CalFilterGetSearchTerm(void *a1)
{
  v1 = [a1 searchTerm];
  v2 = v1;
  if (v1)
  {
    v3 = CFRetain(v1);
    CFAutorelease(v3);
  }

  return v2;
}

void *_CalFilterCopyQuery2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = [a1 filterQueryForKey:a3 prefix:a5 whereClause:a6 creator:a4 userInfo:?];
  v7 = v6;
  if (v6)
  {
    CFRetain(v6);
  }

  return v7;
}

void *CalFilterCopyFilteredCalendars(void *a1)
{
  v1 = [a1 filteredCalendars];
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  return v2;
}

const __CFString *_CalNotificationPrepareForSave(uint64_t a1, uint64_t a2)
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
    CalRelationOwnerWillSave(Property);
  }

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

  result = CPRecordGetProperty();
  if (result == -1)
  {
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

    result = CPRecordGetProperty();
    v15 = result;
    if (v9 && (result = CFStringGetLength(v9)) != 0 || v11 && (result = CFStringGetLength(v11)) != 0 || v13 && (result = CFStringGetLength(v13)) != 0)
    {
      if (!a2)
      {
        return result;
      }
    }

    else
    {
      if (!v15)
      {
        return result;
      }

      result = CFStringGetLength(v15);
      if (!a2 || !result)
      {
        return result;
      }
    }

    result = _CalIdentityGetID(v9, v11, v13, v15, a2);
    if (result != -1)
    {
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

      return CPRecordSetProperty();
    }
  }

  return result;
}

uint64_t _CalNotificationPropertyWillChange(uint64_t result, int a2, uint64_t a3)
{
  if (a2 == 1 && a3 == -1)
  {
    if (result)
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

  return result;
}

void CalNotificationInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();
  CalMigrationCreateIndexes(a2, &kCalNotificationClass, &kCalNotificationIndexes, &kCalNotificationChangesIndexes);

  CalMigrationCreateTriggers(a2, &kCalNotificationClass, &kCalNotificationTriggers);
}

void CalNotificationMigrateTables(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 > 77)
  {
    if (a3 <= 0x4651)
    {
      CalMigrateTableFull(a2, &kCalNotificationClass, 0, &kCalNotificationUpgradeInfo, &kCalNotificationChangesUpgradeInfo, &kCalNotificationIndexes, &kCalNotificationChangesIndexes, &kCalNotificationTriggers, a3);
    }
  }

  else
  {

    CalNotificationInitializeTables(a1, a2);
  }
}

uint64_t _CalNotificationGetEntityType(uint64_t a1)
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
  v3 = Property;
  if ((Property > 0x13 || ((1 << Property) & 0xB0000) == 0) && Property != 102)
  {
    CFLog();
  }

  return v3;
}

uint64_t CalNotificationGetEntityType(uint64_t a1)
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

CFTypeRef _CalNotificationHasValidParent(uint64_t a1)
{
  result = _CalResourceChangeGetNotification(a1);
  if (result)
  {

    return _CalRecordStillExists(result);
  }

  return result;
}

void _CalNotificationCleanUpDanglingEntities(uint64_t a1, void *a2)
{
  DeletionFlags = _CalDatabaseGetDeletionFlags(a1);
  if (((DeletionFlags | _CalDatabaseGetChangeFlags(a1)) & 2) != 0)
  {

    CalPerformSQLWithConnectionAndBindBlock(a2, 1, @"DELETE FROM Notification WHERE calendar_id NOT IN (SELECT ROWID FROM Calendar);", 0);
  }
}

uint64_t _CalNotificationSaveAddedRecords(uint64_t a1, uint64_t a2)
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

CFMutableArrayRef _CalResourceChangeNotificationCopyChanges(uint64_t a1)
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

    return CalToManyRelationCopyObjects(result);
  }

  return result;
}

const void *_CalCreateNotification(uint64_t a1, uint64_t a2)
{
  v4 = CPRecordCreate();
  if ((a2 > 0x13 || ((1 << a2) & 0xB0000) == 0) && a2 != 102)
  {
    _CalCreateNotification_cold_1();
  }

  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, a2);
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1 && v4 != 0)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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

  CPRecordInitializeProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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

  CPRecordInitializeProperty();
  if (a2 == 16)
  {
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

    CPRecordInitializeProperty();
  }

  v15 = _CalDBCreateUUIDString();
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

  CPRecordInitializeProperty();
  CFRelease(v15);
  _CalDatabaseAddEntity(a1, v4);
  return v4;
}

const void *CalDatabaseCreateNotification(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Notification = _CalCreateNotification(a1, 102);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Notification;
}

const void *CalDatabaseCreateInviteReplyNotification(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Notification = _CalCreateNotification(a1, 16);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Notification;
}

const void *CalDatabaseCreateSuggestionNotification(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Notification = _CalCreateNotification(a1, 19);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Notification;
}

const void *CalDatabaseCopyNotificationWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = _CalNotificationGetWithUID(RecordStore, a2);
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

const void *CalDatabaseCreateResourceChangeNotification(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Notification = _CalCreateNotification(a1, 17);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Notification;
}

uint64_t _CalInvalidateNotificationsWithCalendarID(uint64_t a1, int a2)
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

uint64_t _CalRemoveNotification(const void *a1)
{
  result = CPRecordGetStore();
  if (result)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      v4 = Context;
      _CalDatabaseRemoveEntity(Context, a1);
      _CalDatabaseSetDeletionFlags(v4, 1024);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      v5 = CPRecordStoreGetContext();
      if (v5)
      {
        os_unfair_lock_assert_owner(v5 + 20);
      }
    }

    return CPRecordStoreRemoveRecord();
  }

  return result;
}

void CalRemoveNotification(const void *a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRemoveNotification(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalNotificationGetUID(const void *a1)
{
  if (!CalEntityIsOfType(a1, 102))
  {
    CalNotificationGetUID_cold_1();
  }

  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  ID = CPRecordGetID();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return ID;
}

uint64_t CalNotificationGetPropertyIDWithPropertyName(void *key)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = CalNotificationGetPropertyIDWithPropertyName_sPropDict;
  if (!CalNotificationGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalNotificationGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalNotificationGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"externalID";
      v6 = 3;
      v7 = @"UUID";
      v8 = 5;
      v9 = @"externalModificationTag";
      v10 = 4;
      v11 = @"calendar";
      v12 = 14;
      v13 = @"summary";
      v14 = 6;
      v15 = @"creationDate";
      v16 = 7;
      v17 = @"shareeStatus";
      v18 = 9;
      v19 = @"hostURL";
      v20 = 10;
      v21 = @"inReplyTo";
      v22 = 11;
      v23 = @"alerted";
      v24 = 13;
      v25 = @"inviteReplyCalendar";
      v26 = 15;
      v27 = @"resourceChanges";
      v28 = 18;
      v29 = @"lastModifiedDate";
      v30 = 8;
      v31 = @"shareeDisplayName";
      v32 = 19;
      v33 = @"shareeURLString";
      v34 = 20;
      v35 = @"shareeFirstName";
      v36 = 21;
      v37 = @"shareeLastName";
      v38 = 22;
      CalNotificationGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 17);
      for (i = 256; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalNotificationGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalNotificationGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEC5FD34(_Unwind_Exception *a1)
{
  for (i = 256; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t _CalNotificationGetWithUID(uint64_t a1, uint64_t a2)
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

uint64_t _CalNotificationGetRecordID(uint64_t a1)
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

uint64_t CalNotificationCopyUUID(uint64_t a1)
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

void CalNotificationSetUUID(uint64_t a1, uint64_t a2)
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

uint64_t CalDatabaseCopyNotificationsWithCalendar(os_unfair_lock_s *a1, int a2, uint64_t a3)
{
  if (((a2 + 1) > 0x14 || ((1 << (a2 + 1)) & 0x160001) == 0) && a2 != 102)
  {
    CalDatabaseCopyNotificationsWithCalendar_cold_1();
  }

  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v7 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v7;
}

uint64_t __CalDatabaseCopyNotificationsWithCalendar_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  ID = CPRecordGetID();
  result = sqlite3_bind_int(v4, 1, ID);
  v7 = *(a1 + 40);
  if (v7 != -1)
  {
    v8 = *(a2 + 8);

    return sqlite3_bind_int(v8, 2, v7);
  }

  return result;
}

uint64_t CalDatabaseCopyOfAllNotifications(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = CPRecordStoreCopyAllInstancesOfClass();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v5;
}

void CalNotificationSetExternalID(uint64_t a1, uint64_t a2)
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

uint64_t CalNotificationCopyExternalID(uint64_t a1)
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

void CalNotificationSetExternalModTag(uint64_t a1, uint64_t a2)
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

uint64_t CalNotificationCopyExternalModTag(uint64_t a1)
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

void CalNotificationSetSummary(uint64_t a1, uint64_t a2)
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

uint64_t CalNotificationCopySummary(uint64_t a1)
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

void CalNotificationSetCreationDate(uint64_t a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetDateProperty(a1, 7, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double CalNotificationGetCreationDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  DateProperty = _CalRecordGetDateProperty(a1, 7);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return DateProperty;
}

void CalNotificationSetLastModifiedDate(uint64_t a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetDateProperty(a1, 8, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double CalNotificationGetLastModifiedDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  DateProperty = _CalRecordGetDateProperty(a1, 8);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return DateProperty;
}

void CalNotificationSetHostURL(uint64_t a1, const __CFURL *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    CFURLGetString(a2);
  }

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

CFURLRef CalNotificationCopyHostURL(uint64_t a1)
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
  if (v4)
  {
    v5 = v4;
    v6 = CFURLCreateWithString(0, v4, 0);
    CFRelease(v5);
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

CFTypeRef CalNotificationCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalResourceChangeGetNotification(a1);
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void *_CalNotificationSetOwner(uint64_t a1, const void *a2)
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

void CalNotificationSetOwner(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalNotificationSetOwner(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalNotificationSetAlerted(uint64_t a1, unsigned int a2)
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

void CalNotificationSetAlerted(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalNotificationSetAlerted(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalNotificationIsAlerted(uint64_t a1)
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

uint64_t CalDatabaseCopyNotificationChangesInStore(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  os_unfair_lock_lock(a1 + 20);
  v6 = _CalDatabaseCopyNotificationChangesInStore(a1, a2, 0xFFFFFFFFLL, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v6;
}

uint64_t _CalDatabaseCopyNotificationChangesInStore(uint64_t a1, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  v6 = a1;
  v7 = _CalNotificationCreateChangeHistoryWhereClauseForStore(a1, a2, a3);
  if (a2)
  {
    v6 = CalCopyDatabaseForRecord(a2);
  }

  else if (v6)
  {
    CFRetain(v6);
  }

  v8 = _CalDatabaseCopyNotificationChangesWithWhereClause(v6, v7, a4);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

uint64_t CalDatabaseRemoveNotificationChangesInStoreToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock(a1 + 20);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CalDatabaseRemoveNotificationChangesInStoreToIndex_block_invoke;
  v8[3] = &unk_1E8689120;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a2;
  v9 = a3;
  _CalDatabaseLockForWriteTransaction(a1, v8);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_1DEC60DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveNotificationChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  result = _CalDatabaseRemoveNotificationChangesInStoreToIndex(*(a1 + 40), 0xFFFFFFFFLL, *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CalDatabaseRemoveNotificationChangesInStoreToIndex(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = CalCopyDatabaseForRecord(a3);
  }

  else
  {
    v6 = a1;
    CFRetain(a1);
  }

  v7 = _CalNotificationCreateChangeHistoryWhereClauseForStore(v6, a3, a2);
  RecordStore = _CalDatabaseGetRecordStore(v6);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v11 = CPRecordStoreDeleteChangesForClassToIndexWhere();
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v6);
  return v11;
}

uint64_t CalDatabaseCopyNotificationChangesInCalendar(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  os_unfair_lock_lock(a1 + 20);
  v6 = _CalDatabaseCopyNotificationChangesInCalendar(a1, a2, 0xFFFFFFFFLL, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v6;
}

uint64_t _CalDatabaseCopyNotificationChangesInCalendar(CFTypeRef cf, uint64_t a2, uint64_t a3, CFMutableDictionaryRef *a4)
{
  if (a2)
  {
    v7 = CalCopyDatabaseForRecord(a2);
  }

  else
  {
    v7 = cf;
    if (cf)
    {
      CFRetain(cf);
    }
  }

  v8 = _CalNotificationCreateChangeHistoryWhereClauseForCalendar(v7, a2, a3);
  v9 = _CalDatabaseCopyNotificationChangesWithWhereClause(v7, v8, a4);
  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v9;
}

uint64_t CalDatabaseRemoveNotificationChangesInCalendarToIndex(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 20);
  v6 = _CalDatabaseRemoveNotificationChangesInCalendarToIndex(a1, 0xFFFFFFFFLL, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v6;
}

uint64_t _CalDatabaseRemoveNotificationChangesInCalendarToIndex(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = CalCopyDatabaseForRecord(a3);
  }

  else
  {
    v6 = a1;
    CFRetain(a1);
  }

  v7 = _CalNotificationCreateChangeHistoryWhereClauseForCalendar(v6, a3, a2);
  RecordStore = _CalDatabaseGetRecordStore(v6);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v11 = CPRecordStoreDeleteChangesForClassToIndexWhere();
  if (v7)
  {
    CFRelease(v7);
  }

  CFRelease(v6);
  return v11;
}

uint64_t CalDatabaseCopyInviteReplyNotificationChangesInStore(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock(a1 + 20);
  v6 = _CalDatabaseCopyNotificationChangesInStore(a1, a2, 16, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v6;
}

uint64_t CalDatabaseRemoveInviteReplyNotificationChangesInStoreToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock(a1 + 20);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CalDatabaseRemoveInviteReplyNotificationChangesInStoreToIndex_block_invoke;
  v8[3] = &unk_1E8689120;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a2;
  v9 = a3;
  _CalDatabaseLockForWriteTransaction(a1, v8);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_1DEC612AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveInviteReplyNotificationChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  result = _CalDatabaseRemoveNotificationChangesInStoreToIndex(*(a1 + 40), 16, *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CalDatabaseCopyInviteReplyNotificationChangesInCalendar(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  os_unfair_lock_lock(a1 + 20);
  v6 = _CalDatabaseCopyNotificationChangesInCalendar(a1, a2, 16, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v6;
}

uint64_t CalDatabaseRemoveInviteReplyNotificationChangesInCalendarToIndex(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 20);
  v6 = _CalDatabaseRemoveNotificationChangesInCalendarToIndex(a1, 16, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v6;
}

CFTypeRef CalDatabaseCopyInviteReplyNotificationWithUUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v6 = CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  if (v6)
  {
    v7 = v6;
    if (CFArrayGetCount(v6) < 1)
    {
      v9 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
      v9 = CFRetain(ValueAtIndex);
    }

    CFRelease(v7);
  }

  else
  {
    v9 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v9;
}

uint64_t CalDatabaseCopyOfAllInviteReplyNotificationsInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = CDBLockingAssertionsEnabled;
  if (!RecordStore)
  {
    v5 = 0;
  }

  if (a2)
  {
    if (v5)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  else if (v5)
  {
    v7 = CPRecordStoreGetContext();
    if (v7)
    {
      os_unfair_lock_assert_owner(v7 + 20);
    }
  }

  v8 = CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v8;
}

CFTypeRef CalInviteReplyNotificationCopyInviteReplyCalendar(uint64_t a1)
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

void CalInviteReplyNotificationSetInviteReplyCalendar(uint64_t a1, const void *a2)
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

void CalInviteReplyNotificationSetStatus(uint64_t a1, int a2)
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

uint64_t CalInviteReplyNotificationGetStatus(uint64_t a1)
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

void CalInviteReplyNotificationSetHostURL(uint64_t a1, const __CFURL *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    CFURLGetString(a2);
  }

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

CFURLRef CalInviteReplyNotificationCopyHostURL(uint64_t a1)
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
  result = 0;
  if (v4)
  {
    v6 = CFURLCreateWithString(0, v4, 0);
    CFRelease(v4);
    return v6;
  }

  return result;
}

void CalInviteReplyNotificationSetInReplyTo(uint64_t a1, uint64_t a2)
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

uint64_t CalInviteReplyNotificationCopyInReplyTo(uint64_t a1)
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

void CalInviteReplyNotificationSetShareeDisplayName(uint64_t a1, uint64_t a2)
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalInviteReplyNotificationCopyShareeDisplayName(uint64_t a1)
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

void CalInviteReplyNotificationSetShareeAddress(uint64_t a1, const __CFURL *a2)
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
  if (a2)
  {
    CFURLGetString(a2);
  }

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
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFURLRef CalInviteReplyNotificationCopyShareeAddress(uint64_t a1)
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
    v5 = CFURLCreateWithString(0, Property, 0);
  }

  else
  {
    v5 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v5;
}

void CalInviteReplyNotificationSetShareeFirstName(uint64_t a1, uint64_t a2)
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalInviteReplyNotificationCopyShareeFirstName(uint64_t a1)
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

void CalInviteReplyNotificationSetShareeLastName(uint64_t a1, uint64_t a2)
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalInviteReplyNotificationCopyShareeLastName(uint64_t a1)
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

const __CFArray *_CalResourceChangeNotificationAddChange(uint64_t a1, void *a2)
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

    return CalToManyRelationAddObject(result, a2);
  }

  return result;
}

void CalResourceChangeNotificationAddChange(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalResourceChangeNotificationAddChange(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void *_CalResourceChangeNotificationRemoveChange(uint64_t a1, void *a2)
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

void CalResourceChangeNotificationRemoveChange(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalResourceChangeNotificationRemoveChange(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalResourceChangeNotificationRemoveAllChanges(uint64_t a1)
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

    CalToManyRelationRemoveAllObjects(Property);
  }
}

void CalResourceChangeNotificationRemoveAllChanges(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalResourceChangeNotificationRemoveAllChanges(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef CalResourceChangeNotificationCopyChanges(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalResourceChangeNotificationCopyChanges(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalDatabaseInsertSuggestionNotificationOnCalendarItemWithTypeAndChanges(uint64_t a1, const void *a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  v9 = _CalCreateResourceChangeOfType(a1, a3);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  Current = CFAbsoluteTimeGetCurrent();
  v12 = CFDateCreate(*MEMORY[0x1E695E480], Current);
  Calendar = _CalCalendarItemGetCalendar(a2);
  _CalResourceChangeSetCalendarItem(v10, a2);
  _CalResourceChangeSetCalendar(v10, Calendar);
  _CalErrorSetUserInfo(v10, v12);
  _CalResourceChangeSetChangedProperties(v10, a4);
  _CalResourceChangeSetAlerted(v10, a5);
  Notification = _CalCreateNotification(a1, 19);
  v15 = Notification;
  if (Notification)
  {
    _CalRecordSetDateProperty(Notification, 7, Current);
    _CalRecordSetDateProperty(v15, 8, Current);
    _CalNotificationSetOwner(v15, Calendar);
    _CalNotificationSetAlerted(v15, a5);
    _CalResourceChangeNotificationAddChange(v15, v10);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  CFRelease(v10);
  return v15;
}

uint64_t _CalNotificationLoadStoreId(uint64_t a1, uint64_t a2)
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
  v5 = result;
  if (result != -1)
  {
    result = CPRecordGetStore();
    if (result)
    {
      result = _CalGetCalendarWithUID(result, v5);
      if (result)
      {
        result = _CalCalendarGetStoreId(result);
        if (result != -1)
        {
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

          return CPRecordInitializeProperty();
        }
      }
    }
  }

  return result;
}

void _CalNotificationLoadIdentityProperties(uint64_t a1)
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
  if (Property != -1)
  {
    Store = CPRecordGetStore();
    IdentityWithRowID = _CalGetIdentityWithRowID(Store, Property);
    if (IdentityWithRowID)
    {
      v6 = IdentityWithRowID;
      if (a1)
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

      _CalIdentityGetDisplayName(v6);
      CPRecordInitializeProperty();
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

      _CalIdentityGetFirstName(v6);
      CPRecordInitializeProperty();
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

      _CalIdentityGetLastName(v6);
      CPRecordInitializeProperty();
      v10 = _CalIdentityCopyAddress(v6);
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

        CPRecordInitializeProperty();

        CFRelease(v11);
      }
    }
  }
}

CFStringRef _CalNotificationCreateChangeHistoryWhereClauseForStore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  if (a2)
  {
    v5 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v7 = *MEMORY[0x1E695E480];
    if ((a3 & 0x80000000) != 0)
    {
      v8 = CFStringCreateWithFormat(v7, 0, @"store_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class IN (%d, %d, %d) AND client_identifier = '%@')", ID, v5, v5, 16, 17, 19, v5);
    }

    else
    {
      v8 = CFStringCreateWithFormat(v7, 0, @"entity_type = %d  AND store_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", a3, ID, v5, v5, a3, v5);
    }

    v10 = v8;
    CFRelease(v5);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v10);
  return v10;
}

uint64_t _CalDatabaseCopyNotificationChangesWithWhereClause(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      *a3 = Mutable;
      goto LABEL_6;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_6:
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  return CPRecordStoreGetChangesAndChangeIndicesAndSequenceNumbersForClassWithProperties();
}

CFStringRef _CalNotificationCreateChangeHistoryWhereClauseForCalendar(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  if (a2)
  {
    v5 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v7 = *MEMORY[0x1E695E480];
    if ((a3 & 0x80000000) != 0)
    {
      v8 = CFStringCreateWithFormat(v7, 0, @"calendar_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class IN (%d, %d) AND client_identifier = '%@')", ID, v5, v5, 16, 17, v5);
    }

    else
    {
      v8 = CFStringCreateWithFormat(v7, 0, @"entity_type = %d  AND calendar_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", a3, ID, v5, v5, a3, v5);
    }

    v10 = v8;
    CFRelease(v5);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v10);
  return v10;
}

double CalculateAlarmFireDate(uint64_t a1, uint64_t a2, double a3)
{
  v3 = 0.0;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  if ((a2 + 53999) < 0x1517F)
  {
    return a3 - a1 + a2;
  }

  v7 = objc_opt_new();
  v8 = v7;
  if (a2 < 0)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  if (a2 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = -a2;
  }

  if (v10 > 0x1517F)
  {
    [v7 setDay:v10 / 0x15180 * v9];
    v10 %= 0x15180uLL;
  }

  if (a2 < 0 && v10 == 54000)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10 == 32400 && a2 >= 0;
    if (v10 <= 3599)
    {
      v13 = v9;
      goto LABEL_24;
    }
  }

  v13 = v9;
  [v8 setHour:v10 / 0xE10 * v9];
  v10 %= 0xE10uLL;
LABEL_24:
  [v8 setSecond:v10 * v13];
  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
  v15 = CalCopyCalendar();
  v16 = [v15 dateByAddingComponents:v8 toDate:v14 options:0];
  if (v11)
  {
    v17 = [v15 components:254 fromDate:v16];

    [v17 setHour:9];
    v18 = [v15 dateFromComponents:v17];

    v8 = v17;
    v16 = v18;
  }

  if (a1)
  {
    v19 = [v16 dateByAddingTimeInterval:-a1];
    [v19 timeIntervalSinceReferenceDate];
    v3 = v20;
  }

  else
  {
    [v16 timeIntervalSinceReferenceDate];
    v3 = v21;
  }

  return v3;
}

double CalEventOccurrenceCacheGetLongAlarmIntervals(void *a1, void *a2)
{
  if (CalEventOccurrenceCacheGetLongAlarmIntervals_onceToken == -1)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  CalEventOccurrenceCacheGetLongAlarmIntervals_cold_1();
  if (a1)
  {
LABEL_3:
    result = *&CalEventOccurrenceCacheGetLongAlarmIntervals_longNegativeInterval;
    *a1 = CalEventOccurrenceCacheGetLongAlarmIntervals_longNegativeInterval;
  }

LABEL_4:
  if (a2)
  {
    result = *&CalEventOccurrenceCacheGetLongAlarmIntervals_longPositiveInterval;
    *a2 = CalEventOccurrenceCacheGetLongAlarmIntervals_longPositiveInterval;
  }

  return result;
}

double __CalEventOccurrenceCacheGetLongAlarmIntervals_block_invoke()
{
  v7 = 0;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  v0 = +[CDBPreferences shared];
  CalEventOccurrenceCacheGetIdealRangeInfo(v0, &v4);

  [v5 timeIntervalSinceDate:v6];
  CalEventOccurrenceCacheGetLongAlarmIntervals_longNegativeInterval = v1;
  [*(&v5 + 1) timeIntervalSinceDate:*(&v4 + 1)];
  *&CalEventOccurrenceCacheGetLongAlarmIntervals_longNegativeInterval = *&CalEventOccurrenceCacheGetLongAlarmIntervals_longNegativeInterval + -3600.0;
  *&CalEventOccurrenceCacheGetLongAlarmIntervals_longPositiveInterval = v2 + -3600.0;
  __destructor_8_s0_s8_s16_s24_s32(&v4);
  return result;
}

void CalEventOccurrenceCacheGetIdealRangeInfo(void *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = a1;
  v3 = CalCopyCalendar();
  v4 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  v5 = [v3 startOfDayForDate:v4];

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *a2 = [v3 timeZone];
  v6 = objc_opt_new();
  [v6 setYear:-2];
  *(a2 + 8) = [v3 dateByAddingComponents:v6 toDate:v5 options:0];

  v7 = objc_opt_new();
  [v7 setYear:2];
  *(a2 + 16) = [v3 dateByAddingComponents:v7 toDate:v5 options:0];

  v8 = objc_opt_new();
  [v8 setDay:-1];
  *(a2 + 24) = [v3 dateByAddingComponents:v8 toDate:v5 options:0];

  v9 = objc_opt_new();
  [v9 setDay:15];
  *(a2 + 32) = [v3 dateByAddingComponents:v9 toDate:v5 options:0];

  *(a2 + 40) = CalAlarmGetGlobalDefaultTimedAlarmOffset(v10);
  *(a2 + 48) = CalAlarmGetGlobalDefaultAllDayAlarmOffset(v10);
}

void __destructor_8_s0_s8_s16_s24_s32(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void CalEventOccurrenceCacheGetIdealRangeAndTimeZone(void *a1, void *a2, void *a3)
{
  v10 = 0;
  *v8 = 0u;
  v9 = 0u;
  *v7 = 0u;
  v6 = +[CDBPreferences shared];
  CalEventOccurrenceCacheGetIdealRangeInfo(v6, v7);

  if (a1)
  {
    *a1 = v7[1];
  }

  if (a2)
  {
    *a2 = v8[0];
  }

  if (a3)
  {
    *a3 = v7[0];
  }

  __destructor_8_s0_s8_s16_s24_s32(v7);
}

void _CalAlarmCacheGetCacheRange(uint64_t a1, void *a2, void *a3)
{
  _CalEventOccurrenceCacheLoadInfo(a1);
  if (a2)
  {
    *a2 = *(a1 + 56);
  }

  if (a3)
  {
    *a3 = *(a1 + 64);
  }
}

CalEventOccurrenceCacheRange *_CalEventOccurrenceCacheCreateOccurrenceCacheRange(void *a1)
{
  _CalEventOccurrenceCacheLoadInfo(a1);
  v2 = [[CalEventOccurrenceCacheRange alloc] initWithStartDate:a1[5] endDate:a1[6] timeZone:a1[4]];

  return v2;
}

void CalEventOccurrenceCacheTrimExtendAndUpdate(uint64_t a1, char a2)
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_DEBUG, "Occurrence cache trim and extend requested.", buf, 2u);
  }

  if (*(a1 + 16) != 1 || !CalDatabaseLockForThread(*(a1 + 24)))
  {
    return;
  }

  v5 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;

  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (RecordStore)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (!Database)
  {
    v17 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Could not acquire a database object.  Will not trim and extend the occurrence cache.";
LABEL_26:
      _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    }

LABEL_27:
    LOBYTE(v19) = 0;
    goto LABEL_47;
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

  v12 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (!v12)
  {
    v17 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v18 = "Could not open a connection to the database.  Will not trim and extend the occurrence cache.";
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  if (__CalDatabaseBeginWriteTransaction(*(a1 + 24), "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:1440"))
  {
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    *buf = 0u;
    CalEventOccurrenceCacheGetIdealRangeInfo(*(*(a1 + 24) + 296), buf);
    _CalEventOccurrenceCacheLoadInfo(a1);
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    *&v13 = __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(&v39, a1 + 32).n128_u64[0];
    v14 = [*buf isEqual:{v39, v13}];
    if ((v14 & 1) == 0)
    {
      v15 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        *v43 = 138543618;
        v44 = v39;
        v45 = 2114;
        v46 = *buf;
        _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_INFO, "Time zone changed during trim and extend. (was %{public}@, now %{public}@) Will do a full rebuild instead.", v43, 0x16u);
      }
    }

    if ([*&buf[8] isBeforeDate:*(&v39 + 1)])
    {
      v16 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        *v43 = 138543618;
        v44 = *(&v39 + 1);
        v45 = 2114;
        v46 = *&buf[8];
        _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_INFO, "Occurrence cache start moved backwards (from %{public}@ to %{public}@) during trim and extend. Will do a full rebuild instead.", v43, 0x16u);
      }

      goto LABEL_35;
    }

    if ((v14 & 1) == 0)
    {
LABEL_35:
      _RebuildCache_0(a1, v12);
      v21 = 1;
      v19 = 1;
      goto LABEL_36;
    }

    if ((a2 & 1) == 0)
    {
      [*(&v39 + 1) timeIntervalSinceReferenceDate];
      v29 = v28;
      [*&buf[8] timeIntervalSinceReferenceDate];
      v31 = v30;
      [v40 timeIntervalSinceReferenceDate];
      v33 = v32;
      [v52 timeIntervalSinceReferenceDate];
      if (vabdd_f64(v29, v31) <= 216000.0 && vabdd_f64(v33, v34) <= 216000.0)
      {
        if (v29 - v31 >= 0.0 && v29 - v31 <= 0.0)
        {
          v21 = 0;
          v19 = 0;
          if (v33 - v34 == 0.0)
          {
            goto LABEL_36;
          }
        }

        v35 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
        {
          *v43 = 138544130;
          v44 = *(&v39 + 1);
          v45 = 2114;
          v46 = *&buf[8];
          v47 = 2114;
          v48 = v40;
          v49 = 2114;
          v50 = v52;
          _os_log_impl(&dword_1DEBB1000, v35, OS_LOG_TYPE_INFO, "Deferring occurrence cache update because the occurrence cache isn't that far out of date yet. (start was %{public}@ and should be %{public}@; end was %{public}@ and should be %{public}@)", v43, 0x2Au);
        }

        v21 = 0;
        goto LABEL_34;
      }

      v36 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        *v43 = 138544130;
        v44 = *(&v39 + 1);
        v45 = 2114;
        v46 = *&buf[8];
        v47 = 2114;
        v48 = v40;
        v49 = 2114;
        v50 = v52;
        _os_log_impl(&dword_1DEBB1000, v36, OS_LOG_TYPE_INFO, "The occurrence cache has drifted too far out of date. Trimming and extending NOW. (start was %{public}@ and should be %{public}@; end was %{public}@ and should be %{public}@)", v43, 0x2Au);
      }
    }

    __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(v38, buf);
    __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(v37, &v39);
    v21 = _CalEventOccurrenceCacheTrimAndExtendCore(a1, v12, v38, v37);
LABEL_34:
    v19 = 0;
LABEL_36:
    __CalDatabaseCommitTransaction(*(a1 + 24), "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:1483");
    __destructor_8_s0_s8_s16_s24_s32(&v39);
    __destructor_8_s0_s8_s16_s24_s32(buf);
    goto LABEL_37;
  }

  v20 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_ERROR, "EventKitOC: Unable to start transaction. Aborting trim/extend.", buf, 2u);
  }

  v21 = 0;
  v19 = 0;
LABEL_37:
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v12)
    {
      if (*(*v12 + 104))
      {
        v22 = CPRecordStoreGetContext();
        if (v22)
        {
          os_unfair_lock_assert_owner(v22 + 20);
        }
      }
    }
  }

  CPSqliteDatabaseReleaseSqliteConnection();
  if (!v21)
  {
LABEL_47:
    v26 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v26, OS_LOG_TYPE_DEBUG, "Trim and extend not needed", buf, 2u);
    }

    CalDatabaseUnlockForThread(*(a1 + 24));
    if (v19)
    {
      goto LABEL_50;
    }

    return;
  }

  v23 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v24 = v23;
    Current = CFAbsoluteTimeGetCurrent();
    *buf = 134217984;
    *&buf[4] = Current - v7;
    _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_DEBUG, "Trim and extend complete in %f", buf, 0xCu);
  }

  CalDatabaseUnlockForThread(*(a1 + 24));
  if (v19)
  {
LABEL_50:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCalEventOccurrenceCacheChangedNotification", *(a1 + 24), 0, 1u);
  }
}

void sub_1DEC63EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  __destructor_8_s0_s8_s16_s24_s32(va);
  __destructor_8_s0_s8_s16_s24_s32(v22 - 176);
  _Unwind_Resume(a1);
}

__n128 __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void _RebuildCache_0(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_DEBUG, "Deleting all data from the 'OccurrenceCache' table.", buf, 2u);
  }

  if (CDBLockingAssertionsEnabled == 1)
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

  CPSqliteConnectionPerformSQL();
  v6 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_DEBUG, "Deleting all data from the 'OccurrenceCacheDays' table.", buf, 2u);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
      {
        v7 = CPRecordStoreGetContext();
        if (v7)
        {
          os_unfair_lock_assert_owner(v7 + 20);
        }
      }
    }
  }

  CPSqliteConnectionPerformSQL();
  v8 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_DEBUG, "Deleting all data from the 'AlarmCache' table.", buf, 2u);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
      {
        v9 = CPRecordStoreGetContext();
        if (v9)
        {
          os_unfair_lock_assert_owner(v9 + 20);
        }
      }
    }
  }

  CPSqliteConnectionPerformSQL();
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  *buf = 0u;
  CalEventOccurrenceCacheGetIdealRangeInfo(*(*(a1 + 24) + 296), buf);
  v10 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
  {
    *v19 = 138412546;
    v20 = *&buf[8];
    v21 = 2112;
    v22 = v16;
    _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_INFO, "Acquired occurrence cache range.  Start date: [%@].  End date: [%@]", v19, 0x16u);
  }

  __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(v14, buf);
  _CalEventOccurrenceCacheSetRangeInfo(a1, v14);
  _CalEventOccurrenceCacheGenerateOccurrencesInDateRange(a1, a2, *&buf[8], v16, *(&v16 + 1), v17);
  v11 = *(&v16 + 1);
  v12 = v17;
  __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(v13, buf);
  _CalAlarmCacheGenerateAlarmsInDateRange(a1, a2, v11, v12, v13, *&buf[8], v16);
  __destructor_8_s0_s8_s16_s24_s32(buf);
}

void sub_1DEC6421C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  __destructor_8_s0_s8_s16_s24_s32(va);
  _Unwind_Resume(a1);
}

uint64_t _CalEventOccurrenceCacheTrimAndExtendCore(uint64_t a1, void *a2, id *a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a4 + 16);
    v10 = a3[1];
    v11 = a3[2];
    *buf = 138412802;
    v47 = v10;
    v48 = 2112;
    v49 = v9;
    v50 = 2112;
    v51 = v11;
    _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_DEBUG, "Preparing to trim and extend the occurrence cache.  newStartDate: [%@] oldEndDate: [%@] newEndDate: [%@]", buf, 0x20u);
  }

  v12 = a3[1];
  v13 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v47 = v12;
    _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_DEBUG, "Removing occurrences in the occurrence cache before [%@]", buf, 0xCu);
  }

  if (CDBLockingAssertionsEnabled == 1)
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

  if (CPSqliteConnectionGetActiveTransactionType() == 0xFFFF)
  {
    NSLog(&cfstr_EventkitocErro.isa);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
      {
        v15 = CPRecordStoreGetContext();
        if (v15)
        {
          os_unfair_lock_assert_owner(v15 + 20);
        }
      }
    }
  }

  v16 = CPSqliteConnectionStatementForSQL();
  v17 = v16;
  if (v16)
  {
    v18 = *(v16 + 8);
    [v12 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(v18, 1, v19);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v17)
      {
        v20 = **v17;
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
    v22 = sqlite3_changes((*v17)[1]);
    v23 = v22 > 0;
    if (v22 >= 1)
    {
      CalPerformSQLWithConnection(a2, @"DELETE FROM OccurrenceCacheDays WHERE count = 0;");
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v17)
      {
        v24 = **v17;
        if (v24)
        {
          if (*(v24 + 104))
          {
            v25 = CPRecordStoreGetContext();
            if (v25)
            {
              os_unfair_lock_assert_owner(v25 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  else
  {
    v23 = 0;
  }

  OccurrencesInDateRange = _CalEventOccurrenceCacheGenerateOccurrencesInDateRange(a1, a2, *(a4 + 16), a3[2], *(a4 + 32), a3[4]);
  v27 = a3[3];
  v28 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v47 = v27;
    _os_log_impl(&dword_1DEBB1000, v28, OS_LOG_TYPE_DEBUG, "Removing alarms in the alarm cache before [%{public}@]", buf, 0xCu);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
      {
        v29 = CPRecordStoreGetContext();
        if (v29)
        {
          os_unfair_lock_assert_owner(v29 + 20);
        }
      }
    }
  }

  if (CPSqliteConnectionGetActiveTransactionType() == 0xFFFF)
  {
    NSLog(&cfstr_EventkitocErro.isa);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
      {
        v30 = CPRecordStoreGetContext();
        if (v30)
        {
          os_unfair_lock_assert_owner(v30 + 20);
        }
      }
    }
  }

  v31 = CPSqliteConnectionStatementForSQL();
  v32 = v31;
  if (v31)
  {
    v33 = *(v31 + 8);
    [v27 timeIntervalSinceReferenceDate];
    sqlite3_bind_double(v33, 1, v34);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v32)
      {
        v35 = **v32;
        if (v35)
        {
          if (*(v35 + 104))
          {
            v36 = CPRecordStoreGetContext();
            if (v36)
            {
              os_unfair_lock_assert_owner(v36 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementPerform();
    v37 = sqlite3_changes((*v32)[1]) > 0;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v32)
      {
        v38 = **v32;
        if (v38)
        {
          if (*(v38 + 104))
          {
            v39 = CPRecordStoreGetContext();
            if (v39)
            {
              os_unfair_lock_assert_owner(v39 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  else
  {
    v37 = 0;
  }

  v40 = *(a4 + 32);
  v41 = a3[4];
  __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(v45, a3);
  AlarmsInDateRange = _CalAlarmCacheGenerateAlarmsInDateRange(a1, a2, v40, v41, v45, *(a4 + 16), a3[2]);
  __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(v44, a3);
  _CalEventOccurrenceCacheSetRangeInfo(a1, v44);
  __destructor_8_s0_s8_s16_s24_s32(a4);
  __destructor_8_s0_s8_s16_s24_s32(a3);
  return v23 | OccurrencesInDateRange | v37 | AlarmsInDateRange;
}

void CalEventOccurrenceCacheCleanOrphans(uint64_t a1)
{
  if (*(a1 + 16) == 1 && CalDatabaseLockForThread(*(a1 + 24)))
  {
    RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
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
          v6 = CPRecordStoreGetContext();
          if (v6)
          {
            os_unfair_lock_assert_owner(v6 + 20);
          }
        }
      }

      v7 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
      if (v7)
      {
        v8 = v7;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v7)
          {
            if (*(*v7 + 104))
            {
              v9 = CPRecordStoreGetContext();
              if (v9)
              {
                os_unfair_lock_assert_owner(v9 + 20);
              }
            }
          }
        }

        v10 = CPSqliteConnectionStatementForSQL();
        if (v10)
        {
          v11 = v10;
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v10)
            {
              v12 = **v10;
              if (v12)
              {
                if (*(v12 + 104))
                {
                  v13 = CPRecordStoreGetContext();
                  if (v13)
                  {
                    os_unfair_lock_assert_owner(v13 + 20);
                  }
                }
              }
            }
          }

          v14 = CPSqliteStatementIntegerResult();
          if (v14)
          {
            NSLog(&cfstr_EventkitocInte.isa);
          }

          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v11)
            {
              v15 = **v11;
              if (v15)
              {
                if (*(v15 + 104))
                {
                  v16 = CPRecordStoreGetContext();
                  if (v16)
                  {
                    os_unfair_lock_assert_owner(v16 + 20);
                  }
                }
              }
            }
          }

          CPSqliteStatementReset();
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v11)
            {
              v17 = **v11;
              if (v17)
              {
                if (*(v17 + 104))
                {
                  v18 = CPRecordStoreGetContext();
                  if (v18)
                  {
                    os_unfair_lock_assert_owner(v18 + 20);
                  }
                }
              }
            }
          }

          CPSqliteDatabaseReleaseSqliteStatement();
          if (v14)
          {
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v8)
              {
                if (*(*v8 + 104))
                {
                  v19 = CPRecordStoreGetContext();
                  if (v19)
                  {
                    os_unfair_lock_assert_owner(v19 + 20);
                  }
                }
              }
            }

            v20 = CPSqliteConnectionPerformSQL();
            if (v20)
            {
              NSLog(&cfstr_EventkitocClea.isa, v20);
            }
          }
        }
      }
    }

    CalDatabaseUnlockForThread(*(a1 + 24));
  }
}

CFTypeRef CalEventOccurrenceCacheCopyTimeZone(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 24) + 80));
  __CalDatabaseBeginReadTransaction(*(a1 + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:1598");
  _CalEventOccurrenceCacheLoadInfo(a1);
  v2 = CFRetain(*(a1 + 32));
  __CalDatabaseRollbackTransaction(*(a1 + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:1600");
  v3 = *(a1 + 24);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v3 + 20);
  }

  os_unfair_lock_unlock(v3 + 20);
  return v2;
}

void CalEventOccurrenceCacheCopyBoundsForTimeZone(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a1)
  {
    v11 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:a1];
    v5 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
    v6 = [v11 startOfDayForDate:v5];

    v7 = objc_opt_new();
    [v7 setYear:-2];
    v8 = [v11 dateByAddingComponents:v7 toDate:v6 options:0];
    v9 = objc_opt_new();
    [v9 setYear:2];

    v10 = [v11 dateByAddingComponents:v9 toDate:v6 options:0];
    if (a2)
    {
      *a2 = v8;
    }

    if (a3)
    {
      *a3 = v10;
    }
  }
}

void CalEventOccurrenceCacheInitializeDB(uint64_t result, void *a2, int a3)
{
  if (a3 <= 18008)
  {
    v8[11] = v3;
    v8[12] = v4;
    CalPerformSQLWithConnection(a2, @"CREATE TABLE OccurrenceCache (day REAL, event_id INTEGER, calendar_id INTEGER, store_id INTEGER, occurrence_date REAL, occurrence_start_date REAL, occurrence_end_date REAL, latest_possible_alarm REAL, earliest_possible_alarm REAL, next_reminder_date REAL);");
    CalPerformSQLWithConnection(a2, @"CREATE TABLE OccurrenceCacheDays (calendar_id INTEGER, store_id INTEGER, day REAL, count INTEGER, PRIMARY KEY (calendar_id, day));");
    CalPerformSQLWithConnection(a2, @"CREATE TRIGGER update_cache_days_after_delete AFTER DELETE ON OccurrenceCache\nBEGIN\nUPDATE OccurrenceCacheDays SET count = count - 1 WHERE day = OLD.day AND calendar_id = OLD.calendar_id AND OLD.next_reminder_date IS NULL;UPDATE OccurrenceCacheDays SET count = count - 1 WHERE day = OLD.day AND calendar_id = -2 AND OLD.next_reminder_date IS NULL;\nEND;\n");
    CalPerformSQLWithConnection(a2, @"CREATE TRIGGER update_cache_days_after_insert AFTER INSERT ON OccurrenceCache\nBEGIN\nREPLACE INTO OccurrenceCacheDays VALUES (NEW.calendar_id, NEW.store_id, NEW.day, IIF(NEW.next_reminder_date IS NULL, 1, 0) + IFNULL((SELECT count FROM OccurrenceCacheDays WHERE day = NEW.day AND calendar_id = NEW.calendar_id), 0));\nREPLACE INTO OccurrenceCacheDays VALUES (-2, -2, NEW.day, IIF(NEW.next_reminder_date IS NULL, 1, 0) + IFNULL((SELECT count FROM OccurrenceCacheDays WHERE day = NEW.day AND calendar_id = -2), 0));\nEND;\n");
    CalPerformSQLWithConnection(a2, @"CREATE TRIGGER update_cache_days_after_update AFTER UPDATE OF day ON OccurrenceCache\nBEGIN\nREPLACE INTO OccurrenceCacheDays VALUES (NEW.calendar_id, NEW.store_id, NEW.day, IIF(NEW.next_reminder_date IS NULL, 1, 0) + IFNULL((SELECT count FROM OccurrenceCacheDays WHERE day = NEW.day AND calendar_id = NEW.calendar_id), 0));\nREPLACE INTO OccurrenceCacheDays VALUES (-2, -2, NEW.day, IIF(NEW.next_reminder_date IS NULL, 1, 0) + IFNULL((SELECT count FROM OccurrenceCacheDays WHERE day = NEW.day AND calendar_id = -2), 0));\nUPDATE OccurrenceCacheDays SET count = count - 1 WHERE day = OLD.day AND calendar_id = OLD.calendar_id AND OLD.next_reminder_date IS NULL;UPDATE OccurrenceCacheDays SET count = count - 1 WHERE day = OLD.day AND calendar_id = -2 AND OLD.next_reminder_date IS NULL;\nEND;\n");
    CalPerformSQLWithConnection(a2, @"CREATE TABLE AlarmCache (event_id INTEGER, alarm_id INTEGER, occurrence_date REAL, fire_date REAL, store_id INTEGER, all_day INTEGER, travel_time REAL, is_default INTEGER, PRIMARY KEY (event_id, alarm_id, occurrence_date));");
    CalPerformSQLWithConnection(a2, @"CREATE TRIGGER delete_from_alarm_cache_after_delete_alarm AFTER DELETE ON Alarm\nBEGIN\nDELETE From AlarmCache WHERE alarm_id = OLD.ROWID;\nEND;\n");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX OccurrenceCacheDayEventIdOccurrenceDate on OccurrenceCache(day, event_id, occurrence_date);");
    CalPerformSQLWithConnection(a2, @"CREATE UNIQUE INDEX OccurrenceCacheOccurrenceDateEventId on OccurrenceCache(occurrence_date, event_id, occurrence_start_date);");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX OccurrenceCacheCalendarId on OccurrenceCache(calendar_id);");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX OccurrenceCacheLatestPossibleAlarm on OccurrenceCache(latest_possible_alarm);");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX OccurrenceCacheEarliestPossibleAlarm on OccurrenceCache(earliest_possible_alarm);");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX OccurrenceCacheDaysCount on OccurrenceCacheDays(count);");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX OccurrenceCacheDaysDayCalendarId on OccurrenceCacheDays(day, calendar_id);");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX OccurrenceCacheEventIdOccurrenceDate on OccurrenceCache(event_id, occurrence_date);");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX OccurrenceCacheCalendarIDDayNextReminderDate on OccurrenceCache(calendar_id, day, next_reminder_date) WHERE next_reminder_date IS NOT NULL;");
    if (a3 == -1)
    {
      Context = CPRecordStoreGetContext();
      CalEventOccurrenceCacheGetIdealRangeInfo(*(Context + 296), v8);
      _CalEventOccurrenceCacheSetRangeInfoWithConnection(a2, v8);
    }
  }
}

void _CalEventOccurrenceCacheSetRangeInfoWithConnection(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    [v4 timeIntervalSinceReferenceDate];
    v7 = [v5 stringWithFormat:@"%lu", v6];
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

    CPSqliteConnectionSetValueForProperty();
  }

  v9 = a2[2];
  if (v9)
  {
    v10 = MEMORY[0x1E696AEC0];
    [v9 timeIntervalSinceReferenceDate];
    v12 = [v10 stringWithFormat:@"%lu", v11];
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a1)
        {
          if (*(*a1 + 104))
          {
            v13 = CPRecordStoreGetContext();
            if (v13)
            {
              os_unfair_lock_assert_owner(v13 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionSetValueForProperty();
  }

  if (*a2)
  {
    CFAbsoluteTimeGetCurrent();
    v14 = CalCFTimeZoneCopyCalTimeZone();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a1)
        {
          if (*(*a1 + 104))
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

    CPSqliteConnectionSetValueForProperty();
    CFRelease(v14);
  }

  v16 = a2[3];
  if (v16)
  {
    v17 = MEMORY[0x1E696AEC0];
    [v16 timeIntervalSinceReferenceDate];
    v19 = [v17 stringWithFormat:@"%lu", v18];
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a1)
        {
          if (*(*a1 + 104))
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

    CPSqliteConnectionSetValueForProperty();
  }

  v21 = a2[4];
  if (v21)
  {
    v22 = MEMORY[0x1E696AEC0];
    [v21 timeIntervalSinceReferenceDate];
    v24 = [v22 stringWithFormat:@"%lu", v23];
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a1)
        {
          if (*(*a1 + 104))
          {
            v25 = CPRecordStoreGetContext();
            if (v25)
            {
              os_unfair_lock_assert_owner(v25 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionSetValueForProperty();
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a2[5]];
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
        {
          v27 = CPRecordStoreGetContext();
          if (v27)
          {
            os_unfair_lock_assert_owner(v27 + 20);
          }
        }
      }
    }
  }

  CPSqliteConnectionSetValueForProperty();
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld", a2[6]];
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a1)
      {
        if (*(*a1 + 104))
        {
          v29 = CPRecordStoreGetContext();
          if (v29)
          {
            os_unfair_lock_assert_owner(v29 + 20);
          }
        }
      }
    }
  }

  CPSqliteConnectionSetValueForProperty();

  __destructor_8_s0_s8_s16_s24_s32(a2);
}

void CalEventOccurrenceCachePrepareForDBMigration(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 18008)
  {
    CalPerformSQLWithConnection(a2, @"DROP TRIGGER update_cache_days_after_delete;");
    CalPerformSQLWithConnection(a2, @"DROP TRIGGER update_cache_days_after_insert;");
    CalPerformSQLWithConnection(a2, @"DROP TRIGGER IF EXISTS update_cache_days_after_update;");
    CalPerformSQLWithConnection(a2, @"DROP TABLE OccurrenceCache;");
    CalPerformSQLWithConnection(a2, @"DROP TABLE OccurrenceCacheDays;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheDay;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheOccurrenceDate;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheEventId;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheDayEventIdOccurrenceDate;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheOccurrenceDateEventId;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheCalendarId;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheDaysCount;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheDaysDayCalendarId;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheDayCalendarId;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheDayStoreId;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheStoreIdOccurrenceDate;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheCalendarIdOccurrenceDate;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheDaysStoreIdDay;");
    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheLatestPossibleAlarm;");

    CalPerformSQLWithConnection(a2, @"DROP INDEX IF EXISTS OccurrenceCacheEarliestPossibleAlarm;");
  }
}

id CalEventOccurrenceCacheMergeCounts(void *a1, void *a2)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = [v4 count];
  v6 = [v3 count];
  v33 = v4;
  v7 = [v4 firstObject];
  v35 = [v7 objectForKeyedSubscript:@"day"];
  v8 = [v3 firstObject];
  v9 = [v8 objectForKeyedSubscript:@"day"];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6 + v5];
  v11 = 0;
  v34 = v7;
  if (!v6 || !v5)
  {
    v12 = 0;
    goto LABEL_15;
  }

  v12 = 0;
  v11 = 0;
  while (1)
  {
    while (1)
    {
      v13 = [v9 compare:v35];
      if (v13 != -1)
      {
        break;
      }

      [v10 addObject:v8];
      if (++v11 >= v6)
      {
        goto LABEL_15;
      }

      v14 = [v3 objectAtIndexedSubscript:v11];

      v15 = [v14 objectForKeyedSubscript:@"day"];

      v8 = v14;
      v9 = v15;
    }

    if (!v13)
    {
      break;
    }

    [v10 addObject:v34];
    if (++v12 >= v5)
    {
      goto LABEL_16;
    }

    v26 = [v33 objectAtIndexedSubscript:v12];

    v27 = [v26 objectForKeyedSubscript:@"day"];
    v25 = v35;
    v34 = v26;
    v35 = v27;
LABEL_13:
  }

  v16 = [v8 objectForKeyedSubscript:@"occurrenceCount"];
  v31 = [v16 intValue];

  v17 = [v34 objectForKeyedSubscript:@"occurrenceCount"];
  v18 = [v17 intValue];

  v36[0] = @"day";
  v36[1] = @"occurrenceCount";
  v37[0] = v9;
  v19 = [MEMORY[0x1E696AD98] numberWithInt:(v18 + v31)];
  v37[1] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

  [v10 addObject:v20];
  ++v11;
  ++v12;
  if (v11 < v6 && v12 < v5)
  {
    v21 = [v3 objectAtIndexedSubscript:v11];

    [v21 objectForKeyedSubscript:@"day"];
    v22 = v32 = v20;

    v23 = [v33 objectAtIndexedSubscript:v12];

    v24 = [v23 objectForKeyedSubscript:@"day"];

    v34 = v23;
    v35 = v24;
    v8 = v21;
    v9 = v22;
    v25 = v32;
    goto LABEL_13;
  }

LABEL_15:
  if (v11 < v6)
  {
    do
    {
LABEL_16:
      v28 = [v3 objectAtIndexedSubscript:v11];
      [v10 addObject:v28];

      ++v11;
    }

    while (v6 != v11);
  }

  if (v12 < v5)
  {
    do
    {
      v29 = [v33 objectAtIndexedSubscript:v12];
      [v10 addObject:v29];

      ++v12;
    }

    while (v5 != v12);
  }

  return v10;
}

uint64_t CalEventOccurrenceCacheCopyEventOccurrencesAfterDate(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalEventOccurrenceCacheCopyEventOccurrencesAfterDate_block_invoke;
  v6[3] = &unk_1E86932C0;
  v7 = a3;
  v6[5] = a1;
  v6[6] = a2;
  v6[4] = &v8;
  *&v6[7] = a4;
  _CalEventOccurrenceCachePerformWithLock(a1, v6);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __CalEventOccurrenceCacheCopyEventOccurrencesAfterDate_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(*(a1 + 40) + 24));
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
    v6 = Database;
    if (__CalDatabaseBeginReadTransaction(*(*(a1 + 40) + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2068"))
    {
      v7 = *(a1 + 64);
      v8 = @"ORDER BY occurrence_date";
      if (v7 <= 0)
      {
        v8 = 0;
      }

      *buf = @"SELECT event_id, occurrence_date FROM OccurrenceCache";
      v19 = @"occurrence_date > ?";
      v20 = v8;
      v21 = v7;
      v9 = _CalFilterCopyQuery(*(a1 + 48));
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(v6 + 104))
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }

      v11 = CPSqliteDatabaseStatementForReading();
      if (v11)
      {
        v12 = v11;
        *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        _CalEventOccurrenceCacheLoadInfo(*(a1 + 40));
        sqlite3_bind_int(v12[1], 1, *(a1 + 56));
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v12)
          {
            v13 = **v12;
            if (v13)
            {
              if (*(v13 + 104))
              {
                v14 = CPRecordStoreGetContext();
                if (v14)
                {
                  os_unfair_lock_assert_owner(v14 + 20);
                }
              }
            }
          }
        }

        CPSqliteStatementSendResults();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v12)
          {
            v15 = **v12;
            if (v15)
            {
              if (*(v15 + 104))
              {
                v16 = CPRecordStoreGetContext();
                if (v16)
                {
                  os_unfair_lock_assert_owner(v16 + 20);
                }
              }
            }
          }
        }

        CPSqliteStatementReset();
      }

      if (v9)
      {
        CFRelease(v9);
      }

      __CalDatabaseRollbackTransaction(*(*(a1 + 40) + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2093");
    }

    else
    {
      v17 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, "Unable to begin transaction", buf, 2u);
      }
    }
  }
}

uint64_t _OccurrenceGatherer(uint64_t a1, uint64_t a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = sqlite3_column_double(*(a1 + 8), 1);
  RecordStore = _CalDatabaseGetRecordStore(*(a2 + 8));
  EventWithUID = _CalGetEventWithUID(RecordStore, v4);
  if (EventWithUID)
  {
    v8 = CalEventOccurrenceCreate(EventWithUID, *(a2 + 16), v5);
    CFArrayAppendValue(*a2, v8);
    CFRelease(v8);
  }

  return 0;
}

uint64_t _CalEventOccurrenceCacheCopyAllStartDatesForEvent(uint64_t a1, int a2)
{
  result = *(a1 + 24);
  if (result)
  {
    result = _CalDatabaseGetRecordStore(result);
    if (result)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }

      result = CPRecordStoreGetDatabase();
      if (result)
      {
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*(result + 104))
          {
            v5 = CPRecordStoreGetContext();
            if (v5)
            {
              os_unfair_lock_assert_owner(v5 + 20);
            }
          }
        }

        result = CPSqliteDatabaseStatementForReading();
        if (result)
        {
          v6 = result;
          sqlite3_bind_int(*(result + 8), 1, a2);
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

          CPSqliteStatementSendResults();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t startDateCollector(uint64_t a1, __CFArray **a2)
{
  v4 = sqlite3_column_type(*(a1 + 8), 1);
  v5 = v4;
  Mutable = *a2;
  if (!*a2)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *a2 = Mutable;
    v7 = *(a1 + 8);
    if (v5 != 5)
    {
      v8 = 1;
      goto LABEL_7;
    }

LABEL_5:
    v8 = 0;
LABEL_7:
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{sqlite3_column_double(v7, v8)}];
    CFArrayAppendValue(Mutable, v9);

    return 0;
  }

  if (v4 == 5)
  {
    v7 = *(a1 + 8);
    goto LABEL_5;
  }

  return 0;
}

uint64_t CalEventOccurrenceCacheCopyEventOccurrencesWithIDsAfterDate(uint64_t a1, uint64_t a2, CFArrayRef theArray, int a4, char a5, char a6, char a7, void *a8, double a9)
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  if (theArray && CFArrayGetCount(theArray))
  {
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__2;
    v31 = __Block_byref_object_dispose__2;
    v32 = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __CalEventOccurrenceCacheCopyEventOccurrencesWithIDsAfterDate_block_invoke;
    v22[3] = &unk_1E86932E8;
    v23 = a4;
    v24 = a5;
    v25 = a7;
    v26 = a8 != 0;
    v22[6] = a1;
    v22[7] = theArray;
    v22[8] = a2;
    v22[4] = &v27;
    v22[5] = &v33;
    *&v22[9] = a9;
    v18 = MEMORY[0x1E12C7520](v22);
    v19 = v18;
    if (a6)
    {
      _CalEventOccurrenceCachePerformWithLock(a1, v18);
    }

    else
    {
      v18[2](v18);
    }

    if (a8)
    {
      *a8 = v28[5];
    }

    v20 = v34[3];

    _Block_object_dispose(&v27, 8);
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v33, 8);
  return v20;
}

void sub_1DEC65D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __CalEventOccurrenceCacheCopyEventOccurrencesWithIDsAfterDate_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(*(a1 + 48) + 24));
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
    v6 = Database;
    if (*(a1 + 80) < 1)
    {
      v7 = 0;
    }

    else if (*(a1 + 84))
    {
      v7 = @"ORDER BY occurrence_date DESC";
    }

    else
    {
      v7 = @"ORDER BY occurrence_date";
    }

    if (*(a1 + 85) == 1 && !__CalDatabaseBeginReadTransaction(*(*(a1 + 48) + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2180"))
    {
      v27 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v27, OS_LOG_TYPE_ERROR, "Could not begin transaction", buf, 2u);
      }
    }

    else
    {
      if (*(a1 + 86) == 1)
      {
        v8 = _CalEventOccurrenceCacheCreateOccurrenceCacheRange(*(a1 + 48));
        v9 = *(*(a1 + 32) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }

      Count = CFArrayGetCount(*(a1 + 56));
      *buf = @"SELECT event_id, occurrence_date FROM OccurrenceCache";
      v29 = @"occurrence_date > ? AND event_id IN (%@)";
      v30 = v7;
      v31 = 0;
      LODWORD(v31) = *(a1 + 80);
      if (Count == 1)
      {
        Mutable = 0;
        v29 = @"occurrence_date > ? AND event_id = ?";
      }

      else
      {
        Mutable = CFStringCreateMutable(0, 0);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
            if (i)
            {
              CFStringAppendFormat(Mutable, 0, @",%d", ValueAtIndex);
            }

            else
            {
              CFStringAppendFormat(Mutable, 0, @"%d", ValueAtIndex);
            }
          }
        }
      }

      v15 = _CalFilterCopyQuery(*(a1 + 64));
      v16 = v15;
      if (Count == 1)
      {
        v17 = CFRetain(v15);
      }

      else
      {
        v17 = CFStringCreateWithFormat(0, 0, v15, Mutable);
      }

      v18 = v17;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(v6 + 104))
        {
          v19 = CPRecordStoreGetContext();
          if (v19)
          {
            os_unfair_lock_assert_owner(v19 + 20);
          }
        }
      }

      v20 = CPSqliteDatabaseStatementForReading();
      if (v20)
      {
        v21 = v20;
        *(*(*(a1 + 40) + 8) + 24) = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        _CalEventOccurrenceCacheLoadInfo(*(a1 + 48));
        sqlite3_bind_int(v21[1], 1, *(a1 + 72));
        if (Count == 1)
        {
          v22 = CFArrayGetValueAtIndex(*(a1 + 56), 0);
          sqlite3_bind_int(v21[1], 2, v22);
        }

        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v21)
          {
            v23 = **v21;
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

        CPSqliteStatementSendResults();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v21)
          {
            v25 = **v21;
            if (v25)
            {
              if (*(v25 + 104))
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

        CPSqliteStatementReset();
      }

      if (*(a1 + 85) == 1)
      {
        __CalDatabaseRollbackTransaction(*(*(a1 + 48) + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2237");
      }

      if (v18)
      {
        CFRelease(v18);
      }

      CFRelease(v16);
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
  }
}

id _CalEventOccurrenceCacheCopySpotlightOccurrenceDates(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a4;
  __CalDatabaseBeginReadTransaction(*(a1 + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2301");
  _CalEventOccurrenceCacheLoadInfo(a1);
  v8 = *(a1 + 40);
  v9 = v7;
  v10 = objc_opt_new();
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
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
    v15 = Database;
    v16 = @"occurrence_date > ? AND event_id = ? AND occurrence_start_date is NULL AND occurrence_date < ?";
    if (!v9)
    {
      v16 = @"occurrence_date > ? AND event_id = ? AND occurrence_start_date is NULL";
    }

    v17 = v16;
    v18 = _CalFilterCopyQuery(a2);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v15 + 104))
      {
        v19 = CPRecordStoreGetContext();
        if (v19)
        {
          os_unfair_lock_assert_owner(v19 + 20);
        }
      }
    }

    v20 = CPSqliteDatabaseStatementForReading();
    if (v20)
    {
      v21 = v20;
      v22 = *(v20 + 8);
      [v8 timeIntervalSinceReferenceDate];
      sqlite3_bind_int(v22, 1, v23);
      sqlite3_bind_int(v21[1], 2, a3);
      if (v9)
      {
        v24 = v21[1];
        [v9 timeIntervalSinceReferenceDate];
        sqlite3_bind_int(v24, 3, v25);
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v21)
        {
          v26 = **v21;
          if (v26)
          {
            if (*(v26 + 104))
            {
              v27 = CPRecordStoreGetContext();
              if (v27)
              {
                os_unfair_lock_assert_owner(v27 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementSendResults();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v21)
        {
          v28 = **v21;
          if (v28)
          {
            if (*(v28 + 104))
            {
              v29 = CPRecordStoreGetContext();
              if (v29)
              {
                os_unfair_lock_assert_owner(v29 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
    }

    if (v18)
    {
      CFRelease(v18);
    }
  }

  __CalDatabaseRollbackTransaction(*(a1 + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2305");

  return v10;
}

uint64_t CalEventOccurrenceCacheDoEventsHaveOccurrencesAfterDate(uint64_t a1, int a2, CFArrayRef theArray, double a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (theArray && CFArrayGetCount(theArray))
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __CalEventOccurrenceCacheDoEventsHaveOccurrencesAfterDate_block_invoke;
    v9[3] = &unk_1E868D418;
    v9[5] = a1;
    v9[6] = theArray;
    v9[4] = &v10;
    *&v9[7] = a4;
    _CalEventOccurrenceCachePerformWithLock(a1, v9);
    v7 = v11[3];
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_1DEC664AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CalEventOccurrenceCacheDoEventsHaveOccurrencesAfterDate_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(*(a1 + 40) + 24));
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
    v6 = Database;
    Count = CFArrayGetCount(*(a1 + 48));
    *(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(0, Count, MEMORY[0x1E695E9C0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), i);
        valuePtr = 0;
        CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
        v17 = 0;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*(v6 + 104))
          {
            v10 = CPRecordStoreGetContext();
            if (v10)
            {
              os_unfair_lock_assert_owner(v10 + 20);
            }
          }
        }

        v11 = CPSqliteDatabaseStatementForReading();
        sqlite3_bind_int(v11[1], 1, *(a1 + 56));
        sqlite3_bind_int(v11[1], 2, valuePtr);
        if (v11)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (*v11)
            {
              v12 = **v11;
              if (v12)
              {
                if (*(v12 + 104))
                {
                  v13 = CPRecordStoreGetContext();
                  if (v13)
                  {
                    os_unfair_lock_assert_owner(v13 + 20);
                  }
                }
              }
            }
          }
        }

        v17 = CPSqliteStatementIntegerResult();
        if (v11)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (*v11)
            {
              v14 = **v11;
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
        }

        CPSqliteStatementReset();
        v17 = v17 > 0;
        v16 = CFNumberCreate(0, kCFNumberIntType, &v17);
        CFArrayAppendValue(*(*(*(a1 + 32) + 8) + 24), v16);
        CFRelease(v16);
      }
    }
  }
}

double _CalEventOccurrenceCacheNextEventOccurrenceDateAfterDate(uint64_t a1, int a2, double a3)
{
  __CalDatabaseBeginReadTransaction(*(a1 + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2354");
  _CalEventOccurrenceCacheLoadInfo(a1);
  v6 = *(a1 + 40);
  v19 = *MEMORY[0x1E69930F8];
  [v6 timeIntervalSinceReferenceDate];
  if (v7 <= a3)
  {
    RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
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
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }

      v13 = CPSqliteDatabaseStatementForReading();
      sqlite3_bind_int(v13[1], 1, a3);
      sqlite3_bind_int(v13[1], 2, a2);
      if (v13)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*v13)
          {
            v14 = **v13;
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
      }

      CPSqliteStatementSendResults();
      if (v13)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*v13)
          {
            v16 = **v13;
            if (v16)
            {
              if (*(v16 + 104))
              {
                v17 = CPRecordStoreGetContext();
                if (v17)
                {
                  os_unfair_lock_assert_owner(v17 + 20);
                }
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
    }
  }

  else
  {
    v19 = *MEMORY[0x1E6993100];
  }

  __CalDatabaseRollbackTransaction(*(a1 + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2373");

  return v19;
}

uint64_t CalEventOccurrenceCacheCount(uint64_t a1, double a2, double a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CalEventOccurrenceCacheCount_block_invoke;
  v5[3] = &unk_1E868D418;
  *&v5[6] = a2;
  *&v5[7] = a3;
  v5[4] = &v6;
  v5[5] = a1;
  _CalEventOccurrenceCachePerformWithLock(a1, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __CalEventOccurrenceCacheCount_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(*(a1 + 40) + 24));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  result = CPRecordStoreGetDatabase();
  if (result)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(result + 104))
      {
        v6 = CPRecordStoreGetContext();
        if (v6)
        {
          os_unfair_lock_assert_owner(v6 + 20);
        }
      }
    }

    v7 = CPSqliteDatabaseStatementForReading();
    sqlite3_bind_int(v7[1], 1, *(a1 + 48));
    sqlite3_bind_int(v7[1], 2, *(a1 + 56));
    if (v7)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*v7)
        {
          v8 = **v7;
          if (v8)
          {
            if (*(v8 + 104))
            {
              v9 = CPRecordStoreGetContext();
              if (v9)
              {
                os_unfair_lock_assert_owner(v9 + 20);
              }
            }
          }
        }
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = CPSqliteStatementIntegerResult();
    if (v7)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*v7)
        {
          v10 = **v7;
          if (v10)
          {
            if (*(v10 + 104))
            {
              v11 = CPRecordStoreGetContext();
              if (v11)
              {
                os_unfair_lock_assert_owner(v11 + 20);
              }
            }
          }
        }
      }
    }

    return CPSqliteStatementReset();
  }

  return result;
}

uint64_t CalEventOccurrenceCacheCountByCalendar(uint64_t a1, uint64_t a2, char a3, double a4, double a5)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __CalEventOccurrenceCacheCountByCalendar_block_invoke;
  v7[3] = &unk_1E8693310;
  v8 = a3;
  v7[5] = a1;
  v7[6] = a2;
  *&v7[7] = a4;
  *&v7[8] = a5;
  v7[4] = &v9;
  _CalEventOccurrenceCachePerformWithLock(a1, v7);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __CalEventOccurrenceCacheCountByCalendar_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(*(a1 + 40) + 24));
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
    v6 = Database;
    if (*(a1 + 72))
    {
      v7 = @"SELECT SUM(occurrence_end_date - occurrence_date) FROM OccurrenceCache WHERE occurrence_start_date IS NULL AND occurrence_date >= ? AND occurrence_date < ? AND calendar_id in (%@)";
    }

    else
    {
      v7 = @"SELECT COUNT() FROM OccurrenceCache WHERE occurrence_start_date IS NULL AND occurrence_date >= ? AND occurrence_date < ? AND calendar_id in (%@)";
    }

    Count = CFArrayGetCount(*(a1 + 48));
    Mutable = CFStringCreateMutable(0, 0);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 48), i);
        if (i)
        {
          CFStringAppendFormat(Mutable, 0, @",%@", ValueAtIndex);
        }

        else
        {
          CFStringAppendFormat(Mutable, 0, @"%@", ValueAtIndex);
        }
      }
    }

    v12 = CFStringCreateWithFormat(0, 0, v7, Mutable);
    if (CDBLockingAssertionsEnabled)
    {
      if (*(v6 + 104))
      {
        v13 = CPRecordStoreGetContext();
        if (v13)
        {
          os_unfair_lock_assert_owner(v13 + 20);
        }
      }
    }

    v14 = CPSqliteDatabaseStatementForReading();
    sqlite3_bind_int(v14[1], 1, *(a1 + 56));
    sqlite3_bind_int(v14[1], 2, *(a1 + 64));
    if (v14)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*v14)
        {
          v15 = **v14;
          if (v15)
          {
            if (*(v15 + 104))
            {
              v16 = CPRecordStoreGetContext();
              if (v16)
              {
                os_unfair_lock_assert_owner(v16 + 20);
              }
            }
          }
        }
      }
    }

    *(*(*(a1 + 32) + 8) + 24) = CPSqliteStatementIntegerResult();
    if (v14)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*v14)
        {
          v17 = **v14;
          if (v17)
          {
            if (*(v17 + 104))
            {
              v18 = CPRecordStoreGetContext();
              if (v18)
              {
                os_unfair_lock_assert_owner(v18 + 20);
              }
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
    CFRelease(Mutable);

    CFRelease(v12);
  }
}

uint64_t CalDatabaseCopyEventOccurrenceNearestToDate(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalDatabaseCopyEventOccurrenceNearestToDate_block_invoke;
  v6[3] = &unk_1E86932C0;
  v6[5] = a1;
  v6[6] = a2;
  *&v6[7] = a4;
  v7 = a3;
  v6[4] = &v8;
  _CalEventOccurrenceCachePerformWithLock(a1, v6);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __CalDatabaseCopyEventOccurrenceNearestToDate_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(*(a1 + 40) + 24));
  v3 = RecordStore;
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
    v7 = Database;
    v29[2] = xmmword_1E8693330;
    v29[3] = *&off_1E8693340;
    if (__CalDatabaseBeginReadTransaction(*(*(a1 + 40) + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:3028"))
    {
      v8 = _CalFilterCopyQuery(*(a1 + 48));
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(v7 + 104))
        {
          v9 = CPRecordStoreGetContext();
          if (v9)
          {
            os_unfair_lock_assert_owner(v9 + 20);
          }
        }
      }

      v10 = CPSqliteDatabaseStatementForReading();
      if (v10)
      {
        v11 = v10;
        sqlite3_bind_double(*(v10 + 8), 1, *(a1 + 56));
        sqlite3_bind_int(*(v11 + 8), 2, *(a1 + 64));
        if (sqlite3_step(*(v11 + 8)) == 100)
        {
          v12 = *(a1 + 40);
          _CalEventOccurrenceCacheLoadInfo(v12);
          EventOccurrenceFromStatement = _createEventOccurrenceFromStatement(v3, v11, *(v12 + 32));
        }

        else
        {
          EventOccurrenceFromStatement = 0;
        }

        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v11)
          {
            v15 = **v11;
            if (v15)
            {
              if (*(v15 + 104))
              {
                v16 = CPRecordStoreGetContext();
                if (v16)
                {
                  os_unfair_lock_assert_owner(v16 + 20);
                }
              }
            }
          }
        }

        CPSqliteStatementReset();
        if (!v8)
        {
LABEL_29:
          v29[0] = xmmword_1E8693350;
          v29[1] = *&off_1E8693360;
          v17 = _CalFilterCopyQuery(*(a1 + 48));
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*(v7 + 104))
            {
              v18 = CPRecordStoreGetContext();
              if (v18)
              {
                os_unfair_lock_assert_owner(v18 + 20);
              }
            }
          }

          v19 = CPSqliteDatabaseStatementForReading();
          if (v19)
          {
            v20 = v19;
            sqlite3_bind_double(*(v19 + 8), 1, *(a1 + 56));
            sqlite3_bind_int(*(v20 + 8), 2, *(a1 + 64));
            if (sqlite3_step(*(v20 + 8)) == 100)
            {
              v21 = *(a1 + 40);
              _CalEventOccurrenceCacheLoadInfo(v21);
              v22 = _createEventOccurrenceFromStatement(v3, v20, *(v21 + 32));
            }

            else
            {
              v22 = 0;
            }

            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v20)
              {
                v23 = **v20;
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
            if (!v17)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v22 = 0;
            if (!v17)
            {
LABEL_47:
              if (EventOccurrenceFromStatement && v22)
              {
                Date = CalEventOccurrenceGetDate(EventOccurrenceFromStatement);
                v26 = CalEventOccurrenceGetDate(v22);
                v27 = *(*(a1 + 32) + 8);
                if (Date - *(a1 + 56) <= *(a1 + 56) - v26)
                {
                  *(v27 + 24) = EventOccurrenceFromStatement;
                  v28 = v22;
                }

                else
                {
                  *(v27 + 24) = v22;
                  v28 = EventOccurrenceFromStatement;
                }

                CFRelease(v28);
              }

              else if (EventOccurrenceFromStatement)
              {
                *(*(*(a1 + 32) + 8) + 24) = EventOccurrenceFromStatement;
              }

              else if (v22)
              {
                *(*(*(a1 + 32) + 8) + 24) = v22;
              }

              __CalDatabaseRollbackTransaction(*(*(a1 + 40) + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:3100");
              return;
            }
          }

          CFRelease(v17);
          goto LABEL_47;
        }
      }

      else
      {
        EventOccurrenceFromStatement = 0;
        if (!v8)
        {
          goto LABEL_29;
        }
      }

      CFRelease(v8);
      goto LABEL_29;
    }

    v14 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v29[0]) = 0;
      _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Couldn't begin transaction", v29, 2u);
    }
  }
}

uint64_t _createEventOccurrenceFromStatement(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = sqlite3_column_int(*(a2 + 8), 0);
  v7 = sqlite3_column_double(*(a2 + 8), 1);
  EventWithUID = _CalGetEventWithUID(a1, v6);
  if (_CalEventIsAllDay(EventWithUID) && sqlite3_column_type(*(a2 + 8), 2) != 5)
  {
    v7 = sqlite3_column_double(*(a2 + 8), 2);
  }

  return CalEventOccurrenceCreate(EventWithUID, a3, v7);
}

uint64_t CalDatabaseCopyEventOccurrenceNearestToDatePreferringForwardSearch(uint64_t a1, uint64_t a2, int a3, double a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalDatabaseCopyEventOccurrenceNearestToDatePreferringForwardSearch_block_invoke;
  v6[3] = &unk_1E86932C0;
  v6[5] = a1;
  v6[6] = a2;
  *&v6[7] = a4;
  v7 = a3;
  v6[4] = &v8;
  _CalEventOccurrenceCachePerformWithLock(a1, v6);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void __CalDatabaseCopyEventOccurrenceNearestToDatePreferringForwardSearch_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(*(a1 + 40) + 24));
  v3 = RecordStore;
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
    v7 = Database;
    if (__CalDatabaseBeginReadTransaction(*(*(a1 + 40) + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:3115"))
    {
      *buf = xmmword_1E8693370;
      v24 = *&off_1E8693380;
      v8 = _CalFilterCopyQuery(*(a1 + 48));
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(v7 + 104))
        {
          v9 = CPRecordStoreGetContext();
          if (v9)
          {
            os_unfair_lock_assert_owner(v9 + 20);
          }
        }
      }

      v10 = CPSqliteDatabaseStatementForReading();
      if (v10)
      {
        v11 = v10;
        sqlite3_bind_double(*(v10 + 8), 1, *(a1 + 56));
        sqlite3_bind_int(*(v11 + 8), 2, *(a1 + 64));
        if (sqlite3_step(*(v11 + 8)) == 100)
        {
          v12 = *(a1 + 40);
          _CalEventOccurrenceCacheLoadInfo(v12);
          *(*(*(a1 + 32) + 8) + 24) = _createEventOccurrenceFromStatement(v3, v11, *(v12 + 32));
        }

        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v11)
          {
            v13 = **v11;
            if (v13)
            {
              if (*(v13 + 104))
              {
                v14 = CPRecordStoreGetContext();
                if (v14)
                {
                  os_unfair_lock_assert_owner(v14 + 20);
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

      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        v15 = _CalFilterCopyQuery(*(a1 + 48));
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*(v7 + 104))
          {
            v16 = CPRecordStoreGetContext();
            if (v16)
            {
              os_unfair_lock_assert_owner(v16 + 20);
            }
          }
        }

        v17 = CPSqliteDatabaseStatementForReading();
        if (v17)
        {
          v18 = v17;
          sqlite3_bind_double(*(v17 + 8), 1, *(a1 + 56));
          sqlite3_bind_int(*(v18 + 8), 2, *(a1 + 64));
          if (sqlite3_step(*(v18 + 8)) == 100)
          {
            v19 = *(a1 + 40);
            _CalEventOccurrenceCacheLoadInfo(v19);
            *(*(*(a1 + 32) + 8) + 24) = _createEventOccurrenceFromStatement(v3, v18, *(v19 + 32));
          }

          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v18)
            {
              v20 = **v18;
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

          CPSqliteStatementReset();
        }

        if (v15)
        {
          CFRelease(v15);
        }
      }

      __CalDatabaseRollbackTransaction(*(*(a1 + 40) + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:3155");
    }

    else
    {
      v22 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_ERROR, "Couldn't begin transaction", buf, 2u);
      }
    }
  }
}

void CalDatabaseGetEventOccurrenceAtDayAndOffset(uint64_t a1, double a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalDatabaseGetEventOccurrenceAtDayAndOffset_block_invoke;
  v6[3] = &__block_descriptor_68_e5_v8__0l;
  v6[4] = a1;
  *&v6[5] = a2;
  v7 = a4;
  v6[6] = a5;
  v6[7] = a6;
  _CalEventOccurrenceCachePerformWithLock(a1, v6);
}

void __CalDatabaseGetEventOccurrenceAtDayAndOffset_block_invoke(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(*(*(a1 + 32) + 24));
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
        v6 = CPRecordStoreGetContext();
        if (v6)
        {
          os_unfair_lock_assert_owner(v6 + 20);
        }
      }
    }

    v7 = CPSqliteDatabaseStatementForReading();
    if (v7)
    {
      v8 = v7;
      sqlite3_bind_double(*(v7 + 8), 1, *(a1 + 40));
      sqlite3_bind_int(*(v8 + 8), 2, *(a1 + 64));
      if (sqlite3_step(*(v8 + 8)) == 100)
      {
        **(a1 + 48) = sqlite3_column_int(*(v8 + 8), 0);
        **(a1 + 56) = sqlite3_column_double(*(v8 + 8), 1);
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v8)
        {
          v9 = **v8;
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
    }

    CFRelease(@"SELECT event_id, occurrence_date FROM OccurrenceCache WHERE day = ? ORDER BY occurrence_date ASC LIMIT 1 OFFSET ?");
  }
}

uint64_t CalDatabaseRegisterProgressHandlerForOccurrencesSearch(uint64_t result, uint64_t *a2)
{
  if (*(result + 116) == 1)
  {
    v2 = result;
    v3 = *a2;
    v4 = CDBLockingAssertionsEnabled != 1 || v3 == 0;
    if (!v4 && *v3 && *(*v3 + 104))
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    result = CPSqliteConnectionEnableProgressHandlerCallback();
    *(v2 + 116) = 0;
  }

  return result;
}

uint64_t _CalDatabaseApplicationSearchProgressHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2)
  {
    return v2(*(a2 + 104));
  }

  else
  {
    return 0;
  }
}

uint64_t CalDatabaseUnregisterProgressHandlerForOccurrencesSearch(uint64_t *a1)
{
  v1 = *a1;
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

  return MEMORY[0x1EEDEC8A8](v1);
}

uint64_t CalDatabaseCreateOccurrencesThatMatchEventIdsStatement(void *a1, uint64_t a2)
{
  os_unfair_lock_lock((*(*(a2 + 88) + 24) + 80));
  *(a2 + 120) = 0;
  RecordStore = _CalDatabaseGetRecordStore(*(*(a2 + 88) + 24));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  result = CPRecordStoreGetDatabase();
  if (result)
  {
    v8 = result;
    v9 = _CalFilterCopyQuery(a1);
    if (CDBLockingAssertionsEnabled == 1 && *(v8 + 104))
    {
      v10 = CPRecordStoreGetContext();
      if (v10)
      {
        os_unfair_lock_assert_owner(v10 + 20);
      }
    }

    result = CPSqliteDatabaseStatementForReading();
    *(a2 + 120) = v9;
  }

  return result;
}

void CalDatabaseDeleteOccurrencesThatMatchEventIdsStatement(uint64_t a1, uint64_t **a2)
{
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a2)
      {
        v3 = **a2;
        if (v3)
        {
          if (*(v3 + 104))
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
  }

  CPSqliteStatementReset();
  v5 = *(a1 + 120);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(*(a1 + 88) + 24);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v6 + 20);
  }

  os_unfair_lock_unlock(v6 + 20);
}

void _CalDatabaseCopyEventOccurrencesThatMatchEventIds(uint64_t a1, sqlite3_stmt **a2)
{
  if (__CalDatabaseBeginReadTransaction(*(*(a1 + 88) + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:3268"))
  {
    *(a1 + 64) = 0;
    if (a2)
    {
      sqlite3_bind_double(a2[1], 1, *(a1 + 56));
      sqlite3_bind_double(a2[1], 2, *(a1 + 72));
      v4 = 0;
      while (1)
      {
        v5 = sqlite3_step(a2[1]);
        if (v5 == 100)
        {
          v6 = sqlite3_column_int(a2[1], 0);
          if (!*a1 || CFSetGetValueIfPresent(*a1, v6, 0))
          {
            v7 = sqlite3_column_double(a2[1], 1);
            RecordStore = _CalDatabaseGetRecordStore(*(*(a1 + 88) + 24));
            EventWithUID = _CalGetEventWithUID(RecordStore, v6);
            if (EventWithUID)
            {
              v10 = EventWithUID;
              if (sqlite3_column_type(a2[1], 2) != 5)
              {
                v7 = sqlite3_column_double(a2[1], 2);
              }

              v11 = *(a1 + 88);
              _CalEventOccurrenceCacheLoadInfo(v11);
              v12 = CalEventOccurrenceCreate(v10, *(v11 + 32), v7);
              CFArrayAppendValue(*(a1 + 8), v12);
              ++*(a1 + 80);
              if ((*(a1 + 136) & 1) == 0)
              {
                if (*(a1 + 128) <= v7 + _CalEventGetDuration(v10))
                {
                  *(a1 + 136) = 1;
                }

                *(a1 + 144) = v7;
              }

              v13 = sqlite3_column_double(a2[1], 3);
              v14 = CFDateCreate(0, v13);
              v15 = *(a1 + 56);
              *(a1 + 48) = v15;
              *(a1 + 56) = v13;
              v16 = *(a1 + 16);
              if (v16 && *(a1 + 24))
              {
                v17 = vabdd_f64(v15, v13);
                if ((CFArrayGetCount(v16) || CFArrayGetCount(*(a1 + 24))) && v17 < 2.22044605e-16)
                {
                  ++*(a1 + 64);
                }

                else
                {
                  *(a1 + 64) = 1;
                  v18 = *(a1 + 16);
                  if (v18)
                  {
                    CFArrayAppendValue(v18, v14);
                  }

                  v19 = *(a1 + 24);
                  if (v19)
                  {
                    CFArrayAppendValue(v19, (*(a1 + 80) - 1));
                  }
                }
              }

              CFRelease(v12);
              CFRelease(v14);
              ++v4;
            }
          }
        }

        v21 = CFArrayGetCount(*(a1 + 16)) > 1 && v4 > 0x63;
        if (v5 == 100 && v21)
        {
          v23 = *(a1 + 8);
          if (v23)
          {
            if (*(a1 + 24))
            {
              Count = CFArrayGetCount(v23);
              v25 = *(a1 + 64);
              *(a1 + 80) -= v25;
              if (v25 >= 1)
              {
                v26 = Count - 1;
                v27 = v25 + 1;
                do
                {
                  CFArrayRemoveValueAtIndex(*(a1 + 8), v26--);
                  --v27;
                }

                while (v27 > 1);
              }
            }
          }

          v28 = *(a1 + 16);
          if (v28)
          {
            v29 = CFArrayGetCount(v28);
            CFArrayRemoveValueAtIndex(*(a1 + 16), v29 - 1);
          }

          v30 = *(a1 + 24);
          if (v30)
          {
            v31 = CFArrayGetCount(v30);
            CFArrayRemoveValueAtIndex(*(a1 + 24), v31 - 1);
          }
        }

        if (v5 != 100)
        {
          break;
        }

        if ((v21 | **(a1 + 40)))
        {
          if (!**(a1 + 40))
          {
            goto LABEL_54;
          }

          goto LABEL_53;
        }
      }

      if (v5 - 102) > 0xFFFFFFFD || (sqlite3_errmsg(*(*a2 + 1)), CFLog(), (**(a1 + 40)))
      {
LABEL_53:
        **(a1 + 32) = 0;
      }
    }

LABEL_54:
    v33 = *(*(a1 + 88) + 24);

    __CalDatabaseRollbackTransaction(v33, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:3322");
  }

  else
  {
    v32 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v32, OS_LOG_TYPE_ERROR, "Unable to start transaction", buf, 2u);
    }

    **(a1 + 32) = 0;
  }
}

uint64_t CalEventOccurrenceCacheRebuildIfNeeded(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_DEBUG, "EventKitOC: Checking if we need to rebuild", buf, 2u);
  }

  if (*(a1 + 16) == 1 && CalDatabaseLockForThread(*(a1 + 24)))
  {
    RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
    if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    Database = CPRecordStoreGetDatabase();
    v7 = Database;
    if (!Database)
    {
      goto LABEL_46;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(Database + 104))
      {
        v8 = CPRecordStoreGetContext();
        if (v8)
        {
          os_unfair_lock_assert_owner(v8 + 20);
        }
      }
    }

    v9 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
    v7 = v9;
    if (!v9)
    {
      goto LABEL_46;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v9)
      {
        if (*(*v9 + 104))
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }
    }

    if (CPSqliteConnectionIntegerForPropertyWithDefaultValue() != 30)
    {
      if (__CalDatabaseBeginWriteTransaction(*(a1 + 24), "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:3824"))
      {
        Current = CFAbsoluteTimeGetCurrent();
        v12 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_DEBUG, "EventKitOC: Clearing recurrence rule cached end dates", buf, 2u);
        }

        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v7)
          {
            if (*(*v7 + 104))
            {
              v13 = CPRecordStoreGetContext();
              if (v13)
              {
                os_unfair_lock_assert_owner(v13 + 20);
              }
            }
          }
        }

        CPSqliteConnectionPerformSQL();
        v14 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v15 = v14;
          _CalEventOccurrenceCacheLoadInfo(a1);
          v16 = *(a1 + 32);
          *buf = 138412290;
          v28 = v16;
          _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_DEBUG, "EventKitOC: Rebuilding cache in time zone %@...", buf, 0xCu);
        }

        _RebuildCache_0(a1, v7);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v7)
          {
            if (*(*v7 + 104))
            {
              v17 = CPRecordStoreGetContext();
              if (v17)
              {
                os_unfair_lock_assert_owner(v17 + 20);
              }
            }
          }
        }

        CPSqliteConnectionSetIntegerForProperty();
        v18 = objc_autoreleasePoolPush();
        if (((CFAbsoluteTimeGetCurrent() - Current) * 1000.0) >= 1)
        {
          v19 = [MEMORY[0x1E696AD98] numberWithInteger:@"milliseconds"];
          v26 = v19;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

          CalAnalyticsSendEvent();
        }

        objc_autoreleasePoolPop(v18);
        v21 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v22 = v21;
          v23 = CFAbsoluteTimeGetCurrent();
          *buf = 134217984;
          v28 = v23 - Current;
          _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_DEBUG, "EventKitOC: Cache rebuilt in %f", buf, 0xCu);
        }

        __CalDatabaseCommitTransaction(*(a1 + 24), "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:3853");
        v7 = 1;
        goto LABEL_46;
      }

      CFLog();
    }

    v7 = 0;
LABEL_46:
    CalDatabaseUnlockForThread(*(a1 + 24));
    return v7;
  }

  return 0;
}

uint64_t _CalEventOccurrenceCacheForceRebuild(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v17 = 0;
      v10 = "The occurrence cache is not valid.  Will not rebuild the occurrence cache.";
      v11 = &v17;
LABEL_23:
      _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_DEBUG, v10, v11, 2u);
    }

    return 0;
  }

  if ((CalDatabaseLockForThread(*(a1 + 24)) & 1) == 0)
  {
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v10 = "Could not acquire the database lock.  Will not rebuild the occurrence cache.";
      v11 = buf;
      goto LABEL_23;
    }

    return 0;
  }

  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  v6 = Database;
  if (Database)
  {
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

    v6 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
    if (v6)
    {
      if (__CalDatabaseBeginWriteTransaction(*(a1 + 24), "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:3879"))
      {
        _RebuildCache_0(a1, v6);
        v8 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v14 = 0;
          _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_DEBUG, "The occurrence cache was successfully rebuilt.", v14, 2u);
        }

        __CalDatabaseCommitTransaction(*(a1 + 24), "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:3887");
        v6 = 1;
      }

      else
      {
        v12 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *v15 = 0;
          _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, "Unable to start transaction.  Will not rebuild the occurrence cache.", v15, 2u);
        }

        v6 = 0;
      }
    }
  }

  CalDatabaseUnlockForThread(*(a1 + 24));
  return v6;
}

void _CalEventOccurrenceCacheMarkEventForUpdate(uint64_t a1, void *value)
{
  if (*(a1 + 16) != 1)
  {
    return;
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    if (CFSetContainsValue(v4, value))
    {
      return;
    }
  }

  ID = CPRecordGetID();
  if (ID >= 1)
  {
    v6 = CPRecordGetID();
    v7 = *(a1 + 88);
    if (v7)
    {
      CFDictionaryRemoveValue(v7, value);
    }

    v8 = *(a1 + 104);
    if (v8)
    {
      CFDictionaryRemoveValue(v8, value);
    }

    v9 = *(a1 + 112);
    if (v9 && v6 >= 1)
    {
      CFSetRemoveValue(v9, v6);
LABEL_13:
      Mutable = *(a1 + 96);
      if (!Mutable)
      {
        Mutable = CFSetCreateMutable(0, 0, 0);
        *(a1 + 96) = Mutable;
      }

      CFSetAddValue(Mutable, v6);
      goto LABEL_16;
    }

    if (v6 >= 1)
    {
      goto LABEL_13;
    }
  }

LABEL_16:
  if (*(a1 + 120) && _CalEventIsDisplayable(value))
  {
    CFSetAddValue(*(a1 + 120), value);
  }

  v11 = *(a1 + 128);
  if (v11)
  {
    CFSetRemoveValue(v11, value);
    v12 = *(a1 + 104);
    if (v12)
    {
      CFDictionaryRemoveValue(v12, value);
    }

    if (ID >= 1)
    {
      v13 = *(a1 + 112);
      if (v13)
      {

        CFSetRemoveValue(v13, ID);
      }
    }
  }
}

void _CalEventOccurrenceCacheMarkEventForAlarmUpdate(uint64_t a1, void *value)
{
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 120);
    if (!v4 || !CFSetContainsValue(v4, value))
    {
      v5 = *(a1 + 128);
      if (!v5 || !CFSetContainsValue(v5, value))
      {
        if (CPRecordGetID() >= 1)
        {
          ID = CPRecordGetID();
          v7 = *(a1 + 104);
          if (v7)
          {
            CFDictionaryRemoveValue(v7, value);
          }

          if (ID >= 1)
          {
            Mutable = *(a1 + 112);
            if (!Mutable)
            {
              Mutable = CFSetCreateMutable(0, 0, 0);
              *(a1 + 112) = Mutable;
            }

            CFSetAddValue(Mutable, ID);
          }
        }

        if (*(a1 + 128) && _CalEventIsDisplayable(value))
        {
          v9 = *(a1 + 128);

          CFSetAddValue(v9, value);
        }
      }
    }
  }
}

void _CalEventOccurrenceCacheMarkStoreForDefaultAlarmChanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3 && *(a1 + 16) == 1)
  {
    if (!*(a1 + 136))
    {
      *(a1 + 136) = CFDictionaryCreateMutable(0, 1, 0, 0);
    }

    ID = CPRecordGetID();
    v6 = (CFDictionaryGetValue(*(a1 + 136), ID) | a3);
    v7 = *(a1 + 136);

    CFDictionarySetValue(v7, ID, v6);
  }
}

CFMutableSetRef _CalEventOccurrenceCacheBeginTrackingUpdates(CFMutableSetRef result)
{
  if (!*(result + 15))
  {
    v1 = result;
    v2 = MEMORY[0x1E695E9F8];
    *(result + 15) = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    result = CFSetCreateMutable(0, 0, v2);
    *(v1 + 16) = result;
  }

  return result;
}

void _CalEventOccurrenceCacheUpdateForGlobalDefaultAlarmChangesIfNeeded(uint64_t a1)
{
  v2 = *(a1 + 24);
  __CalDatabaseBeginReadTransaction(v2, "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:4242");
  _CalEventOccurrenceCacheLoadInfo(a1);
  v10 = 0;
  v9 = 0u;
  memset(v8, 0, sizeof(v8));
  __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(v8, a1 + 32);
  __CalDatabaseRollbackTransaction(v2, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:4245");
  v3 = *(*(a1 + 24) + 296);
  GlobalDefaultTimedAlarmOffset = CalAlarmGetGlobalDefaultTimedAlarmOffset(v3);
  GlobalDefaultAllDayAlarmOffset = CalAlarmGetGlobalDefaultAllDayAlarmOffset(v3);
  v6 = GlobalDefaultAllDayAlarmOffset;
  if (GlobalDefaultTimedAlarmOffset != *(&v9 + 1))
  {
    __CalDatabaseBeginWriteTransaction(v2, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:4253");
    _CalEventOccurrenceCacheUpdateForGlobalDefaultAlarmChange(a1, 0);
    if (v6 == v10)
    {
LABEL_6:
      *(&v9 + 1) = GlobalDefaultTimedAlarmOffset;
      v10 = v6;
      __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(v7, v8);
      _CalEventOccurrenceCacheSetRangeInfo(a1, v7);
      __CalDatabaseCommitTransaction(*(a1 + 24), "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:4269");
      goto LABEL_7;
    }

LABEL_5:
    _CalEventOccurrenceCacheUpdateForGlobalDefaultAlarmChange(a1, 1);
    goto LABEL_6;
  }

  if (GlobalDefaultAllDayAlarmOffset != v10)
  {
    __CalDatabaseBeginWriteTransaction(v2, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:4259");
    goto LABEL_5;
  }

LABEL_7:

  __destructor_8_s0_s8_s16_s24_s32(v8);
}

void sub_1DEC68AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __destructor_8_s0_s8_s16_s24_s32(va);
  _Unwind_Resume(a1);
}

void _CalEventOccurrenceCacheUpdateForGlobalDefaultAlarmChange(uint64_t a1, int a2)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!_CalDatabaseGetRecordStore(*(a1 + 24)))
  {
    v12 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v13 = "No record store in _UpdateAlarmsForStoreDefaultAlarmChanges";
    goto LABEL_19;
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
    v12 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v13 = "No db in _UpdateAlarmsForStoreDefaultAlarmChanges";
    goto LABEL_19;
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
    v12 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v13 = "Failed to open connection to database";
LABEL_19:
    _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
    return;
  }

  v9 = v8;
  v10 = *(*(a1 + 24) + 296);
  if (a2)
  {
    GlobalDefaultAllDayAlarmOffset = CalAlarmGetGlobalDefaultAllDayAlarmOffset(v10);
  }

  else
  {
    GlobalDefaultAllDayAlarmOffset = CalAlarmGetGlobalDefaultTimedAlarmOffset(v10);
  }

  v14 = GlobalDefaultAllDayAlarmOffset;
  function = sqlite3_create_function(v9[1], "CALCULATE_ALARM_FIRE_DATE", 3, 526337, 0, _CalculateAlarmFireDateCallback, 0, 0);
  if (function)
  {
    v16 = function;
    v17 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v30 = v16;
      _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, "Failed to create CALCULATE_ALARM_FIRE_DATE function in _UpdateAlarmsForStoreDefaultAlarmChanges, with error code: %i", buf, 8u);
    }

    if (CDBLockingAssertionsEnabled == 1 && *v9 && *(*v9 + 13))
    {
      v18 = CPRecordStoreGetContext();
      if (v18)
      {
        os_unfair_lock_assert_owner(v18 + 20);
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  else
  {
    v19 = @"default_alarm_offset";
    if (a2)
    {
      v19 = @"default_all_day_alarm_offset";
    }

    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UPDATE AlarmCache SET fire_date = CALCULATE_ALARM_FIRE_DATE(        AlarmCache.occurrence_date, IFNULL(AlarmCache.travel_time, 0), ?) WHERE AlarmCache.is_default = 1 AND   AlarmCache.all_day = ?  AND (SELECT %@       FROM Store       WHERE Store.ROWID = AlarmCache.store_id)       IS NULL", v19];
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v6 + 104))
      {
        v20 = CPRecordStoreGetContext();
        if (v20)
        {
          os_unfair_lock_assert_owner(v20 + 20);
        }
      }
    }

    v21 = CPSqliteDatabaseStatementForWriting();
    if (v21)
    {
      v22 = v21;
      sqlite3_bind_int64(*(v21 + 8), 1, v14);
      sqlite3_bind_int(v22[1], 2, a2);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v22)
        {
          v23 = **v22;
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

      CPSqliteStatementPerform();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v22)
        {
          v25 = **v22;
          if (v25)
          {
            if (*(v25 + 104))
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

      CPSqliteStatementReset();
    }

    sqlite3_create_function(v9[1], "CALCULATE_ALARM_FIRE_DATE", 3, 526337, 0, 0, 0, 0);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v9)
      {
        if (*(*v9 + 13))
        {
          v27 = CPRecordStoreGetContext();
          if (v27)
          {
            os_unfair_lock_assert_owner(v27 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
  }
}

void _CalEventOccurrenceCacheSetRangeInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (*(v4 + 336) != 1)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _CalEventOccurrenceCacheSetRangeInfo(CalEventOccurrenceCacheRef, CalCacheRangeInfo)"}];
    [v12 handleFailureInFunction:v13 file:@"CalEventOccurrenceCache.m" lineNumber:1395 description:@"No write transaction when updating occurrence cache range."];

    v4 = *(a1 + 24);
  }

  RecordStore = _CalDatabaseGetRecordStore(v4);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
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

  v11 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(v14, a2);
  _CalEventOccurrenceCacheSetRangeInfoWithConnection(v11, v14);
  __copy_assignment_8_8_s0_s8_s16_s24_s32_t40w16(a1 + 32, a2);
  __destructor_8_s0_s8_s16_s24_s32(a2);
}

void _CalEventOccurrenceCacheStopTrackingUpdatesInternal(uint64_t a1)
{
  if (*(a1 + 136) || *(a1 + 120) || *(a1 + 128))
  {
    v2 = *(*(a1 + 24) + 296);
    context[0] = a1;
    context[1] = CalAlarmGetGlobalDefaultTimedAlarmOffset(v2);
    context[2] = CalAlarmGetGlobalDefaultAllDayAlarmOffset(v2);
    v3 = *(a1 + 136);
    if (v3)
    {
      CFDictionaryApplyFunction(v3, _UpdateAlarmsForStoreDefaultAlarmChanges, context);
      CFRelease(*(a1 + 136));
      *(a1 + 136) = 0;
    }

    v4 = *(a1 + 120);
    if (v4)
    {
      CFSetApplyFunction(v4, _GenerateDatesForOccurrenceCache, context);
      CFRelease(*(a1 + 120));
      *(a1 + 120) = 0;
    }

    v5 = *(a1 + 128);
    if (v5)
    {
      CFSetApplyFunction(v5, _GenerateDatesForAlarmCache, context);
      CFRelease(*(a1 + 128));
      *(a1 + 128) = 0;
    }
  }
}

void _CalEventOccurrenceCacheRevert(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    CFRelease(v2);
    a1[15] = 0;
  }

  v3 = a1[16];
  if (v3)
  {
    CFRelease(v3);
    a1[16] = 0;
  }

  v4 = a1[11];
  if (v4)
  {
    CFDictionaryRemoveAllValues(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    CFSetRemoveAllValues(v5);
  }

  v6 = a1[13];
  if (v6)
  {
    CFDictionaryRemoveAllValues(v6);
  }

  v7 = a1[14];
  if (v7)
  {
    CFSetRemoveAllValues(v7);
  }

  v8 = a1[17];
  if (v8)
  {

    CFDictionaryRemoveAllValues(v8);
  }
}

void _CalEventOccurrenceCacheStopTrackingUpdatesAndSave(CFDictionaryRef *a1, void *a2)
{
  _CalEventOccurrenceCacheStopTrackingUpdatesInternal(a1);
  v4 = a1[12];
  if (v4 && CFSetGetCount(v4) >= 1)
  {
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

    v6 = CPSqliteConnectionStatementForSQL();
    if (v6)
    {
      CFSetApplyFunction(a1[12], _CalEventOccurrenceCacheProcessDeletes, v6);
    }

    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
          {
            v7 = CPRecordStoreGetContext();
            if (v7)
            {
              os_unfair_lock_assert_owner(v7 + 20);
            }
          }
        }
      }
    }

    v8 = CPSqliteConnectionStatementForSQL();
    if (v8)
    {
      CFSetApplyFunction(a1[12], _CalEventOccurrenceCacheProcessDeletes, v8);
    }

    CalPerformSQLWithConnection(a2, @"DELETE FROM OccurrenceCacheDays WHERE count = 0;");
    CFSetRemoveAllValues(a1[12]);
  }

  v9 = a1[14];
  if (v9 && CFSetGetCount(v9) >= 1)
  {
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
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

    v11 = CPSqliteConnectionStatementForSQL();
    if (v11)
    {
      CFSetApplyFunction(a1[14], _CalEventOccurrenceCacheProcessDeletes, v11);
    }

    CFSetRemoveAllValues(a1[14]);
  }

  v21 = 0;
  v22 = 0;
  v15[0] = a1;
  v15[1] = &v22;
  v15[2] = &v21;
  v15[3] = a2;
  v16 = *MEMORY[0x1E6993100];
  v17 = v16;
  v18 = v16;
  v19 = v16;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v20 = vnegq_f64(v12);
  v13 = a1[11];
  if (v13 && CFDictionaryGetCount(v13) >= 1)
  {
    CFDictionaryApplyFunction(a1[11], _CalEventOccurrenceCacheProcessAdds, v15);
    CFDictionaryRemoveAllValues(a1[11]);
  }

  v14 = a1[13];
  if (v14)
  {
    if (CFDictionaryGetCount(v14) >= 1)
    {
      CFDictionaryApplyFunction(a1[13], _CalEventAlarmCacheProcessAdds, v15);
      CFDictionaryRemoveAllValues(a1[13]);
    }
  }
}

uint64_t _CalEventOccurrenceCacheMigrateEventOccurrencesWithConnection(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  ID = CPRecordGetID();
  v6 = CPRecordGetID();
  v7 = *MEMORY[0x1E695E480];
  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE OccurrenceCacheDays SET store_id = %d WHERE store_id = %d;", v6, ID);
  if (result)
  {
    v9 = result;
    CalPerformSQLWithConnection(a2, result);
    CFRelease(v9);
    result = CFStringCreateWithFormat(v7, 0, @"UPDATE OccurrenceCache SET store_id = %d WHERE store_id = %d;", v6, ID);
    if (result)
    {
      v10 = result;
      CalPerformSQLWithConnection(a2, result);
      CFRelease(v10);
      return 1;
    }
  }

  return result;
}

uint64_t _CalEventOccurrenceCacheMigrateEventOccurrencesBetweenCalendars(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E695E480];
  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE OccurrenceCacheDays SET calendar_id = %d WHERE calendar_id = %d;", a4, a3);
  if (result)
  {
    v9 = result;
    CalPerformSQLWithConnection(a2, result);
    CFRelease(v9);
    result = CFStringCreateWithFormat(v7, 0, @"UPDATE OccurrenceCache SET calendar_id = %d WHERE calendar_id = %d;", a4, a3);
    if (result)
    {
      v10 = result;
      CalPerformSQLWithConnection(a2, result);
      CFRelease(v10);
      return 1;
    }
  }

  return result;
}

uint64_t _CalEventOccurrenceCacheGenerateOccurrencesInDateRange(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v188 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2112;
    *&buf[14] = v10;
    _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_DEBUG, "Rebuilding occurrence cache from start date [%@] to end date [%@].", buf, 0x16u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  _CalEventOccurrenceCacheLoadInfo(a1);
  CFAbsoluteTimeGetCurrent();
  cf = CalCFTimeZoneCopyCalTimeZone();
  v15 = _CalEventOccurrenceCacheGetCacheCalendar(a1);
  v16 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
  v17 = [v16 timeZone];
  v18 = [v15 timeZone];
  v19 = [v9 dateInTimeZone:v17 fromTimeZone:v18];

  v143 = v16;
  v20 = [v16 timeZone];
  v167 = v15;
  v21 = [v15 timeZone];
  v22 = [v10 dateInTimeZone:v20 fromTimeZone:v21];

  v23 = CalFilterCreateWithDatabaseShowingAllIncludingDisabledStores(*(a1 + 24));
  v24 = *(a1 + 24);
  [v9 timeIntervalSinceReferenceDate];
  v26 = v25;
  [v10 timeIntervalSinceReferenceDate];
  v28 = v27;
  v148 = v19;
  v29 = v19;
  v30 = v22;
  [v29 timeIntervalSinceReferenceDate];
  v32 = v31;
  [v22 timeIntervalSinceReferenceDate];
  v34 = _CalDatabaseCopyNonRecurringEventsInDateRange(v24, a2, v23, v26, v28, v32, v33);
  v35 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v36 = MEMORY[0x1E696AD98];
    v37 = v35;
    v38 = [v36 numberWithUnsignedInteger:{objc_msgSend(v34, "count")}];
    *buf = 138412290;
    *&buf[4] = v38;
    _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_DEBUG, "Found [%@] non-recurring events in the date range.", buf, 0xCu);
  }

  v39 = *(a1 + 24);
  [v9 timeIntervalSinceReferenceDate];
  v41 = v40;
  [v10 timeIntervalSinceReferenceDate];
  v43 = v42;
  [v148 timeIntervalSinceReferenceDate];
  v45 = v44;
  [v30 timeIntervalSinceReferenceDate];
  v47 = _CalDatabaseCopyRecurringEventsPossiblyOccurringInDateRange(v39, v23, cf, v41, v43, v45, v46);
  v48 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v49 = MEMORY[0x1E696AD98];
    v50 = v48;
    v51 = [v49 numberWithUnsignedInteger:{objc_msgSend(v47, "count")}];
    *buf = 138412290;
    *&buf[4] = v51;
    _os_log_impl(&dword_1DEBB1000, v50, OS_LOG_TYPE_DEBUG, "Found [%@] recurring events possibly in the date range.", buf, 0xCu);
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    if (v34)
    {
      v189.length = CFArrayGetCount(v34);
      v189.location = 0;
      CFArrayAppendArray(Mutable, v34, v189);
    }

    if (v47)
    {
      v190.length = CFArrayGetCount(v47);
      v190.location = 0;
      CFArrayAppendArray(Mutable, v47, v190);
    }
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  CFRelease(v23);
  v53 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v54 = MEMORY[0x1E696AD98];
    v55 = v53;
    v56 = [v54 numberWithDouble:CFAbsoluteTimeGetCurrent() - Current];
    v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](Mutable, "count")}];
    *buf = 138412546;
    *&buf[4] = v56;
    *&buf[12] = 2112;
    *&buf[14] = v57;
    _os_log_impl(&dword_1DEBB1000, v55, OS_LOG_TYPE_DEBUG, "Occurrence cache candidate event fetching took [%@] seconds and found [%@] total events.", buf, 0x16u);
  }

  v58 = CFAbsoluteTimeGetCurrent();
  v144 = v12;
  v145 = v11;
  v142 = v30;
  if (Mutable)
  {
    v59 = *(*(a1 + 24) + 296);
    GlobalDefaultTimedAlarmOffset = CalAlarmGetGlobalDefaultTimedAlarmOffset(v59);
    v139 = v59;
    GlobalDefaultAllDayAlarmOffset = CalAlarmGetGlobalDefaultAllDayAlarmOffset(v59);
    v173 = 0;
    *buf = a1;
    *&buf[8] = 0;
    *&buf[16] = &v173;
    v181 = a2;
    [v9 timeIntervalSinceReferenceDate];
    v182 = v62;
    [v10 timeIntervalSinceReferenceDate];
    v183 = v63;
    [v11 timeIntervalSinceReferenceDate];
    v184 = v64;
    [v12 timeIntervalSinceReferenceDate];
    v185 = v65;
    v186 = GlobalDefaultTimedAlarmOffset;
    v187 = GlobalDefaultAllDayAlarmOffset;
    Count = CFArrayGetCount(Mutable);
    v172 = 0;
    if (Count >= 1)
    {
      v68 = Count;
      v151 = 0;
      v69 = 0;
      v70 = *MEMORY[0x1E6993100];
      *&v67 = 134218240;
      v138 = v67;
      v146 = Count;
      v147 = Mutable;
      v140 = v9;
      v162 = v10;
      while (1)
      {
        v71 = objc_autoreleasePoolPush();
        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v69);
        v73 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v74 = MEMORY[0x1E696AD98];
          v75 = v73;
          v76 = [v74 numberWithInt:CPRecordGetID()];
          v77 = _CalEventCopySummary(ValueAtIndex);
          v78 = ValueAtIndex;
          v79 = v71;
          v80 = v77;
          *v174 = 138412546;
          v175 = v76;
          v176 = 2112;
          v177 = v77;
          _os_log_impl(&dword_1DEBB1000, v75, OS_LOG_TYPE_DEBUG, "Analyzing occurrence cache candidate event.   Row ID: [%@]  Title: [%@]", v174, 0x16u);

          v71 = v79;
          ValueAtIndex = v78;
        }

        if ((_CalEventIsDisplayable(ValueAtIndex) & 1) == 0)
        {
          v85 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v86 = MEMORY[0x1E696AD98];
            v87 = v85;
            v88 = [v86 numberWithInt:CPRecordGetID()];
            *v174 = 138412290;
            v175 = v88;
            _os_log_impl(&dword_1DEBB1000, v87, OS_LOG_TYPE_DEBUG, "Event with row ID [%@] is not displayable.  Will not insert into occurrence cache.", v174, 0xCu);
          }

          goto LABEL_72;
        }

        v150 = v69;
        v81 = v9;
        *&v82 = COERCE_DOUBLE(_CalEventGetStartDate(ValueAtIndex));
        _CalEventOccurrenceCacheLoadInfo(a1);
        v83 = v81;
        DayCount = _CalEventGetDayCount(ValueAtIndex, *(a1 + 32));
        if (DayCount >= 2)
        {
          v83 = [v81 dateByAddingDays:1 - DayCount inCalendar:v167];

          if (DayCount >= 0x186A1)
          {
            break;
          }
        }

        context = v82;
        v89 = v9;
        IsReminderIntegrationEvent = _CalEventIsReminderIntegrationEvent(ValueAtIndex);
        v91 = [v167 timeZone];
        v154 = IsReminderIntegrationEvent;
        v92 = _CalEventCopyOccurrenceDatesInDateRange(ValueAtIndex, v83, v10, v91, IsReminderIntegrationEvent);

        theArray = v92;
        if (v92)
        {
          v166 = ValueAtIndex;
          v93 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v94 = v71;
            v95 = MEMORY[0x1E696AD98];
            v96 = v93;
            v97 = [v95 numberWithUnsignedInteger:{-[__CFArray count](v92, "count")}];
            v98 = [MEMORY[0x1E696AD98] numberWithInt:CPRecordGetID()];
            v99 = [MEMORY[0x1E696AD98] numberWithInt:DayCount];
            *v174 = 138412802;
            v175 = v97;
            v176 = 2112;
            v177 = v98;
            v178 = 2112;
            v179 = v99;
            _os_log_impl(&dword_1DEBB1000, v96, OS_LOG_TYPE_DEBUG, "Found [%@] occurrence dates in the date range for candidate event with row ID [%@].  Number of days spanned: [%@]", v174, 0x20u);

            v68 = v146;
            Mutable = v147;

            v71 = v94;
          }

          v157 = CFArrayGetCount(v92);
          if (v157 * DayCount < 100001)
          {
            ID = CPRecordGetID();
            CalendarId = _CalEventGetCalendarId(v166);
            StoreId = _CalCalendarItemGetStoreId(v166);
            IsAllDay = _CalEventIsAllDay(v166);
            v101 = _CalEventCopyTravelTime(v166);
            v153 = [v101 intValue];

            v170 = 0;
            v171 = 0;
            _CalEventGetLargestPossibleAlarmOffsets(v166, &v171, &v170);
            v165 = ID;
            v9 = v89;
            if (ID == -1)
            {
              v102 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                v103 = v102;
                DebugDescription = _CalEntityGetDebugDescription(v166);
                *v174 = 138412290;
                v175 = DebugDescription;
                _os_log_impl(&dword_1DEBB1000, v103, OS_LOG_TYPE_ERROR, "Inserting an event with id -1 into the occurrence cache in _CalEventOccurrenceCacheGenerateOccurrencesInDateRange. event=%@", v174, 0xCu);
              }

              _CalDatabaseIntegrityError(*(a1 + 24), @"Insert Corrupt Occurrence - GenerateOccurrences");
            }

            EndDate = _CalRecurrenceGetEndDate(v166);
            if (v157 >= 1)
            {
              v141 = v83;
              v106 = 0;
              v107 = (EndDate - *&context);
              do
              {
                contexta = objc_autoreleasePoolPush();
                v108 = CFArrayGetValueAtIndex(theArray, v106);
                v109 = v70;
                if (v154)
                {
                  v109 = v70;
                  if (v106 + 1 < v157)
                  {
                    v110 = CFArrayGetValueAtIndex(theArray, v106 + 1);
                    [v110 timeIntervalSinceReferenceDate];
                    v109 = v111;
                  }
                }

                v168 = 0.0;
                v169 = 0.0;
                [v108 timeIntervalSinceReferenceDate];
                _CalEventOccurrenceCacheGetMostExtremeAlarmDates(v171, v170, v153, &v169, &v168, v112);
                v113 = v108;
                if (DayCount >= 1)
                {
                  v114 = 0;
                  v113 = v108;
                  do
                  {
                    v115 = objc_autoreleasePoolPush();
                    if (v114)
                    {
                      v116 = [v108 dateByAddingDays:v114 inCalendar:v167];
                      v117 = [v167 startOfDayForDate:v116];

                      v113 = v117;
                    }

                    v118 = CDBLogHandle;
                    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
                    {
                      v119 = MEMORY[0x1E696AD98];
                      v120 = v118;
                      v121 = [v119 numberWithInt:CPRecordGetID()];
                      *v174 = 138412546;
                      v175 = v113;
                      v176 = 2112;
                      v177 = v121;
                      _os_log_impl(&dword_1DEBB1000, v120, OS_LOG_TYPE_DEBUG, "Determining if occurrence chunk with date [%@] for event with row ID [%@] should be included in the occurrence cache.", v174, 0x16u);
                    }

                    if ([v113 CalIsAfterOrSameAsDate:v81])
                    {
                      if ([v113 CalIsAfterOrSameAsDate:v162])
                      {
                        objc_autoreleasePoolPop(v115);
                        break;
                      }

                      v122 = [v108 CalDateByComponentwiseAddingSeconds:v107 inCalendar:v167];
                      [v113 timeIntervalSinceReferenceDate];
                      v124 = v123;
                      v125 = v70;
                      if (v114)
                      {
                        [v108 timeIntervalSinceReferenceDate];
                        v125 = v126;
                      }

                      [v122 timeIntervalSinceReferenceDate];
                      if (v114)
                      {
                        v128 = v70;
                      }

                      else
                      {
                        v128 = v169;
                      }

                      if (v114)
                      {
                        v129 = v70;
                      }

                      else
                      {
                        v129 = v168;
                      }

                      _CalEventOccurrenceCacheInsertOccurrence(a1, a2, &v172, v165, CalendarId, StoreId, v124, v125, v127, v109, v128, v129);
                    }

                    objc_autoreleasePoolPop(v115);
                    ++v114;
                  }

                  while (DayCount != v114);
                }

                [v108 timeIntervalSinceReferenceDate];
                _CalAlarmCacheProcessAddedEvent(buf, v166, v165, StoreId, IsAllDay, v153, v130);

                objc_autoreleasePoolPop(contexta);
                ++v106;
              }

              while (v106 != v157);
              v151 = 1;
              v9 = v140;
              v83 = v141;
              v10 = v162;
              v68 = v146;
              Mutable = v147;
            }

            CFRelease(theArray);
            v69 = v150;
            goto LABEL_71;
          }

          v131 = CDBLogHandle;
          v9 = v89;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *v174 = v138;
            v175 = v157;
            v176 = 1024;
            LODWORD(v177) = DayCount;
            _os_log_impl(&dword_1DEBB1000, v131, OS_LOG_TYPE_ERROR, "EventKitOC: Event duration is too long, not adding to occurrence cache (asked to add %li occurrences each with %i days).", v174, 0x12u);
          }

          CFRelease(theArray);
          goto LABEL_70;
        }

        v69 = v150;
        v9 = v89;
LABEL_71:

LABEL_72:
        objc_autoreleasePoolPop(v71);
        if (++v69 == v68)
        {
          goto LABEL_76;
        }
      }

      v84 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v174 = 67109120;
        LODWORD(v175) = DayCount;
        _os_log_impl(&dword_1DEBB1000, v84, OS_LOG_TYPE_ERROR, "EventKitOC: Event duration is too long, not adding to occurrence cache (asked to add occurrences with %i days each).", v174, 8u);
      }

LABEL_70:
      v69 = v150;
      goto LABEL_71;
    }

    v151 = 0;
LABEL_76:
    CFRelease(Mutable);

    v132 = v151;
  }

  else
  {
    v132 = 0;
  }

  v133 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v134 = v133;
    v135 = CFAbsoluteTimeGetCurrent() - v58;
    v136 = [MEMORY[0x1E696AD98] numberWithBool:v132 & 1];
    *buf = 134218242;
    *&buf[4] = v135;
    *&buf[12] = 2112;
    *&buf[14] = v136;
    _os_log_impl(&dword_1DEBB1000, v134, OS_LOG_TYPE_DEBUG, "Occurrence cache rebuilt.  Took [%f] seconds.  Was cache modified: [%@]", buf, 0x16u);
  }

  CFRelease(cf);

  return v132 & 1;
}

uint64_t _CalAlarmCacheGenerateAlarmsInDateRange(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v118 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = CDBLogHandle;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_DEBUG, "Rebuilding alarm cache from start date [%{public}@] to end date [%{public}@].", buf, 0x16u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  v18 = v12;
  v19 = v13;
  if (!_CalDatabaseGetRecordStore(*(a1 + 24)))
  {
    goto LABEL_15;
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
    goto LABEL_15;
  }

  [v18 timeIntervalSinceReferenceDate];
  v23 = v22;
  [v19 timeIntervalSinceReferenceDate];
  v25 = v24;
  GlobalDefaultTimedAlarmOffset = CalAlarmGetGlobalDefaultTimedAlarmOffset(*(*(a1 + 24) + 296));
  GlobalDefaultAllDayAlarmOffset = CalAlarmGetGlobalDefaultAllDayAlarmOffset(*(*(a1 + 24) + 296));
  pApp = GlobalDefaultTimedAlarmOffset;
  v110 = GlobalDefaultAllDayAlarmOffset;
  v28 = sqlite3_create_function(*(a2 + 8), "ALARM_FIRE_DATE", 7, 526337, &pApp, _AlarmFireDateCallback, 0, 0);
  if (v28)
  {
    v29 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v28;
      v30 = "Failed to create ALARM_FIRE_DATE function in _CalAlarmCacheGenerateAlarmsForEventsInOccurrenceCacheInDateRange, with error code: %i";
      v31 = buf;
LABEL_14:
      _os_log_impl(&dword_1DEBB1000, v29, OS_LOG_TYPE_ERROR, v30, v31, 8u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  *buf = v23;
  *&buf[8] = v25;
  *&buf[16] = GlobalDefaultTimedAlarmOffset;
  v102 = GlobalDefaultAllDayAlarmOffset;
  function = sqlite3_create_function(*(a2 + 8), "ALARM_SHOULD_BE_IN_CACHE", 7, 526337, buf, _AlarmShouldBeInCacheCallback, 0, 0);
  if (function)
  {
    v29 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v95 = 67109120;
      v96 = function;
      v30 = "Failed to create ALARM_SHOULD_BE_IN_CACHE function in _CalAlarmCacheGenerateAlarmsForEventsInOccurrenceCacheInDateRange, with error code: %i";
      v31 = v95;
      goto LABEL_14;
    }

LABEL_15:
    v33 = 0;
    goto LABEL_16;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(Database + 104))
    {
      v84 = CPRecordStoreGetContext();
      if (v84)
      {
        os_unfair_lock_assert_owner(v84 + 20);
      }
    }
  }

  v85 = CPSqliteDatabaseStatementForWriting();
  v86 = v85;
  if (v85)
  {
    sqlite3_bind_double(*(v85 + 8), 1, v23);
    sqlite3_bind_double(v86[1], 2, v25);
    sqlite3_bind_double(v86[1], 3, v23);
    sqlite3_bind_double(v86[1], 4, v25);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v86)
      {
        v87 = **v86;
        if (v87)
        {
          if (*(v87 + 104))
          {
            v88 = CPRecordStoreGetContext();
            if (v88)
            {
              os_unfair_lock_assert_owner(v88 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementPerform();
    v33 = sqlite3_changes((*v86)[1]) > 0;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v86)
      {
        v89 = **v86;
        if (v89)
        {
          if (*(v89 + 104))
          {
            v90 = CPRecordStoreGetContext();
            if (v90)
            {
              os_unfair_lock_assert_owner(v90 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  else
  {
    v33 = 0;
  }

  sqlite3_create_function(*(a2 + 8), "ALARM_FIRE_DATE", 7, 526337, 0, 0, 0, 0);
  sqlite3_create_function(*(a2 + 8), "ALARM_SHOULD_BE_IN_CACHE", 7, 526337, 0, 0, 0, 0);
LABEL_16:

  __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(v93, a5);
  v34 = v18;
  v35 = v19;
  v36 = v14;
  v37 = v15;
  _CalEventOccurrenceCacheLoadInfo(a1);
  if (CalEventOccurrenceCacheGetLongAlarmIntervals_onceToken != -1)
  {
    _CalAlarmCacheGenerateAlarmsInDateRange_cold_1();
  }

  v38 = *&CalEventOccurrenceCacheGetLongAlarmIntervals_longNegativeInterval;
  v39 = *&CalEventOccurrenceCacheGetLongAlarmIntervals_longPositiveInterval;
  v40 = v34;
  v41 = v35;
  if (!_CalDatabaseGetRecordStore(*(a1 + 24)))
  {
    goto LABEL_26;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    v42 = CPRecordStoreGetContext();
    if (v42)
    {
      os_unfair_lock_assert_owner(v42 + 20);
    }
  }

  v43 = CPRecordStoreGetDatabase();
  if (!v43)
  {
    goto LABEL_26;
  }

  [v40 timeIntervalSinceReferenceDate];
  v45 = v44;
  [v41 timeIntervalSinceReferenceDate];
  v47 = v46;
  v48 = CalAlarmGetGlobalDefaultTimedAlarmOffset(*(*(a1 + 24) + 296));
  v49 = CalAlarmGetGlobalDefaultAllDayAlarmOffset(*(*(a1 + 24) + 296));
  *buf = v48;
  *&buf[8] = v49;
  v50 = sqlite3_create_function(*(a2 + 8), "ALARM_FIRE_DATE", 7, 526337, buf, _AlarmFireDateCallback, 0, 0);
  if (v50)
  {
    v51 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(pApp) = 67109120;
      HIDWORD(pApp) = v50;
      _os_log_impl(&dword_1DEBB1000, v51, OS_LOG_TYPE_ERROR, "Failed to create ALARM_FIRE_DATE function in _CalAlarmCacheGenerateAlarmsForNonRecurringEventsNotInOccurrenceCacheInDateRange, with error code: %i", &pApp, 8u);
    }

LABEL_26:
    v52 = 0;
    goto LABEL_27;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(v43 + 104))
    {
      v77 = CPRecordStoreGetContext();
      if (v77)
      {
        os_unfair_lock_assert_owner(v77 + 20);
      }
    }
  }

  v78 = CPSqliteDatabaseStatementForWriting();
  v79 = v78;
  if (v78)
  {
    sqlite3_bind_double(*(v78 + 8), 1, v45);
    sqlite3_bind_double(v79[1], 2, v47);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v79)
      {
        v80 = **v79;
        if (v80)
        {
          if (*(v80 + 104))
          {
            v81 = CPRecordStoreGetContext();
            if (v81)
            {
              os_unfair_lock_assert_owner(v81 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementPerform();
    v52 = sqlite3_changes((*v79)[1]) > 0;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v79)
      {
        v82 = **v79;
        if (v82)
        {
          if (*(v82 + 104))
          {
            v83 = CPRecordStoreGetContext();
            if (v83)
            {
              os_unfair_lock_assert_owner(v83 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  else
  {
    v52 = 0;
  }

  sqlite3_create_function(*(a2 + 8), "ALARM_FIRE_DATE", 7, 526337, 0, 0, 0, 0);
LABEL_27:

  __copy_constructor_8_8_s0_s8_s16_s24_s32_t40w16(v95, v93);
  v53 = v40;
  v54 = v41;
  v55 = v36;
  v56 = v37;
  if (!_CalDatabaseGetRecordStore(*(a1 + 24)))
  {
    goto LABEL_52;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    v57 = CPRecordStoreGetContext();
    if (v57)
    {
      os_unfair_lock_assert_owner(v57 + 20);
    }
  }

  v58 = CPRecordStoreGetDatabase();
  if (v58)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v58 + 104))
      {
        v59 = CPRecordStoreGetContext();
        if (v59)
        {
          os_unfair_lock_assert_owner(v59 + 20);
        }
      }
    }

    v60 = CPSqliteDatabaseStatementForReading();
    if (v60)
    {
      v91 = v52;
      pApp = *(a1 + 24);
      v110 = v53;
      v111 = v54;
      v112 = v55;
      v113 = v56;
      v114 = v38;
      v115 = v39;
      v116 = *(a1 + 32);
      theDict = 0;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v60)
        {
          v61 = **v60;
          if (v61)
          {
            if (*(v61 + 104))
            {
              v62 = CPRecordStoreGetContext();
              if (v62)
              {
                os_unfair_lock_assert_owner(v62 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementSendResults();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v60)
        {
          v63 = **v60;
          if (v63)
          {
            if (*(v63 + 104))
            {
              v64 = CPRecordStoreGetContext();
              if (v64)
              {
                os_unfair_lock_assert_owner(v64 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
      v65 = CalAlarmGetGlobalDefaultTimedAlarmOffset(*(*(a1 + 24) + 296));
      v66 = CalAlarmGetGlobalDefaultAllDayAlarmOffset(*(*(a1 + 24) + 296));
      v94 = 0;
      *buf = a1;
      *&buf[8] = 0;
      *&buf[16] = &v94;
      v102 = a2;
      [v97 timeIntervalSinceReferenceDate];
      v103 = v67;
      [v98 timeIntervalSinceReferenceDate];
      v104 = v68;
      [v99 timeIntervalSinceReferenceDate];
      v105 = v69;
      [v100 timeIntervalSinceReferenceDate];
      v106 = v70;
      v107 = v65;
      v108 = v66;
      v71 = theDict != 0;
      if (theDict)
      {
        CFDictionaryApplyFunction(theDict, _CalEventAlarmCacheProcessAdds, buf);
        CFRelease(theDict);
      }

      __destructor_8_s8_s16_s24_s32_s56(&pApp);
      v52 = v91;
    }

    else
    {
      v71 = 0;
    }
  }

  else
  {
LABEL_52:
    v71 = 0;
  }

  __destructor_8_s0_s8_s16_s24_s32(v95);
  __destructor_8_s0_s8_s16_s24_s32(v93);

  v72 = v52 || v71;
  v73 = CDBLogHandle;
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
  {
    v74 = CFAbsoluteTimeGetCurrent();
    v75 = [MEMORY[0x1E696AD98] numberWithBool:v33 | v72];
    *buf = 134218242;
    *&buf[4] = v74 - Current;
    *&buf[12] = 2112;
    *&buf[14] = v75;
    _os_log_impl(&dword_1DEBB1000, v73, OS_LOG_TYPE_DEBUG, "Alarm cache extended.  Took [%f] seconds.  Was cache modified: [%@]", buf, 0x16u);
  }

  __destructor_8_s0_s8_s16_s24_s32(a5);
  return v33 | v72;
}

void sub_1DEC6AEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  __destructor_8_s8_s16_s24_s32_s56(va);
  __destructor_8_s0_s8_s16_s24_s32(&a19);
  __destructor_8_s0_s8_s16_s24_s32(&a11);
  __destructor_8_s0_s8_s16_s24_s32(a10);
  _Unwind_Resume(a1);
}

uint64_t _CalEventGetDayCount(uint64_t a1, const __CFTimeZone *a2)
{
  if (!a2 || (v3 = a2, _CalEventIsAllDay(a1)) || _CalCalendarItemIsFloating(a1))
  {
    v4 = CalTimeZoneCopyCFTimeZone();
    v3 = v4;
  }

  else
  {
    v4 = 0;
  }

  _CalEventGetStartDate(a1);
  _CalRecurrenceGetEndDate(a1);
  _CalEventIsAllDay(a1);
  CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
  CalGregorianDateGetGregorianDateForDay();
  CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
  CalGregorianDateGetGregorianDateForDay();
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  v6 = v5;
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  CFAbsoluteTimeGetDifferenceAsGregorianUnits(&v10, v7, v6, v3, 4uLL);
  days = v10.days;
  if (v4)
  {
    CFRelease(v4);
  }

  return (days & ~(days >> 31)) + 1;
}

uint64_t _CalEventOccurrenceCacheGetMostExtremeAlarmDates(uint64_t result, uint64_t a2, uint64_t a3, double *a4, double *a5, double a6)
{
  v6 = MEMORY[0x1E6993100];
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = *MEMORY[0x1E6993100];
  }

  else
  {
    v8 = result + 3600;
    if (result <= 32399)
    {
      v8 = result;
    }

    if (v8 < -53999)
    {
      v8 -= 3600;
    }

    v7 = a6 - a3 + v8;
  }

  *a4 = v7;
  if (a2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = *v6;
  }

  else
  {
    v10 = a2 + 3600;
    if (a2 <= 32399)
    {
      v10 = a2;
    }

    if (v10 < -53999)
    {
      v10 -= 3600;
    }

    v9 = a6 - a3 + v10;
  }

  *a5 = v9;
  return result;
}

void _CalEventOccurrenceCacheInsertOccurrence(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5, void *a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v60 = *MEMORY[0x1E69E9840];
  if (a4 == -1)
  {
    v37 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v37, OS_LOG_TYPE_ERROR, "Skipping occurrence cache insert for event with id == -1", buf, 2u);
    }
  }

  else
  {
    v14 = a4;
    _CalEventOccurrenceCacheLoadInfo(a1);
    CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
    CalGregorianDateGetGregorianDateForDay();
    _CalEventOccurrenceCacheLoadInfo(a1);
    EKGregorianDateGetAbsoluteTimeWithCFTimeZone();
    v25 = v24;
    v26 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v27 = MEMORY[0x1E696AD98];
      log = v26;
      [v27 numberWithInt:v14];
      v14 = v48 = v14;
      v28 = a5;
      a5 = [MEMORY[0x1E696AD98] numberWithInt:a5];
      v29 = [MEMORY[0x1E696AD98] numberWithInt:a6];
      v50 = a6;
      [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a7];
      v46 = v49 = v28;
      v30 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a8];
      v31 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a9];
      a6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v25];
      *buf = 138413826;
      *v52 = v14;
      *&v52[8] = 2112;
      v53 = a5;
      *v54 = 2112;
      *&v54[2] = v29;
      *v55 = 2112;
      *&v55[2] = v46;
      *v56 = 2112;
      *&v56[2] = v30;
      *v57 = 2112;
      *&v57[2] = v31;
      v58 = 2112;
      v59 = a6;
      _os_log_impl(&dword_1DEBB1000, log, OS_LOG_TYPE_DEBUG, "Inserting occurrence into occurrence cache.  event_id: [%@],  calendar_id: [%@], store_id: [%@], occurrence_date: [%@], occurrence_start_date: [%@].  occurrence_end_date: [%@], day: [%@]", buf, 0x48u);

      LODWORD(v14) = v48;
      LODWORD(a6) = v50;

      LODWORD(a5) = v49;
    }

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

    if (CPSqliteConnectionGetActiveTransactionType() == 0xFFFF)
    {
      NSLog(&cfstr_EventkitocErro.isa);
    }

    v33 = *a3;
    if (*a3)
    {
      goto LABEL_20;
    }

    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
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
    }

    v33 = CPSqliteConnectionStatementForSQL();
    *a3 = v33;
    if (v33)
    {
LABEL_20:
      sqlite3_bind_double(*(v33 + 8), 1, v25);
      sqlite3_bind_int(*(*a3 + 8), 2, v14);
      sqlite3_bind_int(*(*a3 + 8), 3, a5);
      sqlite3_bind_int(*(*a3 + 8), 4, a6);
      sqlite3_bind_double(*(*a3 + 8), 5, a7);
      v35 = *MEMORY[0x1E6993100];
      v36 = *(*a3 + 8);
      if (vabdd_f64(a8, *MEMORY[0x1E6993100]) >= 2.22044605e-16)
      {
        sqlite3_bind_double(v36, 6, a8);
      }

      else
      {
        sqlite3_bind_null(v36, 6);
      }

      sqlite3_bind_double(*(*a3 + 8), 7, a9);
      v38 = *(*a3 + 8);
      if (v35 == a10)
      {
        sqlite3_bind_null(v38, 8);
      }

      else
      {
        sqlite3_bind_double(v38, 8, a10);
      }

      sqlite3_bind_double(*(*a3 + 8), 9, a11);
      sqlite3_bind_double(*(*a3 + 8), 10, a12);
      v39 = *a3;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v39)
        {
          if (*v39)
          {
            v40 = **v39;
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
      }

      if (CPSqliteStatementPerform() == 19)
      {
        v42 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
        {
          *buf = 67110656;
          *v52 = v14;
          *&v52[4] = 1024;
          *&v52[6] = a5;
          LOWORD(v53) = 1024;
          *(&v53 + 2) = a6;
          HIWORD(v53) = 2048;
          *v54 = a7;
          *&v54[8] = 2048;
          *v55 = a8;
          *&v55[8] = 2048;
          *v56 = a9;
          *&v56[8] = 2048;
          *v57 = v25;
          _os_log_impl(&dword_1DEBB1000, v42, OS_LOG_TYPE_FAULT, "Attempted to insert a duplicate occurrence into the occurrence cache. event_id: [%i], calendar_id: [%i], store_id: [%i], occurrence_date: [%f], occurrence_start_date: [%f], occurrence_endDate: [%f], day: [%f]", buf, 0x3Cu);
        }

        _CalDatabaseIntegrityError(*(a1 + 24), @"Insert duplicate occurrence");
      }

      v43 = *a3;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v43)
        {
          if (*v43)
          {
            v44 = **v43;
            if (v44)
            {
              if (*(v44 + 104))
              {
                v45 = CPRecordStoreGetContext();
                if (v45)
                {
                  os_unfair_lock_assert_owner(v45 + 20);
                }
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
    }
  }
}