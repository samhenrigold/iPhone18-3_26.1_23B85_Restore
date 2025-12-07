CFMutableSetRef _CalScheduledTaskCacheBeginTrackingUpdates(CFMutableSetRef result)
{
  if (!*(result + 7))
  {
    v1 = result;
    result = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    *(v1 + 7) = result;
  }

  return result;
}

void _CalScheduledTaskCacheStopTrackingUpdates(void *context)
{
  v2 = *(context + 7);
  if (v2)
  {
    CFSetApplyFunction(v2, _GenerateDates, context);
    CFRelease(*(context + 7));
    *(context + 7) = 0;
  }
}

void _GenerateDates(const void *a1, uint64_t a2)
{
  DueDate = _CalTaskGetDueDate(a1);
  CompletionDate = _CalTaskGetCompletionDate(a1);
  if (DueDate | CompletionDate)
  {
    v6 = CompletionDate;
    Mutable = *(a2 + 40);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(a2 + 40) = Mutable;
    }

    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = DueDate;
    }

    CFDictionarySetValue(Mutable, a1, v8);
  }
}

void _CalScheduledTaskCacheRevert(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFDictionaryRemoveAllValues(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    CFSetRemoveAllValues(v3);
  }
}

void _CalScheduledTaskCacheSave(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
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
      CFSetApplyFunction(*(a1 + 48), _CalScheduledTaskCacheProcessDeletes, v6);
    }

    CFSetRemoveAllValues(*(a1 + 48));
  }

  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    v9 = CPRecordStoreGetContext();
    if (v9)
    {
      os_unfair_lock_assert_owner(v9 + 20);
    }
  }

  v10 = CPRecordStoreCopyValueForProperty();
  if (!v10)
  {
    CFAbsoluteTimeGetCurrent();
    v11 = CalCFTimeZoneCopyCalTimeZone();
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
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

    CPSqliteConnectionSetValueForProperty();
    v10 = v11;
  }

  CFRelease(v10);
  v13 = *(a1 + 40);
  if (v13 && CFDictionaryGetCount(v13) >= 1)
  {
    cf = 0;
    v16 = 0;
    context[0] = a1;
    context[1] = &v16;
    context[2] = a2;
    CFDictionaryApplyFunction(*(a1 + 40), _CalScheduledTaskCacheProcessAdds, context);
    CFDictionaryRemoveAllValues(*(a1 + 40));
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t _CalScheduledTaskCacheProcessDeletes(int a1, uint64_t **a2)
{
  sqlite3_bind_int(a2[1], 1, a1);
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

  CPSqliteStatementPerform();
  if (a2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a2)
      {
        v5 = **a2;
        if (v5)
        {
          if (*(v5 + 104))
          {
            v6 = CPRecordStoreGetContext();
            if (v6)
            {
              os_unfair_lock_assert_owner(v6 + 20);
            }
          }
        }
      }
    }
  }

  return CPSqliteStatementReset();
}

uint64_t CalScheduledTaskCacheRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __CalScheduledTaskCacheTypeID = result;
  return result;
}

uint64_t _CalScheduledTaskCacheProcessRecordForTimeZoneChange(uint64_t a1, void *a2)
{
  v21[3] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = a2;
  sqlite3_column_double(v3, 0);
  sqlite3_column_double(*(a1 + 8), 1);
  v5 = sqlite3_column_int(*(a1 + 8), 2);
  v6 = [v4 previousTimeZone];
  v7 = [v4 nextTimeZone];
  CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
  v9 = v8;

  v10 = [v4 previousTimeZone];
  v11 = [v4 nextTimeZone];
  CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
  v13 = v12;

  v20[0] = @"day";
  v14 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v9];
  v21[0] = v14;
  v20[1] = @"dateForSorting";
  v15 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v13];
  v21[1] = v15;
  v20[2] = @"taskId";
  v16 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v21[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];

  v18 = [v4 dict];
  CFDictionaryAddValue(v18, v5, v17);

  return 0;
}

void _UpdateDay(uint64_t a1, void *a2, uint64_t **a3)
{
  v4 = a2;
  v15 = [v4 objectForKeyedSubscript:@"day"];
  v5 = [v4 objectForKeyedSubscript:@"dateForSorting"];
  v6 = [v4 objectForKeyedSubscript:@"taskId"];

  v7 = a3[1];
  [v15 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(v7, 1, v8);
  v9 = a3[1];
  [v5 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(v9, 2, v10);
  sqlite3_bind_int(a3[1], 3, [v6 intValue]);
  if (a3)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a3)
      {
        v11 = **a3;
        if (v11)
        {
          if (*(v11 + 104))
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
  if (a3)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*a3)
      {
        v13 = **a3;
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

  CPSqliteStatementReset();
}

void _CalScheduledTaskCacheInsertTaskIfScheduled(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  DueDate = _CalTaskGetDueDate(a4);
  CompletionDate = _CalTaskGetCompletionDate(a4);
  if (DueDate | CompletionDate)
  {
    v10 = CompletionDate;
    ID = CPRecordGetID();
    IsDueDateAllDay = _CalTaskIsDueDateAllDay(a4);
    if (v10)
    {
      v13 = CFRetain(*(a1 + 32));
      DueDate = v10;
    }

    else
    {
      if (IsDueDateAllDay)
      {
        started = CFTimeZoneCreateWithName(0, @"GMT", 1u);
      }

      else
      {
        started = _CalCalendarItemCopyStartTimeZone(a4);
        if (!started)
        {
          started = CFRetain(*(a1 + 32));
        }
      }

      v13 = started;
    }

    v39 = [MEMORY[0x1E69930C8] calendarDateWithDate:DueDate timeZone:v13];
    v15 = [v39 calendarDateInTimeZone:*(a1 + 32)];
    v16 = [v15 calendarDateForDay];
    if (!v10)
    {
      v37 = ID;
      v38 = v15;
      v17 = MEMORY[0x1E69930C8];
      v18 = [MEMORY[0x1E695DF00] date];
      v19 = [MEMORY[0x1E695DFE8] systemTimeZone];
      v20 = [v17 calendarDateWithDate:v18 timeZone:v19];
      v21 = [v20 calendarDateInTimeZone:*(a1 + 32)];
      v22 = [v21 calendarDateForDay];

      if ([v16 compare:v22] == -1)
      {
        v23 = v22;

        v16 = v23;
      }

      v15 = v38;
      ID = v37;
    }

    [v16 absoluteTime];
    v25 = v24;
    [v15 absoluteTime];
    v27 = v26;
    if (v13)
    {
      CFRelease(v13);
    }

    if (!v10)
    {
      NSLog(&cfstr_25534103Insert.isa, v39, v16);
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
      NSLog(&cfstr_EventkitstcErr.isa);
    }

    v29 = *a3;
    if (*a3)
    {
      goto LABEL_34;
    }

    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
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
    }

    v29 = CPSqliteConnectionStatementForSQL();
    *a3 = v29;
    if (v29)
    {
LABEL_34:
      sqlite3_bind_double(*(v29 + 8), 1, v25);
      sqlite3_bind_double(*(*a3 + 8), 2, v27);
      sqlite3_bind_int(*(*a3 + 8), 3, v10 != 0);
      sqlite3_bind_int(*(*a3 + 8), 4, ID);
      v31 = *a3;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v31)
        {
          if (*v31)
          {
            v32 = **v31;
            if (v32)
            {
              if (*(v32 + 104))
              {
                v33 = CPRecordStoreGetContext();
                if (v33)
                {
                  os_unfair_lock_assert_owner(v33 + 20);
                }
              }
            }
          }
        }
      }

      CPSqliteStatementPerform();
      v34 = *a3;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v34)
        {
          if (*v34)
          {
            v35 = **v34;
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
      }

      CPSqliteStatementReset();
    }
  }
}

void _CalRecurrencePrepareForSave(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
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

  if (CPRecordGetIntegerProperty() >= 2)
  {
    Mutable = CFStringCreateMutable(0, 0);
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

    Property = CPRecordGetProperty();
    if (Property)
    {
      v6 = Property;
      if (CFArrayGetCount(Property) >= 1)
      {
        Count = CFArrayGetCount(v6);
        chars[0] = 68;
        if (CFStringGetLength(Mutable) >= 1)
        {
          CFStringAppendCString(Mutable, ";", 0x8000100u);
        }

        CFStringAppendCharacters(Mutable, chars, 1);
        CFStringAppendCString(Mutable, "=", 0x8000100u);
        if (Count >= 1)
        {
          v8 = 0;
          v9 = MEMORY[0x1E6993108];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v6, v8);
            if (v8)
            {
              v11 = @",%s%d%s";
            }

            else
            {
              v11 = @"%s%d%s";
            }

            if (*ValueAtIndex <= 0)
            {
              v12 = "";
            }

            else
            {
              v12 = "+";
            }

            CFStringAppendFormat(Mutable, 0, v11, v12, *ValueAtIndex, *(v9 + 8 * ValueAtIndex[1]));
            ++v8;
          }

          while (Count != v8);
        }
      }
    }

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

    v14 = CPRecordGetProperty();
    if (v14)
    {
      v15 = v14;
      if (CFArrayGetCount(v14) >= 1)
      {
        _CalRecurrenceAppendIndexListForSubproperty(Mutable, v15, 11);
      }
    }

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
    if (v17)
    {
      v18 = v17;
      if (CFArrayGetCount(v17) >= 1)
      {
        _CalRecurrenceAppendIndexListForSubproperty(Mutable, v18, 12);
      }
    }

    if (a1)
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

    v20 = CPRecordGetProperty();
    if (v20)
    {
      v21 = v20;
      if (CFArrayGetCount(v20) >= 1)
      {
        _CalRecurrenceAppendIndexListForSubproperty(Mutable, v21, 13);
      }
    }

    if (a1)
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

    v23 = CPRecordGetProperty();
    if (v23)
    {
      v24 = v23;
      if (CFArrayGetCount(v23) >= 1)
      {
        _CalRecurrenceAppendIndexListForSubproperty(Mutable, v24, 14);
      }
    }

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

    v26 = CPRecordGetProperty();
    if (v26)
    {
      v27 = v26;
      if (CFArrayGetCount(v26) >= 1)
      {
        _CalRecurrenceAppendIndexListForSubproperty(Mutable, v27, 15);
      }
    }

    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
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

    CPRecordSetProperty();
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  if (a1)
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

  v30 = CPRecordGetProperty();
  v31 = v30;
  if (v30)
  {
    CalRelationOwnerWillSave(v30);
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v32 = CPRecordStoreGetContext();
        if (v32)
        {
          os_unfair_lock_assert_owner(v32 + 20);
        }
      }
    }
  }

  if (!CPRecordGetProperty())
  {
    if (v31)
    {
      RelatedObject = CalRelationGetRelatedObject(v31);
    }

    else
    {
      RelatedObject = 0;
    }

    v34 = CDBLogHandle;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      DebugDescription = _CalEntityGetDebugDescription(RelatedObject);
      *chars = 134218242;
      v42 = v31;
      v43 = 2112;
      v44 = DebugDescription;
      _os_log_impl(&dword_1DEBB1000, v34, OS_LOG_TYPE_ERROR, "saving a recurrence with owner_id 0: relation=%p, owner=%@", chars, 0x16u);
    }

    DatabaseForRecord = CalGetDatabaseForRecord(a1);
    _CalDatabaseIntegrityError(DatabaseForRecord, @"Recurrence without owner");
  }

  _CalRecurrenceGenerateCachedEndDate(a1);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v37 = CPRecordStoreGetContext();
        if (v37)
        {
          os_unfair_lock_assert_owner(v37 + 20);
        }
      }
    }
  }

  if (CPRecordGetIntegerProperty() != -1)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          v38 = CPRecordStoreGetContext();
          if (v38)
          {
            os_unfair_lock_assert_owner(v38 + 20);
          }
        }
      }
    }

    CPRecordInitializeProperty();
  }

  Owner = _CalRecurrenceGetOwner(a1, 0);
  if (Owner)
  {
    v40 = Owner;
    if (_CalEntityIsOfType(Owner, 2))
    {
      _CalEventUpdateOccurrenceCache(v40);
    }
  }
}

