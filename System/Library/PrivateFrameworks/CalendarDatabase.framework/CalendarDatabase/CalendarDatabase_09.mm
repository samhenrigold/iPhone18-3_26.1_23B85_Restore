CFTypeRef CalCreateiCalendarDataFromCalendarWithOptions(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = CalCalendarCopyEvents(a1);
  if (v7)
  {
    v8 = v7;
    if (v5)
    {
      v5[2](v5, v7);
    }

    v9 = ICSCalendarFromCalEntitiesWithTimeZoneGenerationOptions(v8, 2, 0, a2);
    CFRelease(v8);
    v10 = CalCalendarCopyTitle(a1);
    [v9 setX_wr_calname:v10];
    v11 = CalCalendarCopyColorString(a1);
    v12 = v11;
    v22 = 0;
    v21 = 0;
    if (v11)
    {
      sscanf([v11 UTF8String], "#%02X%02X%02X", &v22 + 4, &v22, &v21);
      v13 = objc_alloc(MEMORY[0x1E69E3C78]);
      v14 = [v13 initWithRed:BYTE4(v22) green:v22 blue:v21];
      [v9 setX_apple_calendar_color:v14];
    }

    v15 = CalCalendarCopyNotes(a1);
    [v9 setX_wr_caldesc:v15];
    v16 = CalCalendarCopyLanguage(a1);
    v17 = CalCalendarCopyRegion(a1);
    [v9 setX_apple_language:v16];
    [v9 setX_apple_region:v17];
    v18 = 20;
    if ((a2 & 1) == 0)
    {
      v18 = 4;
    }

    v19 = _CalCreateiCalendarDataFromICSCalendarWithOptions(v9, a2 & 0x80 | (((a2 >> 1) & 1) << 6) | v18);
  }

  else
  {
    v19 = 0;
  }

  objc_autoreleasePoolPop(v6);

  return v19;
}

void _CalAlarmLoadSecurityScopedURLWrapper(uint64_t a1)
{
  v1 = _CalAlarmCopyBookmark(a1);
}

void _CalAlarmPrepareForSave(uint64_t a1)
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
        v4 = CPRecordStoreGetContext();
        if (v4)
        {
          os_unfair_lock_assert_owner(v4 + 20);
        }
      }
    }
  }

  if (_CalAlarmGetTriggerInterval(a1) != 0x7FFFFFFF)
  {
    v11 = 0;
    v12 = 0;
    CalEventOccurrenceCacheGetLongAlarmIntervals(&v12, &v11);
  }

  CPRecordSetProperty();
  DatabaseForRecord = CalGetDatabaseForRecord(a1);
  if ((_CalDatabaseGetChangeReason(DatabaseForRecord) - 1) >= 2)
  {
    DateProperty = _CalRecordGetDateProperty(a1, 0);
    if (vabdd_f64(DateProperty, *MEMORY[0x1E6993100]) >= 2.22044605e-16)
    {
      v7 = DateProperty;
    }

    else
    {
      v7 = 1.17549435e-38;
    }

    if (v7 != 1.17549435e-38)
    {
      OwningCalendarItem = _CalAlarmGetOwningCalendarItem(a1);
      if (OwningCalendarItem)
      {
        v9 = OwningCalendarItem;
        if (_CalCalendarItemGetEntityType(OwningCalendarItem) == 2 && v7 - COERCE_DOUBLE(_CalEventGetStartDate(v9)) > 15552000.0)
        {
          v10 = CalGetDatabaseForRecord(a1);
          _CalDatabaseIntegrityError(v10, @"Suspiciously large absolute alarm offset");
        }
      }
    }
  }
}

uint64_t _CalAlarmPropertyDidChange(uint64_t result, unsigned int a2)
{
  if (a2 <= 0x17)
  {
    v2 = result;
    if (((1 << a2) & 0x80D804) == 0)
    {
      if (((1 << a2) & 3) == 0)
      {
        return result;
      }

      DatabaseForRecord = CalGetDatabaseForRecord(result);
      if (DatabaseForRecord)
      {
        if (_CalDatabaseIsPropertyModificationLoggingEnabled(DatabaseForRecord))
        {
          OwningCalendarItem = _CalAlarmGetOwningCalendarItem(v2);
          if (OwningCalendarItem)
          {
            v7 = OwningCalendarItem;
            _CalEventMarkPropertyModified(OwningCalendarItem, 1);
            _CalEventMarkEventAsNeedingAlarmCacheUpdate(v7);
          }
        }
      }
    }

    CPRecordGetStore();
    Context = CPRecordStoreGetContext();
    _CalDatabaseSetChangeFlags(Context, 8);
    result = _CalAlarmGetOwningCalendarItem(v2);
    if (result)
    {
      v4 = result;
      _CalEventUpdateLastModifiedDate(result);
      result = _CalEntityIsNew(v4);
      if ((result & 1) == 0)
      {

        return _CalEventMarkAsModifiedForChangeTracking(v4);
      }
    }
  }

  return result;
}

void _CalAlarmPropertyWillChange(uint64_t a1, int a2, char *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if ((a2 == 9 || a2 == 3) && a3 + 1 == 0)
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

    CPRecordGetProperty();
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

    CPRecordGetProperty();
  }

  else if (a2 == 27)
  {
    v6 = [a3 url];
    v7 = [v6 absoluteString];
    v8 = _CalAlarmCopyURL(a1);
    v9 = [v8 absoluteString];
    if (([v7 isEqual:v9] & 1) == 0 && v7 | v9)
    {
      if (([v6 startAccessingSecurityScopedResource] & 1) == 0)
      {
        v10 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          v13 = 138412290;
          v14 = v6;
          _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_ERROR, "Failed to start accessing security scoped URL wrapper when trying to create a bookmark for it: %@", &v13, 0xCu);
        }
      }

      _CalAlarmSetBookmark(a1, 0);
      [v6 stopAccessingSecurityScopedResource];
    }
  }
}

void CalAlarmInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();
  CalMigrationCreateIndexes(a2, &kCalAlarmClass, &kCalAlarmIndexes, &kCalAlarmChangesIndexes);

  CalMigrationCreateTriggers(a2, &kCalAlarmClass, &kCalAlarmTriggers);
}

void CalAlarmMigrateTables(uint64_t a1, sqlite3 **a2, unsigned int a3)
{
  if ((a3 & 0xFFFFFFFE) == 0x46)
  {
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 13))
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
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 13))
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

    CPSqliteConnectionStatementForSQL();
    if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
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

    CPSqliteStatementSendResults();
    CalMigrateTableFull(a2, &kCalAlarmClass, 0, &kCalAlarmUpgradeInfo, &kCalAlarmChangesUpgradeInfo, &kCalAlarmIndexes, &kCalAlarmChangesIndexes, &kCalAlarmTriggers, a3);
    goto LABEL_29;
  }

  if (a3 > 18002)
  {
    return;
  }

  CalMigrateTableFull(a2, &kCalAlarmClass, 0, &kCalAlarmUpgradeInfo, &kCalAlarmChangesUpgradeInfo, &kCalAlarmIndexes, &kCalAlarmChangesIndexes, &kCalAlarmTriggers, a3);
  if (a3 <= 48)
  {
    CalPerformSQLWithConnection(a2, @"UPDATE Alarm SET trigger_date = NULL WHERE trigger_date = -2147483648");
LABEL_28:
    _CalDBFillInUUIDColumn(a2, @"Alarm");
    goto LABEL_29;
  }

  if (a3 <= 0x34)
  {
    goto LABEL_28;
  }

  if (a3 <= 0x3E80)
  {
LABEL_29:
    if (!sqlite3_create_function(a2[1], "CREATE_UUID", 0, 1, 0, CreateUUIDCallback, 0, 0))
    {
      CalPerformSQLWithConnection(a2, @"INSERT INTO Alarm (trigger_interval, type, calendarItem_owner_id, calendar_owner_id, UUID, proximity, disabled, location_id, default_alarm, orig_alarm_id) SELECT 0, 0, ROWID, -1, CREATE_UUID(), 0, 0, 0, 1, 0 FROM CalendarItem WHERE     entity_type = 2     AND IFNULL(default_alarm_removed, 0) = 0     AND ROWID NOT IN (SELECT DISTINCT calendaritem_owner_id FROM Alarm WHERE default_alarm = 1) ");
    }
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a2)
      {
        if (*(*a2 + 13))
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

  v12 = CPSqliteConnectionStatementForSQL();
  v17 = 0.0;
  v18 = 0.0;
  CalEventOccurrenceCacheGetLongAlarmIntervals(&v18, &v17);
  sqlite3_bind_double(v12[1], 1, v17);
  sqlite3_bind_double(v12[1], 2, -v18);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v12)
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
  }

  CPSqliteStatementPerform();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v12)
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
  }

  CPSqliteStatementReset();
}