uint64_t _CalRecurrencePropertyDidChange(uint64_t result, int a2)
{
  if (a2 == 7)
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

    CPRecordUnloadProperty();
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

    CPRecordUnloadProperty();
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

    CPRecordUnloadProperty();
    if (v3)
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

    CPRecordUnloadProperty();
    if (v3)
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

    CPRecordUnloadProperty();
    if (v3)
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

    CPRecordUnloadProperty();
    if (v3)
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

    return CPRecordUnloadProperty();
  }

  return result;
}

uint64_t _CalRecurrencePropertyWillChange(uint64_t result, int a2, uint64_t a3)
{
  v4 = result;
  if (a2 > 5)
  {
    if (a2 != 6)
    {
      if (a2 != 16)
      {
        goto LABEL_62;
      }

      v5 = a3;
      if (a3 == -1)
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

        CPRecordGetProperty();
        if (v4)
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
        if (v4)
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

        if (CPRecordGetProperty() != -1)
        {
          if (v4)
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

          CPRecordInitializeProperty();
        }
      }

      Owner = _CalRecurrenceGetOwner(v4, 0);
      result = CPRecordGetID();
      v11 = result == v5;
      if (Owner)
      {
LABEL_63:
        result = _CalEntityIsNew(Owner);
        if (((result | v11) & 1) == 0)
        {

          return _CalEventMarkAsModifiedForChangeTracking(Owner);
        }

        return result;
      }

      return result;
    }
  }

  else
  {
    if ((a2 - 4) < 2)
    {
      return result;
    }

    if (a2 != 3)
    {
LABEL_62:
      result = _CalRecurrenceGetOwner(v4, 0);
      Owner = result;
      v11 = 0;
      if (!result)
      {
        return result;
      }

      goto LABEL_63;
    }
  }

  if (result)
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
  if (a2 != 3 && Property)
  {
    goto LABEL_70;
  }

  if (v4)
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
  if (result)
  {
LABEL_70:
    if (v4)
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

    CPRecordSetProperty();
    if (v4)
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

    CPRecordSetProperty();
    if (v4)
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

    result = CPRecordSetProperty();
  }

  if ((a2 & 0xFFFFFFFE) != 4)
  {
    goto LABEL_62;
  }

  return result;
}

void CalRecurrenceInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalRecurrenceClass, &kCalRecurrenceIndexes, &kCalRecurrenceChangesIndexes);
}

void CalRecurrenceMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 18001)
  {
    CalMigrateTableFull(a2, &kCalRecurrenceClass, 0, &kCalRecurrenceUpgradeInfo, &kCalRecurrenceChangesUpgradeInfo, &kCalRecurrenceIndexes, &kCalRecurrenceChangesIndexes, 0, a3);
    if (a3 > 48)
    {
      if (a3 > 0x34)
      {
        return;
      }
    }

    else
    {
      CalPerformSQLWithConnection(a2, @"UPDATE Recurrence SET end_date = NULL WHERE end_date = 0");
      CalPerformSQLWithConnection(a2, @"UPDATE Recurrence SET cached_end_date = NULL WHERE cached_end_date = 0");
    }

    _CalDBFillInUUIDColumn(a2, @"Recurrence");
  }
}

CFTypeRef _CalRecurrenceHasValidParent(uint64_t a1)
{
  result = _CalRecurrenceGetOwner(a1, 0);
  if (result)
  {

    return _CalRecordStillExists(result);
  }

  return result;
}

CFTypeRef _CalRecurrenceGetOwner(uint64_t a1, int a2)
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
    result = CalRelationGetRelatedObject(result);
  }

  if (!result && a2)
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

    IntegerProperty = CPRecordGetIntegerProperty();
    if (IntegerProperty < 1)
    {
      return 0;
    }

    else
    {
      v8 = IntegerProperty;
      Store = CPRecordGetStore();

      return _CalGetCalendarItemWithRowID(Store, v8);
    }
  }

  return result;
}

uint64_t CalRecurrenceGetPropertyIDWithPropertyName(void *key)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CalRecurrenceGetPropertyIDWithPropertyName_sPropDict;
  if (!CalRecurrenceGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalRecurrenceGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalRecurrenceGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"UUID";
      v6 = 26;
      v7 = @"owner";
      v8 = 24;
      v9 = @"frequencyRaw";
      v10 = 0;
      v11 = @"interval";
      v12 = 1;
      v13 = @"endDate";
      v14 = 6;
      v15 = @"count";
      v16 = 3;
      v17 = @"cachedEndDate";
      v18 = 4;
      v19 = @"cachedEndDateTimeZone";
      v20 = 5;
      v21 = @"specifier";
      v22 = 7;
      v23 = @"firstDayOfTheWeekRaw";
      v24 = 2;
      CalRecurrenceGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 10);
      for (i = 144; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalRecurrenceGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalRecurrenceGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEBD28E4(_Unwind_Exception *a1)
{
  for (i = 144; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

const void *_CalDatabaseCreateRecurrence(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 5);
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
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
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
    if (v2)
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
  v13 = CFUUIDCreate(0);
  v14 = CFUUIDCreateString(0, v13);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v2)
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

  CPRecordInitializeProperty();
  CFRelease(v13);
  CFRelease(v14);
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateRecurrence(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Recurrence = _CalDatabaseCreateRecurrence(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Recurrence;
}

uint64_t CalDatabaseCopyOfAllRecurrencesInStore(os_unfair_lock_s *a1, uint64_t a2)
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
      if (!Database)
      {
        goto LABEL_29;
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
      if (v12)
      {
        sqlite3_bind_int(*(v12 + 8), 1, v5);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v7)
          {
            v13 = CPRecordStoreGetContext();
            if (v13)
            {
              os_unfair_lock_assert_owner(v13 + 20);
            }
          }
        }

        v14 = CPRecordStoreProcessStatement();
      }

      else
      {
LABEL_29:
        v14 = 0;
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(v3 + 20);
      }

      os_unfair_lock_unlock(v3 + 20);
      CFRelease(v3);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    os_unfair_lock_lock(a1 + 20);
    v16 = _CalDatabaseGetRecordStore(a1);
    if (CDBLockingAssertionsEnabled == 1 && v16 != 0)
    {
      v18 = CPRecordStoreGetContext();
      if (v18)
      {
        os_unfair_lock_assert_owner(v18 + 20);
      }
    }

    v14 = CPRecordStoreCopyAllInstancesOfClass();
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(a1 + 20);
    }

    os_unfair_lock_unlock(a1 + 20);
  }

  return v14;
}

const void *_CalRecurrenceCopy(uint64_t a1, uint64_t a2)
{
  Recurrence = _CalDatabaseCreateRecurrence(a1);
  v4 = Recurrence;
  if (CDBLockingAssertionsEnabled == 1 && Recurrence != 0)
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
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v4)
    {
      if (CPRecordGetStore())
      {
        v32 = CPRecordStoreGetContext();
        if (v32)
        {
          os_unfair_lock_assert_owner(v32 + 20);
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
        v33 = CPRecordStoreGetContext();
        if (v33)
        {
          os_unfair_lock_assert_owner(v33 + 20);
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
        v34 = CPRecordStoreGetContext();
        if (v34)
        {
          os_unfair_lock_assert_owner(v34 + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  return v4;
}

uint64_t _CalRecurrencePrepareForRemove(uint64_t a1)
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

  result = CPRecordGetIntegerProperty();
  if (result != -1)
  {
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

    return CPRecordInitializeProperty();
  }

  return result;
}

void _CalRemoveRecurrence(void *a1)
{
  Owner = _CalRecurrenceGetOwner(a1, 0);
  if (Owner)
  {

    _CalCalendarItemRemoveRecurrence(Owner, a1, 0);
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord(a1);

    _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }
}

void CalRemoveRecurrence(void *a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRemoveRecurrence(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalInvalidateRecurrencesWithOwnerID(uint64_t a1, int a2)
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

uint64_t _CalRecurrenceGetRecordID(uint64_t a1)
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

uint64_t CalRecurrenceGetUID(uint64_t a1)
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

uint64_t _CalRecurrenceGetWithUID(uint64_t a1, uint64_t a2)
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

const void *CalDatabaseCopyRecurrenceWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = _CalRecurrenceGetWithUID(RecordStore, a2);
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

uint64_t CalRecurrenceCopyUUID(uint64_t a1)
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

CFTypeRef CalDatabaseCopyRecurrenceWithUUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  v4 = CFStringCreateWithFormat(0, 0, @"UUID = '%@'", a2);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v8 = CPRecordStoreCopyAllInstancesOfClassWhere();
  if (v8)
  {
    v9 = v8;
    if (CFArrayGetCount(v8) < 1)
    {
      v11 = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v9, 0);
      v11 = CFRetain(ValueAtIndex);
    }

    CFRelease(v9);
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v4);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v11;
}

void CalRecurrenceClearExternalProperties(uint64_t a1)
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
        v4 = CPRecordStoreGetContext();
        if (v4)
        {
          os_unfair_lock_assert_owner(v4 + 20);
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

void CalRecurrenceSetExternalID(uint64_t a1, uint64_t a2)
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

uint64_t CalRecurrenceCopyExternalID(uint64_t a1)
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

const void *CalDatabaseCopyRecurrenceWithExternalIDInStore(os_unfair_lock_s *a1, const __CFString *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = CalCopyDatabaseForRecord(a3);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
    if (!v5)
    {
      return 0;
    }
  }

  if (!a2 || (CStringFromCFString = CalCreateCStringFromCFString(a2)) == 0)
  {
    CFRelease(v5);
    return 0;
  }

  v7 = CStringFromCFString;
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (!SelectPrefix)
  {
    free(v7);
    CFRelease(v5);
    return 0;
  }

  v9 = SelectPrefix;
  CFStringAppend(SelectPrefix, @" WHERE external_id = ?");
  os_unfair_lock_lock(v5 + 20);
  RecordStore = _CalDatabaseGetRecordStore(v5);
  v11 = RecordStore;
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
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (Database)
    {
      if (*(Database + 104))
      {
        v14 = CPRecordStoreGetContext();
        if (v14)
        {
          os_unfair_lock_assert_owner(v14 + 20);
        }
      }
    }
  }

  v15 = CPSqliteDatabaseStatementForReading();
  if (v15)
  {
    sqlite3_bind_text(*(v15 + 8), 1, v7, -1, 0);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v11)
      {
        v16 = CPRecordStoreGetContext();
        if (v16)
        {
          os_unfair_lock_assert_owner(v16 + 20);
        }
      }
    }

    v17 = CPRecordStoreProcessStatementWithPropertyIndices();
  }

  else
  {
    v17 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v9);
  free(v7);
  if (v17)
  {
    Count = CFArrayGetCount(v17);
    if (a3)
    {
      ID = CPRecordGetID();
    }

    else
    {
      ID = -1;
    }

    if (Count < 1)
    {
      v18 = 0;
    }

    else
    {
      v22 = 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v17, v22 - 1);
        v18 = ValueAtIndex;
        if (!a3)
        {
          goto LABEL_46;
        }

        if (CDBLockingAssertionsEnabled == 1 && ValueAtIndex != 0)
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

        if (ID != CPRecordGetIntegerProperty())
        {
          v18 = 0;
        }

        else
        {
LABEL_46:
          CFRetain(v18);
          if (v18)
          {
            break;
          }
        }
      }

      while (v22++ < Count);
    }

    CFRelease(v17);
  }

  else
  {
    v18 = 0;
  }

  CFRelease(v5);
  return v18;
}

void CalRecurrenceSetExternalModificationTag(uint64_t a1, uint64_t a2)
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

uint64_t CalRecurrenceCopyExternalModificationTag(uint64_t a1)
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

void CalRecurrenceSetExternalIdentificationTag(uint64_t a1, uint64_t a2)
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

uint64_t CalRecurrenceCopyExternalIdentificationTag(uint64_t a1)
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

void CalRecurrenceSetExternalRepresentation(uint64_t a1, uint64_t a2)
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

uint64_t CalRecurrenceCopyExternalRepresentation(uint64_t a1)
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

void CalRecurrenceSetFrequency(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (_CalRecurrenceGetFrequency(a1) != a2)
  {
    _CalRecurrenceSetProperty(a1, 0, a2, 1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceGetFrequency(uint64_t a1)
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

void _CalRecurrenceSetProperty(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
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

  CPRecordSetProperty();
  if (vabdd_f64(_CalRecordGetDateProperty(a1, 4), *MEMORY[0x1E6993100]) >= 2.22044605e-16)
  {
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
  }

  Owner = _CalRecurrenceGetOwner(a1, 0);
  v10 = Owner;
  if (a4 && Owner)
  {
    _CalCalendarItemRemoveAllExceptionDates(Owner);
  }

  else if (!Owner)
  {
    return;
  }

  _CalEventUpdateLastModifiedDate(v10);
}

uint64_t CalRecurrenceGetFrequency(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Frequency = _CalRecurrenceGetFrequency(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Frequency;
}

void CalRecurrenceSetInterval(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (_CalRecurrenceGetInterval(a1) != a2)
  {
    _CalRecurrenceSetProperty(a1, 1, a2, 1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceGetInterval(uint64_t a1)
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

  return CPRecordGetIntegerProperty();
}

uint64_t CalRecurrenceGetInterval(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Interval = _CalRecurrenceGetInterval(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Interval;
}

void CalRecurrenceSetWeekStart(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (_CalRecurrenceGetWeekStartRaw(a1) != a2)
  {
    _CalRecurrenceSetProperty(a1, 2, a2, 1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceGetWeekStartRaw(uint64_t a1)
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

uint64_t _CalRecurrenceGetWeekStart(uint64_t a1)
{
  LODWORD(result) = _CalRecurrenceGetWeekStartRaw(a1);
  if (result == 7)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t CalRecurrenceGetWeekStart(uint64_t a1)
{
  v2 = a1;
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  LODWORD(v2) = _CalRecurrenceGetWeekStartRaw(v2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  if (v2 == 7)
  {
    v2 = 1;
  }

  else
  {
    v2 = v2;
  }

  os_unfair_lock_unlock(RecordLock);
  return v2;
}

uint64_t CalRecurrenceGetWeekStartDirectly(uint64_t a1)
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

void CalRecurrenceSetCount(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (_CalRecurrenceGetCount(a1) != a2)
  {
    _CalRecurrenceSetProperty(a1, 3, a2, 0);
    _CalRecurrenceSetProperty(a1, 6, 0, 0);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceGetCount(uint64_t a1)
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

  return CPRecordGetIntegerProperty();
}

uint64_t CalRecurrenceGetCount(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Count = _CalRecurrenceGetCount(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Count;
}

void CalRecurrenceInvalidateCachedEndDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecurrenceSetCachedEndDate(a1, *MEMORY[0x1E6993100], 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalRecurrenceSetCachedEndDate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Store = CPRecordGetStore();
  if (Store && CPRecordStoreIsLoggingChanges())
  {
    CPRecordStoreLogChanges();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  CFDateRefFromCalDate = _CreateCFDateRefFromCalDate(*&a2);
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
        v9 = CPRecordStoreGetContext();
        if (v9)
        {
          os_unfair_lock_assert_owner(v9 + 20);
        }
      }
    }
  }

  CPRecordSetProperty();
  if (CFDateRefFromCalDate)
  {
    CFRelease(CFDateRefFromCalDate);
  }

  if (Store)
  {
    v10 = v6;
  }

  else
  {
    v10 = 1;
  }

  if ((v10 & 1) == 0)
  {

    CPRecordStoreLogChanges();
  }
}

uint64_t _CalRecurrenceCopyCachedEndDate(uint64_t a1)
{
  v8[1] = 0;
  DateProperty = _CalRecordGetDateProperty(a1, 4);
  *v8 = DateProperty;
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
  if (fabs(DateProperty) < 2.22044605e-16 && Property == 0)
  {
    v6 = MEMORY[0x1E6993100];
  }

  else
  {
    v6 = v8;
    CalDateTimeSetTimeZone();
  }

  return *v6;
}

void _CalRecurrenceSetEndDate(uint64_t a1, CFAbsoluteTime a2)
{
  CFDateRefFromCalDate = _CreateCFDateRefFromCalDate(a2);
  _CalRecurrenceSetProperty(a1, 6, CFDateRefFromCalDate, 0);
  _CalRecurrenceSetProperty(a1, 3, 0, 0);
  if (CFDateRefFromCalDate)
  {

    CFRelease(CFDateRefFromCalDate);
  }
}

void CalRecurrenceSetEndDate(uint64_t a1, CFAbsoluteTime a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (vabdd_f64(_CalRecordGetDateProperty(a1, 6), a2) >= 2.22044605e-16)
  {
    _CalRecurrenceSetEndDate(a1, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double CalRecurrenceGetEndDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  DateProperty = _CalRecordGetDateProperty(a1, 6);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return DateProperty;
}

double CalRecurrenceGetEffectiveEndDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  DateProperty = _CalRecordGetDateProperty(a1, 6);
  v4 = *MEMORY[0x1E6993100];
  if (vabdd_f64(DateProperty, *MEMORY[0x1E6993100]) < 2.22044605e-16)
  {
    DatabaseForRecord = CalGetDatabaseForRecord(a1);
    __CalDatabaseBeginReadTransaction(DatabaseForRecord, "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalRecurrence.m:1057");
    _CalRecurrenceGenerateCachedEndDate(a1);
    __CalDatabaseRollbackTransaction(DatabaseForRecord, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalRecurrence.m:1059");
    DateProperty = COERCE_DOUBLE(_CalRecurrenceCopyCachedEndDate(a1));
    CalDateTimeRelease();
    if (vabdd_f64(DateProperty, v4) < 2.22044605e-16)
    {
      DateProperty = v4;
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return DateProperty;
}

void CalRecurrenceSetByDayDays(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v5 = _CalRecurrenceCopyByDayDays(a1);
  if (a2 | v5 && ([v5 isEqual:a2] & 1) == 0)
  {
    _CalRecurrenceSetProperty(a1, 9, a2, 1);
    _CalRecurrenceSpecifierIncrementChangeCount(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceCopyByDayDays(uint64_t a1)
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

uint64_t _CalRecurrenceSpecifierIncrementChangeCount(uint64_t a1)
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

  CPRecordGetIntegerProperty();
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

  return CPRecordSetProperty();
}

uint64_t CalRecurrenceCopyByDayDays(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByDayDays(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalRecurrenceSetByMonth(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecurrenceSetProperty(a1, 15, a2, 1);
  _CalRecurrenceSpecifierIncrementChangeCount(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalRecurrenceCopyByMonth(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByMonth(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t _CalRecurrenceCopyByMonth(uint64_t a1)
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

void CalRecurrenceSetByMonthMonths(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = 0;
    Mutable = 0;
    do
    {
      if ((a2 >> v5))
      {
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, 0, 0);
        }

        CFArrayAppendValue(Mutable, ++v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 != 12);
    v7 = _CalRecurrenceCopyByMonth(a1);
    v8 = v7;
    if (v7 | Mutable)
    {
      if (([v7 isEqual:Mutable] & 1) == 0)
      {
        _CalRecurrenceSetProperty(a1, 15, Mutable, 1);
        _CalRecurrenceSpecifierIncrementChangeCount(a1);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }
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

  if (CPRecordGetProperty())
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

uint64_t _CalRecurrenceGetByMonthMonths(uint64_t a1)
{
  v2 = _CalRecurrenceCopyByMonth(a1);
  if (v2)
  {
    v3 = v2;
    if (CFArrayGetCount(v2) < 1)
    {
      v5 = 0;
    }

    else
    {
      v4 = 0;
      LODWORD(v5) = 0;
      do
      {
        v5 = (1 << (CFArrayGetValueAtIndex(v3, v4++) - 1)) | v5;
      }

      while (CFArrayGetCount(v3) > v4);
    }

    CFRelease(v3);
    return v5;
  }

  else
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

    return CPRecordGetIntegerProperty();
  }
}

uint64_t CalRecurrenceGetByMonthMonths(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceGetByMonthMonths(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalRecurrenceSetByMonthDayDays(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v5 = _CalRecurrenceCopyByMonthDayDays(a1);
  if (a2 | v5 && ([v5 isEqual:a2] & 1) == 0)
  {
    _CalRecurrenceSetProperty(a1, 11, a2, 1);
    _CalRecurrenceSpecifierIncrementChangeCount(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceCopyByMonthDayDays(uint64_t a1)
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

uint64_t CalRecurrenceCopyByMonthDayDays(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByMonthDayDays(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalRecurrenceSetByWeekWeeks(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v5 = _CalRecurrenceCopyByWeekWeeks(a1);
  if (a2 | v5 && ([v5 isEqual:a2] & 1) == 0)
  {
    _CalRecurrenceSetProperty(a1, 12, a2, 1);
    _CalRecurrenceSpecifierIncrementChangeCount(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceCopyByWeekWeeks(uint64_t a1)
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

uint64_t CalRecurrenceCopyByWeekWeeks(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByWeekWeeks(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalRecurrenceSetByYearDayDays(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v5 = _CalRecurrenceCopyByYearDayDays(a1);
  if (a2 | v5 && ([v5 isEqual:a2] & 1) == 0)
  {
    _CalRecurrenceSetProperty(a1, 13, a2, 1);
    _CalRecurrenceSpecifierIncrementChangeCount(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceCopyByYearDayDays(uint64_t a1)
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

uint64_t CalRecurrenceCopyByYearDayDays(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyByYearDayDays(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalRecurrenceSetBySetPos(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v5 = _CalRecurrenceCopyBySetPos(a1);
  if (a2 | v5 && ([v5 isEqual:a2] & 1) == 0)
  {
    _CalRecurrenceSetProperty(a1, 14, a2, 1);
    _CalRecurrenceSpecifierIncrementChangeCount(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalRecurrenceCopyBySetPos(uint64_t a1)
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

uint64_t CalRecurrenceCopyBySetPos(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecurrenceCopyBySetPos(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

CFTypeRef CalRecurrenceCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Owner = _CalRecurrenceGetOwner(a1, 0);
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

void CalRecurrenceSetOwner(uint64_t a1, const void *a2)
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

BOOL _CalRecurrenceIsSimpleYearly(uint64_t a1)
{
  if (_CalRecurrenceGetFrequency(a1) != 4 || _CalRecurrenceGetInterval(a1) != 1)
  {
    return 0;
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

  if (CPRecordGetProperty())
  {
    return 0;
  }

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

  if (CPRecordGetProperty())
  {
    return 0;
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

  if (CPRecordGetProperty())
  {
    return 0;
  }

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

  if (CPRecordGetProperty())
  {
    return 0;
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

  if (CPRecordGetProperty())
  {
    return 0;
  }

  if (a1 && (CDBLockingAssertionsEnabled & 1) != 0 && CPRecordGetStore())
  {
    v7 = CPRecordStoreGetContext();
    if (v7)
    {
      os_unfair_lock_assert_owner(v7 + 20);
    }
  }

  return !CPRecordGetProperty();
}

uint64_t _CalRecurrenceSaveAddedRecords(uint64_t a1, uint64_t a2)
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

uint64_t CalDatabaseCopyRecurrenceChangesInStore(os_unfair_lock_s *cf, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord(a2);
    if (!v5)
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    v5 = cf;
    if (!cf)
    {
      return 0xFFFFFFFFLL;
    }

    CFRetain(cf);
  }

  os_unfair_lock_lock(v5 + 20);
  v6 = _CalRecurrenceCopyChangeHistoryWhereClauseForStore(v5, a2);
  v7 = _CalDatabaseCopyRecurrenceChangesWithWhereClauseNoLock(v5, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  return v7;
}

CFStringRef _CalRecurrenceCopyChangeHistoryWhereClauseForStore(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (a2)
  {
    DatabaseForRecord = CalGetDatabaseForRecord(a2);
    v4 = _CalDatabaseCopyClientIdentifier(DatabaseForRecord);
    ID = CPRecordGetID();
    v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"store_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v4, v4, 5, v4);
    CFRelease(v4);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v7);
  return v7;
}

uint64_t _CalDatabaseCopyRecurrenceChangesWithWhereClauseNoLock(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
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

uint64_t CalDatabaseRemoveRecurrenceChangesInStoreToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord(a2);
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CalDatabaseRemoveRecurrenceChangesInStoreToIndex_block_invoke;
  v8[3] = &unk_1E8689120;
  v8[4] = &v10;
  v8[5] = v5;
  v8[6] = a2;
  v9 = a3;
  _CalDatabaseLockForWriteTransaction(v5, v8);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_1DEBD62F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveRecurrenceChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  result = _CalDatabaseRemoveRecurrenceChangesInStoreToIndex(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t _CalDatabaseRemoveRecurrenceChangesInStoreToIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _CalRecurrenceCopyChangeHistoryWhereClauseForStore(a1, a2);
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

uint64_t CalDatabaseCopyRecurrenceChangesInCalendar(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a2)
  {
    v5 = CalCopyDatabaseForRecord(a2);
  }

  else
  {
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v6 = _CalRecurrenceCopyChangeHistoryWhereClauseForCalendar(v5, a2);
  v7 = _CalDatabaseCopyRecurrenceChangesWithWhereClauseNoLock(v5, v6, a3);
  if (v6)
  {
    CFRelease(v6);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  if (v5)
  {
    CFRelease(v5);
  }

  return v7;
}

CFStringRef _CalRecurrenceCopyChangeHistoryWhereClauseForCalendar(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  if (a2)
  {
    DatabaseForRecord = CalGetDatabaseForRecord(a2);
    v4 = _CalDatabaseCopyClientIdentifier(DatabaseForRecord);
    ID = CPRecordGetID();
    v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"calendar_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v4, v4, 5, v4);
    CFRelease(v4);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v7);
  return v7;
}

uint64_t CalDatabaseRemoveRecurrenceChangesInCalendarToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
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
    v5 = a1;
    CFRetain(a1);
  }

  os_unfair_lock_lock(v5 + 20);
  v6 = _CalRecurrenceCopyChangeHistoryWhereClauseForCalendar(v5, a2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CalDatabaseRemoveRecurrenceChangesInCalendarToIndex_block_invoke;
  v9[3] = &unk_1E8689120;
  v9[4] = &v11;
  v9[5] = v5;
  v10 = a3;
  v9[6] = v6;
  _CalDatabaseLockForWriteTransaction(v5, v9);
  if (v6)
  {
    CFRelease(v6);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v7;
}

void sub_1DEBD6668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveRecurrenceChangesInCalendarToIndex_block_invoke(uint64_t a1)
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

uint64_t CalDatabaseRemoveRecurrenceChangesWithIndices(os_unfair_lock_s *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(a1 + 20);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalDatabaseRemoveRecurrenceChangesWithIndices_block_invoke;
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

void sub_1DEBD67E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveRecurrenceChangesWithIndices_block_invoke(void *a1)
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

BOOL _CalRecurrenceShouldPinMonthDays(uint64_t a1)
{
  Owner = _CalRecurrenceGetOwner(a1, 0);
  if (!Owner)
  {
    return 0;
  }

  Calendar = _CalCalendarItemGetCalendar(Owner);
  if (!Calendar)
  {
    return 0;
  }

  Store = _CalCalendarGetStore(Calendar);
  if (!Store)
  {
    return 0;
  }

  return _CalStoreAreRecurrencesPinnedToMonthDays(Store);
}

uint64_t _CalDatabasePrepareRecurrencesInStoreForMigration(uint64_t a1, void *a2, uint64_t a3)
{
  ID = CPRecordGetID();
  result = _CalDatabaseRemoveRecurrenceChangesInStoreToIndex(a1, a3, 0x7FFFFFFFLL);
  if (result)
  {
    result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"UPDATE Recurrence SET external_id = NULL, external_mod_tag = NULL, external_id_tag = NULL, external_rep = NULL WHERE owner_id IN (SELECT CalendarItem.ROWID FROM CalendarItem JOIN Calendar ON calendar_id = Calendar.ROWID WHERE store_id = %d);", ID);
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

uint64_t _CalRecurrenceSpecifierParse(uint64_t a1, uint64_t a2)
{
  v2 = a1;
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
    v5 = Property;
    Length = CFStringGetLength(Property);
    if (Length >= 1)
    {
      v7 = Length;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      *buffer = 0u;
      v97 = 0u;
      theString = v5;
      v107 = 0;
      v108 = Length;
      CharactersPtr = CFStringGetCharactersPtr(v5);
      CStringPtr = 0;
      v105 = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
      }

      v10 = 0;
      LODWORD(v11) = 0;
      v12 = 0;
      v13 = 0;
      v109 = 0;
      v110 = 0;
      v106 = CStringPtr;
      v94 = v7;
      v93 = v2;
      while (1)
      {
        if ((v11 & 0x80000000) != 0 || (v14 = v108, v108 <= v10))
        {
          v15 = 0;
          goto LABEL_16;
        }

        if (v105)
        {
          v15 = v105[v107 + v10];
        }

        else if (v106)
        {
          v15 = v106[v107 + v10];
        }

        else
        {
          if (v110 <= v10 || (v16 = v109, v109 > v10))
          {
            v17 = v10 - 4;
            if (v11 < 4)
            {
              v17 = 0;
            }

            if (v17 + 64 < v108)
            {
              v14 = v17 + 64;
            }

            v109 = v17;
            v110 = v14;
            v112.length = v14 - v17;
            v112.location = v107 + v17;
            CFStringGetCharacters(theString, v112, buffer);
            v16 = v109;
          }

          v15 = buffer[v10 - v16];
        }

        if (v15 == 61)
        {
          break;
        }

LABEL_16:
        LODWORD(v11) = v11 + 1;
        if (((v11 - v12) | 2) == 3)
        {
          v13 = v15;
        }

        v10 = v11;
        if (v7 <= v11)
        {
          goto LABEL_235;
        }
      }

      if (v11 - v12 != 1 && v11 - v12 < 3)
      {
        v13 = 0;
      }

      v19 = (v11 + 1);
      if (v7 <= v19)
      {
        v15 = 61;
        LODWORD(v11) = v11 + 1;
        goto LABEL_63;
      }

      v20 = -v19;
      v21 = v19 + 64;
      v11 = (v11 + 1);
      while (1)
      {
        if (v11 >= 4)
        {
          v22 = 4;
        }

        else
        {
          v22 = v11;
        }

        v23 = v108;
        if (v108 <= v11)
        {
          v15 = 0;
          goto LABEL_49;
        }

        if (v105)
        {
          break;
        }

        if (!v106)
        {
          v25 = v109;
          if (v110 <= v11 || v109 > v11)
          {
            v27 = -v22;
            v28 = v22 + v20;
            v29 = v21 - v22;
            v30 = v11 + v27;
            v31 = v30 + 64;
            if (v30 + 64 >= v108)
            {
              v31 = v108;
            }

            v109 = v30;
            v110 = v31;
            if (v108 >= v29)
            {
              v23 = v29;
            }

            v113.location = v30 + v107;
            v113.length = v23 + v28;
            CFStringGetCharacters(theString, v113, buffer);
            v25 = v109;
          }

          v24 = &buffer[-v25];
          goto LABEL_44;
        }

        v15 = v106[v107 + v11];
LABEL_48:
        if (v15 == 59)
        {
          v15 = 59;
LABEL_63:
          if (v13 <= 0x52u)
          {
            if (v13 != 68)
            {
              if (v13 != 77 && v13 != 79)
              {
                goto LABEL_234;
              }

              goto LABEL_166;
            }

            value = 0xFFFFFFFF00000000;
            if (v11 - v19 < 1)
            {
              Mutable = 0;
LABEL_227:
              v2 = v93;
              if (!v93)
              {
                goto LABEL_232;
              }

              goto LABEL_228;
            }

            Mutable = 0;
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v36 = v19 + v11 - v19;
            v37 = v19 - v11 - v19;
            v38 = v36;
            while (2)
            {
              if (v19 < 0 || (v39 = v108, v108 <= v19))
              {
                v40 = 0;
              }

              else
              {
                if (v105)
                {
                  v40 = v105[v107 + v19];
                }

                else if (v106)
                {
                  v40 = v106[v107 + v19];
                }

                else
                {
                  if (v110 <= v19 || (v44 = v109, v109 > v19))
                  {
                    v45 = v19 - 4;
                    if (v19 < 4)
                    {
                      v45 = 0;
                    }

                    if (v45 + 64 < v108)
                    {
                      v39 = v45 + 64;
                    }

                    v109 = v45;
                    v110 = v39;
                    v114.length = v39 - v45;
                    v114.location = v107 + v45;
                    v46 = v35;
                    CFStringGetCharacters(theString, v114, buffer);
                    v35 = v46;
                    v36 = v38;
                    v44 = v109;
                  }

                  v40 = buffer[v19 - v44];
                }

                if ((v40 - 48) <= 9u)
                {
                  v35 = 10 * v35 + v40 - 48;
                  v34 = 1;
                  goto LABEL_164;
                }
              }

              if ((v34 & 1) == 0 && v40 <= 0x2Du && ((1 << v40) & 0x280100000000) != 0)
              {
                v34 = 0;
                v33 |= v40 == 45;
                goto LABEL_164;
              }

              v41 = v19 + 1;
              if (v19 < -1)
              {
                goto LABEL_132;
              }

              if (v41 >= v36)
              {
                goto LABEL_132;
              }

              v42 = v108;
              if (v108 <= v41)
              {
                goto LABEL_132;
              }

              if (v105)
              {
                v43 = v105[v107 + v41];
              }

              else if (v106)
              {
                v43 = v106[v107 + v41];
              }

              else
              {
                if (v110 <= v41 || (v47 = v109, v109 > v41))
                {
                  v48 = v19 - 3;
                  if (v41 < 4)
                  {
                    v48 = 0;
                  }

                  if (v48 + 64 < v108)
                  {
                    v42 = v48 + 64;
                  }

                  v109 = v48;
                  v110 = v42;
                  v115.length = v42 - v48;
                  v115.location = v107 + v48;
                  v49 = v35;
                  CFStringGetCharacters(theString, v115, buffer);
                  LODWORD(v35) = v49;
                  v36 = v38;
                  v47 = v109;
                }

                v43 = buffer[v41 - v47];
              }

              if (v40 == 77 && v43 == 79)
              {
                v50 = 1;
                goto LABEL_131;
              }

              if (v40 == 84 && v43 == 85)
              {
                v50 = 2;
                goto LABEL_131;
              }

              if (v40 == 87 && v43 == 69)
              {
                v50 = 3;
                goto LABEL_131;
              }

              if (v40 == 84 && v43 == 72)
              {
                v50 = 4;
                goto LABEL_131;
              }

              if (v40 == 70 && v43 == 82)
              {
                v50 = 5;
                goto LABEL_131;
              }

              if (v40 == 83 && v43 == 65)
              {
                v50 = 6;
                goto LABEL_131;
              }

              if (v40 == 83 && v43 == 85)
              {
                v50 = 0;
LABEL_131:
                HIDWORD(value) = v50;
LABEL_133:
                if (v33)
                {
                  v51 = -v35;
                }

                else
                {
                  v51 = v35;
                }

                LODWORD(value) = v51;
                if (!Mutable)
                {
                  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E6993118]);
                }

                CFArrayAppendValue(Mutable, &value);
                v36 = v38;
              }

              else
              {
LABEL_132:
                if (HIDWORD(value) != -1)
                {
                  goto LABEL_133;
                }
              }

              if (v41 < v36)
              {
                v52 = Mutable;
                v53 = ~v19;
                v54 = v19 + 65;
                while (1)
                {
                  v55 = v19 + 1;
                  v56 = v41 >= 4 ? 4 : v41;
                  if ((v55 & 0x8000000000000000) == 0)
                  {
                    v57 = v108;
                    if (v108 > v55)
                    {
                      if (v105)
                      {
                        v58 = v105[v107 + 1 + v19];
                      }

                      else if (v106)
                      {
                        v58 = v106[v107 + 1 + v19];
                      }

                      else
                      {
                        if (v110 <= v55 || (v59 = v109, v109 > v55))
                        {
                          v60 = v56 + v53;
                          v61 = v54 - v56;
                          v62 = v19 - v56;
                          v63 = v62 + 1;
                          v64 = v62 + 65;
                          if (v64 >= v108)
                          {
                            v64 = v108;
                          }

                          v109 = v63;
                          v110 = v64;
                          if (v108 >= v61)
                          {
                            v57 = v61;
                          }

                          v116.location = v63 + v107;
                          v116.length = v57 + v60;
                          CFStringGetCharacters(theString, v116, buffer);
                          v36 = v38;
                          v59 = v109;
                        }

                        v58 = buffer[v19 + 1 - v59];
                      }

                      if (v58 == 44)
                      {
                        break;
                      }
                    }
                  }

                  ++v41;
                  --v53;
                  ++v54;
                  ++v19;
                  if (v37 + v55 == -1)
                  {
                    v41 = v36;
                    goto LABEL_162;
                  }
                }

                v41 = v19 + 1;
LABEL_162:
                Mutable = v52;
              }

              v35 = 0;
              v34 = 0;
              v33 = 0;
              value = 0xFFFFFFFF00000000;
              v19 = v41;
              v7 = v94;
LABEL_164:
              if (++v19 >= v36)
              {
                goto LABEL_227;
              }

              continue;
            }
          }

          if (v13 != 83 && v13 != 89 && v13 != 87)
          {
            goto LABEL_234;
          }

LABEL_166:
          if (v11 - v19 < 1)
          {
            Mutable = 0;
            if (!v2)
            {
              goto LABEL_232;
            }

            goto LABEL_228;
          }

          Mutable = 0;
          v65 = 0;
          v66 = 0;
          v67 = v19 + v11 - v19;
          while (2)
          {
            theArray = Mutable;
            v68 = 0;
            v69 = -v19;
            v70 = v19 + 64;
            v71 = v19;
LABEL_169:
            if (v71 >= 4)
            {
              v72 = 4;
            }

            else
            {
              v72 = v71;
            }

            if (v19 < 0 || (v73 = v108, v108 <= v71))
            {
              v75 = 0;
LABEL_192:
              v81 = v75;
              v82 = 1 << v75;
              v83 = v65 | (v81 == 45);
              v84 = (v82 & 0x280100000000) == 0;
              if ((v82 & 0x280100000000) != 0)
              {
                v85 = v66;
              }

              else
              {
                v85 = 0;
              }

              if (v84)
              {
                v83 = 0;
              }

              if (v81 <= 0x2D)
              {
                v86 = v83;
              }

              else
              {
                v85 = 0;
                v86 = 0;
              }

              if (v68)
              {
                v66 = 0;
              }

              else
              {
                v66 = v85;
              }

              if (v68)
              {
                v65 = 0;
              }

              else
              {
                v65 = v86;
              }

              Mutable = theArray;
              goto LABEL_214;
            }

            if (v105)
            {
              v74 = &v105[v107];
              goto LABEL_176;
            }

            if (v106)
            {
              v75 = v106[v107 + v71];
            }

            else
            {
              if (v110 <= v71 || (v76 = v109, v109 > v71))
              {
                v77 = v72 + v69;
                v78 = v70 - v72;
                v79 = v71 - v72;
                v80 = v79 + 64;
                if (v79 + 64 >= v108)
                {
                  v80 = v108;
                }

                v109 = v79;
                v110 = v80;
                if (v108 >= v78)
                {
                  v73 = v78;
                }

                v117.location = v79 + v107;
                v117.length = v73 + v77;
                CFStringGetCharacters(theString, v117, buffer);
                v76 = v109;
              }

              v74 = &buffer[-v76];
LABEL_176:
              v75 = v74[v71];
            }

            if (v75 == 44 && (v68 & 1) != 0)
            {
              if (v65)
              {
                v87 = -v66;
              }

              else
              {
                v87 = v66;
              }

              v88 = theArray;
              if (!theArray)
              {
                v88 = CFArrayCreateMutable(0, 0, 0);
              }

              CFArrayAppendValue(v88, v87);
              v66 = 0;
              v65 = 0;
              Mutable = v88;
LABEL_214:
              v19 = v71 + 1;
              if (v71 + 1 < v67)
              {
                continue;
              }

              v2 = v93;
              v7 = v94;
LABEL_222:
              if (!v2)
              {
LABEL_232:
                CPRecordInitializeProperty();
                if (Mutable)
                {
                  CFRelease(Mutable);
                }

LABEL_234:
                v13 = 0;
                v12 = v11 + 1;
                goto LABEL_16;
              }

LABEL_228:
              if (CDBLockingAssertionsEnabled)
              {
                if (CPRecordGetStore())
                {
                  v90 = CPRecordStoreGetContext();
                  if (v90)
                  {
                    os_unfair_lock_assert_owner(v90 + 20);
                  }
                }
              }

              goto LABEL_232;
            }

            break;
          }

          if ((v75 - 48) >= 0xAu)
          {
            goto LABEL_192;
          }

          v66 = v75 + 10 * v66 - 48;
          ++v71;
          --v69;
          ++v70;
          v68 = 1;
          if (v71 >= v67)
          {
            if (v65)
            {
              v89 = -v66;
            }

            else
            {
              v89 = v66;
            }

            v7 = v94;
            Mutable = theArray;
            if (!theArray)
            {
              Mutable = CFArrayCreateMutable(0, 0, 0);
            }

            CFArrayAppendValue(Mutable, v89);
            v2 = v93;
            goto LABEL_222;
          }

          goto LABEL_169;
        }

LABEL_49:
        ++v11;
        --v20;
        ++v21;
        if (v7 <= v11)
        {
          goto LABEL_63;
        }
      }

      v24 = &v105[v107];
LABEL_44:
      v15 = v24[v11];
      goto LABEL_48;
    }
  }

LABEL_235:
  if (v2)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        v91 = CPRecordStoreGetContext();
        if (v91)
        {
          os_unfair_lock_assert_owner(v91 + 20);
        }
      }
    }
  }

  return CPRecordInitializeProperty();
}

uint64_t _CalRecurrenceSpecifierDerivedLoad(uint64_t a1)
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

CFTypeRef _CalRecurrenceLoadStoreId(uint64_t a1, uint64_t a2)
{
  result = _CalRecurrenceGetOwner(a1, 1);
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

CFTypeRef _CalRecurrenceLoadCalendarId(uint64_t a1, uint64_t a2)
{
  result = _CalRecurrenceGetOwner(a1, 1);
  if (result)
  {
    result = _CalCalendarItemGetCalendar(result);
    if (result)
    {
      CPRecordGetID();
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
  }

  return result;
}

void _CalRecurrenceGenerateCachedEndDate(uint64_t a1)
{
  if (!CPRecordGetStore())
  {
    goto LABEL_8;
  }

  Context = CPRecordStoreGetContext();
  if (!Context)
  {
    goto LABEL_8;
  }

  v3 = _CalDatabaseCopyEventOccurrenceCache(Context);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  TimeZone = _CalEventOccurrenceCacheGetTimeZone(v3);
  if (!TimeZone)
  {
    CFRelease(v4);
LABEL_8:
    v6 = CalCopyTimeZone();
    goto LABEL_9;
  }

  v6 = CFRetain(TimeZone);
  CFRelease(v4);
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_9:
  Owner = _CalRecurrenceGetOwner(a1, 0);
  if (Owner)
  {
    v8 = Owner;
    if (_CalEntityIsOfType(Owner, 2))
    {
      Count = _CalRecurrenceGetCount(a1);
      if (Count >= 1)
      {
        v10 = Count;
        _CalEventGetStartDate(v8);
        v12 = CFStringCompare(v11, @"_float", 0);
        v13 = CalTimeZoneCopyCFTimeZone();
        v14 = v13;
        v15 = v6;
        if (v6)
        {
          v15 = v6;
          if (v13)
          {
            if (CFEqual(v6, v13))
            {
              v15 = v6;
            }

            else
            {
              v15 = v14;
            }
          }
        }

        CalDateTimeGetAbsoluteTime();
        _CalRecurrenceGetOrComputeCachedEndDate(a1, v10, v12 == kCFCompareEqualTo, v15, v16);
        if (v14)
        {
          CFRelease(v14);
        }
      }
    }
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

void _CalRecurrenceAppendIndexListForSubproperty(__CFString *a1, CFArrayRef theArray, int a3)
{
  Count = CFArrayGetCount(theArray);
  chars = _CalRecurrenceSubpropertyNameForProperty___SubpropertyNames[a3 - 11];
  if (CFStringGetLength(a1) >= 1)
  {
    CFStringAppendCString(a1, ";", 0x8000100u);
  }

  CFStringAppendCharacters(a1, &chars, 1);
  CFStringAppendCString(a1, "=", 0x8000100u);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (i)
      {
        CFStringAppendFormat(a1, 0, @",%d", ValueAtIndex);
      }

      else
      {
        CFStringAppendFormat(a1, 0, @"%d", ValueAtIndex);
      }
    }
  }
}

uint64_t ICSStatusFromCalCalendarItemStatus(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 < 5)
  {
    return dword_1DECB1C90[a1];
  }

  v3 = CDBiCalendarConversionHandle;
  result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalEventStatus: %d", v4, 8u);
    return 0;
  }

  return result;
}

uint64_t CalCalendarItemStatusFromICSStatus(uint64_t a1)
{
  v1 = a1;
  v7 = *MEMORY[0x1E69E9840];
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return v1;
      case 1:
        return 2;
      case 2:
        return 1;
    }

    goto LABEL_15;
  }

  if ((a1 - 3) >= 5)
  {
    if (a1 == 8)
    {
      return 3;
    }

LABEL_15:
    v2 = CDBiCalendarConversionHandle;
    if (!os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      return 0;
    }

    v5 = 67109120;
    v6 = v1;
    v3 = "Encountered an unknown ICSStatus: %d";
    goto LABEL_5;
  }

  v2 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = 67109120;
    v6 = v1;
    v3 = "Encountered an unhandled ICSStatus: %d";
LABEL_5:
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_DEBUG, v3, &v5, 8u);
  }

  return 0;
}

uint64_t ICSCalendarServerAccessFromCalEventPrivacyLevel(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 < 4)
  {
    return dword_1DECB1D90[a1];
  }

  v3 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalEventPrivacyLevel: %d", v4, 8u);
  }

  return 1;
}

uint64_t CalEventPrivacyLevelFromICSCalendarServerAccess(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 < 5)
  {
    return dword_1DECB1CA4[a1];
  }

  v3 = CDBiCalendarConversionHandle;
  result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSCalendarServerAccess: %d", v4, 8u);
    return 0;
  }

  return result;
}

uint64_t ICSActionFromCalAlarmType(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 < 5)
  {
    return dword_1DECB1CB8[a1];
  }

  v3 = CDBiCalendarConversionHandle;
  result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalAlarmType: %d", v4, 8u);
    return 0;
  }

  return result;
}

uint64_t CalAlarmTypeFromICSAction(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 < 5)
  {
    return dword_1DECB1CCC[a1];
  }

  v3 = CDBiCalendarConversionHandle;
  result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSAction: %d", v4, 8u);
    return 0;
  }

  return result;
}

uint64_t CalAlarmProximityFromICSProximityString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:*MEMORY[0x1E69E4078]])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69E4088]])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69E4080]])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:*MEMORY[0x1E69E4090]])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id ICSProximityStringFromCalAlarmProximity(int a1)
{
  if ((a1 - 1) > 3)
  {
    v2 = 0;
  }

  else
  {
    v2 = **(&unk_1E8689198 + (a1 - 1));
  }

  return v2;
}

uint64_t ICSFrequencyFromCalRecurrenceFrequency(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) < 4)
  {
    return (a1 - 1) | 4u;
  }

  v3 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown calendar frequency: %d", v4, 8u);
  }

  return 4;
}

uint64_t CalRecurrenceFrequencyFromICSFrequency(uint64_t a1)
{
  v1 = a1;
  v7 = *MEMORY[0x1E69E9840];
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 != 4)
      {
        return 2;
      }

      return 1;
    }

    if (a1 == 6)
    {
      return 3;
    }

    if (a1 == 7)
    {
      return 4;
    }

LABEL_12:
    v3 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      v5 = 67109120;
      v6 = v1;
      v4 = "Encountered an unknown ICS frequency: %d";
      goto LABEL_14;
    }

    return 1;
  }

  if ((a1 - 1) >= 3)
  {
    goto LABEL_12;
  }

  v3 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v5 = 67109120;
    v6 = v1;
    v4 = "Encountered an ICS frequency that the calendar database doesn't handle: %d. Defaulting to daily";
LABEL_14:
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, v4, &v5, 8u);
  }

  return 1;
}

uint64_t ICSWeekdayFromCalDayOfWeek(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 < 7)
  {
    return a1 + 1;
  }

  v3 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalDayOfWeek: %d", v4, 8u);
  }

  return 1;
}

unint64_t CalDayOfWeekFromICSWeekday(uint64_t a1)
{
  v1 = a1;
  v5 = *MEMORY[0x1E69E9840];
  result = a1 - 1;
  if (result >= 7)
  {
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (result)
    {
      v4[0] = 67109120;
      v4[1] = v1;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSWeekday: %d", v4, 8u);
      return 0;
    }
  }

  return result;
}

uint64_t ICSMonthFromCalMonthOfYear(int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 > 63)
  {
    if (a1 > 511)
    {
      switch(a1)
      {
        case 512:
          return 10;
        case 1024:
          return 11;
        case 2048:
          return 12;
      }
    }

    else
    {
      switch(a1)
      {
        case 64:
          return 7;
        case 128:
          return 8;
        case 256:
          return 9;
      }
    }
  }

  else if (a1 > 7)
  {
    switch(a1)
    {
      case 8:
        return 4;
      case 16:
        return 5;
      case 32:
        return 6;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        return 1;
      case 2:
        return 2;
      case 4:
        return 3;
    }
  }

  v3 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalMonthOfYear: %d", v4, 8u);
  }

  return 1;
}

uint64_t CalMonthOfYearFromICSMonth(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) < 0xC)
  {
    return dword_1DECB1CE0[a1 - 1];
  }

  v2 = a1;
  v3 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    v4[0] = 67109120;
    v4[1] = v2;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSMonth: %d", v4, 8u);
  }

  return 1;
}

uint64_t ICSCalendarUserFromCalAttendeeType(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 < 5)
  {
    return dword_1DECB1D10[a1];
  }

  v3 = CDBiCalendarConversionHandle;
  result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalAttendeeType: %d", v4, 8u);
    return 0;
  }

  return result;
}

uint64_t CalAttendeeTypeFromICSCalendarUser(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 < 6)
  {
    return dword_1DECB1D24[a1];
  }

  v3 = CDBiCalendarConversionHandle;
  result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSCalendarUser: %d", v4, 8u);
    return 0;
  }

  return result;
}

uint64_t ICSRoleFromCalAttendeeRole(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 < 6)
  {
    return dword_1DECB1D3C[a1];
  }

  v3 = CDBiCalendarConversionHandle;
  result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalAttendeeRole: %d", v4, 8u);
    return 0;
  }

  return result;
}

uint64_t CalAttendeeRoleFromICSRole(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 < 6)
  {
    return dword_1DECB1D54[a1];
  }

  v3 = CDBiCalendarConversionHandle;
  result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown ICSRole: %d", v4, 8u);
    return 0;
  }

  return result;
}

uint64_t ICSParticipationStatusFromCalAttendeeStatus(unsigned int a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (a1 < 8)
  {
    return dword_1DECB1D6C[a1];
  }

  v3 = CDBiCalendarConversionHandle;
  result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    v4[0] = 67109120;
    v4[1] = a1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Encountered an unknown CalAttendeeStatus: %d", v4, 8u);
    return 0;
  }

  return result;
}

uint64_t CalAttendeeStatusFromICSParticipationStatus(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 <= 4)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 1;
      }

      if (a1 == 3)
      {
        return 2;
      }

      return 3;
    }

    if (!a1)
    {
      return 7;
    }

    if (a1 == 1)
    {
      return 0;
    }

    goto LABEL_21;
  }

  if (a1 > 7)
  {
    if ((a1 - 8) < 2)
    {
      v3 = CDBiCalendarConversionHandle;
      result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        return result;
      }

      v5 = 67109120;
      v6 = a1;
      v4 = "Encountered an unhandled ICSParticipationStatus: %d";
LABEL_23:
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, v4, &v5, 8u);
      return 0;
    }