uint64_t _CalFloatingAlarmHandler(uint64_t a1, uint64_t **a2)
{
  if (sqlite3_column_type(*(a1 + 8), 1) != 5)
  {
    v4 = sqlite3_column_text(*(a1 + 8), 2);
    v5 = sqlite3_column_bytes(*(a1 + 8), 2);
    if (v4)
    {
      if (!strncmp(v4, "_float", v5))
      {
        v7 = sqlite3_column_int(*(a1 + 8), 5);
        if (v7 == 2)
        {
          v8 = 3;
        }

        else
        {
          if (v7 != 3)
          {
            return 0;
          }

          v8 = 4;
        }

        v9 = sqlite3_column_text(*(a1 + 8), v8);
        if (v9)
        {
          v10 = CFStringCreateWithCString(0, v9, 0x8000100u);
          if (v10)
          {
            v11 = v10;
            if (CFStringCompare(v10, @"_float", 0))
            {
              v12 = sqlite3_column_int(*(a1 + 8), 0);
              sqlite3_column_double(*(a1 + 8), 1);
              CalAbsoluteTimeGetAbsoluteTimeInCalTimeZone();
              sqlite3_bind_double(a2[1], 1, v13);
              sqlite3_bind_int(a2[1], 2, v12);
              if (a2)
              {
                if (CDBLockingAssertionsEnabled)
                {
                  if (*a2)
                  {
                    v14 = **a2;
                    if (v14)
                    {
                      if (*(v14 + 104))
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

              CPSqliteStatementPerform();
              if (a2)
              {
                if (CDBLockingAssertionsEnabled)
                {
                  if (*a2)
                  {
                    v16 = **a2;
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

            CFRelease(v11);
          }
        }
      }
    }
  }

  return 0;
}

void CreateUUIDCallback(sqlite3_context *a1)
{
  v2 = _CalDBCreateUUIDString();
  if (v2)
  {
    v3 = v2;
    CStringFromCFString = CalCreateCStringFromCFString(v2);
    if (CStringFromCFString)
    {
      sqlite3_result_text(a1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);

      CFRelease(v3);
      return;
    }

    CFRelease(v3);
  }

  sqlite3_result_null(a1);
}

uint64_t CalAlarmGetPropertyIDWithPropertyName(void *key)
{
  v35 = *MEMORY[0x1E69E9840];
  v2 = CalAlarmGetPropertyIDWithPropertyName_sPropDict;
  if (!CalAlarmGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalAlarmGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalAlarmGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"UUID";
      v6 = 10;
      v7 = @"absoluteDate";
      v8 = 0;
      v9 = @"relativeOffset";
      v10 = 1;
      v11 = @"type";
      v12 = 2;
      v13 = @"externalData";
      v14 = 7;
      v15 = @"proximity";
      v16 = 11;
      v17 = @"acknowledgedDate";
      v18 = 14;
      v19 = @"isDefaultAlarm";
      v20 = 15;
      v21 = @"calendarItemOwner";
      v22 = 20;
      v23 = @"calendarOwner";
      v24 = 21;
      v25 = @"structuredLocation";
      v26 = 23;
      v27 = @"originalAlarm";
      v28 = 24;
      v29 = @"snoozedAlarmsSet";
      v30 = 25;
      v31 = @"emailAddress";
      v32 = 17;
      v33 = @"urlWrapper";
      v34 = 27;
      CalAlarmGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 15);
      for (i = 224; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalAlarmGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalAlarmGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEC38F9C(_Unwind_Exception *a1)
{
  for (i = 224; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

CFTypeRef _CalAlarmHasValidParent(uint64_t a1)
{
  result = _CalAlarmGetOwningCalendarItem(a1);
  if (result || (result = _CalAlarmGetOwningCalendar(a1)) != 0)
  {

    return _CalRecordStillExists(result);
  }

  return result;
}

CFTypeRef _CalAlarmGetOwningEntity(uint64_t a1)
{
  result = _CalAlarmGetOwningCalendarItem(a1);
  if (!result)
  {

    return _CalAlarmGetOwningCalendar(a1);
  }

  return result;
}

void _CalAlarmCleanUpDanglingEntities(uint64_t a1, void *a2)
{
  v3 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"DELETE FROM Alarm WHERE calendaritem_owner_id NOT IN (SELECT ROWID FROM CalendarItem)                                                                                      AND calendar_owner_id NOT IN (SELECT ROWID FROM Calendar);");
  if (v3)
  {
    v4 = v3;
    CalPerformSQLWithConnectionAndBindBlock(a2, 1, v3, 0);

    CFRelease(v4);
  }
}

const void *_CalDatabaseCreateAlarm(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 4);
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
  v10 = CFUUIDCreate(0);
  v11 = CFUUIDCreateString(0, v10);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
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

  CPRecordInitializeProperty();
  CFRelease(v10);
  CFRelease(v11);
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateAlarm(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Alarm = _CalDatabaseCreateAlarm(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Alarm;
}

const void *_CalAlarmCopy(uint64_t a1, uint64_t a2)
{
  Alarm = _CalDatabaseCreateAlarm(a1);
  v4 = Alarm;
  if (CDBLockingAssertionsEnabled == 1 && Alarm != 0)
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
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
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

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v23 = CPRecordStoreGetContext();
        if (v23)
        {
          os_unfair_lock_assert_owner(v23 + 20);
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
        v24 = CPRecordStoreGetContext();
        if (v24)
        {
          os_unfair_lock_assert_owner(v24 + 20);
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
        v25 = CPRecordStoreGetContext();
        if (v25)
        {
          os_unfair_lock_assert_owner(v25 + 20);
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
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v28 = CPRecordStoreGetContext();
        if (v28)
        {
          os_unfair_lock_assert_owner(v28 + 20);
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
        v29 = CPRecordStoreGetContext();
        if (v29)
        {
          os_unfair_lock_assert_owner(v29 + 20);
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
        v30 = CPRecordStoreGetContext();
        if (v30)
        {
          os_unfair_lock_assert_owner(v30 + 20);
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
        v31 = CPRecordStoreGetContext();
        if (v31)
        {
          os_unfair_lock_assert_owner(v31 + 20);
        }
      }
    }
  }

  CPRecordGetProperty();
  CPRecordSetProperty();
  return v4;
}

uint64_t _CalRemoveAlarm(void *a1)
{
  OwningCalendarItem = _CalAlarmGetOwningCalendarItem(a1);
  if (OwningCalendarItem || (OwningCalendarItem = _CalAlarmGetOwningCalendar(a1)) != 0)
  {
    v3 = OwningCalendarItem;
    result = _CalEntityGetType(OwningCalendarItem);
    if ((result & 0xFFFFFFFE) == 2)
    {

      return _CalCalendarItemRemoveAlarm(v3, a1);
    }

    else if (result == 1)
    {

      return _CalCalendarRemoveAlarm(v3, a1);
    }
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord(a1);

    return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }

  return result;
}

void CalRemoveAlarm(void *a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRemoveAlarm(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalAlarmSaveAddedRecords(uint64_t a1, uint64_t a2)
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

uint64_t CalDatabaseCopyOfAllAlarmsInStore(const void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CalCopyDatabaseForRecord(a2);
    UID = CalStoreGetUID(a2);
    if (v3)
    {
      v5 = UID;
      os_unfair_lock_lock(v3 + 20);
      RecordStore = _CalDatabaseGetRecordStore(v3);
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
      if (Database && (v11 = Database, (SelectStatement = CPRecordStoreCreateSelectStatement()) != 0))
      {
        v13 = SelectStatement;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*(v11 + 104))
          {
            v14 = CPRecordStoreGetContext();
            if (v14)
            {
              os_unfair_lock_assert_owner(v14 + 20);
            }
          }
        }

        v15 = CPSqliteDatabaseStatementForReading();
        if (v15)
        {
          v16 = v15;
          sqlite3_bind_int(*(v15 + 8), 1, v5);
          sqlite3_bind_int(*(v16 + 8), 2, v5);
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (v7)
            {
              v17 = CPRecordStoreGetContext();
              if (v17)
              {
                os_unfair_lock_assert_owner(v17 + 20);
              }
            }
          }

          v18 = CPRecordStoreProcessStatement();
        }

        else
        {
          v18 = 0;
        }

        CFRelease(v13);
      }

      else
      {
        v18 = 0;
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(v3 + 20);
      }

      os_unfair_lock_unlock(v3 + 20);
LABEL_38:
      CFRelease(v3);
      return v18;
    }

    return 0;
  }

  else
  {
    v3 = CFRetain(a1);
    os_unfair_lock_lock(v3 + 20);
    v19 = _CalDatabaseGetRecordStore(v3);
    if (CDBLockingAssertionsEnabled == 1 && v19 != 0)
    {
      v21 = CPRecordStoreGetContext();
      if (v21)
      {
        os_unfair_lock_assert_owner(v21 + 20);
      }
    }

    v18 = CPRecordStoreCopyAllInstancesOfClass();
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v3 + 20);
    }

    os_unfair_lock_unlock(v3 + 20);
    if (v3)
    {
      goto LABEL_38;
    }
  }

  return v18;
}

uint64_t _CalInvalidateAlarmsWithCalendarItemOwnerID(uint64_t a1, int a2)
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

uint64_t _CalInvalidateAlarmsWithCalendarOwnerID(uint64_t a1, int a2)
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

uint64_t CalAlarmGetUID(uint64_t a1)
{
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

uint64_t _CalAlarmGetWithUID(uint64_t a1, uint64_t a2)
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

const void *CalDatabaseCopyAlarmWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = _CalAlarmGetWithUID(RecordStore, a2);
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

uint64_t _CalAlarmGetRecordID(uint64_t a1)
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

void CalAlarmSetUUID(uint64_t a1, uint64_t a2)
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

uint64_t CalAlarmCopyUUID(uint64_t a1)
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

CFTypeRef CalDatabaseCopyAlarmWithUUID(os_unfair_lock_s *a1, uint64_t a2)
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

  v6 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
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

uint64_t __CalDatabaseCopyAlarmWithUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  CStringFromCFString = CalCreateCStringFromCFString(*(a1 + 32));
  v4 = MEMORY[0x1E69E9B38];

  return sqlite3_bind_text(v2, 1, CStringFromCFString, -1, v4);
}

uint64_t CalAlarmCopyExternalID(uint64_t a1)
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

void CalAlarmSetExternalRepresentation(uint64_t a1, uint64_t a2)
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

uint64_t CalAlarmCopyExternalRepresentation(uint64_t a1)
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

void CalAlarmClearExternalProperties(uint64_t a1)
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

void CalAlarmSetTriggerDate(uint64_t a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (fabs(a2 + -1.17549435e-38) >= 2.22044605e-16)
  {
    _CalRecordSetDateProperty(a1, 0, a2);
    if (!a1)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
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
LABEL_10:
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

LABEL_14:
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double _CalAlarmGetTriggerDate(uint64_t a1)
{
  result = _CalRecordGetDateProperty(a1, 0);
  if (vabdd_f64(result, *MEMORY[0x1E6993100]) < 2.22044605e-16)
  {
    return 1.17549435e-38;
  }

  return result;
}

double CalAlarmGetTriggerDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  DateProperty = _CalRecordGetDateProperty(a1, 0);
  v4 = *MEMORY[0x1E6993100];
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  if (vabdd_f64(DateProperty, v4) < 2.22044605e-16)
  {
    DateProperty = 1.17549435e-38;
  }

  os_unfair_lock_unlock(RecordLock);
  return DateProperty;
}

void CalAlarmSetTriggerInterval(uint64_t a1, int a2)
{
  valuePtr = a2;
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2 == 0x7FFFFFFF)
  {
    v5 = 0;
  }

  else
  {
    v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
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
        v7 = CPRecordStoreGetContext();
        if (v7)
        {
          os_unfair_lock_assert_owner(v7 + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (_CalAlarmIsDefaultAlarm(a1))
  {
    _CalAlarmSetIsDefaultAlarm(a1, 0);
    OwningCalendarItem = _CalAlarmGetOwningCalendarItem(a1);
    _CalCalendarItemSetDefaultAlarmRemoved(OwningCalendarItem, 1u);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL _CalAlarmIsDefaultAlarm(uint64_t a1)
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

  return CPRecordGetProperty() == 1;
}

uint64_t _CalAlarmSetIsDefaultAlarm(uint64_t a1, unsigned int a2)
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

CFTypeRef _CalAlarmGetOwningCalendarItem(uint64_t a1)
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

  return CalRelationGetRelatedObject(Property);
}

uint64_t _CalAlarmGetTriggerInterval(uint64_t a1)
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
    return 0x7FFFFFFFLL;
  }

  valuePtr = 0;
  CFNumberGetValue(Property, kCFNumberIntType, &valuePtr);
  return valuePtr;
}

uint64_t CalAlarmGetTriggerInterval(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  TriggerInterval = _CalAlarmGetTriggerInterval(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return TriggerInterval;
}

void CalAlarmSetType(uint64_t a1, unsigned int a2)
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

uint64_t CalAlarmGetType(uint64_t a1)
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

CFTypeRef CalAlarmCopyOwningCalendarItem(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  OwningCalendarItem = _CalAlarmGetOwningCalendarItem(a1);
  v4 = OwningCalendarItem;
  if (OwningCalendarItem)
  {
    CFRetain(OwningCalendarItem);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

CFTypeRef _CalAlarmGetOwningCalendar(uint64_t a1)
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

  return CalRelationGetRelatedObject(Property);
}

CFTypeRef CalAlarmCopyOwningCalendar(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  OwningCalendar = _CalAlarmGetOwningCalendar(a1);
  v4 = OwningCalendar;
  if (OwningCalendar)
  {
    CFRetain(OwningCalendar);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

CFTypeRef CalAlarmCopyOwningEntity(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  OwningCalendarItem = _CalAlarmGetOwningCalendarItem(a1);
  if (OwningCalendarItem)
  {
    OwningCalendar = OwningCalendarItem;
  }

  else
  {
    OwningCalendar = _CalAlarmGetOwningCalendar(a1);
    if (!OwningCalendar)
    {
      goto LABEL_5;
    }
  }

  CFRetain(OwningCalendar);
LABEL_5:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return OwningCalendar;
}

BOOL CalAlarmIsEquivalentToAlarm(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    RecordLock = CalGetRecordLock(a1);
    os_unfair_lock_lock(RecordLock);
    if (a1 == a2)
    {
      v2 = 1;
    }

    else
    {
      DateProperty = _CalRecordGetDateProperty(a1, 0);
      v2 = 0;
      if (vabdd_f64(DateProperty, _CalRecordGetDateProperty(a2, 0)) < 2.22044605e-16)
      {
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
            v9 = CPRecordStoreGetContext();
            if (v9)
            {
              os_unfair_lock_assert_owner(v9 + 20);
            }
          }
        }

        v2 = Property == CPRecordGetProperty();
      }
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(RecordLock);
    }

    os_unfair_lock_unlock(RecordLock);
  }

  return v2;
}

void CalAlarmSetEnabled(uint64_t a1, int a2)
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

BOOL CalAlarmIsEnabled(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IsEnabled = _CalAlarmIsEnabled(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsEnabled;
}

BOOL _CalAlarmIsEnabled(uint64_t a1)
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

  return CPRecordGetProperty() == 0;
}

void CalAlarmSetProximity(uint64_t a1, unsigned int a2)
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

uint64_t CalAlarmGetProximity(uint64_t a1)
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

void *_CalAlarmSetLocation(uint64_t a1, const void *a2)
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

void CalAlarmSetLocation(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAlarmSetLocation(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalAlarmCopyLocation(uint64_t a1)
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
    v5 = CalRelationCopyRelatedObject(Property);
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

void CalAlarmSetAcknowledgedDate(uint64_t a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetDateProperty(a1, 14, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalAlarmRemoveAcknowledged(uint64_t a1)
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

BOOL CalAlarmGetAcknowledged(uint64_t a1)
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

double CalAlarmGetAcknowledgedDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  DateProperty = _CalRecordGetDateProperty(a1, 14);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return DateProperty;
}

void CalAlarmSetIsDefaultAlarm(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAlarmSetIsDefaultAlarm(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalAlarmIsDefaultAlarm(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IsDefaultAlarm = _CalAlarmIsDefaultAlarm(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsDefaultAlarm;
}

uint64_t CalAlarmCopyEmailAddress(uint64_t a1)
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

void CalAlarmSetEmailAddress(uint64_t a1, uint64_t a2)
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

uint64_t CalAlarmCopyBookmark(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAlarmCopyBookmark(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalAlarmCopyBookmark(uint64_t a1)
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

void CalAlarmSetBookmark(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAlarmSetBookmark(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalAlarmSetBookmark(uint64_t a1, uint64_t a2)
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

void _CalAlarmSetURL(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AE98]) initWithURL:a2 readonly:1];
    if (!a1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v4 = 0;
    if (!a1)
    {
      goto LABEL_9;
    }
  }

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

LABEL_9:
  CPRecordSetProperty();
}

void CalAlarmSetURL(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAlarmSetURL(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalAlarmCopyURL(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAlarmCopyURL(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalAlarmCopyURL(uint64_t a1)
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

  v2 = CPRecordCopyProperty();
  v3 = [v2 url];

  return v3;
}

void *_CalAlarmSetOriginalAlarm(uint64_t a1, const void *a2)
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

void CalAlarmSetOriginalAlarm(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAlarmSetOriginalAlarm(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef _CalAlarmGetOriginalAlarm(uint64_t a1)
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

CFTypeRef CalAlarmCopyOriginalAlarm(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  OriginalAlarm = _CalAlarmGetOriginalAlarm(a1);
  v4 = OriginalAlarm;
  if (OriginalAlarm)
  {
    CFRetain(OriginalAlarm);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

const __CFArray *_CalAlarmAddSnoozedAlarm(uint64_t a1, void *a2)
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

void CalAlarmAddSnoozedAlarm(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAlarmAddSnoozedAlarm(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void *_CalAlarmRemoveSnoozedAlarm(uint64_t a1, void *a2)
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

void CalAlarmRemoveSnoozedAlarm(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAlarmRemoveSnoozedAlarm(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef _CalAlarmCopySnoozedAlarms(uint64_t a1)
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

CFMutableArrayRef CalAlarmCopySnoozedAlarms(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAlarmCopySnoozedAlarms(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

BOOL _CalAlarmIsDisplayable(uint64_t a1)
{
  if (!_CalAlarmIsEnabled(a1))
  {
    return 0;
  }

  OwningCalendarItem = _CalAlarmGetOwningCalendarItem(a1);
  if (!OwningCalendarItem)
  {
    OwningCalendarItem = _CalAlarmGetOwningCalendar(a1);
  }

  Store = CPRecordGetStore();
  v4 = 1;
  if (!OwningCalendarItem)
  {
    return v4;
  }

  v5 = Store;
  if (!Store)
  {
    return v4;
  }

  if (_CalEntityIsOfType(OwningCalendarItem, 2))
  {
    if (_CalEventGetParticipationStatus(OwningCalendarItem) != 2 && _CalEventIsDisplayable(OwningCalendarItem) && _CalCalendarItemGetStatus(OwningCalendarItem) != 3)
    {
      CalendarId = _CalEventGetCalendarId(OwningCalendarItem);
      CalendarWithUID = _CalGetCalendarWithUID(v5, CalendarId);
      if (!CalendarWithUID)
      {
        return v4;
      }

      v8 = CalendarWithUID;
      StoreId = _CalCalendarGetStoreId(CalendarWithUID);
      StoreWithUID = _CalGetStoreWithUID(v5, StoreId);
      if (!StoreWithUID)
      {
        return !_CalCalendarIsIgnoringEventAlerts(v8);
      }

      v11 = StoreWithUID;
      if (_CalStoreIsEnabled(StoreWithUID) && !_CalStoreIsDelegate(v11) && _CalStoreGetType(v11) != 6)
      {
        return !_CalCalendarIsIgnoringEventAlerts(v8);
      }
    }

    return 0;
  }

  if (!_CalEntityIsOfType(OwningCalendarItem, 1))
  {
    return v4;
  }

  v12 = _CalCalendarGetStoreId(OwningCalendarItem);
  v13 = _CalGetStoreWithUID(v5, v12);
  if (!v13)
  {
    return 0;
  }

  return _CalStoreIsEnabled(v13);
}

BOOL CalAlarmIsDisplayable(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IsDisplayable = _CalAlarmIsDisplayable(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsDisplayable;
}

__CFString *_CreateQueryStringForCalendarIDsWithPropertyName(const __CFArray *a1, uint64_t a2)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v8 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @" AND %@ IN ("), a2;
    v9 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
      valuePtr = -1;
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
      if (valuePtr != -1)
      {
        if (v5 == 1)
        {
          v11 = CFStringCreateWithFormat(v6, 0, @"%d"), valuePtr);
        }

        else
        {
          v11 = CFStringCreateWithFormat(v6, 0, @"%d, ", valuePtr);
        }

        if (v11)
        {
          v12 = v11;
          CFStringAppend(v8, v11);
          CFRelease(v12);
        }
      }

      ++v9;
      --v5;
    }

    while (v5);
  }

  return v8;
}

uint64_t _CalCopyAbsoluteCalendarItemAlarmsInDateRange(uint64_t a1, const __CFArray *a2, double a3, double a4)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (RecordStore)
  {
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"JOIN CalendarItem ON calendaritem_owner_id = CalendarItem.ROWID JOIN Calendar ON CalendarItem.calendar_id = Calendar.ROWID JOIN Store ON Calendar.store_id = Store.ROWID WHERE Store.delegated_account_owner_store_id IS NULL AND trigger_date IS NOT NULL AND completion_date IS NULL AND (trigger_date >= ? AND trigger_date <= ?) AND CalendarItem.has_recurrences = 0");
    if (MutableCopy)
    {
      v7 = MutableCopy;
      if (a2)
      {
        QueryStringForCalendarIDsWithPropertyName = _CreateQueryStringForCalendarIDsWithPropertyName(a2, @"CalendarItem.calendar_id");
        if (QueryStringForCalendarIDsWithPropertyName)
        {
          v9 = QueryStringForCalendarIDsWithPropertyName;
          CFStringAppend(v7, QueryStringForCalendarIDsWithPropertyName);
          CFRelease(v9);
        }
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }

      RecordStore = CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return RecordStore;
}

uint64_t _CalCopyRelativeNonRecurringEventAlarmsInDateRange(uint64_t a1, const __CFArray *a2, int a3, int a4, sqlite3 *a5, double a6, double a7, double a8, double a9)
{
  v38 = *MEMORY[0x1E69E9840];
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (RecordStore)
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
    if (!Database)
    {
      return 0;
    }

    v20 = Database;
    *pApp = a6;
    *&pApp[1] = a7;
    *&pApp[2] = a8;
    *&pApp[3] = a9;
    v34 = a3;
    v35 = a4;
    function = sqlite3_create_function(a5, "MATCH_DATE_RANGE", 11, 526337, pApp, MatchDateRangeCallback, 0, 0);
    if (function)
    {
      v22 = function;
      v23 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v37 = v22;
        _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_ERROR, "Failed to create MATCH_DATE_RANGE function in CalCopyRelativeNonRecurringEventAlarmsInDateRange, with error code: %i", buf, 8u);
      }

      return 0;
    }

    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"JOIN CalendarItem ON calendaritem_owner_id = CalendarItem.ROWID JOIN Calendar ON CalendarItem.calendar_id = Calendar.ROWID JOIN Store ON Calendar.store_id = Store.ROWID WHERE     Store.delegated_account_owner_store_id IS NULL     AND ((proximity = 0 OR proximity IS NULL)     AND trigger_date IS NULL     AND has_recurrences = 0     AND MATCH_DATE_RANGE(start_tz, start_date, travel_time, trigger_interval, all_day, default_all_day_alarm_offset, default_alarm_offset, default_alarm, has_recurrences, NULL, NULL) ");
    if (MutableCopy)
    {
      v25 = MutableCopy;
      if (a2)
      {
        QueryStringForCalendarIDsWithPropertyName = _CreateQueryStringForCalendarIDsWithPropertyName(a2, @"CalendarItem.calendar_id");
        if (QueryStringForCalendarIDsWithPropertyName)
        {
          v27 = QueryStringForCalendarIDsWithPropertyName;
          CFStringAppend(v25, QueryStringForCalendarIDsWithPropertyName);
          CFRelease(v27);
        }
      }

      CFStringAppend(v25, @""));
      SelectStatement = CPRecordStoreCreateSelectStatement();
      if (SelectStatement)
      {
        v29 = SelectStatement;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*(v20 + 104))
          {
            v30 = CPRecordStoreGetContext();
            if (v30)
            {
              os_unfair_lock_assert_owner(v30 + 20);
            }
          }
        }

        if (CPSqliteDatabaseStatementForReading())
        {
          if (CDBLockingAssertionsEnabled == 1)
          {
            v31 = CPRecordStoreGetContext();
            if (v31)
            {
              os_unfair_lock_assert_owner(v31 + 20);
            }
          }

          RecordStore = CPRecordStoreProcessStatement();
        }

        else
        {
          RecordStore = 0;
        }

        CFRelease(v29);
      }

      else
      {
        RecordStore = 0;
      }

      CFRelease(v25);
    }

    else
    {
      RecordStore = 0;
    }

    sqlite3_create_function(a5, "MATCH_DATE_RANGE", 11, 526337, 0, 0, 0, 0);
  }

  return RecordStore;
}

void MatchDateRangeCallback(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v35 = *MEMORY[0x1E69E9840];
  if (a2 != 11)
  {
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v34 = a2;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "MatchDateRangeCallback received wrong number of args. [%i args]", buf, 8u);
    }
  }

  v32 = a1;
  v7 = sqlite3_user_data(a1);
  v9 = *(v7 + 8);
  v8 = *(v7 + 9);
  v10 = *v7;
  v11 = *(v7 + 1);
  v12 = sqlite3_value_text(*a3);
  v13 = sqlite3_value_bytes(*a3);
  if (v12 && !strncmp(v12, "_float", v13))
  {
    v10 = *(v7 + 2);
    v11 = *(v7 + 3);
    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  v14 = sqlite3_value_double(a3[1]);
  v15 = sqlite3_value_int(a3[2]);
  v16 = sqlite3_value_int(a3[3]);
  v17 = sqlite3_value_int(a3[4]);
  if (sqlite3_value_type(a3[5]) != 5)
  {
    v8 = sqlite3_value_int(a3[5]);
  }

  if (sqlite3_value_type(a3[6]) != 5)
  {
    v9 = sqlite3_value_int(a3[6]);
  }

  v18 = sqlite3_value_int(a3[7]);
  v19 = sqlite3_value_int(a3[8]);
  v20 = sqlite3_value_type(a3[9]);
  v21 = 0.0;
  v22 = 0.0;
  if (v20 != 5)
  {
    v22 = sqlite3_value_double(a3[9]);
  }

  v23 = sqlite3_value_type(a3[10]);
  if (v23 != 5)
  {
    v21 = sqlite3_value_double(a3[10]);
  }

  if (v18 == 1 && (v17 != 1 ? (v16 = v9) : (v16 = v8), v16 == -1) || (v24 = v15, v25 = v16, v26 = v14 - v15 + v16, v26 > v11))
  {
    v27 = 0;
    v28 = v32;
  }

  else
  {
    v28 = v32;
    if (v19 == 1)
    {
      if (v20 == 5)
      {
        if (v23 == 5)
        {
          v27 = 1;
          goto LABEL_35;
        }

        v30 = v21 - v24 + v25;
        if (v31)
        {
          v30 = v30 + 172800.0;
        }
      }

      else
      {
        v30 = v22 - v24 + v25;
      }

      v29 = v30 < v10;
    }

    else
    {
      v29 = v26 < v10;
    }

    v27 = !v29;
  }

LABEL_35:
  sqlite3_result_int(v28, v27);
}

uint64_t _CalCopyRelativeRecurringEventAlarmsInDateRange(uint64_t a1, const __CFArray *a2, int a3, int a4, sqlite3 *a5, double a6, double a7, double a8, double a9)
{
  v38 = *MEMORY[0x1E69E9840];
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (RecordStore)
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
    if (!Database)
    {
      return 0;
    }

    v20 = Database;
    *pApp = a6;
    *&pApp[1] = a7;
    *&pApp[2] = a8;
    *&pApp[3] = a9;
    v34 = a3;
    v35 = a4;
    function = sqlite3_create_function(a5, "MATCH_DATE_RANGE", 11, 526337, pApp, MatchDateRangeCallback, 0, 0);
    if (function)
    {
      v22 = function;
      v23 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v37 = v22;
        _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_ERROR, "Failed to create MATCH_DATE_RANGE function in CalCopyRelativeRecurringEventAlarmsInDateRange, with error code: %i", buf, 8u);
      }

      return 0;
    }

    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, @"JOIN CalendarItem ON calendaritem_owner_id = CalendarItem.ROWID JOIN Calendar ON CalendarItem.calendar_id = Calendar.ROWID JOIN Store ON Calendar.store_id = Store.ROWID JOIN Recurrence on Recurrence.owner_id = CalendarItem.ROWID WHERE     Store.delegated_account_owner_store_id IS NULL     AND ((proximity = 0 OR proximity IS NULL)     AND trigger_date IS NULL     AND has_recurrences = 1     AND MATCH_DATE_RANGE(start_tz, start_date, travel_time, trigger_interval, all_day, default_all_day_alarm_offset, default_alarm_offset, default_alarm, has_recurrences, Recurrence.end_date, Recurrence.cached_end_date) ");
    if (MutableCopy)
    {
      v25 = MutableCopy;
      if (a2)
      {
        QueryStringForCalendarIDsWithPropertyName = _CreateQueryStringForCalendarIDsWithPropertyName(a2, @"CalendarItem.calendar_id");
        if (QueryStringForCalendarIDsWithPropertyName)
        {
          v27 = QueryStringForCalendarIDsWithPropertyName;
          CFStringAppend(v25, QueryStringForCalendarIDsWithPropertyName);
          CFRelease(v27);
        }
      }

      CFStringAppend(v25, @""));
      SelectStatement = CPRecordStoreCreateSelectStatement();
      if (SelectStatement)
      {
        v29 = SelectStatement;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*(v20 + 104))
          {
            v30 = CPRecordStoreGetContext();
            if (v30)
            {
              os_unfair_lock_assert_owner(v30 + 20);
            }
          }
        }

        if (CPSqliteDatabaseStatementForReading())
        {
          if (CDBLockingAssertionsEnabled == 1)
          {
            v31 = CPRecordStoreGetContext();
            if (v31)
            {
              os_unfair_lock_assert_owner(v31 + 20);
            }
          }

          RecordStore = CPRecordStoreProcessStatement();
        }

        else
        {
          RecordStore = 0;
        }

        CFRelease(v29);
      }

      else
      {
        RecordStore = 0;
      }

      CFRelease(v25);
    }

    else
    {
      RecordStore = 0;
    }

    sqlite3_create_function(a5, "MATCH_DATE_RANGE", 11, 526337, 0, 0, 0, 0);
  }

  return RecordStore;
}

uint64_t CalDatabaseCopyAlarmChangesInStore(const void *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord(a2);
  }

  else
  {
    v5 = CFRetain(a1);
  }

  v6 = v5;
  os_unfair_lock_lock(v5 + 20);
  v7 = _CalAlarmCopyChangeHistoryWhereClauseForStore(v6, a2);
  v8 = _CalDatabaseCopyAlarmChangesInternal(v6, v7, a3);
  if (v7)
  {
    CFRelease(v7);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v6 + 20);
  }

  os_unfair_lock_unlock(v6 + 20);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

CFStringRef _CalAlarmCopyChangeHistoryWhereClauseForStore(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"store_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN     (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN     (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v3, v3, 4, v3);
    CFRelease(v3);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v6);
  return v6;
}

uint64_t _CalDatabaseCopyAlarmChangesInternal(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
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

uint64_t CalDatabaseRemoveAlarmChangesInStoreToIndex(const void *a1, uint64_t a2, int a3)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord(a2);
  }

  else
  {
    v5 = CFRetain(a1);
  }

  v6 = v5;
  os_unfair_lock_lock(v5 + 20);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CalDatabaseRemoveAlarmChangesInStoreToIndex_block_invoke;
  v9[3] = &unk_1E8689120;
  v9[4] = &v11;
  v9[5] = v6;
  v9[6] = a2;
  v10 = a3;
  _CalDatabaseLockForWriteTransaction(v6, v9);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v6 + 20);
  }

  os_unfair_lock_unlock(v6 + 20);
  CFRelease(v6);
  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_1DEC3D078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveAlarmChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  result = _CalDatabaseRemoveAlarmChangesInStoreToIndex(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CalDatabaseRemoveAlarmChangesInStoreToIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _CalAlarmCopyChangeHistoryWhereClauseForStore(a1, a2);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v8 = CPRecordStoreDeleteChangesForClassToIndexWhere();
  if (v4)
  {
    CFRelease(v4);
  }

  return v8;
}

uint64_t CalDatabaseRemoveAlarmChangesWithIndices(os_unfair_lock_s *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(a1 + 20);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalDatabaseRemoveAlarmChangesWithIndices_block_invoke;
  v6[3] = &unk_1E8689148;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  _CalDatabaseLockForWriteTransaction(a1, v6);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1DEC3D24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveAlarmChangesWithIndices_block_invoke(void *a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1[5]);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  result = CPRecordStoreDeleteChangesForClassWithIndices();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t CalDatabaseCopyAlarmChangesInCalendar(const void *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord(a2);
  }

  else
  {
    v5 = CFRetain(a1);
  }

  v6 = v5;
  os_unfair_lock_lock(v5 + 20);
  v7 = _CalAlarmCopyChangeHistoryWhereClauseForCalendar(v6, a2);
  v8 = _CalDatabaseCopyAlarmChangesInternal(v6, v7, a3);
  if (v7)
  {
    CFRelease(v7);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v6 + 20);
  }

  os_unfair_lock_unlock(v6 + 20);
  if (v6)
  {
    CFRelease(v6);
  }

  return v8;
}

CFStringRef _CalAlarmCopyChangeHistoryWhereClauseForCalendar(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"calendar_id = %d AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@') AND sequence_number NOT IN (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@') AND ROWID NOT IN (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v3, v3, 4, v3);
    CFRelease(v3);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v6);
  return v6;
}

uint64_t CalDatabaseRemoveAlarmChangesInCalendarToIndex(const void *a1, uint64_t a2, int a3)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord(a2);
  }

  else
  {
    v5 = CFRetain(a1);
  }

  v6 = v5;
  os_unfair_lock_lock(v5 + 20);
  v7 = _CalAlarmCopyChangeHistoryWhereClauseForCalendar(v6, a2);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __CalDatabaseRemoveAlarmChangesInCalendarToIndex_block_invoke;
  v10[3] = &unk_1E8689120;
  v10[4] = &v12;
  v10[5] = v6;
  v11 = a3;
  v10[6] = v7;
  _CalDatabaseLockForWriteTransaction(v6, v10);
  if (v7)
  {
    CFRelease(v7);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v6 + 20);
  }

  os_unfair_lock_unlock(v6 + 20);
  CFRelease(v6);
  v8 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v8;
}

void sub_1DEC3D554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveAlarmChangesInCalendarToIndex_block_invoke(uint64_t a1)
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

  result = CPRecordStoreDeleteChangesForClassToIndexWhere();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CalDatabasePrepareAlarmsInStoreForMigration(uint64_t a1, void *a2, uint64_t a3)
{
  ID = CPRecordGetID();
  result = _CalDatabaseRemoveAlarmChangesInStoreToIndex(a1, a3, 0x7FFFFFFFLL);
  if (result)
  {
    result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE Alarm SET external_mod_tag = NULL, external_id_tag = NULL, external_rep = NULL                                                                           WHERE calendaritem_owner_id IN (SELECT CalendarItem.ROWID FROM CalendarItem JOIN Calendar ON calendar_id = Calendar.ROWID WHERE store_id = %d)                                                                           OR calendar_owner_id IN (SELECT Calendar.ROWID FROM Calendar WHERE store_id = %d);", ID, ID);
    if (result)
    {
      v8 = result;
      CalPerformSQLWithConnection(a2, result);
      CFRelease(v8);
      return 1;
    }
  }

  return result;
}

uint64_t CalDatabaseCopyLocationBasedAlarmsForIncompleteTasks(os_unfair_lock_s *a1)
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

  v5 = CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v5;
}

uint64_t CalDatabaseCopyLocationBasedAlarmsForCalendars(os_unfair_lock_s *a1)
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

  v5 = CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v5;
}

uint64_t CalDatabaseCopyVehicleTriggerAlarmsForIncompleteTasks(os_unfair_lock_s *a1)
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

  v5 = CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v5;
}

uint64_t CalAlarmCopyDefaultTimedAlarmOffset()
{
  v0 = +[CDBPreferences shared];
  v1 = [v0 get_DefaultTimedAlarmOffset];

  return v1;
}

void CalAlarmSetDefaultTimedAlarmOffset(uint64_t a1)
{
  v2 = +[CDBPreferences shared];
  [v2 set_DefaultTimedAlarmOffset:a1];
}

uint64_t CalAlarmCopyDefaultAllDayAlarmOffset()
{
  v0 = +[CDBPreferences shared];
  v1 = [v0 get_DefaultAllDayAlarmOffset];

  return v1;
}

void CalAlarmSetDefaultAllDayAlarmOffset(uint64_t a1)
{
  v2 = +[CDBPreferences shared];
  [v2 set_DefaultAllDayAlarmOffset:a1];
}

CFTypeRef _CalAlarmLoadStoreId(uint64_t a1, uint64_t a2)
{
  result = _CalAlarmGetOwningCalendarItem(a1);
  if (!result)
  {
    result = _CalAlarmGetOwningCalendar(a1);
    if (!result)
    {
      return result;
    }
  }

  v4 = result;
  Type = _CalEntityGetType(result);
  if ((Type & 0xFFFFFFFE) == 2)
  {
    _CalCalendarItemGetStoreId(v4);
    goto LABEL_7;
  }

  if (Type == 1)
  {
    _CalCalendarGetStoreId(v4);
LABEL_7:
    if (!a1)
    {
      goto LABEL_14;
    }

LABEL_10:
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

    goto LABEL_14;
  }

  if (a1)
  {
    goto LABEL_10;
  }

LABEL_14:

  return CPRecordInitializeProperty();
}

CFTypeRef _CalAlarmLoadCalendarId(uint64_t a1, uint64_t a2)
{
  result = _CalAlarmGetOwningCalendarItem(a1);
  if (!result)
  {
    result = _CalAlarmGetOwningCalendar(a1);
    if (!result)
    {
      return result;
    }
  }

  v4 = result;
  Type = _CalEntityGetType(result);
  if ((Type & 0xFFFFFFFE) == 2)
  {
    _CalEventGetCalendarId(v4);
    goto LABEL_7;
  }

  if (Type == 1)
  {
    CPRecordGetID();
LABEL_7:
    if (!a1)
    {
      goto LABEL_14;
    }

LABEL_10:
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

    goto LABEL_14;
  }

  if (a1)
  {
    goto LABEL_10;
  }

LABEL_14:

  return CPRecordInitializeProperty();
}

id CalGetRealUIDFromRecurrenceUID(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"/RID="];
  v3 = v1;
  if ([v2 count])
  {
    v3 = [v2 objectAtIndex:0];
  }

  return v3;
}

id CalGetRecurrenceUIDFromRealUID(void *a1, double a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = CalGetRealUIDFromRecurrenceUID(a1);
  v5 = [v3 stringWithFormat:@"%@/RID=%llu", v4, a2];

  return v5;
}

double _CalOriginalStartDateFromICSComponent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 recurrence_id];

  if (v5)
  {
    v6 = [v3 recurrence_id];
    DateTimeFromICSDate = CalCreateDateTimeFromICSDate(v6, v4);

    CalDateTimeRelease();
  }

  else
  {
    DateTimeFromICSDate = *MEMORY[0x1E6993100];
  }

  return *&DateTimeFromICSDate;
}