LABEL_21:
    v3 = CDBiCalendarConversionHandle;
    result = os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      return result;
    }

    v5 = 67109120;
    v6 = a1;
    v4 = "Encountered an unknown ICSParticipationStatus: %d";
    goto LABEL_23;
  }

  if (a1 == 5)
  {
    return 4;
  }

  if (a1 == 6)
  {
    return 5;
  }

  return 6;
}

uint64_t ICSScheduleAgentFromCalScheduleAgent(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t CalScheduleAgentFromICSScheduleAgent(int a1)
{
  if (a1)
  {
    return a1 == 1;
  }

  else
  {
    return 2;
  }
}

uint64_t CalCalendarItemGetPropertyIDWithPropertyName(void *key)
{
  v183 = *MEMORY[0x1E69E9840];
  v2 = CalCalendarItemGetPropertyIDWithPropertyName_sPropDict;
  if (!CalCalendarItemGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalCalendarItemGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalCalendarItemGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"UUID";
      v6 = 35;
      v7 = @"externalID";
      v8 = 24;
      v9 = @"unlocalizedTitle";
      v10 = 0;
      v11 = @"notes";
      v12 = 3;
      v13 = @"startDateRaw";
      v14 = 4;
      v15 = @"isAllDay";
      v16 = 8;
      v17 = @"uniqueID";
      v18 = 26;
      v19 = @"URLString";
      v20 = 18;
      v21 = @"sequenceNumber";
      v22 = 20;
      v23 = @"hasRecurrenceRules";
      v24 = 32;
      v25 = @"hasAttachment";
      v26 = 33;
      v27 = @"hasAttendees";
      v28 = 34;
      v29 = @"priority";
      v30 = 37;
      v31 = @"creationDate";
      v32 = 42;
      v33 = @"actionString";
      v34 = 43;
      v35 = @"lastModifiedDate";
      v36 = 19;
      v37 = @"externalScheduleID";
      v38 = 27;
      v39 = @"externalModificationTag";
      v40 = 25;
      v41 = @"externalData";
      v42 = 28;
      v43 = @"phantomMaster";
      v44 = 54;
      v45 = @"participationStatusModifiedDate";
      v46 = 55;
      v47 = @"calendarScale";
      v48 = 56;
      v49 = @"startTimeZoneName";
      v50 = 5;
      v51 = @"endTimeZoneName";
      v52 = 7;
      v53 = @"structuredData";
      v54 = 68;
      v55 = @"localStructuredData";
      v56 = 69;
      v57 = @"suppressNotificationForChanges";
      v58 = 126;
      v59 = @"travelTime";
      v60 = 57;
      v61 = @"travelAdvisoryBehavior";
      v62 = 58;
      v63 = @"status";
      v64 = 14;
      v65 = @"availability";
      v66 = 16;
      v67 = @"privacyLevel";
      v68 = 17;
      v69 = @"originalStartDate";
      v70 = 11;
      v71 = @"birthdayID";
      v72 = 21;
      v73 = @"responseComment";
      v74 = 29;
      v75 = @"proposedStartDate";
      v76 = 63;
      v77 = @"canForward";
      v78 = 64;
      v79 = @"locationPredictionState";
      v80 = 65;
      v81 = @"firedTTL";
      v82 = 66;
      v83 = @"disallowProposeNewTime";
      v84 = 67;
      v85 = @"junkStatus";
      v86 = 70;
      v87 = @"conferenceURLString";
      v88 = 71;
      v89 = @"birthdayContactIdentifier";
      v90 = 72;
      v91 = @"recurrenceSet";
      v92 = 73;
      v93 = @"birthdayContactName";
      v94 = 75;
      v95 = @"endDateRaw";
      v96 = 6;
      v97 = @"invitationStatus";
      v98 = 15;
      v99 = @"specialDayString";
      v100 = 127;
      v101 = @"creatorIdentityString";
      v102 = 118;
      v103 = @"creatorTeamIdentityString";
      v104 = 119;
      v105 = @"hasNotes";
      v106 = 121;
      v107 = @"selfParticipantStatusRaw";
      v108 = 122;
      v109 = @"sharedItemCreatedDate";
      v110 = 48;
      v111 = @"sharedItemCreatedTimeZoneName";
      v112 = 49;
      v113 = @"sharedItemModifiedDate";
      v114 = 50;
      v115 = @"sharedItemModifiedTimeZoneName";
      v116 = 51;
      v117 = @"defaultAlarmWasDeleted";
      v118 = 53;
      v119 = @"modifiedProperties";
      v120 = 22;
      v121 = @"conferenceURLDetectedString";
      v122 = 117;
      v123 = @"externalTrackingStatus";
      v124 = 23;
      v125 = @"calendar";
      v126 = 98;
      v127 = @"organizer";
      v128 = 84;
      v129 = @"selfAttendee";
      v130 = 86;
      v131 = @"originalItem";
      v132 = 97;
      v133 = @"allAlarmsSet";
      v134 = 79;
      v135 = @"recurrenceRulesSet";
      v136 = 81;
      v137 = @"attendeesRaw";
      v138 = 82;
      v139 = @"detachedItems";
      v140 = 96;
      v141 = @"ekExceptionDates";
      v142 = 80;
      v143 = @"flags";
      v144 = 74;
      v145 = @"attachmentsSet";
      v146 = 100;
      v147 = @"structuredLocationWithoutPrediction";
      v148 = 101;
      v149 = @"clientLocation";
      v150 = 102;
      v151 = @"travelStartLocation";
      v152 = 103;
      v153 = @"endLocation";
      v154 = 104;
      v155 = @"image";
      v156 = 108;
      v157 = @"color";
      v158 = 120;
      v159 = @"sharedItemCreatedByDisplayName";
      v160 = 109;
      v161 = @"sharedItemCreatedByAddressString";
      v162 = 110;
      v163 = @"sharedItemCreatedByFirstName";
      v164 = 113;
      v165 = @"sharedItemCreatedByLastName";
      v166 = 114;
      v167 = @"sharedItemModifiedByDisplayName";
      v168 = 111;
      v169 = @"sharedItemModifiedByAddressString";
      v170 = 112;
      v171 = @"sharedItemModifiedByFirstName";
      v172 = 115;
      v173 = @"sharedItemModifiedByLastName";
      v174 = 116;
      v175 = @"actions";
      v176 = 95;
      v177 = @"invitationChangedProperties";
      v178 = 52;
      v179 = @"suggestionInfo";
      v180 = 106;
      v181 = @"syncError";
      v182 = 125;
      CalCalendarItemGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 89);
      for (i = 1408; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalCalendarItemGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalCalendarItemGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEBD9DF4(_Unwind_Exception *a1)
{
  for (i = 1408; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

void CalCalendarItemSetSummary(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 0, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemSetDescription(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (_CalRecordSetPropertyIfDifferent(a1, 3, a2))
  {
    _CalEventInvalidateDetectedConferenceURL(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarItemGetDescription(uint64_t a1)
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

uint64_t CalCalendarItemCopyDescription(uint64_t a1)
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

BOOL CalCalendarItemHasPreferredLocation(uint64_t a1)
{
  if (a1)
  {
    if (CalCalendarItemHasLocation(a1))
    {
      return 1;
    }

    else
    {

      return CalCalendarItemHasClientLocation(a1);
    }
  }

  else
  {
    v3 = CDBLogHandle;
    result = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v4 = 0;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_ERROR, "NULL 'item' given.  Will not determine if there is a preferred location.", v4, 2u);
      return 0;
    }
  }

  return result;
}

BOOL CalCalendarItemHasLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Location = _CalCalendarItemGetLocation(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Location != 0;
}

BOOL CalCalendarItemHasClientLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  ClientLocation = _CalCalendarItemGetClientLocation(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return ClientLocation != 0;
}

CFTypeRef CalCalendarItemCopyPreferredLocation(uint64_t a1)
{
  if (a1)
  {
    result = CalCalendarItemCopyClientLocation(a1);
    if (!result)
    {

      return CalCalendarItemCopyLocation(a1);
    }
  }

  else
  {
    v3 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_ERROR, "NULL 'item' given.  Will not return a preferred location.", v4, 2u);
    }

    return 0;
  }

  return result;
}

CFTypeRef CalCalendarItemCopyClientLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  ClientLocation = _CalCalendarItemGetClientLocation(a1);
  v4 = ClientLocation;
  if (ClientLocation)
  {
    CFRetain(ClientLocation);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

CFTypeRef CalCalendarItemCopyLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Location = _CalCalendarItemGetLocation(a1);
  v4 = Location;
  if (Location)
  {
    CFRetain(Location);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

CFTypeRef _CalCalendarItemGetLocation(uint64_t a1)
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

void *_CalCalendarItemSetLocation(uint64_t a1, const void *a2)
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
    CalRelationSetRelatedObject(result, a2);

    return _CalEventInvalidateDetectedConferenceURL(a1);
  }

  return result;
}

void CalCalendarItemSetLocation(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetLocation(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef _CalCalendarItemGetClientLocation(uint64_t a1)
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

void *_CalCalendarItemSetClientLocation(uint64_t a1, const void *a2)
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
    CalRelationSetRelatedObject(result, a2);

    return _CalEventInvalidateDetectedConferenceURL(a1);
  }

  return result;
}

void CalCalendarItemSetClientLocation(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetClientLocation(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void *_CalCalendarItemSetStartLocation(uint64_t a1, const void *a2)
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

CFTypeRef _CalCalendarItemGetStartLocation(uint64_t a1)
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

void CalCalendarItemSetStartLocation(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetStartLocation(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalCalendarItemCopyStartLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  StartLocation = _CalCalendarItemGetStartLocation(a1);
  v4 = StartLocation;
  if (StartLocation)
  {
    CFRetain(StartLocation);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void *_CalCalendarItemSetEndLocation(uint64_t a1, const void *a2)
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

CFTypeRef _CalCalendarItemGetEndLocation(uint64_t a1)
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

void CalCalendarItemSetEndLocation(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetEndLocation(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalCalendarItemCopyEndLocation(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  EndLocation = _CalCalendarItemGetEndLocation(a1);
  v4 = EndLocation;
  if (EndLocation)
  {
    CFRetain(EndLocation);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t CalCalendarItemCopyCreationDate(uint64_t a1)
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

void CalCalendarItemSetCreationDate(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 42, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyLastModifiedDate(uint64_t a1)
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

void CalCalendarItemSetLastModifiedDate(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetRecordProperty(a1, 19, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyStartDate(uint64_t a1)
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

void _CalCalendarItemInvalidateAllRecurrenceRuleCachedEndDates(uint64_t a1)
{
  v1 = _CalCalendarItemCopyRecurrences(a1);
  if (v1)
  {
    v2 = v1;
    Count = CFArrayGetCount(v1);
    if (Count >= 1)
    {
      v4 = Count;
      v5 = 0;
      v6 = *MEMORY[0x1E6993100];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
        _CalRecurrenceSetCachedEndDate(ValueAtIndex, v6, 0);
        ++v5;
      }

      while (v4 != v5);
    }

    CFRelease(v2);
  }
}

CFMutableArrayRef _CalCalendarItemCopyRecurrencesWhileLocked(uint64_t a1, int a2)
{
  if (a2)
  {
    return _CalCalendarItemCopyRecurrences(a1);
  }

  else
  {
    return CalCalendarItemCopyRecurrences(a1);
  }
}

void CalCalendarItemSetStartDate(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (_CalRecordSetPropertyIfDifferent(a1, 4, a2))
  {
    _CalCalendarItemInvalidateAllRecurrenceRuleCachedEndDates(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarItemCopyStartTimeZone(uint64_t a1)
{
  if (_CalCalendarItemIsFloating(a1))
  {
    return 0;
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

  CPRecordGetProperty();

  return CalTimeZoneCopyCFTimeZone();
}

uint64_t CalCalendarItemCopyStartTimeZone(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  started = _CalCalendarItemCopyStartTimeZone(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return started;
}

void CalCalendarItemSetStartTimeZone(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = MEMORY[0x1E12C6390](a2);
  }

  else
  {
    v5 = @"_float";
  }

  _CalRecordSetPropertyIfDifferent(a1, 5, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarItemCopyEndTimeZone(uint64_t a1)
{
  if (_CalCalendarItemIsFloating(a1))
  {
    return 0;
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

  if (!CPRecordGetProperty())
  {
    return 0;
  }

  return CalTimeZoneCopyCFTimeZone();
}

uint64_t CalCalendarItemCopyEndTimeZone(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyEndTimeZone(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemSetEndTimeZone(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = MEMORY[0x1E12C6390](a2);
  }

  else
  {
    v5 = @"_float";
  }

  _CalRecordSetPropertyIfDifferent(a1, 7, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalCalendarItemIsFloating(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IsFloating = _CalCalendarItemIsFloating(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsFloating;
}

BOOL CalCalendarItemIsAllDay(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IsAllDay = _CalCalendarItemIsAllDay(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsAllDay;
}

BOOL _CalCalendarItemIsAllDay(uint64_t a1)
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

  return CPRecordGetIntegerProperty() != 0;
}

void CalCalendarItemSetAllDay(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetRecordProperty(a1, 8, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemSetAvailability(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 16, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemGetAvailability(uint64_t a1)
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

void CalCalendarItemSetPrivacyLevel(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 17, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemGetPrivacyLevel(uint64_t a1)
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

void CalCalendarItemSetPriority(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2 <= 9)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  _CalRecordSetPropertyIfDifferent(a1, 37, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemGetPriority(uint64_t a1)
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

  IntegerProperty = CPRecordGetIntegerProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntegerProperty;
}

void CalCalendarItemSetAction(uint64_t a1, const __CFURL *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = CFURLGetString(a2);
  }

  else
  {
    v5 = 0;
  }

  _CalRecordSetPropertyIfDifferent(a1, 43, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFURLRef CalCalendarItemCopyAction(uint64_t a1)
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

uint64_t CalCalendarItemCopyAppLink(uint64_t a1)
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

uint64_t CalCalendarItemGetSequenceNumber(uint64_t a1)
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

  IntegerProperty = CPRecordGetIntegerProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IntegerProperty;
}

void CalCalendarItemSetSequenceNumber(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 20, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

__CFArray *CalCalendarItemCopyCategories(uint64_t a1)
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
  if (Property && (v5 = CalToManyRelationCopyObjects(Property)) != 0)
  {
    v6 = v5;
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v9 = Count;
      for (i = 0; i != v9; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        Category = _CalCategoryLinkGetCategory(ValueAtIndex);
        CFArrayAppendValue(Mutable, Category);
      }
    }

    CFRelease(v6);
  }

  else
  {
    Mutable = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Mutable;
}

void CalCalendarItemRemoveAllCategories(uint64_t a1)
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
    CalToManyRelationRemoveAllObjects(Property);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemAddCategory(const void *a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemAddCategory(a1, a2, 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void _CalCalendarItemAddCategory(const void *a1, CFTypeRef a2, uint64_t a3)
{
  v3 = a3;
  EntityType = _CalCategoryGetEntityType(a2);
  if (EntityType == _CalEntityGetType(a1))
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
      v9 = Property;
      v10 = CalToManyRelationCopyObjects(Property);
      if (v10)
      {
        v11 = v10;
        Count = CFArrayGetCount(v10);
        if (Count < 1)
        {
LABEL_14:
          CFRelease(v11);
          DatabaseForRecord = CalGetDatabaseForRecord(a1);
          CategoryLinkWithOwnerAndCategory = _CalDatabaseCreateCategoryLinkWithOwnerAndCategory(DatabaseForRecord, a1, a2);
          _CalCategoryLinkSetGroup(CategoryLinkWithOwnerAndCategory, v3);
          CalToManyRelationAddObject(v9, CategoryLinkWithOwnerAndCategory);
          v18 = CategoryLinkWithOwnerAndCategory;
        }

        else
        {
          v13 = Count;
          v14 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v11, v14);
            if (_CalCategoryLinkGetCategory(ValueAtIndex) == a2 && _CalRecurrenceGetWeekStartRaw(ValueAtIndex) == v3)
            {
              break;
            }

            if (v13 == ++v14)
            {
              goto LABEL_14;
            }
          }

          v18 = v11;
        }

        CFRelease(v18);
      }
    }
  }
}

void _CalCalendarItemRemoveCategory(const void *a1, CFTypeRef a2)
{
  EntityType = _CalCategoryGetEntityType(a2);
  if (EntityType == _CalEntityGetType(a1))
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
      v7 = Property;
      v8 = CalToManyRelationCopyObjects(Property);
      if (v8)
      {
        v9 = v8;
        Count = CFArrayGetCount(v8);
        if (Count >= 1)
        {
          v11 = Count;
          v12 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
            if (_CalCategoryLinkGetCategory(ValueAtIndex) == a2)
            {
              break;
            }

            if (v11 == ++v12)
            {
              goto LABEL_16;
            }
          }

          CalToManyRelationRemoveObject(v7, ValueAtIndex);
        }

LABEL_16:

        CFRelease(v9);
      }
    }
  }
}

void CalCalendarItemRemoveCategory(const void *a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemRemoveCategory(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemAddGroupedCategory(const void *a1, const void *a2, uint64_t a3)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemAddCategory(a1, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

id CalCalendarItemCopyGroupedCategories(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
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
    v5 = CalToManyRelationCopyObjects(Property);
  }

  else
  {
    v5 = 0;
  }

  if ([(__CFArray *)v5 count])
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = v5;
    v7 = v5;
    v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          Category = _CalCategoryLinkGetCategory(v12);
          if (Category)
          {
            v14 = Category;
            v15 = [MEMORY[0x1E696AD98] numberWithInt:_CalRecurrenceGetWeekStartRaw(v12)];
            v16 = [v6 objectForKeyedSubscript:v15];
            if (!v16)
            {
              v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [v6 setObject:v16 forKeyedSubscript:v15];
            }

            [v16 addObject:{v14, v18}];
          }
        }

        v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v9);
    }

    v5 = v18;
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

uint64_t _CalCalendarItemCopyURL(uint64_t a1)
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
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFF8] _lp_URLWithUserTypedString:v2 relativeToURL:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t CalCalendarItemCopyURL(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyURL(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemSetURL(uint64_t a1, const __CFURL *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = CFURLGetString(a2);
  }

  else
  {
    v5 = 0;
  }

  if (_CalCalendarItemSetRecordProperty(a1, 18, v5))
  {
    _CalEventInvalidateDetectedConferenceURL(a1);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemGetStatus(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Status = _CalCalendarItemGetStatus(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Status;
}

void CalCalendarItemSetStatus(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (_CalCalendarItemGetStatus(a1) != a2)
  {
    _CalCalendarItemSetRecordProperty(a1, 14, a2);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalCalendarItemStillExists(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalRecordStillExists(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemSetSuppressNotificationForChanges(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetRecordProperty(a1, 126, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalCalendarItemSuppressNotificationForChanges(uint64_t a1)
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

void *_CalCalendarItemSetOrganizer(uint64_t a1, const void *a2)
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

void CalCalendarItemSetOrganizer(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetOrganizer(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemIsSelfOrganizedWithScheduleAgentClient(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = CalCalendarItemCopyOrganizer(a1);
  v5 = v4;
  if (v4)
  {
    ScheduleAgent = CalParticipantGetScheduleAgent(v4);
    CFRelease(v5);
    if (ScheduleAgent == 1)
    {
      if (v3)
      {
        v7 = CalOrganizerCopyAddress(v5);
        v8 = [v7 absoluteString];
        v5 = [v3 addressIsAccountOwner:v8];
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void CalCalendarItemSetupOrganizerAndSelfAttendeeForImportedItem(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (CalCalendarGetSharingStatus(a2) != 2)
  {
    v19 = v5;
    if (!a1)
    {
      v6 = 0;
      goto LABEL_47;
    }

    v6 = CalCalendarItemCopySelfAttendee(a1);
    if (!v6)
    {
      v20 = CalCalendarItemCopyAttendees(a1);
      if (![(__CFArray *)v20 count])
      {
        v6 = 0;
        goto LABEL_46;
      }

      v21 = 0;
      while (1)
      {
        v6 = [(__CFArray *)v20 objectAtIndexedSubscript:v21];

        v22 = CalAttendeeCopyAddress(v6);
        if ([v19 addressURLIsAccountOwner:v22])
        {
          CFRetain(v6);
          goto LABEL_45;
        }

        v23 = CalAttendeeCopyEmailAddress(v6);
        if (v23)
        {
          v24 = MEMORY[0x1E695DFF8];
          v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", v23];
          v26 = [v24 URLWithString:v25];

          if ([v19 addressURLIsAccountOwner:v26])
          {
            CFRetain(v6);

            v22 = v26;
LABEL_45:

LABEL_46:
            break;
          }

          v22 = v26;
        }

        if (++v21 >= [(__CFArray *)v20 count])
        {
          v6 = 0;
          goto LABEL_46;
        }
      }
    }

LABEL_47:

    goto LABEL_48;
  }

  if (!a1)
  {
    v6 = 0;
    goto LABEL_48;
  }

  v6 = CalCalendarItemCopySelfAttendee(a1);
  if (v6)
  {
    goto LABEL_48;
  }

  v35 = CalCalendarCopySharedOwnerAddresses(a2);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = CalCalendarItemCopyAttendees(a1);
  v7 = [(__CFArray *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (!v7)
  {
    v6 = 0;
    goto LABEL_41;
  }

  v8 = v7;
  v33 = a1;
  v36 = *v42;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v42 != v36)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v41 + 1) + 8 * i);
      v10 = CalAttendeeCopyEmailAddress(v6);
      if (v10)
      {
        v11 = MEMORY[0x1E695DFF8];
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mailto:%@", v10];
        v13 = [v11 URLWithString:v12];

        if (!v13)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v13 = CalAttendeeCopyAddress(v6);
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v14 = v35;
      v15 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v38;
LABEL_15:
        v18 = 0;
        while (1)
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          if ([MEMORY[0x1E6992078] compareAddressURL:v13 localString:*(*(&v37 + 1) + 8 * v18)])
          {
            break;
          }

          if (v16 == ++v18)
          {
            v16 = [v14 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v16)
            {
              goto LABEL_15;
            }

            goto LABEL_21;
          }
        }

        CFRetain(v6);

        if (!v6)
        {
          goto LABEL_23;
        }

        goto LABEL_39;
      }

LABEL_21:

LABEL_23:
    }

    v8 = [(__CFArray *)obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  v6 = 0;
LABEL_39:
  a1 = v33;
LABEL_41:

LABEL_48:
  v27 = CalCalendarItemCopyOrganizer(a1);
  if (v27)
  {
    v28 = v27;
    v29 = CalOrganizerCopyAddress(v27);
    if ([v5 addressURLIsAccountOwner:v29])
    {
      v30 = 1;
    }

    else
    {
      v31 = CalOrganizerCopyEmailAddress(v28);
      v30 = [v5 addressIsAccountOwner:v31];
    }

    CalOrganizerSetIsSelf(v28, v30);
    CalCalendarItemSetOrganizer(a1, v28);
    CFRelease(v28);
  }

  CalCalendarItemSetSelfAttendee(a1, v6);
  ProposedStartDate = CalAttendeeGetProposedStartDate(v6);
  CalEventSetProposedStartDate(a1, ProposedStartDate);
  if (v6)
  {
    CFRelease(v6);
  }
}

void CalCalendarItemSetSelfAttendee(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetSelfAttendee(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalCalendarItemSetHidden(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 31, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL CalCalendarItemIsHidden(uint64_t a1)
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

void CalCalendarItemSetIsPhantomMaster(uint64_t a1, unsigned int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 54, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

BOOL _CalCalendarItemIsPhantomMaster(uint64_t a1)
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

BOOL CalCalendarItemIsPhantomMaster(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IsPhantomMaster = _CalCalendarItemIsPhantomMaster(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsPhantomMaster;
}

uint64_t _CalCalendarItemCopyCalendarScale(uint64_t a1)
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

void CalCalendarItemSetCalendarScale(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 56, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCalendarScale(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyCalendarScale(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemSetCreatedByDisplayName(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 109, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCreatedByDisplayName(uint64_t a1)
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

void CalCalendarItemSetCreatedByAddress(uint64_t a1, const __CFURL *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = CFURLGetString(a2);
  }

  else
  {
    v5 = 0;
  }

  _CalRecordSetPropertyIfDifferent(a1, 110, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFURLRef CalCalendarItemCopyCreatedByAddress(uint64_t a1)
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

void CalCalendarItemSetCreatedByFirstName(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 113, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCreatedByFirstName(uint64_t a1)
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

void CalCalendarItemSetCreatedByLastName(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 114, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCreatedByLastName(uint64_t a1)
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

void CalCalendarItemSetCreatedDate(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 48, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCreatedDate(uint64_t a1)
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

void CalCalendarItemSetCreatedTimezone(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v5 = MEMORY[0x1E12C6390](a2);
  _CalRecordSetPropertyIfDifferent(a1, 49, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyCreatedTimezone(uint64_t a1)
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

  CPRecordGetProperty();
  v4 = CalTimeZoneCopyCFTimeZone();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalCalendarItemSetModifiedByDisplayName(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 111, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyModifiedByDisplayName(uint64_t a1)
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

void CalCalendarItemSetModifiedByAddress(uint64_t a1, const __CFURL *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (a2)
  {
    v5 = CFURLGetString(a2);
  }

  else
  {
    v5 = 0;
  }

  _CalRecordSetPropertyIfDifferent(a1, 112, v5);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFURLRef CalCalendarItemCopyModifiedByAddress(uint64_t a1)
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

void CalCalendarItemSetModifiedByFirstName(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 115, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyModifiedByFirstName(uint64_t a1)
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

void CalCalendarItemSetModifiedByLastName(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 116, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyModifiedByLastName(uint64_t a1)
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

void CalCalendarItemSetModifiedDate(uint64_t a1, uint64_t a2)
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

uint64_t CalCalendarItemCopyModifiedDate(uint64_t a1)
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

void CalCalendarItemSetModifiedTimezone(uint64_t a1, uint64_t a2)
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

  MEMORY[0x1E12C6390](a2);
  CPRecordSetProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyModifiedTimezone(uint64_t a1)
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

  CPRecordGetProperty();
  v4 = CalTimeZoneCopyCFTimeZone();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalCalendarItemClearExternalProperties(_BOOL8 a1)
{
  _CalRecordSetPropertyIfDifferent(a1, 24, 0);
  if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
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

  CPRecordSetProperty();
  if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
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

  CPRecordSetProperty();
  if (a1 && (CDBLockingAssertionsEnabled & 1) != 0)
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

  return CPRecordSetProperty();
}

void CalCalendarItemClearExternalProperties(const void *a1, int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemClearExternalProperties(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  if (a2)
  {
    v5 = CalCalendarItemCopyAlarms(a1);
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
          CalAlarmClearExternalProperties(ValueAtIndex);
        }
      }

      CFRelease(v6);
    }

    v11 = CalCalendarItemCopyRecurrences(a1);
    if (v11)
    {
      v12 = v11;
      v13 = CFArrayGetCount(v11);
      if (v13 >= 1)
      {
        v14 = v13;
        for (j = 0; j != v14; ++j)
        {
          v16 = CFArrayGetValueAtIndex(v12, j);
          CalRecurrenceClearExternalProperties(v16);
        }
      }

      CFRelease(v12);
    }

    v17 = CalGetRecordLock(a1);
    os_unfair_lock_lock(v17);
    if (_CalEntityGetType(a1) == 2)
    {
      v18 = _CalEventCopyDetachedEvents(a1);
      if (v18)
      {
        v19 = v18;
        v20 = CFArrayGetCount(v18);
        if (v20 >= 1)
        {
          v21 = v20;
          for (k = 0; k != v21; ++k)
          {
            v23 = CFArrayGetValueAtIndex(v19, k);
            _CalCalendarItemClearExternalProperties(v23);
          }
        }

        CFRelease(v19);
      }
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v17);
    }

    os_unfair_lock_unlock(v17);
  }
}

CFMutableArrayRef CalCalendarItemCopyAlarms(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyAlarms(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

CFMutableArrayRef CalCalendarItemCopyRecurrences(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyRecurrences(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemSetExternalID(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 24, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalCalendarItemCopyExternalID(uint64_t a1)
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

uint64_t CalCalendarItemCopyExternalID(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalCalendarItemCopyExternalID(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalCalendarItemSetExternalScheduleID(uint64_t a1, uint64_t a2)
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

uint64_t CalCalendarItemCopyExternalScheduleID(uint64_t a1)
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

void CalCalendarItemSetExternalModificationTag(uint64_t a1, uint64_t a2)
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

uint64_t CalCalendarItemCopyExternalModificationTag(uint64_t a1)
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

void CalCalendarItemSetExternalRepresentation(uint64_t a1, const __CFNumber *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRecordSetPropertyIfDifferent(a1, 28, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalCalendarItemCopyExternalRepresentation(uint64_t a1)
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

uint64_t CalCalendarItemCopyUniqueIdentifier(uint64_t a1)
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

void CalCalendarItemSetUniqueIdentifier(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalCalendarItemSetRecordProperty(a1, 26, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef _CalCalendarItemCopyExceptionDates(uint64_t a1)
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

const __CFArray *_CalCalendarItemAddExceptionDate(uint64_t a1, void *a2)
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

void *_CalCalendarItemRemoveExceptionDate(uint64_t a1, void *a2)
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

void _CalCalendarItemRemoveAllExceptionDates(uint64_t a1)
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