void CalCalendarItemUpdateUIDFromICSComponent(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  started = _CalOriginalStartDateFromICSComponent(v11, a3);
  v6 = [v11 uid];
  v7 = fabs(started);
  if (vabdd_f64(started, *MEMORY[0x1E6993100]) >= 2.22044605e-16 && v7 >= 2.22044605e-16)
  {
    v9 = [v11 uid];
    v10 = CalGetRecurrenceUIDFromRealUID(v9, started);

    v6 = v10;
  }

  if (v6)
  {
    CalCalendarItemSetUniqueIdentifier(a1, v6);
  }
}

uint64_t CalCalendarItemUpdateFromICSComponent(const void *a1, uint64_t a2, void *a3, void *a4, os_unfair_lock_s *a5, void *a6, void *a7, void *a8, unsigned __int8 a9)
{
  v518 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v438 = a4;
  v17 = a6;
  v436 = a7;
  v18 = a8;
  v437 = v17;
  v19 = [v17 objectForKey:@"ItemBridgeOptions"];
  v446 = [v19 unsignedIntegerValue];

  if (!v16)
  {
    v33 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v33, OS_LOG_TYPE_DEBUG, "icsItem is nil. There's nothing for us to do", buf, 2u);
    }

    v34 = 1;
    goto LABEL_528;
  }

  if (!a1)
  {
    v35 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v35, OS_LOG_TYPE_DEBUG, "Cannot update a NULL calendar item", buf, 2u);
    }

    v34 = 0;
    goto LABEL_528;
  }

  v435 = v18;
  v431 = v16;
  v20 = v16;
  v21 = v438;
  v22 = [v20 dtstart];

  cf = v21;
  if (v22)
  {
    v23 = [v20 dtstart];
    DateTimeFromICSDate = CalCreateDateTimeFromICSDate(v23, v21);
    v26 = v25;
    v27 = *&DateTimeFromICSDate;

    v28 = CFDateCreate(0, v27);
    started = CalCalendarItemCopyStartDate(a1);
    v30 = v28;
    v31 = v30;
    if (!started && v30 || started && ([started isEqualToDate:v30] & 1) == 0)
    {
      CalCalendarItemSetStartDate(a1, v31);
      v32 = 1;
    }

    else
    {
      v32 = 0;
    }

    if (CFStringCompare(v26, @"_float", 0))
    {
      v36 = CFTimeZoneCreateWithName(0, v26, 1u);
    }

    else
    {
      v36 = 0;
    }

    CalCalendarItemSetStartTimeZone(a1, v36);
    if (CalEntityIsOfType(a1, 2))
    {
      CalCalendarItemSetEndTimeZone(a1, v36);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    CalDateTimeRelease();
    if (v31)
    {
      CFRelease(v31);
    }

    v21 = cf;
    if (v32)
    {
      [v435 addObject:II_FROM_KEY];
    }
  }

  else
  {
  }

  v37 = v446 & 0x20000000;
  if ((v446 & 0x20000000) != 0)
  {
    v38 = [v20 summary];

    if (!v38)
    {
      goto LABEL_35;
    }
  }

  if (v435)
  {
    v39 = CalCalendarItemCopySummary(a1);
    v40 = [v20 summary];
    v41 = CFStringCompare(v39, v40, 0);

    if (v41)
    {
      [v435 addObject:II_EVENT_TITLE_KEY];
    }

    CFRelease(v39);
  }

  v42 = [v20 summary];
  CalCalendarItemSetSummary(a1, v42);

  if ((v446 & 0x20000000) != 0)
  {
LABEL_35:
    v43 = [v20 location];
    if (v43)
    {
    }

    else
    {
      v44 = [v20 x_apple_structured_location];

      if (!v44)
      {
        goto LABEL_60;
      }
    }
  }

  v45 = v20;
  v46 = [v45 x_apple_structured_location];
  v47 = v46;
  if (v46)
  {
    v48 = MEMORY[0x1E6992FD8];
    v49 = [v46 title];
    v50 = [v47 address];
    v51 = [v48 fullDisplayStringWithTitle:v49 address:v50];

    v52 = [v45 location];
    LOBYTE(v50) = [v52 isEqualToString:v51];

    if (v50)
    {
      if (v51)
      {
        goto LABEL_44;
      }
    }

    else
    {

      v47 = 0;
    }
  }

  v51 = [v45 location];
LABEL_44:
  v53 = [v47 value];

  if (v53)
  {
LABEL_45:
    CalCalendarItemSetClientLocation(a1, 0);
    LODWORD(v54) = 1;
    goto LABEL_53;
  }

  v55 = CalCalendarItemCopyClientLocation(a1);
  if (!v55)
  {
    goto LABEL_52;
  }

  v56 = v55;
  v57 = CalLocationCopyDerivedFrom(v55);
  if (!v57)
  {
    v454 = CalLocationCopyTitle(v56);
    v60 = CalLocationCopyAddress(v56);
    v61 = [MEMORY[0x1E6992FD8] fullDisplayStringWithTitle:v454 address:v60];
    v460 = [v51 isEqualToString:v61];

    CFRelease(v56);
    if ((v460 & 1) == 0)
    {
      goto LABEL_45;
    }

LABEL_52:
    LODWORD(v54) = 0;
    goto LABEL_53;
  }

  v58 = v57;
  if ([v51 length])
  {
    v59 = [v51 isEqualToString:v58];
    CFRelease(v56);

    if ((v59 & 1) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_52;
  }

  v54 = [v58 length];
  CFRelease(v56);

  if (v54)
  {
    goto LABEL_45;
  }

LABEL_53:
  if (v47 || ([v45 location], v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "length"), v62, v63))
  {
    Location = CalCalendarItemCopyLocation(a1);
    if (!Location)
    {
      Location = CalDatabaseCreateLocation(a5);
      CalCalendarItemSetLocation(a1, Location);
    }

    CalLocationUpdateFromICSComponent(Location, v45, 1, 0);
    CFRelease(Location);
  }

  else
  {
    CalCalendarItemSetLocation(a1, 0);
  }

  v21 = cf;

  v37 = v446 & 0x20000000;
  if (v54)
  {
    [v435 addObject:II_LOCATION_KEY];
  }

LABEL_60:
  if (a2)
  {
    v65 = a2;
  }

  else
  {
    v65 = a1;
  }

  v430 = CalCalendarItemCopyDescription(v65);
  v66 = [MEMORY[0x1E6992F38] deserializeConference:?];
  v67 = MEMORY[0x1E6992F38];
  v68 = [v20 description];
  v69 = [v67 deserializeConference:v68];

  v432 = v66;
  v70 = [v66 conference];
  v71 = [v69 conference];
  v433 = v71;
  v434 = v70;
  v72 = a9;
  if (v70)
  {
    v72 = 1;
    v73 = 0;
  }

  else
  {
    v73 = 1;
  }

  if (v71)
  {
    v74 = 1;
  }

  else
  {
    v72 = 1;
    v74 = v73;
  }

  v428 = v69;
  if (v72 == 1 && v74 && (!v434 || ([v434 isEqual:{v71, v69}] & 1) != 0))
  {
    CalEventRemoveInvitationChangedProperties(a1, 256);
    goto LABEL_125;
  }

  v461 = v74;
  v75 = [v66 blockTitle];
  v76 = [v69 blockTitle];
  v77 = CalCalendarItemCopyAttendees(v65);
  v472 = v75;
  if (!v77)
  {
    v89 = CDBLogHandle;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v89, OS_LOG_TYPE_INFO, "VCNotification: Not searching for room attendees because we currently have no attendees.", buf, 2u);
    }

    goto LABEL_105;
  }

  v78 = v77;
  if (!(v75 | v76))
  {
    v90 = CDBLogHandle;
    if (os_log_type_enabled(v90, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v90, OS_LOG_TYPE_INFO, "VCNotification: Not searching for room attendees because we have no virtual conference titles.", buf, 2u);
    }

    CFRelease(v78);
    goto LABEL_105;
  }

  Count = CFArrayGetCount(v77);
  v80 = CDBLogHandle;
  if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
  {
    v81 = v472;
    v82 = @"(none)";
    if (!v472)
    {
      v81 = @"(none)";
    }

    *buf = 67109634;
    if (v76)
    {
      v82 = v76;
    }

    *v513 = Count;
    *&v513[4] = 2112;
    *&v513[6] = v81;
    *&v513[14] = 2112;
    *&v513[16] = v82;
    _os_log_impl(&dword_1DEBB1000, v80, OS_LOG_TYPE_INFO, "VCNotification: Searching for room attendee among %d attendees. Searching for room name: %@ (original) or %@ (updated)", buf, 0x1Cu);
  }

  if (Count <= 0)
  {
    CFRelease(v78);
LABEL_104:
    v37 = v446 & 0x20000000;
    goto LABEL_105;
  }

  v83 = 0;
  v84 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v78, v83);
    if (CalAttendeeGetType(ValueAtIndex) == 2)
    {
      break;
    }

LABEL_94:
    v84 = ++v83 < Count;
    if (Count == v83)
    {
      CFRelease(v78);
      v21 = cf;
      goto LABEL_104;
    }
  }

  v86 = CalAttendeeCopyDisplayName(ValueAtIndex);
  if ((!v76 || ([v76 isEqualToString:v86] & 1) == 0) && (!v472 || !-[__CFString isEqualToString:](v472, "isEqualToString:", v86)))
  {
    v87 = CDBLogHandle;
    if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      v88 = @"(none)";
      if (v86)
      {
        v88 = v86;
      }

      *buf = 138412290;
      *v513 = v88;
      _os_log_impl(&dword_1DEBB1000, v87, OS_LOG_TYPE_INFO, "VCNotification: Found a room attendee, but the name does not match: %@", buf, 0xCu);
    }

    goto LABEL_94;
  }

  v426 = CDBLogHandle;
  if (os_log_type_enabled(v426, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v426, OS_LOG_TYPE_INFO, "VCNotification: Found a matching virtual conference room attendee.", buf, 2u);
  }

  CFRelease(v78);
  v21 = cf;
  v37 = v446 & 0x20000000;
  if (!v84)
  {
LABEL_105:
    if (v434 || !v433)
    {
      if (v461)
      {
        if (!v434 || !v433)
        {
LABEL_122:
          CalEventAddInvitationChangedProperties(a1, 256);
          if (v435)
          {
            [v435 addObject:II_VIDEOCONFERENCE_KEY];
          }

          goto LABEL_124;
        }

        v93 = CDBLogHandle;
        if (os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1DEBB1000, v93, OS_LOG_TYPE_INFO, "VCNotification: Adding virtual conference invitation changed flag because a virtual conference was changed", buf, 2u);
        }

        v94 = CDBLogHandle;
        if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v513 = v434;
          _os_log_impl(&dword_1DEBB1000, v94, OS_LOG_TYPE_INFO, "VCNotification:   Old virtual conference: %@", buf, 0xCu);
        }

        v91 = CDBLogHandle;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v513 = v433;
          v92 = "VCNotification:   New virtual conference: %@";
          goto LABEL_120;
        }
      }

      else
      {
        v91 = CDBLogHandle;
        if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v513 = v434;
          v92 = "VCNotification: Adding virtual conference invitation changed flag because a virtual conference was deleted (%@)";
          goto LABEL_120;
        }
      }
    }

    else
    {
      v91 = CDBLogHandle;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v513 = v433;
        v92 = "VCNotification: Adding virtual conference invitation changed flag because a virtual conference was added (%@)";
LABEL_120:
        _os_log_impl(&dword_1DEBB1000, v91, OS_LOG_TYPE_INFO, v92, buf, 0xCu);
      }
    }

    goto LABEL_122;
  }

  v427 = CDBLogHandle;
  if (os_log_type_enabled(v427, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v427, OS_LOG_TYPE_INFO, "VCNotification: Not adding virtual conference invitation changed flag because we found a matching room attendee.", buf, 2u);
  }

LABEL_124:
LABEL_125:
  v95 = [v20 description];
  v96 = v95;
  if (!v37)
  {
    CalCalendarItemSetDescription(a1, v95);

LABEL_131:
    v98 = CalCalendarItemStatusFromICSStatus([v20 status]);
    CalCalendarItemSetStatus(a1, v98);
    goto LABEL_132;
  }

  if (v96)
  {
    v97 = [v20 description];
    CalCalendarItemSetDescription(a1, v97);
  }

  if ([v20 status])
  {
    goto LABEL_131;
  }

LABEL_132:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (!v37)
    {
      goto LABEL_137;
    }

    v99 = [v20 location];
    if (v99)
    {

      goto LABEL_137;
    }

    v100 = [v20 x_apple_travel_start];

    if (v100)
    {
LABEL_137:
      v101 = v20;
      v102 = [v101 x_apple_travel_start];
      if (v102)
      {
        v103 = CalCalendarItemCopyStartLocation(a1);
        if (!v103)
        {
          v103 = CalDatabaseCreateLocation(a5);
          CalCalendarItemSetStartLocation(a1, v103);
        }

        CalLocationUpdateFromICSComponent(v103, v101, 0, 1);
        CFRelease(v103);
      }

      else
      {
        CalCalendarItemSetStartLocation(a1, 0);
      }

      if (v37)
      {
        goto LABEL_143;
      }

      goto LABEL_146;
    }

LABEL_143:
    v104 = [v20 location];
    if (v104)
    {

      goto LABEL_146;
    }

    v105 = [v20 x_apple_end_location];

    if (v105)
    {
LABEL_146:
      v106 = v20;
      v107 = [v106 x_apple_end_location];
      if (v107)
      {
        v108 = CalCalendarItemCopyEndLocation(a1);
        if (!v108)
        {
          v108 = CalDatabaseCreateLocation(a5);
          CalCalendarItemSetEndLocation(a1, v108);
        }

        CalLocationUpdateFromICSComponent(v108, v106, 0, 2);
        CFRelease(v108);
      }

      else
      {
        CalCalendarItemSetEndLocation(a1, 0);
      }
    }
  }

  v109 = [v20 propertiesForName:kCalImportEventIsPhantomMaster];
  v110 = [v109 count] != 0;

  CalCalendarItemSetHidden(a1, v110);
  CalCalendarItemSetIsPhantomMaster(a1, v110);
  v111 = [v20 url];
  CalCalendarItemSetURL(a1, v111);

  CalCalendarItemUpdateUIDFromICSComponent(a1, v20, v21);
  v439 = v20;
  v462 = v21;
  v455 = v437;
  v447 = v436;
  v112 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v113 = v112;
    DebugDescription = CalEntityGetDebugDescription(a1);
    *buf = 138412290;
    *v513 = DebugDescription;
    _os_log_impl(&dword_1DEBB1000, v113, OS_LOG_TYPE_DEBUG, "Updating attendees in the database for calendar item: [%@]", buf, 0xCu);
  }

  v115 = CalCalendarItemCopyAttendees(a1);
  if (!v115)
  {
LABEL_175:
    Mutable = 0;
    goto LABEL_176;
  }

  v116 = v115;
  v480 = CFArrayGetCount(v115);
  if (v480 <= 0)
  {
    CFRelease(v116);
    goto LABEL_175;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v118 = 0;
  v119 = 0;
  do
  {
    v120 = Mutable;
    v121 = CFArrayGetValueAtIndex(v116, v118);
    v122 = CalAttendeeCopyAddress(v121);
    if (v122)
    {
      v123 = v122;
      v124 = [v122 absoluteString];
      if (!CFDictionaryContainsKey(Mutable, v124))
      {
        CFDictionarySetValue(Mutable, v124, v121);
        CFRelease(v123);

        goto LABEL_164;
      }

      CFRelease(v123);
    }

    if (!v119)
    {
      v119 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      CFAutorelease(v119);
    }

    CFArrayAppendValue(v119, v121);
LABEL_164:
    ++v118;
  }

  while (v480 != v118);
  CFRelease(v116);
  if (v119)
  {
    v125 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v126 = v125;
      v127 = CFArrayGetCount(v119);
      v128 = CalEntityGetDebugDescription(a1);
      *buf = 134218242;
      *v513 = v127;
      *&v513[8] = 2112;
      *&v513[10] = v128;
      _os_log_impl(&dword_1DEBB1000, v126, OS_LOG_TYPE_DEFAULT, "Removing [%ld] existing attendees that couldn't be uniquely mapped to by their address from calendar item: [%@]", buf, 0x16u);
    }

    v129 = CFArrayGetCount(v119);
    if (v129 >= 1)
    {
      v130 = v129;
      for (i = 0; i != v130; ++i)
      {
        v132 = CFArrayGetValueAtIndex(v119, i);
        v133 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v134 = v133;
          v135 = v130;
          v136 = CalEntityGetDebugDescription(v132);
          v137 = [MEMORY[0x1E696AD98] numberWithInt:CalEventGetUID(a1)];
          *buf = 138412546;
          *v513 = v136;
          v130 = v135;
          *&v513[8] = 2112;
          *&v513[10] = v137;
          _os_log_impl(&dword_1DEBB1000, v134, OS_LOG_TYPE_DEBUG, "Removing attendee [%@] on event with UID: [%@]", buf, 0x16u);

          Mutable = v120;
        }

        CalCalendarItemRemoveAttendee(a1, v132);
      }
    }
  }

LABEL_176:
  v138 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v139 = MEMORY[0x1E696AD98];
    v140 = v138;
    v141 = [v439 attendee];
    v142 = [v139 numberWithUnsignedInteger:{objc_msgSend(v141, "count")}];
    v143 = CalEntityGetDebugDescription(a1);
    *buf = 138412546;
    *v513 = v142;
    *&v513[8] = 2112;
    *&v513[10] = v143;
    _os_log_impl(&dword_1DEBB1000, v140, OS_LOG_TYPE_DEBUG, "Adding [%@] attendees from the iCalendar object onto the calendar item: [%@]", buf, 0x16u);
  }

  v507 = 0u;
  v508 = 0u;
  *v505 = 0u;
  v506 = 0u;
  obj = [v439 attendee];
  cfa = [obj countByEnumeratingWithState:v505 objects:buf count:16];
  if (!cfa)
  {
    v473 = 0;
    v441 = 0;
    goto LABEL_218;
  }

  v473 = 0;
  v441 = 0;
  v452 = *v506;
  v144 = *MEMORY[0x1E6993100];
  v449 = Mutable;
  while (2)
  {
    v145 = 0;
    while (2)
    {
      if (*v506 != v452)
      {
        objc_enumerationMutation(obj);
      }

      v146 = *(*&v505[8] + 8 * v145);
      v147 = [v146 value];
      v148 = [v147 absoluteString];
      v481 = v146;
      if (Mutable && (Value = CFDictionaryGetValue(Mutable, v148)) != 0)
      {
        Attendee = Value;
        CFRetain(Value);
        CFDictionaryRemoveValue(Mutable, v148);
        ProposedStartDate = CalAttendeeGetProposedStartDate(Attendee);
        ProposedStartDateChanged = CalParticipantGetProposedStartDateChanged(Attendee);
        v153 = CalAttendeeGetProposedStartDateStatus(Attendee) == 3;
        v154 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          log = v154;
          v155 = CalEntityGetDebugDescription(Attendee);
          v444 = v147;
          v156 = [MEMORY[0x1E696AD98] numberWithInt:CalEventGetUID(a1)];
          *v509 = 138412546;
          *&v509[4] = v155;
          *&v509[12] = 2112;
          *&v509[14] = v156;
          _os_log_impl(&dword_1DEBB1000, log, OS_LOG_TYPE_DEBUG, "Updating attendee [%@] for event with UID [%@]", v509, 0x16u);

          v147 = v444;
          Mutable = v449;
        }

        if (!CalAttendeeUpdateFromICSUserAddress(v481, Attendee, v462, v455))
        {
          goto LABEL_205;
        }

LABEL_193:
        ProposedStartDateStatus = CalAttendeeGetProposedStartDateStatus(Attendee);
        v162 = CalAttendeeGetProposedStartDate(Attendee);
        v163 = vabdd_f64(v162, v144) >= 2.22044605e-16 || ProposedStartDateChanged;
        if (fabs(v162) < 2.22044605e-16)
        {
          v163 = ProposedStartDateChanged;
        }

        if (ProposedStartDateStatus > 1)
        {
          v163 = ProposedStartDateChanged;
        }

        if (vabdd_f64(v162, ProposedStartDate) >= 2.22044605e-16 && (v163 & 1) != 0)
        {
          CalParticipantSetProposedStartDateChanged(Attendee, 1);
          v441 |= !ProposedStartDateChanged;
        }

        v164 = CalAttendeeCopyEmailAddress(Attendee);
        if ((!v447 || [v447 addressIsAccountOwner:v164]) && CalAttendeeGetProposedStartDateStatus(Attendee) == 3 && !v153)
        {
          CalParticipantSetProposedStartDateChanged(Attendee, 1);
          CalEventAddInvitationChangedProperties(a1, 128);
          CalEventSetNeedsNotification(a1, 1);
        }
      }

      else
      {
        Attendee = CalDatabaseCreateAttendee(a5);
        v157 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v158 = v157;
          v159 = CalEntityGetDebugDescription(Attendee);
          v160 = [MEMORY[0x1E696AD98] numberWithInt:CalEventGetUID(a1)];
          *v509 = 138412546;
          *&v509[4] = v159;
          *&v509[12] = 2112;
          *&v509[14] = v160;
          _os_log_impl(&dword_1DEBB1000, v158, OS_LOG_TYPE_DEBUG, "Adding attendee [%@] for event with UID [%@]", v509, 0x16u);

          Mutable = v449;
        }

        if (CalAttendeeUpdateFromICSUserAddress(v146, Attendee, v462, v455))
        {
          CalCalendarItemAddAttendee(a1, Attendee);
          v153 = 0;
          ProposedStartDateChanged = 0;
          ProposedStartDate = 0.0;
          goto LABEL_193;
        }

LABEL_205:
        v165 = CDBiCalendarConversionHandle;
        if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
        {
          *v509 = 138412290;
          *&v509[4] = v481;
          _os_log_impl(&dword_1DEBB1000, v165, OS_LOG_TYPE_ERROR, "Couldn't update the CalAttendee from %@", v509, 0xCu);
        }
      }

      if (Attendee)
      {
        CFRelease(Attendee);
      }

      if (!v473)
      {
        v166 = v147;
        v167 = [v439 organizer];
        v168 = [v167 value];
        v169 = [v481 value];
        v170 = [v168 isEqual:v169];

        if (v170)
        {
          v473 = v481;
        }

        else
        {
          v473 = 0;
        }

        Mutable = v449;
        v147 = v166;
      }

      if (cfa != ++v145)
      {
        continue;
      }

      break;
    }

    cfa = [obj countByEnumeratingWithState:v505 objects:buf count:16];
    if (cfa)
    {
      continue;
    }

    break;
  }

LABEL_218:

  if (Mutable)
  {
    v171 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v172 = v171;
      v173 = CFDictionaryGetCount(Mutable);
      v174 = CalEntityGetDebugDescription(a1);
      *v509 = 134218242;
      *&v509[4] = v173;
      *&v509[12] = 2112;
      *&v509[14] = v174;
      _os_log_impl(&dword_1DEBB1000, v172, OS_LOG_TYPE_DEBUG, "Removing [%ld] attendees that weren't in the updated ICS for calendar item: [%@]", v509, 0x16u);
    }

    v503 = 0u;
    v504 = 0u;
    v501 = 0u;
    v502 = 0u;
    v175 = Mutable;
    v176 = [(__CFDictionary *)v175 countByEnumeratingWithState:&v501 objects:v509 count:16];
    if (v176)
    {
      v177 = v176;
      v178 = *v502;
      do
      {
        for (j = 0; j != v177; ++j)
        {
          if (*v502 != v178)
          {
            objc_enumerationMutation(v175);
          }

          v180 = CFDictionaryGetValue(v175, *(*(&v501 + 1) + 8 * j));
          CalCalendarItemRemoveAttendee(a1, v180);
        }

        v177 = [(__CFDictionary *)v175 countByEnumeratingWithState:&v501 objects:v509 count:16];
      }

      while (v177);
    }

    CFRelease(v175);
  }

  v181 = [v439 organizer];

  if (v181)
  {
    Organizer = CalCalendarItemCopyOrganizer(a1);
    if (Organizer || (Organizer = CalDatabaseCreateOrganizer(a5)) != 0)
    {
      v183 = Organizer;
      v184 = [v439 organizer];
      v185 = [v184 value];
      v186 = [v185 absoluteString];
      v187 = [v447 addressIsAccountOwner:v186];

      CalOrganizerSetIsSelf(v183, v187);
      v188 = [v439 organizer];
      LODWORD(v185) = CalOrganizerUpdateFromICSUserAddress(v188, v473, v183, v187, v455);

      if (v185)
      {
        CalCalendarItemSetOrganizer(a1, v183);
      }

      else
      {
        v189 = CDBiCalendarConversionHandle;
        if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
        {
          *v514 = 138412290;
          *&v514[4] = v439;
          _os_log_impl(&dword_1DEBB1000, v189, OS_LOG_TYPE_ERROR, "Couldn't update organizer from %@", v514, 0xCu);
        }
      }

      CFRelease(v183);
      if (v187 & v441)
      {
        CalEventAddInvitationChangedProperties(a1, 64);
        CalEventSetNeedsNotification(a1, 1);
      }
    }

    else
    {
      v425 = CDBiCalendarConversionHandle;
      if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
      {
        *v514 = 0;
        _os_log_impl(&dword_1DEBB1000, v425, OS_LOG_TYPE_ERROR, "Couldn't create a new CalOrganizer object", v514, 2u);
      }
    }
  }

  v190 = [v439 created];
  CFDateFromICSDateAsUTC = CalCreateCFDateFromICSDateAsUTC(v190);

  CalCalendarItemSetCreationDate(a1, CFDateFromICSDateAsUTC);
  if (CFDateFromICSDateAsUTC)
  {
    CFRelease(CFDateFromICSDateAsUTC);
  }

  CalCalendarItemSetSequenceNumber(a1, [v439 sequence]);
  CalCalendarItemSetPriority(a1, [v439 priority]);
  v192 = CalCalendarItemCopyStructuredData(a1);
  v193 = [v439 x_apple_structuredData];
  v194 = v193;
  if (v193 != v192 && ([(__CFNumber *)v193 isEqualToData:v192]& 1) == 0)
  {
    CalCalendarItemSetStructuredData(a1, v194);
  }

  obja = v194;
  v445 = v192;
  v195 = v439;
  v474 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v196 = CalCalendarItemCopyAttachments(a1);
  v456 = v195;
  if (v196)
  {
    v197 = v196;
    v198 = CFArrayGetCount(v196);
    if (v198 >= 1)
    {
      v199 = v198;
      for (k = 0; k != v199; ++k)
      {
        v201 = CFArrayGetValueAtIndex(v197, k);
        if (CalAttachmentIsBinary(v201))
        {
          CalCalendarItemRemoveAttachment(a1, v201);
        }

        else
        {
          v202 = CalAttachmentCopyURL(v201);
          if (v202)
          {
            v203 = [v474 objectForKey:v202];

            if (v203)
            {
              CalCalendarItemRemoveAttachment(a1, v201);
            }

            else
            {
              [v474 setObject:v201 forKey:v202];
            }
          }
        }
      }
    }

    CFRelease(v197);
    v195 = v456;
  }

  if ((~v446 & 0x1000000) != 0)
  {
    v510 = 0u;
    v511 = 0u;
    memset(v509, 0, sizeof(v509));
    v204 = [v195 attach];
    v205 = [v204 countByEnumeratingWithState:v509 objects:buf count:16];
    v206 = v474;
    if (!v205)
    {
      goto LABEL_279;
    }

    v207 = v205;
    v208 = **&v509[16];
    v482 = v204;
    while (1)
    {
      v209 = 0;
      do
      {
        if (**&v509[16] != v208)
        {
          objc_enumerationMutation(v204);
        }

        v210 = *(*&v509[8] + 8 * v209);
        if (([v210 isBinary] & 1) != 0 || (objc_msgSend(v210, "value"), (v211 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          Attachment = CalDatabaseCreateAttachment(a5);
          v212 = 0;
        }

        else
        {
          v212 = v211;
          v213 = [v206 objectForKey:v211];
          if (v213)
          {
            Attachment = v213;
            CFRetain(v213);
            [v206 removeObjectForKey:v212];
            goto LABEL_267;
          }

          [v206 removeObjectForKey:v212];
          Attachment = CalDatabaseCreateAttachment(a5);
          v215 = CalCalendarItemCopyCalendar(a1);
          if (v215)
          {
            v216 = v215;
            v217 = CalCalendarCopyStore(v215);
            if (v217)
            {
              v218 = v217;
              v219 = CalDatabaseCopyAttachmentFileInStoreWithURL(v217, v212);
              if (v219)
              {
                cfe = v219;
                CalAttachmentFileAddAttachment(v219, Attachment);
                CFRelease(cfe);
              }

              CFRelease(v218);
            }

            CFRelease(v216);
            v206 = v474;
          }

          v204 = v482;
        }

        CalCalendarItemAddAttachment(a1, Attachment);
LABEL_267:
        if ((CalAttachmentUpdateFromICSAttachment(Attachment, v210, v446) & 1) == 0)
        {
          CalCalendarItemRemoveAttachment(a1, Attachment);
        }

        CFRelease(Attachment);

        ++v209;
      }

      while (v207 != v209);
      v220 = [v204 countByEnumeratingWithState:v509 objects:buf count:16];
      v207 = v220;
      if (!v220)
      {
LABEL_279:

        v195 = v456;
        break;
      }
    }
  }

  *v505 = MEMORY[0x1E69E9820];
  *&v505[8] = 3221225472;
  *&v506 = __CalCalendarItemUpdateAttachmentsFromICSComponent_block_invoke;
  *(&v506 + 1) = &__block_descriptor_40_e15_v32__0_8_16_B24l;
  *&v507 = a1;
  [v474 enumerateKeysAndObjectsUsingBlock:v505];

  v448 = v195;
  v221 = v462;
  v222 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((~v446 & 0x40000000) != 0)
  {
    v475 = v221;
    v489 = 0u;
    v490 = 0u;
    v487 = 0u;
    v488 = 0u;
    v223 = [v448 components];
    v224 = [v223 countByEnumeratingWithState:&v487 objects:&v501 count:16];
    if (v224)
    {
      v225 = v224;
      v226 = *v488;
      do
      {
        for (m = 0; m != v225; ++m)
        {
          if (*v488 != v226)
          {
            objc_enumerationMutation(v223);
          }

          v228 = *(*(&v487 + 1) + 8 * m);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v222 addObject:v228];
          }

          else
          {
            v229 = CDBiCalendarConversionHandle;
            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *v513 = v228;
              _os_log_impl(&dword_1DEBB1000, v229, OS_LOG_TYPE_DEBUG, "Encountered an unknown subcomponent for an ICSComponent: %@. Dropping it on the floor", buf, 0xCu);
            }
          }
        }

        v225 = [v223 countByEnumeratingWithState:&v487 objects:&v501 count:16];
      }

      while (v225);
    }

    v221 = v475;
  }

  v230 = v222;
  cfb = v221;
  v231 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v232 = CalCalendarItemCopyAlarms(a1);
  v233 = v446;
  if (v232)
  {
    v234 = v232;
    v235 = CFArrayGetCount(v232);
    if (v235 >= 1)
    {
      v236 = v235;
      for (n = 0; n != v236; ++n)
      {
        v238 = CFArrayGetValueAtIndex(v234, n);
        v239 = CalAlarmCopyExternalID(v238);
        if (v239)
        {
          v240 = v239;
          [v231 setValue:v238 forKey:v239];
          CFRelease(v240);
        }

        else
        {
          CalCalendarItemRemoveAlarm(a1, v238);
        }
      }
    }

    CFRelease(v234);
  }

  v463 = v231;
  v516 = 0u;
  v517 = 0u;
  *v514 = 0u;
  v515 = 0u;
  v457 = v230;
  v241 = [v457 countByEnumeratingWithState:v514 objects:buf count:16];
  if (!v241)
  {
    v450 = 0;
    v483 = 0;
    goto LABEL_328;
  }

  v242 = v241;
  v450 = 0;
  v476 = *v515;
  v483 = 0;
  while (2)
  {
    v243 = 0;
    while (2)
    {
      if (*v515 != v476)
      {
        objc_enumerationMutation(v457);
      }

      v244 = *(*&v514[8] + 8 * v243);
      if ([v244 action])
      {
        goto LABEL_311;
      }

      v245 = [v244 trigger];
      if ([v245 isDurationBased])
      {

        goto LABEL_311;
      }

      v246 = [v244 trigger];
      v247 = [v246 value];
      v248 = [v247 components];
      IsInvalidAlarmDate = CalIsInvalidAlarmDate(v248);

      v233 = v446;
      if ((IsInvalidAlarmDate & 1) == 0)
      {
LABEL_311:
        v250 = [v244 x_wr_alarmuid];
        Alarm = [v463 objectForKey:v250];

        if (Alarm)
        {
          v252 = [v244 x_wr_alarmuid];
          [v463 removeObjectForKey:v252];

          CFRetain(Alarm);
        }

        else
        {
          Alarm = CalDatabaseCreateAlarm(a5);
        }

        if (v483 || ![v244 x_apple_default_alarm])
        {
          if (CalAlarmIsDefaultAlarm(Alarm))
          {
            CalAlarmSetIsDefaultAlarm(Alarm, 0);
          }
        }

        else
        {
          v483 = CFRetain(Alarm);
        }

        if (CalAlarmUpdateFromICSAlarm(v244, cfb, Alarm, a5, v233))
        {
          CalCalendarItemAddAlarm(a1, Alarm);
        }

        else
        {
          v253 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
          {
            *v509 = 138412290;
            *&v509[4] = v244;
            _os_log_impl(&dword_1DEBB1000, v253, OS_LOG_TYPE_ERROR, "Couldn't update calendar alarm from ICSAlarm: %@", v509, 0xCu);
          }
        }

        CFRelease(Alarm);
      }

      else
      {
        v450 = 1;
      }

      if (v242 != ++v243)
      {
        continue;
      }

      break;
    }

    v242 = [v457 countByEnumeratingWithState:v514 objects:buf count:16];
    if (v242)
    {
      continue;
    }

    break;
  }

LABEL_328:

  v254 = (v483 == 0) & v450;
  v498 = 0u;
  v499 = 0u;
  v496 = 0u;
  v497 = 0u;
  v255 = [v463 allKeys];
  v256 = [v255 countByEnumeratingWithState:&v496 objects:v509 count:16];
  if (!v256)
  {
    goto LABEL_340;
  }

  v257 = v256;
  v258 = *v497;
  while (2)
  {
    v259 = 0;
    while (2)
    {
      if (*v497 != v258)
      {
        objc_enumerationMutation(v255);
      }

      v260 = [v463 objectForKey:*(*(&v496 + 1) + 8 * v259)];
      Type = CalAlarmGetType(v260);
      IsDefaultAlarm = CalAlarmIsDefaultAlarm(v260);
      if ((Type - 4) > 0xFFFFFFFD)
      {
        if (IsDefaultAlarm)
        {
          if ((v483 != 0) | v254 & 1)
          {
            goto LABEL_334;
          }

          v483 = CFRetain(v260);
        }
      }

      else
      {
LABEL_334:
        CalCalendarItemRemoveAlarm(a1, v260);
      }

      if (v257 != ++v259)
      {
        continue;
      }

      break;
    }

    v257 = [v255 countByEnumeratingWithState:&v496 objects:v509 count:16];
    if (v257)
    {
      continue;
    }

    break;
  }

LABEL_340:

  CalCalendarItemSetDefaultAlarmRemoved(a1, v254);
  if (v483)
  {
    if (v254)
    {
      CalCalendarItemRemoveAlarm(a1, v483);
      v263 = v483;
    }

    else
    {
      if (!CalAlarmIsDefaultAlarm(v483))
      {
        CalAlarmSetIsDefaultAlarm(v483, 1u);
      }

      v263 = v483;
    }

LABEL_349:
    CFRelease(v263);
  }

  else if ((v254 & 1) == 0)
  {
    v264 = CalDatabaseCreateAlarm(a5);
    CalAlarmSetIsDefaultAlarm(v264, 1u);
    CalCalendarItemAddAlarm(a1, v264);
    v263 = v264;
    if (v264)
    {
      goto LABEL_349;
    }
  }

  v265 = CalCalendarItemCopyAlarms(a1);
  v266 = [MEMORY[0x1E695DF90] dictionary];
  if (v265)
  {
    if (CFArrayGetCount(v265) >= 1)
    {
      v267 = 0;
      do
      {
        v268 = CFArrayGetValueAtIndex(v265, v267);
        v269 = CalAlarmCopyExternalID(v268);
        if (v269)
        {
          [v266 setObject:v268 forKey:v269];
        }

        ++v267;
      }

      while (CFArrayGetCount(v265) > v267);
    }

    CFRelease(v265);
  }

  v493 = 0u;
  v494 = 0u;
  v491 = 0u;
  v492 = 0u;
  v270 = v457;
  v271 = [v270 countByEnumeratingWithState:&v491 objects:v505 count:16];
  if (v271)
  {
    v272 = v271;
    v273 = *v492;
    do
    {
      for (ii = 0; ii != v272; ++ii)
      {
        if (*v492 != v273)
        {
          objc_enumerationMutation(v270);
        }

        v275 = *(*(&v491 + 1) + 8 * ii);
        v276 = [v275 relatedTo];

        if (v276)
        {
          v277 = [v275 relatedTo];
          v278 = [v266 objectForKey:v277];

          v279 = [v275 uid];
          v280 = [v266 objectForKey:v279];

          if (v280 && v278 != 0)
          {
            CalAlarmAddSnoozedAlarm(v278, v280);
          }
        }
      }

      v272 = [v270 countByEnumeratingWithState:&v491 objects:v505 count:16];
    }

    while (v272);
  }

  v458 = v448;
  v282 = CalCalendarItemCopyRecurrences(a1);
  if (v282)
  {
    v283 = v282;
    MutableCopy = CFArrayCreateMutableCopy(0, 0, v282);
    CFRelease(v283);
  }

  else
  {
    MutableCopy = 0;
  }

  v510 = 0u;
  v511 = 0u;
  memset(v509, 0, sizeof(v509));
  v464 = [v458 rrule];
  v285 = [v464 countByEnumeratingWithState:v509 objects:buf count:16];
  if (v285)
  {
    v286 = v285;
    v287 = **&v509[16];
    v288 = 0x1E696A000uLL;
    do
    {
      for (jj = 0; jj != v286; ++jj)
      {
        if (**&v509[16] != v287)
        {
          objc_enumerationMutation(v464);
        }

        v290 = *(*&v509[8] + 8 * jj);
        if (MutableCopy && CFArrayGetCount(MutableCopy) >= 1 && (Recurrence = CFArrayGetValueAtIndex(MutableCopy, 0), CFRetain(Recurrence), CFArrayRemoveValueAtIndex(MutableCopy, 0), Recurrence))
        {
          v292 = 1;
        }

        else
        {
          Recurrence = CalDatabaseCreateRecurrence(a5);
          v292 = 0;
        }

        objc_opt_class();
        v484 = v290;
        if (objc_opt_isKindOfClass())
        {
          [v458 dtend];
          v477 = v292;
          v293 = v286;
          v294 = MutableCopy;
          v295 = v288;
          v297 = v296 = v287;
          v298 = CalRecurrenceUpdateFromVCal10String(v290, Recurrence, v297);

          v287 = v296;
          v288 = v295;
          MutableCopy = v294;
          v286 = v293;
          v292 = v477;
          if ((v298 & 1) == 0)
          {
            goto LABEL_385;
          }
        }

        else if (!CalRecurrenceUpdateFromICSRecurrenceRule(v290, Recurrence))
        {
LABEL_385:
          v299 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
          {
            *v505 = 138412290;
            *&v505[4] = v484;
            _os_log_impl(&dword_1DEBB1000, v299, OS_LOG_TYPE_ERROR, "Couldn't update the CalRecurrenceRef from %@", v505, 0xCu);
          }

          if (v292)
          {
            CalCalendarItemRemoveRecurrence(a1, Recurrence);
          }

          goto LABEL_392;
        }

        if ((v292 & 1) == 0)
        {
          CalCalendarItemAddRecurrence(a1, Recurrence);
        }

LABEL_392:
        if (Recurrence)
        {
          CFRelease(Recurrence);
        }
      }

      v286 = [v464 countByEnumeratingWithState:v509 objects:buf count:16];
    }

    while (v286);
  }

  if (MutableCopy)
  {
    v300 = CFArrayGetCount(MutableCopy);
    if (v300 >= 1)
    {
      v301 = v300;
      for (kk = 0; kk != v301; ++kk)
      {
        v303 = CFArrayGetValueAtIndex(MutableCopy, kk);
        CalCalendarItemRemoveRecurrence(a1, v303);
      }
    }

    CFRelease(MutableCopy);
  }

  v304 = v458;
  v305 = cfb;
  v306 = [v304 exdate];
  v307 = [v306 count];
  v308 = CFSetCreateMutable(0, v307, MEMORY[0x1E695E9F8]);

  if (v308)
  {
    v510 = 0u;
    v511 = 0u;
    memset(v509, 0, sizeof(v509));
    v309 = [v304 exdate];
    v310 = [v309 countByEnumeratingWithState:v509 objects:buf count:16];
    if (v310)
    {
      v311 = v310;
      v312 = **&v509[16];
      do
      {
        for (mm = 0; mm != v311; ++mm)
        {
          if (**&v509[16] != v312)
          {
            objc_enumerationMutation(v309);
          }

          v314 = CalDateFromICSDate(*(*&v509[8] + 8 * mm), v305);
          v315 = CFDateCreate(0, v314);
          if (v315)
          {
            v316 = v315;
            CFSetAddValue(v308, v315);
            CFRelease(v316);
          }
        }

        v311 = [v309 countByEnumeratingWithState:v509 objects:buf count:16];
      }

      while (v311);
    }

    v317 = CalCalendarItemCopyExceptionDates(a1);
    if (v317)
    {
      v318 = v317;
      v319 = v305;
      v320 = CFArrayGetCount(v317);
      if (v320 >= 1)
      {
        v321 = v320;
        for (nn = 0; nn != v321; ++nn)
        {
          v323 = CFArrayGetValueAtIndex(v318, nn);
          v324 = CalExceptionDateCopyDate(v323);
          if (v324)
          {
            v325 = v324;
            if (CFSetContainsValue(v308, v324))
            {
              CFSetRemoveValue(v308, v325);
            }

            else
            {
              CalCalendarItemRemoveExceptionDate(a1, v323);
            }

            CFRelease(v325);
          }
        }
      }

      CFRelease(v318);
      v305 = v319;
    }

    v326 = CFSetGetCount(v308);
    v327 = malloc_type_calloc(v326, 8uLL, 0x6004044C4A2DFuLL);
    if (v327)
    {
      v328 = v327;
      CFSetGetValues(v308, v327);
      if (v326 >= 1)
      {
        v329 = v328;
        do
        {
          v330 = *v329++;
          ExceptionDateWithDateAndOrder = CalDatabaseCreateExceptionDateWithDateAndOrder(a5, v330, 0);
          CalCalendarItemAddExceptionDate(a1, ExceptionDateWithDateAndOrder);
          CFRelease(ExceptionDateWithDateAndOrder);
          --v326;
        }

        while (v326);
      }

      free(v328);
    }

    CFRelease(v308);
  }

  v465 = v305;

  v332 = v304;
  CalCalendarItemRemoveAllCategories(a1);
  v453 = v332;
  v333 = [v332 propertiesForName:*MEMORY[0x1E69E3EB8]];
  *v505 = 0u;
  v506 = 0u;
  v507 = 0u;
  v508 = 0u;
  cfc = v333;
  v485 = [v333 countByEnumeratingWithState:v505 objects:buf count:16];
  if (v485)
  {
    v334 = 0;
    v478 = *v506;
    do
    {
      for (i1 = 0; i1 != v485; ++i1)
      {
        if (*v506 != v478)
        {
          objc_enumerationMutation(cfc);
        }

        v336 = [*(*&v505[8] + 8 * i1) values];
        v501 = 0u;
        v502 = 0u;
        v503 = 0u;
        v504 = 0u;
        v337 = [v336 countByEnumeratingWithState:&v501 objects:v509 count:16];
        if (v337)
        {
          v338 = v337;
          v339 = *v502;
          do
          {
            for (i2 = 0; i2 != v338; ++i2)
            {
              if (*v502 != v339)
              {
                objc_enumerationMutation(v336);
              }

              v341 = *(*(&v501 + 1) + 8 * i2);
              EntityType = CalCalendarItemGetEntityType(a1);
              v343 = CalDatabaseCopyCategoryWithNameAndEntityType(a5, v341, EntityType);
              if (v343)
              {
                CategoryWithNameAndEntityType = v343;
                if (CalCategoryIsHidden(v343))
                {
                  CalCategorySetHidden(CategoryWithNameAndEntityType, 0);
                }
              }

              else
              {
                v345 = CalCalendarItemGetEntityType(a1);
                CategoryWithNameAndEntityType = CalDatabaseCreateCategoryWithNameAndEntityType(a5, v341, v345);
              }

              CalCalendarItemAddGroupedCategory(a1, CategoryWithNameAndEntityType, v334);
              CFRelease(CategoryWithNameAndEntityType);
            }

            v338 = [v336 countByEnumeratingWithState:&v501 objects:v509 count:16];
          }

          while (v338);
        }

        v334 = (v334 + 1);
      }

      v485 = [cfc countByEnumeratingWithState:v505 objects:buf count:16];
    }

    while (v485);
  }

  v346 = v453;
  v347 = CalEventPrivacyLevelFromICSCalendarServerAccess([v465 x_calendarserver_access]);
  CalCalendarItemSetPrivacyLevel(a1, v347);
  v348 = [v453 x_apple_contactIdentifiers];
  v349 = objc_opt_new();
  v350 = CalCalendarItemCopyContacts(a1);
  if (v350)
  {
    v351 = v350;
    v352 = CFArrayGetCount(v350);
    if (v352 >= 1)
    {
      v353 = v352 + 1;
      do
      {
        v354 = CFArrayGetValueAtIndex(v351, v353 - 2);
        v355 = CalContactCopyContactIdentifier(v354);
        [v349 setObject:v354 forKeyedSubscript:v355];

        --v353;
      }

      while (v353 > 1);
    }

    CFRelease(v351);
  }

  if (v348)
  {
    v356 = [v348 componentsSeparatedByString:@""];;
    memset(v509, 0, sizeof(v509));
    v510 = 0u;
    v511 = 0u;
    v357 = [v356 countByEnumeratingWithState:v509 objects:buf count:16];
    if (v357)
    {
      v358 = v357;
      v359 = **&v509[16];
      do
      {
        for (i3 = 0; i3 != v358; ++i3)
        {
          if (**&v509[16] != v359)
          {
            objc_enumerationMutation(v356);
          }

          v361 = *(*&v509[8] + 8 * i3);
          v362 = [v349 objectForKeyedSubscript:v361];

          if (v362)
          {
            [v349 setObject:0 forKeyedSubscript:v361];
          }

          else
          {
            Contact = CalDatabaseCreateContact(a5);
            CalContactSetContactIdentifier(Contact, v361);
            CalCalendarItemAddContact(a1, Contact);
            CFRelease(Contact);
          }
        }

        v358 = [v356 countByEnumeratingWithState:v509 objects:buf count:16];
      }

      while (v358);
    }

    v346 = v453;
  }

  *v505 = MEMORY[0x1E69E9820];
  *&v505[8] = 3221225472;
  *&v506 = __CalCalendarItemUpdateContactsFromICSComponent_block_invoke;
  *(&v506 + 1) = &__block_descriptor_40_e15_v32__0_8_16_B24l;
  *&v507 = a1;
  [v349 enumerateKeysAndObjectsUsingBlock:v505];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v364 = v346;
    v365 = [v364 conferences];
    v366 = [v365 count];

    if (v366)
    {
      v367 = [v364 conferences];
      v368 = [v367 objectAtIndexedSubscript:0];

      v369 = [v368 value];
      CalEventSetConferenceURL(a1, v369);
    }

    else
    {
      CalEventSetConferenceURL(a1, 0);
    }

    v370 = *(MEMORY[0x1E695E9F8] + 16);
    *&callBacks.version = *MEMORY[0x1E695E9F8];
    *&callBacks.release = v370;
    callBacks.hash = _CalConferenceGetHash;
    callBacks.equal = _CalConferenceIsEqualToConference;
    v371 = CFSetCreateMutable(0, 0, &callBacks);
    *v514 = 0u;
    v515 = 0u;
    v516 = 0u;
    v517 = 0u;
    v451 = v364;
    v372 = [v364 conferences];
    v373 = [v372 countByEnumeratingWithState:v514 objects:buf count:16];
    if (v373)
    {
      v374 = v373;
      v375 = *v515;
      do
      {
        for (i4 = 0; i4 != v374; ++i4)
        {
          if (*v515 != v375)
          {
            objc_enumerationMutation(v372);
          }

          [(__CFSet *)v371 addObject:*(*&v514[8] + 8 * i4)];
        }

        v374 = [v372 countByEnumeratingWithState:v514 objects:buf count:16];
      }

      while (v374);
    }

    v479 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v377 = CalCalendarItemCopyConferences(a1);
    if (v377)
    {
      v378 = v377;
      v379 = CFArrayGetCount(v377);
      if (v379 >= 1)
      {
        v380 = v379;
        for (i5 = 0; i5 != v380; ++i5)
        {
          v382 = CFArrayGetValueAtIndex(v378, i5);
          v383 = CalConferenceCopyURL(v382);
          v384 = v383;
          if (!v383)
          {
            v384 = [MEMORY[0x1E695DFB0] null];
          }

          v385 = [v479 objectForKeyedSubscript:v384];
          if (!v385)
          {
            v385 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v479 setObject:v385 forKeyedSubscript:v384];
          }

          [v385 addObject:v382];
        }
      }

      CFRelease(v378);
    }

    v498 = 0u;
    v499 = 0u;
    v496 = 0u;
    v497 = 0u;
    v459 = v371;
    v486 = [(__CFSet *)v459 countByEnumeratingWithState:&v496 objects:v509 count:16];
    if (v486)
    {
      cfd = *v497;
      do
      {
        for (i6 = 0; i6 != v486; ++i6)
        {
          if (*v497 != cfd)
          {
            objc_enumerationMutation(v459);
          }

          v387 = *(*(&v496 + 1) + 8 * i6);
          v388 = [v387 value];
          v389 = [v388 absoluteString];
          if (!v389)
          {
            v389 = [MEMORY[0x1E695DFB0] null];
          }

          v390 = [v479 objectForKeyedSubscript:v389];
          v391 = v390;
          if (v390 && (v495[0] = MEMORY[0x1E69E9820], v495[1] = 3221225472, v495[2] = __CalCalendarItemUpdateConferencesFromICSComponent_block_invoke, v495[3] = &unk_1E8691188, v495[4] = v387, v392 = [v390 indexOfObjectPassingTest:v495], v392 != 0x7FFFFFFFFFFFFFFFLL))
          {
            [v391 removeObjectAtIndex:v392];
          }

          else
          {
            v393 = v387;
            Conference = CalDatabaseCreateConference(a5);
            CalCalendarItemAddConference(a1, Conference);
            v395 = [v393 value];
            v396 = [v395 absoluteString];
            CalConferenceSetURL(Conference, v396);

            v397 = v393;
            v398 = [v397 info];

            if (v398)
            {
              v399 = [v397 info];
              CalConferenceSetInfo(Conference, v399);
            }

            v400 = [v397 feature];

            if (v400)
            {
              v401 = [v397 feature];
              CalConferenceSetFeature(Conference, v401);
            }

            v402 = [v397 language];

            if (v402)
            {
              v403 = [v397 language];
              CalConferenceSetLanguage(Conference, v403);
            }

            v404 = [v397 region];

            if (v404)
            {
              v405 = [v397 region];
              CalConferenceSetRegion(Conference, v405);
            }

            CFRelease(Conference);
          }
        }

        v486 = [(__CFSet *)v459 countByEnumeratingWithState:&v496 objects:v509 count:16];
      }

      while (v486);
    }

    v493 = 0u;
    v494 = 0u;
    v491 = 0u;
    v492 = 0u;
    v406 = v479;
    v407 = [v406 countByEnumeratingWithState:&v491 objects:v505 count:16];
    if (v407)
    {
      v408 = v407;
      v409 = *v492;
      do
      {
        for (i7 = 0; i7 != v408; ++i7)
        {
          if (*v492 != v409)
          {
            objc_enumerationMutation(v406);
          }

          v411 = [v406 objectForKeyedSubscript:*(*(&v491 + 1) + 8 * i7)];
          v487 = 0u;
          v488 = 0u;
          v489 = 0u;
          v490 = 0u;
          v412 = [v411 countByEnumeratingWithState:&v487 objects:&v501 count:16];
          if (v412)
          {
            v413 = v412;
            v414 = *v488;
            do
            {
              for (i8 = 0; i8 != v413; ++i8)
              {
                if (*v488 != v414)
                {
                  objc_enumerationMutation(v411);
                }

                CalCalendarItemRemoveConference(a1, *(*(&v487 + 1) + 8 * i8));
              }

              v413 = [v411 countByEnumeratingWithState:&v487 objects:&v501 count:16];
            }

            while (v413);
          }
        }

        v408 = [v406 countByEnumeratingWithState:&v491 objects:v505 count:16];
      }

      while (v408);
    }

    v346 = v453;
  }

  v416 = [v346 last_modified];
  if (!v416)
  {
    v416 = [v346 dtstamp];
  }

  v417 = CalCreateCFDateFromICSDateAsUTC(v416);
  CalCalendarItemSetLastModifiedDate(a1, v417);
  if (v417)
  {
    CFRelease(v417);
  }

  v418 = [CalItemMetadata metadataWithICSComponent:v346];
  if ((v446 & 0x800000) != 0 && ([v346 x_apple_ews_itemid], v419 = objc_claimAutoreleasedReturnValue(), v419, v419))
  {
    v420 = [v346 x_apple_ews_itemid];
    v421 = [v346 x_apple_ews_changekey];
    v422 = [v346 x_apple_ews_permission];
    CalSetEWSComponentsOnCalCalendarItem(a1, v420, v421, v422);
  }

  else
  {
    v423 = CalCalendarItemCopyExternalRepresentation(a1);
    CalCalendarItemSetExternalRepresentation(a1, [v418 dataRepresentationWithExistingMetaData:v423]);
    if (v423)
    {
      CFRelease(v423);
    }
  }

  v34 = 1;
  v16 = v431;
  v18 = v435;
LABEL_528:

  return v34;
}

void CalSetEWSComponentsOnCalCalendarItem(uint64_t a1, void *a2, void *a3, void *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = v9;
  if (v12)
  {
    [v9 setObject:v12 forKey:@"EWSItemIDString"];
  }

  if (v7)
  {
    [v10 setObject:v7 forKey:@"EWSChangeKeyString"];
  }

  if (v8)
  {
    [v10 setObject:v8 forKey:@"EWSPermissionString"];
  }

  v11 = [CalExchangeCalendarItemExternalRepresentation externalRepresentationDataWithDictionary:v10];
  if (v11)
  {
    CalCalendarItemSetExternalRepresentation(a1, v11);
  }
}

void CalSetStartDateOnICSComponentWithOptions(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  started = CalCalendarItemCopyStartTimeZone(a1);
  v11 = [v7 objectForKey:@"ItemBridgeIsAllDay"];

  LODWORD(v7) = [v11 BOOLValue];
  if (v7)
  {
    ICSFloatingDateOnlyFromCFDate(v8, started);
  }

  else
  {
    ICSDateFromCFDate(v8, started);
  }
  v12 = ;

  [v9 setDtstart:v12];
  if (started)
  {

    CFRelease(started);
  }
}

uint64_t CalCalendarItemUpdateICSComponent(void *a1, void *a2, void *a3, unint64_t a4)
{
  v200 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  if (v9)
  {
    goto LABEL_172;
  }

  v177 = v7;
  v176 = v10;
  v175 = v8;
  if (v8)
  {
    v11 = [v8 mutableCopy];
  }

  else
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v12 = v11;
  v13 = v177;
  v14 = v12;
  started = CalCalendarItemCopyStartDate(a1);
  if (started)
  {
    v16 = started;
    CalSetStartDateOnICSComponentWithOptions(a1, v13, started, v14);
    CFRelease(v16);
  }

  if ((a4 & 0x2000) == 0)
  {
    v17 = CalCalendarItemCopySummary(a1);
    if (v17)
    {
      v18 = v17;
      [v13 setSummary:v17];
      CFRelease(v18);
    }

    v19 = CalCalendarItemCopyDescription(a1);
    if (v19)
    {
      v20 = v19;
      [v13 setDescription:v19];
      CFRelease(v20);
    }

    v21 = CalCalendarItemCopyURL(a1);
    if (v21)
    {
      v22 = v21;
      [v13 setUrl:v21];
      CFRelease(v22);
    }
  }

  v23 = v13;
  v24 = CalCalendarItemCopyLocation(a1);
  UpdateICSStructuredLocationFromCalLocation(v24, v23, 1, 0);

  if (v24)
  {
    CFRelease(v24);
  }

  v25 = v23;
  v26 = CalCalendarItemCopyStartLocation(a1);
  UpdateICSStructuredLocationFromCalLocation(v26, v25, 0, 1);

  if (v26)
  {
    CFRelease(v26);
  }

  v27 = v25;
  v28 = CalCalendarItemCopyEndLocation(a1);
  UpdateICSStructuredLocationFromCalLocation(v28, v27, 0, 2);

  if (v28)
  {
    CFRelease(v28);
  }

  Status = CalCalendarItemGetStatus(a1);
  if (Status)
  {
    [v27 setStatus:ICSStatusFromCalCalendarItemStatus(Status)];
  }

  v30 = [MEMORY[0x1E695DF00] date];
  v31 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v32 = ICSDateFromCFDateInTimezone(v30, v31);
  [v27 setDtstamp:v32];

  ModifiedDate = CalCalendarItemCopyLastModifiedDate(a1);
  if (ModifiedDate)
  {
    v34 = ModifiedDate;
    v35 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    v36 = ICSDateFromCFDateInTimezone(v34, v35);
    [v27 setLast_modified:v36];

    CFRelease(v34);
  }

  v37 = CalCalendarItemCopyCreationDate(a1);
  if (v37)
  {
    v38 = v37;
    v39 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
    v40 = ICSDateFromCFDateInTimezone(v38, v39);
    [v27 setCreated:v40];

    CFRelease(v38);
  }

  [v27 setPriority:CalCalendarItemGetPriority(a1)];
  [v27 setSequence:CalCalendarItemGetSequenceNumber(a1)];
  v41 = CalCalendarItemCopyStructuredData(a1);
  if (v41)
  {
    v42 = v41;
    [v27 setX_apple_structuredData:v41];
  }

  v180 = a1;
  v182 = a4;
  if ((a4 & 0x4000) == 0)
  {
    v43 = v27;
    if (_setSubcomponentsOnICSComponent_onceToken != -1)
    {
      CalCalendarItemUpdateICSComponent_cold_1();
    }

    v186 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v44 = CalCalendarItemCopyAlarms(a1);
    if (v44)
    {
      v45 = v44;
      Count = CFArrayGetCount(v44);
      if (Count >= 1)
      {
        v47 = Count;
        v170 = 0;
        v48 = 0;
        v172 = v27;
        v165 = v45;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v45, v48);
          if ((CalAlarmGetType(ValueAtIndex) & 0xFFFFFFFE) != 2)
          {
            break;
          }

LABEL_56:
          if (v47 == ++v48)
          {
            CFRelease(v45);
            if (v170)
            {
              goto LABEL_65;
            }

            goto LABEL_63;
          }
        }

        v50 = ICSAlarmFromCalAlarm(ValueAtIndex);
        if (![v50 action])
        {
          v51 = [v50 trigger];
          if (([v51 isDurationBased] & 1) == 0)
          {
            v167 = [v50 trigger];
            v52 = [v167 value];
            v53 = [v52 components];
            CalInvalidAlarmDate(v53);
            v54 = v43;
            v56 = v55 = v14;
            v166 = [v53 isEqual:v56];

            v14 = v55;
            v43 = v54;

            v45 = v165;
            v27 = v172;

            v170 |= v166;
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v57 = [v50 trigger];
          if (v57)
          {
            a1 = [v50 trigger];
            if (([a1 isDurationBased] & 1) == 0)
            {

              if (!v50)
              {
                goto LABEL_55;
              }

              goto LABEL_54;
            }
          }

          v58 = v14;
          v59 = a1;
          v60 = [v43 dtstart];

          if (v57)
          {
          }

          if (!v60)
          {
            [v50 setTrigger:_setSubcomponentsOnICSComponent_sInvalidTrigger];
          }

          a1 = v59;
          v14 = v58;
        }

        if (!v50)
        {
LABEL_55:

          goto LABEL_56;
        }

LABEL_54:
        [v186 addObject:{v50, v165}];
        goto LABEL_55;
      }

      CFRelease(v45);
    }

LABEL_63:
    if (CalCalendarItemIsDefaultAlarmRemoved(v180))
    {
      v61 = objc_alloc_init(MEMORY[0x1E69E3C40]);
      [v61 setAction:0];
      [v61 setTrigger:_setSubcomponentsOnICSComponent_sInvalidTrigger];
      [v186 addObject:v61];
    }

LABEL_65:
    [v43 setComponents:{v186, v165}];

    a1 = v180;
    a4 = v182;
  }

  v178 = v14;
  if ((a4 & 0x1000) == 0)
  {
    v62 = v27;
    v63 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v64 = v63;
      *buf = 138412290;
      DebugDescription = CalEntityGetDebugDescription(a1);
      _os_log_impl(&dword_1DEBB1000, v64, OS_LOG_TYPE_DEBUG, "Generating iCalendar objects for attendees on event: [%@]", buf, 0xCu);
    }

    v65 = CalCalendarItemCopyAttendees(a1);
    if (v65)
    {
      v66 = v65;
      v168 = v62;
      v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v68 = CFArrayGetCount(v66);
      if (v68 >= 1)
      {
        v69 = v68;
        for (i = 0; i != v69; ++i)
        {
          v71 = CFArrayGetValueAtIndex(v66, i);
          v72 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v73 = v72;
            v74 = CalEntityGetDebugDescription(v71);
            *buf = 138412290;
            DebugDescription = v74;
            _os_log_impl(&dword_1DEBB1000, v73, OS_LOG_TYPE_DEBUG, "Generating iCalendar object for attendee: [%@]", buf, 0xCu);
          }

          v75 = ICSUserAddressFromCalAttendee(v71);
          if (v75)
          {
            [v67 addObject:v75];
          }

          else
          {
            v76 = CDBiCalendarConversionHandle;
            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
            {
              v77 = v76;
              CFArrayGetValueAtIndex(v66, i);
              UID = CalAttendeeGetUID();
              *buf = 67109120;
              LODWORD(DebugDescription) = UID;
              _os_log_impl(&dword_1DEBB1000, v77, OS_LOG_TYPE_ERROR, "Couldn't create an icsUser from attendee %d", buf, 8u);
            }
          }
        }
      }

      v62 = v168;
      if ([v67 count])
      {
        [v168 setAttendee:v67];
      }

      CFRelease(v66);

      a1 = v180;
      a4 = v182;
      v14 = v178;
    }

    v79 = CalCalendarItemCopyOrganizer(a1);
    if (v79)
    {
      v80 = v79;
      v81 = ICSUserAddressFromCalOrganizer(v79);
      [v62 setOrganizer:v81];

      CFRelease(v80);
    }
  }

  v82 = v27;
  v83 = CalCalendarItemCopyRecurrences(a1);
  if (v83)
  {
    v84 = v83;
    v85 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v86 = CFArrayGetCount(v84);
    if (v86 >= 1)
    {
      v87 = v86;
      for (j = 0; j != v87; ++j)
      {
        v89 = CFArrayGetValueAtIndex(v84, j);
        v90 = ICSRecurrenceRuleFromCalRecurrence(v89, a1);
        if (v90)
        {
          [v85 addObject:v90];
        }

        else
        {
          v91 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1DEBB1000, v91, OS_LOG_TYPE_ERROR, "Couldn't create an ICSRecurrence", buf, 2u);
          }
        }

        a1 = v180;
      }
    }

    if ([v85 count])
    {
      [v82 setRrule:v85];
    }

    CFRelease(v84);

    a4 = v182;
    v14 = v178;
  }

  v92 = v82;
  v93 = v14;
  v94 = [v93 objectForKey:@"ItemBridgeExceptionDates"];
  v95 = [v93 objectForKey:@"ItemBridgeIsAllDay"];
  v96 = [v95 BOOLValue];

  v179 = v93;
  v97 = [v93 objectForKey:@"ItemBridgeStartDateTimezone"];
  v98 = CalCalendarItemCopyExceptionDates(a1);
  if (v98)
  {
    v99 = v98;
    if (CFArrayGetCount(v98) >= 1)
    {
      v100 = v92;
      v101 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v102 = CFArrayGetCount(v99);
      v103 = CDBiCalendarConversionHandle;
      if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        DebugDescription = v102;
        _os_log_impl(&dword_1DEBB1000, v103, OS_LOG_TYPE_DEBUG, "Setting %ld exception dates on the ICS component", buf, 0xCu);
      }

      if (v102 >= 1)
      {
        for (k = 0; k != v102; ++k)
        {
          v105 = CFArrayGetValueAtIndex(v99, k);
          v106 = CalExceptionDateCopyDate(v105);
          if (([v94 containsObject:v106] & 1) == 0)
          {
            if (v96)
            {
              ICSFloatingDateOnlyFromCFDate(v106, v97);
            }

            else
            {
              ICSDateFromCFDate(v106, v97);
            }
            v107 = ;
            [v101 addObject:v107];
          }
        }
      }

      v92 = v100;
      [v100 setExdate:v101];

      a1 = v180;
      a4 = v182;
    }

    CFRelease(v99);
  }

  if ((a4 & 0x10000) == 0)
  {
    v108 = v92;
    v109 = CalCalendarItemCopyAttachments(a1);
    if (v109)
    {
      v110 = v109;
      v183 = v92;
      v111 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v112 = CFArrayGetCount(v110);
      if (v112 >= 1)
      {
        v113 = v112;
        v114 = 0;
        v115 = (a4 >> 8) & 1;
        do
        {
          v116 = CFArrayGetValueAtIndex(v110, v114);
          v117 = ICSAttachmentFromCalAttachment(v116, v115);
          if (v117)
          {
            [v111 addObject:v117];
          }

          else
          {
            v118 = CDBiCalendarConversionHandle;
            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
            {
              v119 = v118;
              v120 = CalAttachmentGetUID(v116);
              *buf = 67109120;
              LODWORD(DebugDescription) = v120;
              _os_log_impl(&dword_1DEBB1000, v119, OS_LOG_TYPE_ERROR, "Couldn't create an ICS attachment from attachment %d", buf, 8u);
            }
          }

          ++v114;
        }

        while (v113 != v114);
      }

      if ([v111 count])
      {
        [v108 setAttach:v111];
      }

      CFRelease(v110);

      a1 = v180;
      v92 = v183;
    }
  }

  v121 = v92;
  v122 = CalCalendarItemCopyContacts(a1);
  v123 = CFArrayGetCount(v122);
  if (v123 < 1)
  {
    [v121 setX_apple_contactIdentifiers:0];
    if (!v122)
    {
      goto LABEL_128;
    }

    goto LABEL_127;
  }

  v124 = v123;
  v125 = objc_opt_new();
  for (m = 0; m != v124; ++m)
  {
    v127 = CFArrayGetValueAtIndex(v122, m);
    v128 = CalContactCopyContactIdentifier(v127);
    [v125 addObject:v128];
    CFRelease(v128);
  }

  [v125 sortUsingComparator:&__block_literal_global_58];
  v129 = [v125 componentsJoinedByString:@""];;
  [v121 setX_apple_contactIdentifiers:v129];

  if (v122)
  {
LABEL_127:
    CFRelease(v122);
  }

LABEL_128:

  v130 = v121;
  v131 = CalCalendarItemCopyGroupedCategories(a1);
  v173 = v130;
  if ([v131 count])
  {
    v187 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v131, "count")}];
  }

  else
  {
    v187 = 0;
  }

  v195 = 0u;
  v196 = 0u;
  v193 = 0u;
  v194 = 0u;
  v132 = v131;
  v133 = [v132 countByEnumeratingWithState:&v193 objects:buf count:16];
  if (v133)
  {
    v134 = v133;
    v184 = *v194;
    do
    {
      for (n = 0; n != v134; ++n)
      {
        if (*v194 != v184)
        {
          objc_enumerationMutation(v132);
        }

        v136 = [v132 objectForKeyedSubscript:*(*(&v193 + 1) + 8 * n)];
        v137 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v136, "count")}];
        v189 = 0u;
        v190 = 0u;
        v191 = 0u;
        v192 = 0u;
        v138 = v136;
        v139 = [v138 countByEnumeratingWithState:&v189 objects:v197 count:16];
        if (v139)
        {
          v140 = v139;
          v141 = *v190;
          do
          {
            for (ii = 0; ii != v140; ++ii)
            {
              if (*v190 != v141)
              {
                objc_enumerationMutation(v138);
              }

              v143 = CalCategoryCopyName(*(*(&v189 + 1) + 8 * ii));
              [v137 addObject:v143];
            }

            v140 = [v138 countByEnumeratingWithState:&v189 objects:v197 count:16];
          }

          while (v140);
        }

        [v137 sortUsingSelector:sel_compare_];
        v144 = objc_alloc_init(MEMORY[0x1E69E3CC8]);
        [v144 setValues:v137 valueType:5007];
        [v187 addObject:v144];
      }

      v134 = [v132 countByEnumeratingWithState:&v193 objects:buf count:16];
    }

    while (v134);
  }

  [v173 setProperties:v187 forName:*MEMORY[0x1E69E3EB8]];
  v145 = [v179 objectForKey:@"ItemBridgeIsAllDay"];
  v146 = [v145 BOOLValue];

  if ((v146 & 1) == 0)
  {
    [v173 removePropertiesForName:@"X-MICROSOFT-CDO-ALLDAYEVENT"];
    [v173 removePropertiesForName:@"X-FUNAMBOL-ALLDAY"];
  }

  objc_opt_class();
  v10 = v176;
  if (objc_opt_isKindOfClass())
  {
    v147 = v173;
    v148 = CalEventCopyConferenceURL(v180);
    v188 = [(__CFURL *)v148 absoluteString];
    if (v148)
    {
      v149 = [objc_alloc(MEMORY[0x1E69E3C88]) initWithValue:v148 type:5032];
    }

    else
    {
      v149 = 0;
    }

    v150 = CalCalendarItemCopyConferences(v180);
    if (v150)
    {
      v151 = v150;
      if (CFArrayGetCount(v150) >= 1)
      {
        v174 = v149;
        v169 = v148;
        v171 = v147;
        v181 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v152 = CFArrayGetCount(v151);
        if (v152 >= 1)
        {
          v153 = v152;
          v185 = 0;
          for (jj = 0; jj != v153; ++jj)
          {
            v155 = CFArrayGetValueAtIndex(v151, jj);
            v156 = CalConferenceCopyURL(v155);
            if (v156)
            {
              v157 = CalConferenceCopyInfo(v155);
              v158 = CalConferenceCopyFeature(v155);
              v159 = CalConferenceCopyLanguage(v155);
              v160 = CalConferenceCopyRegion(v155);
              if (v185 & 1 | (v188 == 0) || ![v156 isEqualToString:v188])
              {
                v163 = [MEMORY[0x1E695DFF8] URLWithString:v156];
                v161 = [objc_alloc(MEMORY[0x1E69E3C88]) initWithValue:v163 type:5032];

                v162 = 1;
              }

              else
              {
                v161 = v174;
                v162 = 0;
                v185 = 1;
              }

              [v161 setInfo:v157];
              [v161 setFeature:v158];
              [v161 setLanguage:v159];
              [v161 setRegion:v160];
              if (v162)
              {
                [v181 addObject:v161];
              }
            }
          }
        }

        v149 = v174;
        if (v174)
        {
          [v181 insertObject:v174 atIndex:0];
        }

        v147 = v171;
        [v171 setConferences:v181];

        v10 = v176;
        v148 = v169;
      }

      CFRelease(v151);
    }
  }

  v7 = v177;
  v8 = v175;
LABEL_172:

  return v10;
}

uint64_t __CalCalendarItemUpdateConferencesFromICSComponent_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  v6 = [v5 value];
  v7 = CalConferenceCopyURL(v4);
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v11 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    if (![v6 isEqual:v11])
    {
      v10 = 0;
LABEL_46:

      goto LABEL_47;
    }

    v13 = CalConferenceCopyInfo(v4);
    v14 = CalConferenceCopyFeature(v4);
    v35 = CalConferenceCopyRegion(v4);
    v15 = CalConferenceCopyLanguage(v4);
    if (v13 || ([v5 info], (v33 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v2 = [v5 info];
      if (([v13 isEqual:v2] & 1) == 0)
      {
        v16 = v2;
        v17 = v15;

        v10 = 0;
        goto LABEL_43;
      }

      v34 = 1;
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v32 = v2;
    if (v14 || ([v5 feature], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v18 = [v5 feature];
      if (([v14 isEqual:v18] & 1) == 0)
      {
        v17 = v15;

        v10 = 0;
        goto LABEL_40;
      }

      v29 = v18;
      v19 = 1;
    }

    else
    {
      v30 = 0;
      v19 = 0;
    }

    if (v35 || ([v5 region], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v31 = [v5 region];
      if (![v35 isEqual:?])
      {
        v17 = v15;
        v10 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v28 = 1;
      if (v15)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v26 = 0;
      v28 = 0;
      if (v15)
      {
        goto LABEL_29;
      }
    }

    v24 = [v5 language];
    if (!v24)
    {
      v17 = v15;
      v22 = 0;
      v10 = 1;
      goto LABEL_35;
    }

LABEL_29:
    v27 = v19;
    v20 = [v5 language];
    v21 = v15;
    v10 = [v15 isEqual:v20];

    v17 = v21;
    if (v21)
    {
      if (v28)
      {
        v19 = v27;
        goto LABEL_36;
      }

      v19 = v27;
LABEL_37:
      if (!v35)
      {

        if ((v19 & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (v19)
      {
LABEL_39:
      }

LABEL_40:
      if (!v14)
      {

        if ((v34 & 1) == 0)
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      if (v34)
      {
LABEL_42:
      }

LABEL_43:
      if (!v13)
      {
      }

      goto LABEL_46;
    }

    v19 = v27;
    v22 = v25;
LABEL_35:

    if (v28)
    {
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  v10 = 0;
LABEL_47:

  return v10;
}

void ___setSubcomponentsOnICSComponent_block_invoke(uint64_t a1)
{
  v4 = CalInvalidAlarmDate(a1);
  v1 = [objc_alloc(MEMORY[0x1E69E3C98]) initWithYear:objc_msgSend(v4 month:"year") day:objc_msgSend(v4 hour:"month") minute:objc_msgSend(v4 second:{"day"), objc_msgSend(v4, "hour"), objc_msgSend(v4, "minute"), objc_msgSend(v4, "second")}];
  v2 = [objc_alloc(MEMORY[0x1E69E3D08]) initWithDate:v1];
  v3 = _setSubcomponentsOnICSComponent_sInvalidTrigger;
  _setSubcomponentsOnICSComponent_sInvalidTrigger = v2;
}

id ICSAlarmFromCalAlarm(id a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69E3C40]);
    IsDefaultAlarm = CalAlarmIsDefaultAlarm(v1);
    v4 = CalAlarmCopyOwningEntity(v1);
    v5 = v4;
    if (IsDefaultAlarm)
    {
      if (!CalEntityIsOfType(v4, 2))
      {
        goto LABEL_28;
      }

      IsAllDay = CalEventIsAllDay(v5);
      v7 = CalEventCopyStore(v5);
      v8 = v7;
      if (IsAllDay)
      {
        v9 = CalStoreCopyDefaultAllDayAlarmOffset(v7);
      }

      else
      {
        v9 = CalStoreCopyDefaultAlarmOffset(v7);
      }

      v21 = v9;
      if (v8)
      {
        CFRelease(v8);
      }

      valuePtr = -1;
      if (v21)
      {
        CFNumberGetValue(v21, kCFNumberIntType, &valuePtr);
        CFRelease(v21);
      }

      else
      {
        v22 = CalCopyDatabaseForEntity(v1);
        v23 = CalDatabaseGetPreferences(v22);
        CFRelease(v22);
        if (IsAllDay)
        {
          v24 = CalAlarmCopyDefaultAllDayAlarmOffsetWithPreferences(v23);
        }

        else
        {
          v24 = CalAlarmCopyDefaultTimedAlarmOffsetWithPreferences(v23);
        }

        v25 = v24;
        if (v24)
        {
          CFNumberGetValue(v24, kCFNumberIntType, &valuePtr);
          CFRelease(v25);
        }
      }

      if (valuePtr == -1)
      {
LABEL_28:
        v1 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v13 = objc_alloc(MEMORY[0x1E69E3CB8]);
      v14 = valuePtr;
    }

    else
    {
      TriggerDate = CalAlarmGetTriggerDate(v1);
      if (fabs(TriggerDate + -1.17549435e-38) >= 2.22044605e-16)
      {
        v15 = CFDateCreate(0, TriggerDate);
        v16 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
        v17 = ICSDateFromCFDateInTimezone(v15, v16);

        CFRelease(v15);
        v18 = objc_alloc(MEMORY[0x1E69E3D08]);
        v19 = [v17 value];
        v20 = [v18 initWithDate:v19];

        if (!v20)
        {
          goto LABEL_25;
        }

        goto LABEL_26;
      }

      TriggerInterval = CalAlarmGetTriggerInterval(v1);
      if (TriggerInterval == 0x7FFFFFFF)
      {
LABEL_25:
        v27 = CalInvalidAlarmDate(TriggerInterval);
        v28 = [objc_alloc(MEMORY[0x1E69E3C98]) initWithYear:objc_msgSend(v27 month:"year") day:objc_msgSend(v27 hour:"month") minute:objc_msgSend(v27 second:{"day"), objc_msgSend(v27, "hour"), objc_msgSend(v27, "minute"), objc_msgSend(v27, "second")}];
        v20 = [objc_alloc(MEMORY[0x1E69E3D08]) initWithDate:v28];

        goto LABEL_26;
      }

      v12 = TriggerInterval;
      v13 = objc_alloc(MEMORY[0x1E69E3CB8]);
      v14 = v12;
    }

    v26 = [v13 initWithWeeks:0 days:0 hours:0 minutes:0 seconds:v14];
    v20 = [objc_alloc(MEMORY[0x1E69E3D08]) initWithDuration:v26];

    if (!v20)
    {
      goto LABEL_25;
    }

LABEL_26:
    [v2 setTrigger:v20];
    Type = CalAlarmGetType(v1);
    [v2 setAction:ICSActionFromCalAlarmType(Type)];
    v30 = CalAlarmCopyUUID(v1);
    if (v30)
    {
      v31 = v30;
      [v2 setUid:v30];
      [v2 setX_wr_alarmuid:v31];
      CFRelease(v31);
    }

    else
    {
      v32 = [MEMORY[0x1E69E3C80] makeUID];
      [v2 setUid:v32];
      [v2 setX_wr_alarmuid:v32];
    }

    Proximity = CalAlarmGetProximity(v1);
    v34 = ICSProximityStringFromCalAlarmProximity(Proximity);
    [v2 setX_apple_proximity:v34];

    [v2 setX_apple_default_alarm:CalAlarmIsDefaultAlarm(v1)];
    v35 = v2;
    v36 = CalAlarmCopyLocation(v1);
    UpdateICSStructuredLocationFromCalLocation(v36, v35, 0, 0);

    if (v36)
    {
      CFRelease(v36);
    }

    if (CalAlarmGetAcknowledged(v1))
    {
      CalAlarmGetAcknowledgedDate(v1);
      v37 = CFTimeZoneCreateWithName(0, @"UTC", 1u);
      GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
      v40 = [objc_alloc(MEMORY[0x1E69E3C98]) initWithYear:GregorianDateWithFallbackToDefaultTimeZone month:GregorianDateWithFallbackToDefaultTimeZone << 24 >> 56 day:GregorianDateWithFallbackToDefaultTimeZone << 16 >> 56 hour:GregorianDateWithFallbackToDefaultTimeZone << 8 >> 56 minute:GregorianDateWithFallbackToDefaultTimeZone >> 56 second:v39];
      [v35 setAcknowledged:v40];
      if (v37)
      {
        CFRelease(v37);
      }
    }

    else
    {
      [v35 setAcknowledged:0];
    }

    v41 = CalAlarmCopyOriginalAlarm(v1);
    if (v41)
    {
      v42 = v41;
      v43 = CalAlarmCopyExternalID(v41);
      if (v43)
      {
        v44 = v43;
        [v35 setRelatedTo:v43];
        CFRelease(v44);
      }

      CFRelease(v42);
    }

    v45 = CalAlarmCopyExternalRepresentation(v1);
    if (v45)
    {
      v46 = v45;
      v47 = [CalAlarmMetadata metadataWithData:v45];
      CFRelease(v46);
      [v47 applyToComponent:v35];
    }

    v48 = [v35 description];
    if (v48)
    {
    }

    else if ([v35 action] != 2)
    {
      v49 = +[CDBBundle bundle];
      v50 = [v49 localizedStringForKey:@"Reminder" value:&stru_1F59E24D8 table:0];

      [v35 setDescription:v50];
    }

    v1 = v35;

    goto LABEL_48;
  }

LABEL_49:

  return v1;
}

BOOL CalAlarmUpdateFromICSAlarm(void *a1, void *a2, uint64_t a3, os_unfair_lock_s *a4, int a5)
{
  v9 = a1;
  v10 = a2;
  if (a3)
  {
    v51 = a5;
    v11 = [v9 trigger];
    v12 = [v11 isDurationBased];
    v52 = v11;
    v13 = [v11 value];
    v54 = v10;
    if (v12)
    {
      TriggerInterval = CalAlarmGetTriggerInterval(a3);
      [v13 timeInterval];
      if (TriggerInterval != v15)
      {
        CalAlarmSetTriggerInterval(a3, v15);
      }
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithValue:v13];
      DateTimeFromICSDate = CalCreateDateTimeFromICSDate(v16, v10);
      v18 = CalInvalidAlarmDate(DateTimeFromICSDate);
      v19 = [v18 date];
      [v19 timeIntervalSinceReferenceDate];
      v21 = vabdd_f64(*&DateTimeFromICSDate, v20);

      if (v21 >= 2.22044605e-16)
      {
        CalAlarmSetTriggerDate(a3, *&DateTimeFromICSDate);
      }

      CalDateTimeRelease();
    }

    Type = CalAlarmGetType(a3);
    v53 = CalAlarmTypeFromICSAction([v9 action]);
    if (Type != v53)
    {
      CalAlarmSetType(a3, v53);
    }

    v23 = [v9 uid];
    if (![v23 length])
    {
      v24 = [v9 x_wr_alarmuid];

      v23 = v24;
    }

    if (v23)
    {
      CalAlarmSetUUID(a3, v23);
    }

    Proximity = CalAlarmGetProximity(a3);
    v26 = [v9 x_apple_proximity];
    v27 = CalAlarmProximityFromICSProximityString(v26);

    if (Proximity != v27)
    {
      CalAlarmSetProximity(a3, v27);
    }

    v28 = v9;
    v29 = [v28 x_apple_structured_location];
    if (v29 || ([v28 location], v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
    {
      Location = CalAlarmCopyLocation(a3);
      if (!Location)
      {
        Location = CalDatabaseCreateLocation(a4);
        CalAlarmSetLocation(a3, Location);
      }

      CalLocationUpdateFromICSComponent(Location, v28, 0, 0);
      CFRelease(Location);
    }

    else
    {
      CalAlarmSetLocation(a3, 0);
    }

    v32 = [(CalItemMetadata *)[CalAlarmMetadata alloc] initWithICSComponent:v28];
    v33 = CalAlarmCopyExternalRepresentation(a3);
    v34 = [(CalItemMetadata *)v32 dataRepresentationWithExistingMetaData:v33];
    CalAlarmSetExternalRepresentation(a3, v34);
    v35 = [v28 acknowledged];

    if (v35)
    {
      v36 = [v28 acknowledged];
      v37 = [objc_alloc(MEMORY[0x1E69E3C90]) initWithValue:v36];
      v38 = CalCreateDateTimeFromICSDate(v37, v10);
      if (vabdd_f64(CalAlarmGetAcknowledgedDate(a3), *&v38) >= 2.22044605e-16)
      {
        CalAlarmSetAcknowledgedDate(a3, *&v38);
      }

      CalDateTimeRelease();
    }

    else if (vabdd_f64(CalAlarmGetAcknowledgedDate(a3), *MEMORY[0x1E6993100]) >= 2.22044605e-16)
    {
      CalAlarmRemoveAcknowledged(a3);
    }

    if ((*&v51 & 0x800000) == 0)
    {
      goto LABEL_36;
    }

    if (v53 == 3)
    {
      v40 = [v28 attendee];
      v39 = [v40 firstObject];

      v41 = [v39 value];
      v42 = [v41 scheme];
      v43 = v42;
      if (v42 && ![v42 caseInsensitiveCompare:@"mailto"])
      {
        v44 = [v41 resourceSpecifier];
        [v44 stringByRemovingPercentEscapes];
        v50 = v23;
        v45 = v34;
        v46 = v33;
        v48 = v47 = v32;

        CalAlarmSetEmailAddress(a3, v48);
        v32 = v47;
        v33 = v46;
        v34 = v45;
        v23 = v50;
      }
    }

    else
    {
      if (v53 != 2)
      {
LABEL_36:

        goto LABEL_37;
      }

      v39 = [v28 bookmark];
      CalAlarmSetBookmark(a3, v39);
    }

    v10 = v54;
    goto LABEL_36;
  }

LABEL_37:

  return a3 != 0;
}

void CalIdentityMigrateTables(uint64_t a1, void *a2, unsigned int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a3 < 7)
  {
    v4 = @"CREATE TABLE Identity (display_name TEXT, address TEXT, first_name TEXT, last_name TEXT, UNIQUE (display_name, address, first_name, last_name));";
    goto LABEL_8;
  }

  if (a3 - 12 <= 0xD)
  {
    CalPerformSQLWithConnection(a2, @"ALTER TABLE Participant RENAME TO Participant_;");
    CalPerformSQLWithConnection(a2, @"CREATE TABLE Identity (display_name TEXT, address TEXT, first_name TEXT, last_name TEXT, UNIQUE (display_name, address, first_name, last_name));");
    CalPerformSQLWithConnection(a2, @"INSERT INTO Identity (ROWID, display_name, address) SELECT ROWID, name, email FROM Participant_ WHERE name IS NOT NULL AND email IS NOT NULL;");
    CalPerformSQLWithConnection(a2, @"INSERT INTO Identity (ROWID, display_name, address) SELECT MIN(ROWID), name, email FROM Participant_ WHERE email IS NULL AND name IS NOT NULL GROUP BY name;");
    CalPerformSQLWithConnection(a2, @"INSERT INTO Identity (ROWID, display_name, address) SELECT MIN(ROWID), name, email FROM Participant_ WHERE name IS NULL AND email IS NOT NULL GROUP BY email;");
    CalPerformSQLWithConnection(a2, @"INSERT INTO Identity (ROWID, display_name, address) SELECT MIN(ROWID), name, email FROM Participant_ WHERE name IS NULL AND email IS NULL GROUP BY email;");
    _CalIdentityPerformMigrationUniquingWithQueries(a2, @"SELECT ROWID, address FROM Identity WHERE address IS NULL AND display_name IS NOT NULL;", @"UPDATE Attendee SET participant_id = ? WHERE participant_id IN (SELECT ROWID FROM Participant_ WHERE email IS NULL AND name = ?);", @"UPDATE Event SET organizer_id = ? WHERE organizer_id IN (SELECT ROWID FROM Participant_ WHERE email IS NULL AND name = ?);");
    _CalIdentityPerformMigrationUniquingWithQueries(a2, @"SELECT ROWID, address FROM Identity WHERE address IS NULL;", @"UPDATE Attendee SET participant_id = ? WHERE participant_id IN (SELECT ROWID FROM Participant_ WHERE name IS NULL AND email = ?);", @"UPDATE Event SET organizer_id = ? WHERE organizer_id IN (SELECT ROWID FROM Participant_ WHERE name IS NULL AND email = ?);");
LABEL_7:
    v4 = @"DROP TABLE Participant_;";
    goto LABEL_8;
  }

  if (a3 <= 0x36)
  {
    CalPerformSQLWithConnection(a2, @"ALTER TABLE Participant RENAME TO Participant_;");
    CalPerformSQLWithConnection(a2, @"CREATE TABLE Identity (display_name TEXT, address TEXT, first_name TEXT, last_name TEXT, UNIQUE (display_name, address, first_name, last_name));");
    CalPerformSQLWithConnection(a2, @"INSERT INTO Identity (ROWID, display_name, address) SELECT ROWID, name, email FROM Participant_");
    goto LABEL_7;
  }

  if (a3 > 0x50)
  {
    if (a3 > 0x6A)
    {
      return;
    }

    CalPerformSQLWithConnection(a2, @"ALTER TABLE Identity RENAME TO Identity_;");
    CalPerformSQLWithConnection(a2, @"CREATE TABLE Identity (display_name TEXT, address TEXT, first_name TEXT, last_name TEXT, UNIQUE (display_name, address, first_name, last_name));");
    CalPerformSQLWithConnection(a2, @"INSERT INTO Identity (ROWID, display_name, address) SELECT ROWID, name, address FROM Identity_");
    CalPerformSQLWithConnection(a2, @"DROP TABLE Identity_;");
    if (a3 >= 0x67)
    {
      return;
    }

    goto LABEL_9;
  }

  CalPerformSQLWithConnection(a2, @"ALTER TABLE Identity RENAME TO Identity_;");
  CalPerformSQLWithConnection(a2, @"CREATE TABLE Identity (display_name TEXT, address TEXT, first_name TEXT, last_name TEXT, UNIQUE (display_name, address, first_name, last_name));");
  CalPerformSQLWithConnection(a2, @"INSERT INTO Identity (ROWID, display_name, address) SELECT ROWID, name, email FROM Identity_");
  v4 = @"DROP TABLE Identity_;";
LABEL_8:
  CalPerformSQLWithConnection(a2, v4);
LABEL_9:
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

  v7 = CPSqliteConnectionStatementForSQL();
  if (v7)
  {
    v8 = v7;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v7)
      {
        v9 = **v7;
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

    CPSqliteStatementSendResults();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v8)
      {
        v11 = **v8;
        if (v11)
        {
          if (*(v11 + 104))
          {
            v12 = CPRecordStoreGetContext();
            if (v12)
            {
              os_unfair_lock_assert_owner(v12 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a2)
      {
        if (*(*a2 + 104))
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

  v14 = CPSqliteConnectionStatementForSQL();
  if (v14)
  {
    v15 = v14;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v14)
      {
        v16 = **v14;
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

    CPSqliteStatementPerform();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v15)
      {
        v18 = **v15;
        if (v18)
        {
          if (*(v18 + 104))
          {
            v19 = CPRecordStoreGetContext();
            if (v19)
            {
              os_unfair_lock_assert_owner(v19 + 20);
            }
          }
        }
      }
    }

    CPSqliteStatementReset();
  }

  else
  {
    CFLog();
  }
}

void _CalIdentityPerformMigrationUniquingWithQueries(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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

  v6 = CPSqliteConnectionStatementForSQL();
  if (v6)
  {
    v7 = v6;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v6)
      {
        v8 = **v6;
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

    CPSqliteStatementSendResults();
    if (CDBLockingAssertionsEnabled == 1)
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

    CPSqliteStatementReset();
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a1)
        {
          if (*(*a1 + 104))
          {
            v12 = CPRecordStoreGetContext();
            if (v12)
            {
              os_unfair_lock_assert_owner(v12 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionStatementForSQL();
    if (a1 && (CDBLockingAssertionsEnabled & 1) != 0 && *a1 && *(*a1 + 104))
    {
      v13 = CPRecordStoreGetContext();
      if (v13)
      {
        os_unfair_lock_assert_owner(v13 + 20);
      }
    }

    CPSqliteConnectionStatementForSQL();
  }
}

uint64_t _CalGetIdentityWithRowID(uint64_t a1, uint64_t a2)
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

uint64_t _CalIdentityGetDisplayName(uint64_t a1)
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

uint64_t _CalIdentityCopyAddress(uint64_t a1)
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

uint64_t _CalIdentityGetFirstName(uint64_t a1)
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

uint64_t _CalIdentityGetLastName(uint64_t a1)
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

uint64_t _CalIdentityGetID(CFStringRef theString, const __CFString *a2, CFStringRef a3, CFStringRef a4, uint64_t a5)
{
  v47 = *MEMORY[0x1E69E9840];
  v42 = 1;
  if (!a5 || !a2 && !theString && !a3 && !a4)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = @"display_name IS NULL";
  if (theString && CFStringGetLength(theString))
  {
    v11 = @"display_name = ?";
  }

  if (a2)
  {
    v12 = @"address = ?";
  }

  else
  {
    v12 = @"address IS NULL";
  }

  v13 = @"first_name IS NULL";
  if (a3 && CFStringGetLength(a3))
  {
    v13 = @"first_name = ?";
  }

  v14 = @"last_name IS NULL";
  if (a4 && CFStringGetLength(a4))
  {
    v14 = @"last_name = ?";
  }

  v15 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"SELECT ROWID FROM Identity WHERE %@ AND %@ AND %@ AND %@", v11, v12, v13, v14);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a5)
    {
      if (*(*a5 + 104))
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  v17 = CPSqliteConnectionStatementForSQL();
  if (v17)
  {
    v18 = v17;
    v41 = 0;
    v40 = 0;
    v19 = CalIdentityBindTextQueryArgument(*(v17 + 8), &v42, theString, v46, &v41 + 1);
    v20 = CalIdentityBindTextQueryArgument(v18[1], &v42, a2, v45, &v41);
    v21 = CalIdentityBindTextQueryArgument(v18[1], &v42, a3, v44, &v40 + 1);
    v22 = CalIdentityBindTextQueryArgument(v18[1], &v42, a4, v43, &v40);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v18)
      {
        v23 = **v18;
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

    CPSqliteStatementIntegerResult();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v18)
      {
        v25 = **v18;
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
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*a5)
      {
        if (*(*a5 + 104))
        {
          v27 = CPRecordStoreGetContext();
          if (v27)
          {
            os_unfair_lock_assert_owner(v27 + 20);
          }
        }
      }
    }

    v28 = CPSqliteConnectionStatementForSQL();
    if (v28)
    {
      v29 = v28;
      v30 = *(v28 + 8);
      if (v19)
      {
        sqlite3_bind_text(v30, 1, v19, -1, 0);
      }

      else
      {
        sqlite3_bind_null(v30, 1);
      }

      v31 = v29[1];
      if (v20)
      {
        sqlite3_bind_text(v31, 2, v20, -1, 0);
      }

      else
      {
        sqlite3_bind_null(v31, 2);
      }

      v32 = v29[1];
      if (v21)
      {
        sqlite3_bind_text(v32, 3, v21, -1, 0);
      }

      else
      {
        sqlite3_bind_null(v32, 3);
      }

      v33 = v29[1];
      if (v22)
      {
        sqlite3_bind_text(v33, 4, v22, -1, 0);
      }

      else
      {
        sqlite3_bind_null(v33, 4);
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v29)
        {
          v34 = **v29;
          if (v34)
          {
            if (*(v34 + 104))
            {
              v35 = CPRecordStoreGetContext();
              if (v35)
              {
                os_unfair_lock_assert_owner(v35 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementPerform();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v29)
        {
          v36 = **v29;
          if (v36)
          {
            if (*(v36 + 104))
            {
              v37 = CPRecordStoreGetContext();
              if (v37)
              {
                os_unfair_lock_assert_owner(v37 + 20);
              }
            }
          }
        }
      }

      CPSqliteStatementReset();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a5)
        {
          if (*(*a5 + 104))
          {
            v38 = CPRecordStoreGetContext();
            if (v38)
            {
              os_unfair_lock_assert_owner(v38 + 20);
            }
          }
        }
      }

      Insert = CPSqliteConnectionRowidOfLastInsert();
    }

    else
    {
      Insert = 0xFFFFFFFFLL;
    }

    if (v19 && HIBYTE(v41))
    {
      free(v19);
    }

    if (v20 && v41)
    {
      free(v20);
    }

    if (v21 && HIBYTE(v40))
    {
      free(v21);
    }

    if (v22 && v40)
    {
      free(v22);
    }
  }

  else
  {
    Insert = 0xFFFFFFFFLL;
  }

  CFRelease(v15);
  return Insert;
}

UInt8 *CalIdentityBindTextQueryArgument(sqlite3_stmt *a1, int *a2, CFStringRef theString, UInt8 *a4, BOOL *a5)
{
  if (!theString)
  {
    return 0;
  }

  Length = CFStringGetLength(theString);
  if (Length < 1)
  {
    return 0;
  }

  v11 = Length;
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v13 = MaximumSizeForEncoding;
  usedBufLen = MaximumSizeForEncoding;
  v14 = a4;
  if (MaximumSizeForEncoding >= 256)
  {
    v14 = malloc_type_malloc(MaximumSizeForEncoding, 0x442ADEB1uLL);
  }

  v17.location = 0;
  v17.length = v11;
  CFStringGetBytes(theString, v17, 0x8000100u, 0x20u, 0, v14, v13, &usedBufLen);
  v14[usedBufLen] = 0;
  sqlite3_bind_text(a1, *a2, v14, -1, 0);
  if (a5)
  {
    *a5 = v14 != a4;
  }

  ++*a2;
  return v14;
}

void CalIdentityGarbageCollectOrphans(uint64_t a1)
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 80));
    if (*(a1 + 24))
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
      if (Database)
      {
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*(Database + 104))
          {
            v4 = CPRecordStoreGetContext();
            if (v4)
            {
              os_unfair_lock_assert_owner(v4 + 20);
            }
          }
        }

        v5 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
        if (v5)
        {
          CalPerformSQLWithConnectionAndBindBlock(v5, 1, @"DELETE FROM Identity WHERE NOT EXISTS (SELECT ROWID FROM Participant WHERE Participant.identity_id = Identity.ROWID) AND NOT EXISTS (SELECT ROWID FROM CalendarItem WHERE (CalendarItem.modified_by_id > 0 AND CalendarItem.modified_by_id = Identity.ROWID) OR (CalendarItem.created_by_id > 0 AND CalendarItem.created_by_id = Identity.ROWID)) AND NOT EXISTS (SELECT ROWID FROM Sharee WHERE Sharee.identity_id = Identity.ROWID) AND NOT EXISTS (SELECT ROWID FROM ResourceChange WHERE ResourceChange.identity_id = Identity.ROWID) AND NOT EXISTS (SELECT ROWID FROM Calendar WHERE Calendar.self_identity_id = Identity.ROWID OR Calendar.owner_identity_id = Identity.ROWID) AND NOT EXISTS (SELECT ROWID FROM Notification WHERE Notification.identity_id = Identity.ROWID) ", 0);
        }
      }
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner((a1 + 80));
    }

    os_unfair_lock_unlock((a1 + 80));
  }
}

uint64_t CalDatabaseCreateParticipantsSearchStatement(uint64_t a1, const __CFString *a2)
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
    sqlite3_bind_text(v13, 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
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

void CalDatabaseCopyParticipantIdsThatMatchSearch(sqlite3_stmt **a1, uint64_t a2)
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

void CalDatabaseDeleteParticipantsSearchStatement(uint64_t **a1, uint64_t a2)
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

uint64_t CalOrganizerUpdateAddressOfAllIdentitiesMatchingAddress(os_unfair_lock_s *a1, CFURLRef anURL, const __CFURL *a3, const __CFString *a4)
{
  RecordStore = 0;
  v28 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (anURL)
    {
      if (a3)
      {
        v8 = CFURLGetString(anURL);
        v9 = CFURLGetString(a3);
        RecordStore = 0;
        if (v8)
        {
          v10 = v9;
          if (v9)
          {
            os_unfair_lock_lock(a1 + 20);
            RecordStore = _CalDatabaseGetRecordStore(a1);
            if (RecordStore)
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
              RecordStore = Database;
              if (Database)
              {
                if (CDBLockingAssertionsEnabled == 1)
                {
                  if (*(Database + 104))
                  {
                    v13 = CPRecordStoreGetContext();
                    if (v13)
                    {
                      os_unfair_lock_assert_owner(v13 + 20);
                    }
                  }
                }

                v14 = CPSqliteDatabaseConnectionForWriting();
                RecordStore = v14;
                if (v14)
                {
                  if (CDBLockingAssertionsEnabled == 1)
                  {
                    if (*v14)
                    {
                      if (*(*v14 + 104))
                      {
                        v15 = CPRecordStoreGetContext();
                        if (v15)
                        {
                          os_unfair_lock_assert_owner(v15 + 20);
                        }
                      }
                    }
                  }

                  RecordStore = CPSqliteConnectionStatementForSQL();
                  if (RecordStore)
                  {
                    v24 = 1;
                    v23 = 0;
                    v22 = 0;
                    if (a4 && CFStringGetLength(a4))
                    {
                      v16 = CalIdentityBindTextQueryArgument(*(RecordStore + 8), &v24, a4, v27, &v23 + 1);
                    }

                    else
                    {
                      v24 = 2;
                      sqlite3_bind_null(*(RecordStore + 8), 1);
                      v16 = 0;
                    }

                    v17 = CalIdentityBindTextQueryArgument(*(RecordStore + 8), &v24, v10, v25, &v22);
                    v18 = CalIdentityBindTextQueryArgument(*(RecordStore + 8), &v24, v8, v26, &v23);
                    _CalDatabasePerformStatementWithWriteLock(a1, RecordStore);
                    if (CDBLockingAssertionsEnabled == 1)
                    {
                      if (*RecordStore)
                      {
                        v19 = **RecordStore;
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

                    CPSqliteStatementReset();
                    if (HIBYTE(v23))
                    {
                      free(v16);
                    }

                    if (v23)
                    {
                      free(v18);
                    }

                    if (v22)
                    {
                      free(v17);
                    }

                    RecordStore = 1;
                  }
                }
              }
            }

            if (CDBLockingAssertionsEnabled == 1)
            {
              os_unfair_lock_assert_owner(a1 + 20);
            }

            os_unfair_lock_unlock(a1 + 20);
          }
        }
      }
    }
  }

  return RecordStore;
}

uint64_t _CalIdentityGatherMigrationUniquingRows(uint64_t a1, __CFArray **a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = *MEMORY[0x1E695E738];
  if (sqlite3_column_type(*(a1 + 8), 1) != 5)
  {
    v6 = sqlite3_column_text(*(a1 + 8), 1);
    if (v6)
    {
      v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v6, 0x8000100u);
    }
  }

  if (a2)
  {
    Mutable = *a2;
    if (!*a2)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      *a2 = Mutable;
    }

    if (!a2[1])
    {
      a2[1] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      Mutable = *a2;
    }

    CFArrayAppendValue(Mutable, v4);
    CFArrayAppendValue(a2[1], v5);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 0;
}

uint64_t _CalIdentityGatherRowsToCleanup(uint64_t a1, __CFArray **a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = sqlite3_column_int(*(a1 + 8), 1);
  if (a2)
  {
    v6 = v5;
    Mutable = *a2;
    if (!*a2)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      *a2 = Mutable;
    }

    if (!a2[1])
    {
      a2[1] = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      Mutable = *a2;
    }

    CFArrayAppendValue(Mutable, v4);
    CFArrayAppendValue(a2[1], v6);
  }

  return 0;
}

uint64_t _CalExceptionDatePrepareForSave(uint64_t a1)
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

uint64_t _CalExceptionDatePropertyWillChange(uint64_t result, int a2, uint64_t a3)
{
  if (!a2 && a3 == -1)
  {
    v3 = result;
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

    result = CPRecordGetProperty();
    if (result != -1)
    {
      if (v3)
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

      CPRecordGetProperty();
      if (v3)
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

      return CPRecordGetProperty();
    }
  }

  return result;
}

void CalExceptionDateInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalExceptionDateClass, &kCalExceptionDateIndexes, &kCalExceptionDateChangesIndexes);
}

void CalExceptionDateMigrateTables(uint64_t a1, void *a2, signed int a3)
{
  if (a3 <= 18001)
  {
    v3 = @"EventExceptionDate";
    if (a3 >= 56)
    {
      v3 = 0;
    }

    CalMigrateTableFull(a2, &kCalExceptionDateClass, v3, &kCalExceptionDateUpgradeInfo, &kCalExceptionDateChangesUpgradeInfo, &kCalExceptionDateIndexes, &kCalExceptionDateChangesIndexes, 0, a3);
  }
}

uint64_t CalExceptionDateGetPropertyIDWithPropertyName(void *key)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CalExceptionDateGetPropertyIDWithPropertyName_sPropDict;
  if (!CalExceptionDateGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalExceptionDateGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalExceptionDateGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"date";
      v6 = 1;
      v7 = @"owner";
      v8 = 3;
      CalExceptionDateGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 2);
      for (i = 16; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalExceptionDateGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalExceptionDateGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEC45DAC(_Unwind_Exception *a1)
{
  for (i = 16; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

CFTypeRef _CalExceptionDateHasValidParent(uint64_t a1)
{
  result = _CalExceptionDateGetOwner(a1);
  if (result)
  {

    return _CalRecordStillExists(result);
  }

  return result;
}

CFTypeRef _CalExceptionDateGetOwner(uint64_t a1)
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

const void *_CalCreateExceptionDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 10);
  if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
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
  if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
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
  if (a2)
  {
    if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
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

    CPRecordInitializeProperty();
  }

  if (a3)
  {
    if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
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

    CPRecordInitializeProperty();
  }

  _CalDatabaseAddEntity(a1, v6);
  _CalDatabaseSetChangeFlags(a1, 4);
  return v6;
}

const void *CalDatabaseCreateExceptionDate(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  ExceptionDate = _CalCreateExceptionDate(a1, 0, 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return ExceptionDate;
}

const void *CalDatabaseCreateExceptionDateWithDateAndOrder(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 20);
  ExceptionDate = _CalCreateExceptionDate(a1, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return ExceptionDate;
}

const void *_CalExceptionDateCopy(uint64_t a1, uint64_t a2)
{
  ExceptionDate = _CalCreateExceptionDate(a1, 0, 0);
  v4 = ExceptionDate;
  if (CDBLockingAssertionsEnabled == 1 && ExceptionDate != 0)
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
  return v4;
}

uint64_t _CalRemoveExceptionDate(const void *a1)
{
  result = CPRecordGetStore();
  if (result)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      v4 = Context;
      _CalDatabaseRemoveEntity(Context, a1);
      _CalDatabaseSetChangeFlags(v4, 4);
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

void CalRemoveExceptionDate(const void *a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRemoveExceptionDate(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalExceptionDateGetRecordID(uint64_t a1)
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

uint64_t _CalExceptionDateGetWithUID(uint64_t a1, uint64_t a2)
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

const void *CalDatabaseCopyExceptionDateWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = _CalExceptionDateGetWithUID(RecordStore, a2);
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

uint64_t _CalExceptionDateGetDate(uint64_t a1)
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

uint64_t CalExceptionDateCopyDate(uint64_t a1)
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

void CalExceptionDateSetDate(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    CalExceptionDateSetDate_cold_1();
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

  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalExceptionDateCopyOrder(uint64_t a1)
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