void _CalAlarmCacheProcessAddedEvent(double *a1, uint64_t a2, int a3, int a4, int a5, int a6, double a7)
{
  v70 = *MEMORY[0x1E69E9840];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = _CalCalendarItemCopyAlarms(a2);
  v9 = [(__CFArray *)obj countByEnumeratingWithState:&v58 objects:v62 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v59;
    v12 = a7 - a6;
    v13 = v12 + -608400.0;
    v14 = *MEMORY[0x1E6993100];
    v15 = floor(a7);
    do
    {
      v16 = 0;
      do
      {
        if (*v59 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v58 + 1) + 8 * v16);
        if (_CalAlarmGetTriggerDate(v17) == 1.17549435e-38)
        {
          IsDefaultAlarm = _CalAlarmIsDefaultAlarm(v17);
          if (IsDefaultAlarm)
          {
            DefaultAlarmOffset = _CalEventGetDefaultAlarmOffset(a2, *(a1 + 8), *(a1 + 9));
            if (DefaultAlarmOffset == 0x7FFFFFFFFFFFFFFFLL)
            {
              v20 = a1[6];
              if (v12 < v20 || (v21 = v14, v12 >= a1[7]))
              {
                if (v13 < v20)
                {
                  goto LABEL_7;
                }

                v21 = v14;
                if (v13 >= a1[7])
                {
                  goto LABEL_7;
                }
              }

LABEL_25:
              v54 = *a1;
              v25 = *(a1 + 2);
              v24 = *(a1 + 3);
              ID = CPRecordGetID();
              v27 = CDBLogHandle;
              if (a3 == -1)
              {
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 0;
                  _os_log_impl(&dword_1DEBB1000, v27, OS_LOG_TYPE_ERROR, "Skipping alarm cache insert for event with id == -1", buf, 2u);
                }
              }

              else
              {
                v28 = ID;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
                {
                  v52 = v28;
                  v29 = MEMORY[0x1E696AD98];
                  log = v27;
                  v48 = [v29 numberWithInt:a3];
                  v30 = [MEMORY[0x1E696AD98] numberWithInt:v52];
                  v31 = [MEMORY[0x1E696AD98] numberWithInt:a4];
                  v49 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a7];
                  v50 = v24;
                  v32 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v21];
                  *buf = 138413314;
                  *v64 = v48;
                  *&v64[8] = 2112;
                  v65 = v30;
                  *v66 = 2112;
                  *&v66[2] = v31;
                  *v67 = 2112;
                  *&v67[2] = v49;
                  v68 = 2112;
                  v69 = v32;
                  v33 = v32;
                  _os_log_impl(&dword_1DEBB1000, log, OS_LOG_TYPE_DEBUG, "Inserting alarm into alarm cache. event_id: [%@], alarm_id: [%@], store_id: [%@], occurrence_date: [%@], fire_date: [%@].", buf, 0x34u);

                  v24 = v50;
                  v28 = v52;
                }

                if (v24)
                {
                  if (CDBLockingAssertionsEnabled)
                  {
                    if (*v24)
                    {
                      if (*(*v24 + 104))
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

                v35 = *v25;
                if (*v25)
                {
                  goto LABEL_44;
                }

                if (v24)
                {
                  if (CDBLockingAssertionsEnabled)
                  {
                    if (*v24)
                    {
                      if (*(*v24 + 104))
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

                v35 = CPSqliteConnectionStatementForSQL();
                *v25 = v35;
                if (v35)
                {
LABEL_44:
                  sqlite3_bind_int(*(v35 + 8), 1, a3);
                  sqlite3_bind_int(*(*v25 + 8), 2, v28);
                  sqlite3_bind_double(*(*v25 + 8), 3, v15);
                  v37 = floor(v21);
                  if (v14 == v21)
                  {
                    v37 = 0.0;
                  }

                  sqlite3_bind_double(*(*v25 + 8), 4, v37);
                  sqlite3_bind_int(*(*v25 + 8), 5, a4);
                  sqlite3_bind_int(*(*v25 + 8), 6, a5);
                  sqlite3_bind_int(*(*v25 + 8), 7, a6);
                  sqlite3_bind_int(*(*v25 + 8), 8, IsDefaultAlarm);
                  v38 = *v25;
                  if (CDBLockingAssertionsEnabled == 1)
                  {
                    if (v38)
                    {
                      if (*v38)
                      {
                        v39 = **v38;
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
                  }

                  if (CPSqliteStatementPerform() == 19)
                  {
                    v41 = CDBLogHandle;
                    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
                    {
                      *buf = 67110144;
                      *v64 = a3;
                      *&v64[4] = 1024;
                      *&v64[6] = v28;
                      LOWORD(v65) = 1024;
                      *(&v65 + 2) = a4;
                      HIWORD(v65) = 2048;
                      *v66 = a7;
                      *&v66[8] = 2048;
                      *v67 = v21;
                      _os_log_impl(&dword_1DEBB1000, v41, OS_LOG_TYPE_FAULT, "Attempted to insert a duplicate alarm into the alarm cache. event_id: [%i], alarm_id: [%i], store_id: [%i], occurrence_date: [%f], alarm_fire_date: [%f]", buf, 0x28u);
                    }

                    _CalDatabaseIntegrityError(*(v54 + 24), @"Insert duplicate alarm");
                  }

                  v42 = *v25;
                  if (CDBLockingAssertionsEnabled == 1)
                  {
                    if (v42)
                    {
                      if (*v42)
                      {
                        v43 = **v42;
                        if (v43)
                        {
                          if (*(v43 + 104))
                          {
                            v44 = CPRecordStoreGetContext();
                            if (v44)
                            {
                              os_unfair_lock_assert_owner(v44 + 20);
                            }
                          }
                        }
                      }
                    }
                  }

                  CPSqliteStatementReset();
                }
              }

              goto LABEL_7;
            }
          }

          else
          {
            DefaultAlarmOffset = _CalAlarmGetTriggerInterval(v17);
          }

          v22 = DefaultAlarmOffset + 3600;
          if (DefaultAlarmOffset <= 32399)
          {
            v22 = DefaultAlarmOffset;
          }

          if (v22 < -53999)
          {
            v22 -= 3600;
          }

          v23 = v12 + v22;
          if (v23 >= a1[6] && v23 < a1[7])
          {
            v21 = CalculateAlarmFireDate(a6, DefaultAlarmOffset, a7);
            if (v21 >= a1[6] && v21 < a1[7])
            {
              goto LABEL_25;
            }
          }
        }

LABEL_7:
        ++v16;
      }

      while (v10 != v16);
      v45 = [(__CFArray *)obj countByEnumeratingWithState:&v58 objects:v62 count:16];
      v10 = v45;
    }

    while (v45);
  }
}

void _AlarmFireDateCallback(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 == 7)
  {
    v5 = sqlite3_user_data(a1);
    v7 = *v5;
    v6 = v5[1];
    v8 = sqlite3_value_double(*a3);
    v9 = sqlite3_value_int64(a3[1]);
    v10 = sqlite3_value_int(a3[2]);
    v11 = sqlite3_value_int(a3[3]);
    v12 = sqlite3_value_int(a3[4]);
    if (sqlite3_value_type(a3[5]) != 5)
    {
      v7 = sqlite3_value_int64(a3[5]);
    }

    if (sqlite3_value_type(a3[6]) != 5)
    {
      v6 = sqlite3_value_int64(a3[6]);
    }

    if (v10 == 1 && (v12 != 1 ? (v9 = v7) : (v9 = v6), v9 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v13 = 0.0;
    }

    else
    {
      v13 = CalculateAlarmFireDate(v11, v9, v8);
    }

    sqlite3_result_double(a1, v13);
  }

  else
  {
    v15 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v16[0] = 67109120;
      v16[1] = a2;
      _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, "_AlarmFireDateCallback received wrong number of args. [%i args]", v16, 8u);
    }

    sqlite3_result_double(a1, 0.0);
  }
}

void _AlarmShouldBeInCacheCallback(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2 == 7)
  {
    v5 = sqlite3_user_data(a1);
    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    v9 = *v5;
    v8 = *(v5 + 1);
    v10 = sqlite3_value_double(*a3);
    v11 = sqlite3_value_int64(a3[1]);
    v12 = sqlite3_value_int(a3[2]);
    v13 = sqlite3_value_int(a3[3]);
    v14 = sqlite3_value_int(a3[4]);
    if (sqlite3_value_type(a3[5]) != 5)
    {
      v7 = sqlite3_value_int64(a3[5]);
    }

    if (sqlite3_value_type(a3[6]) != 5)
    {
      v6 = sqlite3_value_int64(a3[6]);
    }

    if (v12 == 1 && (v14 != 1 ? (v11 = v7) : (v11 = v6), v11 == 0x7FFFFFFFFFFFFFFFLL))
    {
      v15 = v10 - v13;
      v16 = 36000.0;
      if (v14 != 1)
      {
        v16 = 0.0;
      }

      v17 = v15 + v16;
      v18 = v17 < v9 || v17 > v8;
      v21 = 1;
      if (v18)
      {
        v19 = v15 + -608400.0;
        if (v19 < v9 || v19 > v8)
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v24 = CalculateAlarmFireDate(v13, v11, v10);
      v21 = v24 <= v8 && v24 >= v9;
    }

    sqlite3_result_int(a1, v21);
  }

  else
  {
    v23 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v25[0] = 67109120;
      v25[1] = a2;
      _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_ERROR, "_AlarmFireDateCallback received wrong number of args. [%i args]", v25, 8u);
    }

    sqlite3_result_double(a1, 0.0);
  }
}

uint64_t _RecurringEventsWithLongAlarmOffsetsHandler(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  RecordStore = _CalDatabaseGetRecordStore(v3);
  EventWithUID = _CalGetEventWithUID(RecordStore, v4);
  if (EventWithUID)
  {
    v7 = EventWithUID;
    v22 = 0;
    *buf = 0;
    _CalEventGetLargestPossibleAlarmOffsets(EventWithUID, buf, &v22);
    if (*buf == 0x7FFFFFFFFFFFFFFFLL || *(a2 + 40) > -*buf)
    {
      v8 = 0;
    }

    else
    {
      v10 = [*(a2 + 8) dateByAddingTimeInterval:-*buf];
      v11 = [*(a2 + 16) dateByAddingTimeInterval:-*buf];
      v8 = _CalEventCopyOccurrenceDatesInDateRange(v7, v10, v11, *(a2 + 56), 0);
    }

    if (v22 != 0x7FFFFFFFFFFFFFFFLL && v22 >= *(a2 + 48))
    {
      v12 = [*(a2 + 8) dateByAddingTimeInterval:-v22];
      v13 = [*(a2 + 16) dateByAddingTimeInterval:-v22];
      v14 = _CalEventCopyOccurrenceDatesInDateRange(v7, v12, v13, *(a2 + 56), 0);
      if (v8)
      {
        Count = CFArrayGetCount(v8);
        v16 = CFArrayGetCount(v14);
        MutableCopy = CFArrayCreateMutableCopy(0, v16 + Count, v8);
        v25.length = CFArrayGetCount(v14);
        v25.location = 0;
        CFArrayAppendArray(MutableCopy, v14, v25);
        CFRelease(v8);
        CFRelease(v14);
        v14 = MutableCopy;
      }

      v8 = v14;
    }

    if (v8)
    {
      v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF <= %@ OR SELF >= %@", *(a2 + 24), *(a2 + 32)];
      v19 = [(__CFArray *)v8 filteredArrayUsingPredicate:v18];
      Mutable = *(a2 + 64);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *(a2 + 64) = Mutable;
      }

      CFDictionarySetValue(Mutable, v7, v19);
      CFRelease(v19);
    }
  }

  else
  {
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, "Failed to find event %d in _RecurringEventsWithLongAlarmOffsetsHandler", buf, 8u);
    }
  }

  return 0;
}

void _CalEventAlarmCacheProcessAdds(uint64_t a1, const __CFArray *a2, uint64_t a3)
{
  v6 = *a3;
  ID = CPRecordGetID();
  StoreId = _CalCalendarItemGetStoreId(a1);
  IsAllDay = _CalCalendarItemIsAllDay(a1);
  v10 = _CalEventCopyTravelTime(a1);
  v11 = [v10 intValue];

  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  if (vabdd_f64(*(a3 + 32), *MEMORY[0x1E6993100]) < 2.22044605e-16)
  {
    _CalEventOccurrenceCacheLoadInfo(*&v6);
    v13 = *(*&v6 + 40);
    v22 = *(*(*&v6 + 24) + 296);
    [v13 timeIntervalSinceReferenceDate];
    *(a3 + 32) = v14;
    [*(*&v6 + 48) timeIntervalSinceReferenceDate];
    *(a3 + 40) = v15;
    [*(*&v6 + 56) timeIntervalSinceReferenceDate];
    *(a3 + 48) = v16;
    [*(*&v6 + 64) timeIntervalSinceReferenceDate];
    *(a3 + 56) = v17;
    *(a3 + 64) = CalAlarmGetGlobalDefaultTimedAlarmOffset(v22);
    GlobalDefaultAllDayAlarmOffset = CalAlarmGetGlobalDefaultAllDayAlarmOffset(v22);

    *(a3 + 72) = GlobalDefaultAllDayAlarmOffset;
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v21 = MEMORY[0x1E12C5EF0](ValueAtIndex);
      _CalAlarmCacheProcessAddedEvent(a3, a1, ID, StoreId, IsAllDay, v11, v21);
    }
  }
}

void __destructor_8_s8_s16_s24_s32_s56(uint64_t a1)
{
  v2 = *(a1 + 56);
}

uint64_t CalEventOccurrenceCacheRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __CalEventOccurrenceCacheTypeID = result;
  return result;
}

uint64_t _DateGatherer(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = a2;
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:{sqlite3_column_double(v2, 0)}];
  [v3 addObject:v4];

  return 0;
}

void _CalculateAlarmFireDateCallback(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a2 == 3)
  {
    v5 = sqlite3_user_data(a1);
    if (v5)
    {
      v6 = *v5;
    }

    else
    {
      v6 = 0;
    }

    v9 = sqlite3_value_double(*a3);
    v10 = sqlite3_value_int(a3[1]);
    v11 = sqlite3_value_int64(a3[2]);
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v12 = 0.0;
    }

    else if (v6)
    {
      v13 = v11 + 3600;
      if (v11 <= 32399)
      {
        v13 = v11;
      }

      if (v13 < -53999)
      {
        v13 -= 3600;
      }

      v12 = v9 - v10 + v13;
    }

    else
    {
      v12 = CalculateAlarmFireDate(v10, v11, v9);
    }

    sqlite3_result_double(a1, v12);
  }

  else
  {
    v8 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67109120;
      v14[1] = a2;
      _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_ERROR, "_CalculateAlarmFireDateCallback received wrong number of args. [%i args]", v14, 8u);
    }

    sqlite3_result_double(a1, 0.0);
  }
}

__n128 __copy_assignment_8_8_s0_s8_s16_s24_s32_t40w16(uint64_t a1, uint64_t a2)
{
  objc_storeStrong(a1, *a2);
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void _UpdateAlarmsForStoreDefaultAlarmChanges(uint64_t result, char a2, uint64_t *a3)
{
  v6 = *a3;
  if (a2)
  {
    _UpdateAlarmsForeStoreDefaultAlarmChange(*a3, a3, result, 0);
  }

  if ((a2 & 2) != 0)
  {

    _UpdateAlarmsForeStoreDefaultAlarmChange(v6, a3, result, 1);
  }
}

void _GenerateDatesForOccurrenceCache(const void *a1, uint64_t *a2)
{
  v4 = _CalEventOccurrenceCacheCopyOccurrenceDatesForEvent(*a2, 0, a1, 0, 0);
  if (v4)
  {
    v5 = v4;
    Mutable = *(*a2 + 88);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(*a2 + 88) = Mutable;
    }

    CFDictionarySetValue(Mutable, a1, v5);

    CFRelease(v5);
  }
}

void _GenerateDatesForAlarmCache(const void *a1, uint64_t *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v47 = 0;
  v4 = _CalEventOccurrenceCacheCopyOccurrenceDatesForEvent(*a2, 1, a1, &v47, &v46);
  if (v4)
  {
    v5 = v4;
    Mutable = *(*a2 + 104);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *(*a2 + 104) = Mutable;
    }

    CFDictionarySetValue(Mutable, a1, v5);
    CFRelease(v5);
  }

  v7 = v46;
  v8 = v47;
  DatabaseForRecord = CalGetDatabaseForRecord(a1);
  RecordStore = _CalDatabaseGetRecordStore(DatabaseForRecord);
  ID = CPRecordGetID();
  if (RecordStore)
  {
    v12 = ID;
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
      v15 = Database;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(Database + 104))
        {
          v16 = CPRecordStoreGetContext();
          if (v16)
          {
            os_unfair_lock_assert_owner(v16 + 20);
          }
        }
      }

      v17 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
      if (!v17)
      {
        v25 = CDBLogHandle;
        if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 0;
        v22 = "Failed to open connection to database";
        v23 = v25;
        v24 = 2;
        goto LABEL_20;
      }

      v18 = v17;
      pApp = 1;
      v19 = sqlite3_create_function(*(v17 + 8), "CALCULATE_ALARM_FIRE_DATE", 3, 526337, &pApp, _CalculateAlarmFireDateCallback, 0, 0);
      if (v19)
      {
        v20 = v19;
        v21 = CDBLogHandle;
        if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          return;
        }

        *buf = 67109120;
        v50 = v20;
        v22 = "Failed to create CALCULATE_ALARM_FIRE_DATE function in _CalEventOccurrenceCacheUpdateLargestAlarmOffsets, with error code: %i";
        v23 = v21;
        v24 = 8;
LABEL_20:
        _os_log_impl(&dword_1DEBB1000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
        return;
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(v15 + 104))
        {
          v26 = CPRecordStoreGetContext();
          if (v26)
          {
            os_unfair_lock_assert_owner(v26 + 20);
          }
        }
      }

      v27 = CPSqliteDatabaseStatementForWriting();
      v28 = MEMORY[0x1E6993100];
      if (v27)
      {
        v29 = v27;
        v30 = *(v27 + 8);
        v31 = *MEMORY[0x1E6993100];
        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = v8;
        }

        sqlite3_bind_double(v30, 1, v31);
        sqlite3_bind_int(v29[1], 2, v12);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v29)
          {
            v32 = **v29;
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

        CPSqliteStatementPerform();
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

        CPSqliteStatementReset();
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(v15 + 104))
        {
          v36 = CPRecordStoreGetContext();
          if (v36)
          {
            os_unfair_lock_assert_owner(v36 + 20);
          }
        }
      }

      v37 = CPSqliteDatabaseStatementForWriting();
      if (v37)
      {
        v38 = v37;
        v39 = *(v37 + 8);
        v40 = *v28;
        if (v7 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v40 = v7;
        }

        sqlite3_bind_double(v39, 1, v40);
        sqlite3_bind_int(v38[1], 2, v12);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v38)
          {
            v41 = **v38;
            if (v41)
            {
              if (*(v41 + 104))
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

        CPSqliteStatementPerform();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v38)
          {
            v43 = **v38;
            if (v43)
            {
              if (*(v43 + 104))
              {
                v44 = CPRecordStoreGetContext();
                if (v44)
                {
                  os_unfair_lock_assert_owner(v44 + 20);
                }
              }
            }
          }
        }

        CPSqliteStatementReset();
      }

      sqlite3_create_function(v18[1], "CALCULATE_ALARM_FIRE_DATE", 3, 526337, 0, 0, 0, 0);
      if (CDBLockingAssertionsEnabled == 1 && *v18 && *(*v18 + 13))
      {
        v45 = CPRecordStoreGetContext();
        if (v45)
        {
          os_unfair_lock_assert_owner(v45 + 20);
        }
      }

      CPSqliteDatabaseReleaseSqliteConnection();
    }
  }
}

void _UpdateAlarmsForeStoreDefaultAlarmChange(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
  if (!RecordStore)
  {
    v18 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v35) = 0;
    v19 = "No record store in _UpdateAlarmsForStoreDefaultAlarmChanges";
LABEL_21:
    v20 = v18;
    v21 = 2;
    goto LABEL_22;
  }

  v8 = RecordStore;
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
    v18 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v35) = 0;
    v19 = "No db in _UpdateAlarmsForStoreDefaultAlarmChanges";
    goto LABEL_21;
  }

  v11 = Database;
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

  v13 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (!v13)
  {
    v18 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v35) = 0;
    v19 = "Failed to open connection to database";
    goto LABEL_21;
  }

  v14 = v13;
  StoreWithUID = _CalGetStoreWithUID(v8, a3);
  if (!StoreWithUID)
  {
    v22 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v35 = 67109120;
    v36 = a3;
    v19 = "Failed to find store for id %d _UpdateAlarmsForStoreDefaultAlarmChanges";
    v20 = v22;
    v21 = 8;
LABEL_22:
    _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_ERROR, v19, &v35, v21);
    return;
  }

  if (a4)
  {
    v16 = _CalStoreCopyDefaultAllDayAlarmOffset(StoreWithUID);
    if (!v16)
    {
      v17 = *(a2 + 16);
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  v16 = _CalStoreCopyDefaultAlarmOffset(StoreWithUID);
  if (v16)
  {
LABEL_27:
    v17 = [v16 integerValue];
    goto LABEL_29;
  }

  v17 = *(a2 + 8);
LABEL_29:

  function = sqlite3_create_function(v14[1], "CALCULATE_ALARM_FIRE_DATE", 3, 526337, 0, _CalculateAlarmFireDateCallback, 0, 0);
  if (function)
  {
    v24 = function;
    v25 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v35 = 67109120;
      v36 = v24;
      _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_ERROR, "Failed to create CALCULATE_ALARM_FIRE_DATE function in _UpdateAlarmsForStoreDefaultAlarmChanges, with error code: %i", &v35, 8u);
    }

    if (CDBLockingAssertionsEnabled == 1 && *v14 && *(*v14 + 13))
    {
      v26 = CPRecordStoreGetContext();
      if (v26)
      {
        os_unfair_lock_assert_owner(v26 + 20);
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  else
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v11 + 104))
      {
        v27 = CPRecordStoreGetContext();
        if (v27)
        {
          os_unfair_lock_assert_owner(v27 + 20);
        }
      }
    }

    v28 = CPSqliteDatabaseStatementForWriting();
    if (v28)
    {
      v29 = v28;
      sqlite3_bind_int64(*(v28 + 8), 1, v17);
      sqlite3_bind_int(v29[1], 2, a3);
      sqlite3_bind_int(v29[1], 3, a4);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v29)
        {
          v30 = **v29;
          if (v30)
          {
            if (*(v30 + 104))
            {
              v31 = CPRecordStoreGetContext();
              if (v31)
              {
                os_unfair_lock_assert_owner(v31 + 20);
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
          v32 = **v29;
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

      CPSqliteStatementReset();
    }

    sqlite3_create_function(v14[1], "CALCULATE_ALARM_FIRE_DATE", 3, 526337, 0, 0, 0, 0);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v14)
      {
        if (*(*v14 + 13))
        {
          v34 = CPRecordStoreGetContext();
          if (v34)
          {
            os_unfair_lock_assert_owner(v34 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
  }
}

__CFArray *_CalEventOccurrenceCacheCopyOccurrenceDatesForEvent(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = _CalCalendarItemCopyRecurrencesWhileLocked(a3, 1);
  v11 = COERCE_DOUBLE(_CalEventGetStartDate(a3));
  if (CFStringCompare(v12, @"_float", 0))
  {
    v13 = 0;
  }

  else
  {
    v13 = CalTimeZoneCopyCFTimeZone();
    _CalEventOccurrenceCacheLoadInfo(a1);
    CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
    v11 = v14;
  }

  _CalEventOccurrenceCacheLoadInfo(a1);
  v15 = 56;
  if (a2)
  {
    v16 = 64;
  }

  else
  {
    v15 = 40;
    v16 = 48;
  }

  v17 = *(a1 + v15);
  v18 = *(a1 + v16);
  v19 = _CalEventOccurrenceCacheGetCacheCalendar(a1);
  DayCount = _CalEventGetDayCount(a3, *(a1 + 32));
  if (DayCount >= 2)
  {
    v21 = [v17 dateByAddingDays:1 - DayCount inCalendar:v19];

    v17 = v21;
  }

  v41 = 0;
  v42 = 0;
  _CalEventGetLargestPossibleAlarmOffsets(a3, &v42, &v41);
  if (a4)
  {
    *a4 = v42;
  }

  if (a5)
  {
    *a5 = v41;
  }

  if (v10 && CFArrayGetCount(v10) >= 1)
  {
    _CalEventUpdateDetachedEventsRelation(a3);
    if (a2)
    {
      IsReminderIntegrationEvent = 0;
    }

    else
    {
      IsReminderIntegrationEvent = _CalEventIsReminderIntegrationEvent(a3);
    }

    v39 = [v19 timeZone];
    Mutable = _CalEventCopyOccurrenceDatesInDateRangeExpandedForAlarms(a3, v17, v18, v39, IsReminderIntegrationEvent);
  }

  else
  {
    [v17 timeIntervalSinceReferenceDate];
    v24 = v23;
    [v18 timeIntervalSinceReferenceDate];
    v26 = v42;
    if (v42 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = 0;
      v42 = 0;
    }

    v27 = v41;
    if (v41 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0;
      v41 = 0;
    }

    v28 = v24 - v27;
    v29 = v25 - v26;
    v30 = v28 > v11 || v11 > v29;
    if (v30 || (v31 = CFDateCreate(0, v11)) == 0)
    {
      Mutable = 0;
    }

    else
    {
      v32 = v31;
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(Mutable, v32);
      CFRelease(v32);
    }

    ProposedStartDate = _CalEventGetProposedStartDate(a3);
    if (v28 <= ProposedStartDate && ProposedStartDate != *MEMORY[0x1E6993100] && ProposedStartDate <= v29)
    {
      v37 = CFDateCreate(0, ProposedStartDate);
      if (v37)
      {
        v38 = v37;
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        }

        CFArrayAppendValue(Mutable, v38);
        CFRelease(v38);
      }
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return Mutable;
}

uint64_t _CalEventOccurrenceCacheProcessDeletes(int a1, uint64_t **a2)
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

void _CalEventOccurrenceCacheProcessAdds(const void *a1, const __CFArray *a2, uint64_t a3)
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = *a3;
  ID = CPRecordGetID();
  CalendarId = _CalEventGetCalendarId(a1);
  StoreId = _CalCalendarItemGetStoreId(a1);
  IsAllDay = _CalCalendarItemIsAllDay(a1);
  IsReminderIntegrationEvent = _CalEventIsReminderIntegrationEvent(a1);
  v9 = _CalEventCopyTravelTime(a1);
  v55 = [v9 intValue];

  v10 = COERCE_DOUBLE(_CalEventGetStartDate(a1));
  EndDate = _CalRecurrenceGetEndDate(a1);
  v61 = 0;
  v62 = 0;
  v56 = a1;
  _CalEventGetLargestPossibleAlarmOffsets(a1, &v62, &v61);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
  }

  else
  {
    Count = 0;
  }

  _CalEventOccurrenceCacheLoadInfo(v6);
  DayCount = _CalEventGetDayCount(v56, *(v6 + 32));
  if (Count * DayCount >= 100001)
  {
    v14 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = Count;
      *&buf[12] = 1024;
      *&buf[14] = DayCount;
      _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "EventKitOC: Event duration is too long, not adding to occurrence cache (asked to add %li occurrences each with %i days).", buf, 0x12u);
    }

    return;
  }

  if (ID == -1)
  {
    v15 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      DebugDescription = _CalEntityGetDebugDescription(v56);
      *buf = 138412290;
      *&buf[4] = DebugDescription;
      _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "Inserting an event with id -1 into the occurrence cache in _CalEventOccurenceCacheProcessAdds. event=%@", buf, 0xCu);
    }

    _CalDatabaseIntegrityError(*(v6 + 24), @"Insert Corrupt Occurrence - ProcessAdds");
  }

  v18 = *MEMORY[0x1E6993100];
  if (vabdd_f64(*(a3 + 32), *MEMORY[0x1E6993100]) < 2.22044605e-16)
  {
    _CalEventOccurrenceCacheLoadInfo(v6);
    v19 = *(v6 + 40);
    v20 = *(*(v6 + 24) + 296);
    [v19 timeIntervalSinceReferenceDate];
    *(a3 + 32) = v21;
    [*(v6 + 48) timeIntervalSinceReferenceDate];
    *(a3 + 40) = v22;
    [*(v6 + 56) timeIntervalSinceReferenceDate];
    *(a3 + 48) = v23;
    [*(v6 + 64) timeIntervalSinceReferenceDate];
    *(a3 + 56) = v24;
    *(a3 + 64) = CalAlarmGetGlobalDefaultTimedAlarmOffset(v20);
    GlobalDefaultAllDayAlarmOffset = CalAlarmGetGlobalDefaultAllDayAlarmOffset(v20);

    *(a3 + 72) = GlobalDefaultAllDayAlarmOffset;
  }

  if (Count >= 1)
  {
    v26 = 0;
    v57 = EndDate - v10;
    v52 = a2;
    v27 = vabdd_f64(v18, v18);
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, v26);
      v29 = MEMORY[0x1E12C5EF0](ValueAtIndex);
      v30 = v18;
      if (IsReminderIntegrationEvent)
      {
        v30 = v18;
        if (v26 + 1 < Count)
        {
          v31 = CFArrayGetValueAtIndex(a2, v26 + 1);
          v30 = MEMORY[0x1E12C5EF0](v31);
        }
      }

      v32 = Count;
      v59 = 0.0;
      v60 = 0.0;
      _CalEventOccurrenceCacheGetMostExtremeAlarmDates(v62, v61, v55, &v60, &v59, v29);
      if (*(a3 + 40) > v29)
      {
        v33 = v59;
        v34 = v60;
        if (*(a3 + 32) <= v29)
        {
          if (DayCount >= 1)
          {
            break;
          }

          goto LABEL_57;
        }

        if (DayCount >= 2)
        {
          memset(&buf[12], 0, 20);
          _CalEventOccurrenceCacheLoadInfo(*a3);
          *buf = 0;
          *&buf[8] = DayCount - 1;
          CalAbsoluteTimeAddGregorianUnits();
          if (v35 >= *(a3 + 32))
          {
            break;
          }
        }
      }

LABEL_57:
      _CalAlarmCacheProcessAddedEvent(a3, v56, ID, StoreId, IsAllDay, v55, v29);
      ++v26;
      Count = v32;
      a2 = v52;
      if (v26 == v32)
      {
        return;
      }
    }

    v36 = 0;
    v37 = v18;
    v38 = v29;
    while (1)
    {
      if (v36)
      {
        _CalEventOccurrenceCacheLoadInfo(*a3);
        *buf = 0;
        *&buf[8] = v36;
        memset(&buf[12], 0, 20);
        CalAbsoluteTimeAddGregorianUnits();
        _CalEventOccurrenceCacheLoadInfo(*a3);
        CalAbsoluteTimeGetTimeForStartOfDay();
        v38 = v39;
      }

      if (DayCount != 1)
      {
        v40 = v27 < 2.22044605e-16;
        v41 = *(a3 + 32);
        v42 = vabdd_f64(v41, v18);
        if (v38 < v18)
        {
          v40 = 1;
        }

        if (v42 >= 2.22044605e-16 && v38 < v41 || !v40)
        {
          goto LABEL_56;
        }

        if (v27 >= 2.22044605e-16 && v38 < v18)
        {
          goto LABEL_57;
        }

        v45 = *(a3 + 40);
        v46 = vabdd_f64(v45, v18);
        if (v38 >= v45 && v46 >= 2.22044605e-16)
        {
          goto LABEL_57;
        }
      }

      if (v37 == v18)
      {
        _CalEventOccurrenceCacheLoadInfo(*a3);
        memset(buf, 0, 24);
        *&buf[24] = v57;
        CalAbsoluteTimeAddGregorianUnits();
        v37 = v48;
      }

      if (v36)
      {
        v49 = v29;
      }

      else
      {
        v49 = v18;
      }

      if (v36)
      {
        v50 = v18;
      }

      else
      {
        v50 = v34;
      }

      if (v36)
      {
        v51 = v18;
      }

      else
      {
        v51 = v33;
      }

      _CalEventOccurrenceCacheInsertOccurrence(*a3, *(a3 + 24), *(a3 + 8), ID, CalendarId, StoreId, v38, v49, v37, v30, v50, v51);
LABEL_56:
      if (DayCount == ++v36)
      {
        goto LABEL_57;
      }
    }
  }
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t CalTaskUpdateFromICSTodoWithOptions(const void *a1, void *a2, void *a3, os_unfair_lock_s *a4, void *a5, unsigned __int8 a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = [v11 due];
  v15 = [v14 hasTimeComponent];

  CalTaskSetDueDateAllDay(a1, v15 ^ 1);
  v16 = CalCalendarItemUpdateFromICSComponent(a1, 0, v11, v12, a4, v13, 0, 0, a6);
  if (v16)
  {
    v17 = [v11 due];

    if (v17)
    {
      v18 = [v11 due];
      DateTimeFromICSDate = CalCreateDateTimeFromICSDate(v18, v12);
      v21 = v20;
      v22 = *&DateTimeFromICSDate;

      v23 = CFDateCreate(0, v22);
      CalTaskSetDueDate(a1, v23);
      if (v23)
      {
        CFRelease(v23);
      }

      if (v21 && CFStringCompare(v21, @"_float", 0))
      {
        v24 = CalTimeZoneCopyCFTimeZone();
        CalTaskSetDueDateTimeZone(a1, v24);
        if (v24)
        {
          CFRelease(v24);
        }
      }

      else
      {
        CalTaskSetDueDateTimeZone(a1, 0);
      }

      CalDateTimeRelease();
    }

    else
    {
      CalTaskSetDueDate(a1, 0);
      CalTaskSetDueDateTimeZone(a1, 0);
    }

    v26 = [v11 x_apple_activity];
    v27 = [v26 count];

    if (v27)
    {
      v28 = [v11 x_apple_activity];
      v29 = [v28 objectAtIndex:0];
      v30 = [v29 value];
    }

    else
    {
      v30 = 0;
    }

    CalCalendarItemSetAction(a1, v30);
    v31 = [v11 completed];
    CFDateFromICSDateAsUTC = CalCreateCFDateFromICSDateAsUTC(v31);

    if (CFDateFromICSDateAsUTC)
    {
      CalTaskSetCompletionDate(a1, CFDateFromICSDateAsUTC);
LABEL_25:
      CFRelease(CFDateFromICSDateAsUTC);
      goto LABEL_26;
    }

    if ([v11 percentComplete] == 100 || objc_msgSend(v11, "status") == 4)
    {
      v33 = [v11 due];

      if (v33)
      {
        v34 = [v11 due];
        Current = COERCE_DOUBLE(CalCreateDateTimeFromICSDate(v34, v12));
      }

      else
      {
        Current = CFAbsoluteTimeGetCurrent();
      }

      CFDateFromICSDateAsUTC = CFDateCreate(0, Current);
      CalTaskSetCompletionDate(a1, CFDateFromICSDateAsUTC);
      if (CFDateFromICSDateAsUTC)
      {
        goto LABEL_25;
      }
    }

    else
    {
      CalTaskSetCompletionDate(a1, 0);
    }

LABEL_26:
    v36 = [v11 x_apple_sort_order];
    if (v36 < 1)
    {
      v38 = [v11 created];
      v39 = CalCreateCFDateFromICSDateAsUTC(v38);

      if (v39)
      {
        v40 = MEMORY[0x1E12C5EF0](v39);
        CalTaskSetDisplayOrder(a1, v40);
        CFRelease(v39);
        goto LABEL_31;
      }

      v36 = CFAbsoluteTimeGetCurrent();
      v37 = a1;
    }

    else
    {
      v37 = a1;
    }

    CalTaskSetDisplayOrder(v37, v36);
LABEL_31:

    goto LABEL_32;
  }

  v25 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_DEBUG, "CalCalendarItemUpdateFromICSComponent failed", buf, 2u);
  }

LABEL_32:

  return v16;
}

id ICSTodoFromCalTask(void *a1, unint64_t a2)
{
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69E3CF0]);
    if (CalCalendarItemUpdateICSComponent(a1, v4, 0, a2))
    {
      v5 = CalCalendarItemCopyUniqueIdentifier(a1);
      if (v5)
      {
        v6 = v5;
        [v4 setUid:v5];
        CFRelease(v6);
      }

      v7 = CalCalendarItemCopyAction(a1);
      if (v7)
      {
        v8 = v7;
        v9 = [objc_alloc(MEMORY[0x1E69E3CD0]) initWithValue:v7 type:5013];
        if (v9)
        {
          v10 = [MEMORY[0x1E695DEC8] arrayWithObject:v9];
        }

        else
        {
          v10 = 0;
        }

        [v4 setX_apple_activity:v10];
        CFRelease(v8);
      }

      v13 = CalCalendarItemCopyAppLink(a1);
      if (v13)
      {
        v14 = v13;
        [v4 setX_apple_appLinkData:v13];
        CFRelease(v14);
      }

      v15 = CalTaskCopyDueDateTimeZone(a1);
      IsDueDateAllDay = CalTaskIsDueDateAllDay(a1);
      v17 = CalTaskCopyDueDate(a1);
      if (v17)
      {
        v18 = v17;
        if (IsDueDateAllDay)
        {
          v19 = ICSFloatingDateOnlyFromCFDate(v17, v15);
        }

        else
        {
          if (v15)
          {
            ICSDateFromCFDateInTimezone(v17, v15);
          }

          else
          {
            ICSDateFromCFDateGuessingAtFloatingDateOnly(v17, 0);
          }
          v19 = ;
        }

        v20 = v19;
        [v4 setDue:v19];

        CFRelease(v18);
      }

      v21 = CalTaskCopyCompletionDate(a1);
      if (v21)
      {
        v22 = v21;
        v23 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
        v24 = ICSDateFromCFDate(v22, v23);
        [v4 setCompleted:v24];

        [v4 setPercentComplete:100];
        [v4 setStatus:4];
        CFRelease(v22);
      }

      else
      {
        [v4 setCompleted:0];
        [v4 setPercentComplete:0];
        [v4 setStatus:3];
      }

      [v4 setX_apple_sort_order:CalTaskGetDisplayOrder(a1)];
      v25 = CalCalendarItemCopyExternalRepresentation(a1);
      if (v25)
      {
        v26 = [CalItemMetadata metadataWithData:v25];
        [v26 applyToComponent:v4];
      }

      v11 = v4;
    }

    else
    {
      v12 = CDBiCalendarConversionHandle;
      if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
      {
        *v28 = 0;
        _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_DEBUG, "Couldn't update the calendar item components of task", v28, 2u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

const __CFString *_CalShareePrepareForSave(uint64_t a1, uint64_t a2)
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
  CalRelationOwnerWillSave(Property);
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

      CPRecordSetProperty();
      DatabaseForRecord = CalGetDatabaseForRecord(a1);

      return _CalDatabaseSetChangeFlags(DatabaseForRecord, 1);
    }
  }

  return result;
}

uint64_t _CalShareePropertyDidChange(uint64_t result, unsigned int a2)
{
  if (a2 <= 0xF && ((1 << a2) & 0xC300) != 0)
  {
    v2 = result;
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
      if (v2)
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

      return CPRecordSetProperty();
    }
  }

  return result;
}

uint64_t _CalShareePropertyWillChange(uint64_t result, int a2, uint64_t a3)
{
  if (!a2 && a3 == -1)
  {
    v4 = result;
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

  return result;
}

void CalShareeInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalShareeClass, &kCalShareeIndexes, &kCalShareeChangesIndexes);
}

void CalShareeMigrateTables(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 > 76)
  {
    if (a3 <= 0x4651)
    {
      CalMigrateTableFull(a2, &kCalShareeClass, 0, &kCalShareeUpgradeInfo, &kCalShareesChangesUpgradeInfo, &kCalShareeIndexes, &kCalShareeChangesIndexes, 0, a3);
    }
  }

  else
  {
    CPRecordStoreCreateTablesForClass();

    CalMigrationCreateIndexes(a2, &kCalShareeClass, &kCalShareeIndexes, &kCalShareeChangesIndexes);
  }
}

uint64_t CalShareeGetPropertyIDWithPropertyName(void *key)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = CalShareeGetPropertyIDWithPropertyName_sPropDict;
  if (!CalShareeGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalShareeGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalShareeGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"UUID";
      v6 = 3;
      v7 = @"owner";
      v8 = 12;
      v9 = @"externalID";
      v10 = 1;
      v11 = @"shareeStatusRaw";
      v12 = 5;
      v13 = @"shareeAccessLevelRaw";
      v14 = 6;
      v15 = @"displayName";
      v16 = 8;
      v17 = @"address";
      v18 = 9;
      v19 = @"firstName";
      v20 = 14;
      v21 = @"lastName";
      v22 = 15;
      v23 = @"shareeMuteRemoval";
      v24 = 7;
      CalShareeGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 10);
      for (i = 144; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalShareeGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalShareeGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEC70158(_Unwind_Exception *a1)
{
  for (i = 144; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

CFTypeRef _CalShareeHasValidParent(uint64_t a1)
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

uint64_t _CalDatabaseRemoveShareeChangesInStoreToIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _CalShareeCreateChangeHistoryWhereClauseForStore(a1, a2);
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

const void *_CalDatabaseCreateSharee(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 15);
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
  v10 = _CalDBCreateUUIDString();
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
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

  CPRecordInitializeProperty();
  CFRelease(v10);
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateSharee(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Sharee = _CalDatabaseCreateSharee(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Sharee;
}

uint64_t _CalShareeGetRecordID(uint64_t a1)
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

uint64_t _CalInvalidateShareesWithOwnerID(uint64_t a1, int a2)
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

void *_CalRemoveSharee(void *a1)
{
  Owner = _CalShareeGetOwner(a1);
  if (Owner)
  {

    return _CalCalendarRemoveSharee(Owner, a1);
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord(a1);

    return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }
}

CFTypeRef _CalShareeGetOwner(uint64_t a1)
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

void CalRemoveSharee(void *a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalRemoveSharee(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalShareeGetWithUID(uint64_t a1, uint64_t a2)
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

const void *CalDatabaseCopyShareeWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = _CalShareeGetWithUID(RecordStore, a2);
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

uint64_t CalShareeGetUID(const void *a1)
{
  if (!CalEntityIsOfType(a1, 15))
  {
    CalShareeGetUID_cold_1();
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

uint64_t CalShareeCopyUUID(uint64_t a1)
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

CFTypeRef CalDatabaseCopyShareeWithUUID(os_unfair_lock_s *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

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

uint64_t __CalDatabaseCopyShareeWithUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  CStringFromCFString = CalCreateCStringFromCFString(*(a1 + 32));
  v4 = MEMORY[0x1E69E9B38];

  return sqlite3_bind_text(v2, 1, CStringFromCFString, -1, v4);
}

void CalShareeSetDisplayName(uint64_t a1, uint64_t a2)
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

uint64_t CalShareeCopyDisplayName(uint64_t a1)
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

void CalShareeSetAddress(uint64_t a1, const __CFURL *a2)
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

CFURLRef CalShareeCopyAddress(uint64_t a1)
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

void CalShareeSetFirstName(uint64_t a1, uint64_t a2)
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

uint64_t CalShareeCopyFirstName(uint64_t a1)
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

void CalShareeSetLastName(uint64_t a1, uint64_t a2)
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

uint64_t CalShareeCopyLastName(uint64_t a1)
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

void CalShareeSetStatus(uint64_t a1, int a2)
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

uint64_t CalShareeGetStatus(uint64_t a1)
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

void CalShareeSetAccessLevel(uint64_t a1, int a2)
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

uint64_t CalShareeGetAccessLevel(uint64_t a1)
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

void CalShareeSetExternalRepresentation(uint64_t a1, uint64_t a2)
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

uint64_t CalShareeCopyExternalRepresentation(uint64_t a1)
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

CFTypeRef CalShareeCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Owner = _CalShareeGetOwner(a1);
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

void CalShareeSetOwner(uint64_t a1, const void *a2)
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

uint64_t CalDatabaseRemoveShareeChangesInStoreToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
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
  v8[2] = __CalDatabaseRemoveShareeChangesInStoreToIndex_block_invoke;
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

void sub_1DEC71574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveShareeChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  result = _CalDatabaseRemoveShareeChangesInStoreToIndex(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CalDatabaseRemoveShareeChangesInCalendarToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
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
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = _CalShareeCreateChangeHistoryWhereClauseForCalendar(v5, a2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___CalDatabaseRemoveShareeChangesInCalendarToIndex_block_invoke;
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

  v7 = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v5 + 20);
  }

  os_unfair_lock_unlock(v5 + 20);
  CFRelease(v5);
  return v7;
}

void sub_1DEC716F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CalDatabaseRemoveShareeChangesWithIndices(os_unfair_lock_s *a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  os_unfair_lock_lock(a1 + 20);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalDatabaseRemoveShareeChangesWithIndices_block_invoke;
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

void sub_1DEC717F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveShareeChangesWithIndices_block_invoke(void *a1)
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

uint64_t CalDatabaseCopyShareeChangesInStore(os_unfair_lock_s *cf, uint64_t a2, CFMutableDictionaryRef *a3)
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
  v6 = _CalShareeCreateChangeHistoryWhereClauseForStore(v5, a2);
  v7 = _CalDatabaseCopyShareeChangesWithWhereClauseNoLock(v5, v6, a3);
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

CFStringRef _CalShareeCreateChangeHistoryWhereClauseForStore(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"store_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v3, v3, 15, v3);
    CFRelease(v3);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v6);
  return v6;
}

uint64_t _CalDatabaseCopyShareeChangesWithWhereClauseNoLock(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a3)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      return 0xFFFFFFFFLL;
    }

    *a3 = Mutable;
  }

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

uint64_t CalDatabaseCopyShareeChangesInCalendar(os_unfair_lock_s *cf, uint64_t a2, CFMutableDictionaryRef *a3)
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
  v6 = _CalShareeCreateChangeHistoryWhereClauseForCalendar(v5, a2);
  v7 = _CalDatabaseCopyShareeChangesWithWhereClauseNoLock(v5, v6, a3);
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

CFStringRef _CalShareeCreateChangeHistoryWhereClauseForCalendar(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"calendar_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v3, v3, 15, v3);
    CFRelease(v3);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v6);
  return v6;
}

void _CalShareeLoadIdentityProperties(uint64_t a1)
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

      CPRecordInitializeProperty();
      if (v10)
      {

        CFRelease(v10);
      }
    }
  }
}

CFTypeRef _CalShareeLoadStoreId(uint64_t a1, uint64_t a2)
{
  result = _CalShareeGetOwner(a1);
  if (result)
  {
    _CalCalendarGetStoreId(result);
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
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

CFTypeRef _CalShareeLoadCalendarId(uint64_t a1, uint64_t a2)
{
  result = _CalShareeGetOwner(a1);
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

  return result;
}

uint64_t CalAlarmGetGlobalDefaultTimedAlarmOffset(void *a1)
{
  v1 = CalAlarmCopyDefaultTimedAlarmOffsetWithPreferences(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

uint64_t CalAlarmGetGlobalDefaultAllDayAlarmOffset(void *a1)
{
  v1 = CalAlarmCopyDefaultAllDayAlarmOffsetWithPreferences(a1);
  v2 = v1;
  if (v1)
  {
    v3 = [v1 integerValue];
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v3;
}

CFTypeRef CalDatabaseCopyAlarmOccurrencesFromAlarmCache(os_unfair_lock_s *a1)
{
  v54 = *MEMORY[0x1E69E9840];
  cf = 0;
  v47 = 0;
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalDatabaseCopyEventOccurrenceCache(a1);
  _CalEventOccurrenceCacheUpdateForGlobalDefaultAlarmChangesIfNeeded(v2);
  CFRelease(v2);
  RecordStore = _CalDatabaseGetRecordStore(a1);
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
      v8 = CPRecordStoreGetContext();
      if (v8)
      {
        os_unfair_lock_assert_owner(v8 + 20);
      }
    }
  }

  v9 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (v9)
  {
    v10 = v9;
    __CalDatabaseBeginReadTransaction(a1, "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalAlarmOccurrence.m:235");
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v10)
      {
        if (*(*v10 + 104))
        {
          v11 = CPRecordStoreGetContext();
          if (v11)
          {
            os_unfair_lock_assert_owner(v11 + 20);
          }
        }
      }
    }

    v12 = CPSqliteConnectionStatementForSQL();
    *v42 = a1;
    p_cf = &cf;
    v44 = &v47;
    v45 = _CalDatabaseGetRecordStore(a1);
    v13 = _CalDatabaseCopyEventOccurrenceCache(a1);
    TimeZone = _CalEventOccurrenceCacheGetTimeZone(v13);
    v40 = 0;
    v41 = 0;
    _CalAlarmCacheGetCacheRange(v13, &v41, &v40);
    v14 = v41;
    v15 = v40;
    CFRelease(v13);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v12)
      {
        if (*v12)
        {
          v16 = **v12;
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

    v18 = CPSqliteStatementSendResults();
    if (v18 != 101 && cf)
    {
      v19 = v18;
      v20 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v21 = v20;
        v22 = sqlite3_errstr(v19);
        *buf = 67109378;
        v51 = v19;
        v52 = 2082;
        v53 = v22;
        _os_log_impl(&dword_1DEBB1000, v21, OS_LOG_TYPE_ERROR, "Unexpected SQLite result when querying AlarmCache: %d (%{public}s)", buf, 0x12u);
      }

      CFRelease(cf);
      cf = 0;
    }

    [v14 timeIntervalSinceReferenceDate];
    v24 = v23;
    [v15 timeIntervalSinceReferenceDate];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v26 = _CalCopyAbsoluteCalendarItemAlarmsInDateRange(a1, 0, v24, v25);
    v27 = [v26 countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v37;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v37 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v36 + 1) + 8 * i);
          if (_CalAlarmIsDisplayable(v31))
          {
            TriggerDate = _CalAlarmGetTriggerDate(v31);
            v33 = CalAlarmOccurrenceCreate(v31, 0, TriggerDate);
            _CalAlarmOccurrencesInsertResult(v33, &cf, &v47);
            CFRelease(v33);
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v28);
    }

    __CalDatabaseRollbackTransaction(a1, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalAlarmOccurrence.m:282");
  }

  else
  {
    v34 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v42 = 0;
      _os_log_impl(&dword_1DEBB1000, v34, OS_LOG_TYPE_ERROR, "Failed to get DB connection to fetch alarm occurrences", v42, 2u);
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return cf;
}

uint64_t _CopyAlarmOccurrencesFromAlarmCacheResultHandler(uint64_t a1, uint64_t *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = sqlite3_column_int(*(a1 + 8), 1);
  v6 = sqlite3_column_double(*(a1 + 8), 2);
  v7 = sqlite3_column_double(*(a1 + 8), 3);
  EventWithUID = _CalGetEventWithUID(a2[3], v4);
  if (!EventWithUID)
  {
    v13 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = 67109888;
      v20 = v4;
      v21 = 1024;
      v22 = v5;
      v23 = 2048;
      v24 = v6;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Failed to find event for item in AlarmCache. event_id = %d, alarm_id = %d, occurrence_date = %f, fire_date = %f", &v19, 0x22u);
    }

    v14 = *a2;
    v15 = @"AlarmCache insert - missing event";
    goto LABEL_12;
  }

  v9 = EventWithUID;
  v10 = _CalAlarmGetWithUID(a2[3], v5);
  if (!v10)
  {
    v16 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = 67109888;
      v20 = v4;
      v21 = 1024;
      v22 = v5;
      v23 = 2048;
      v24 = v6;
      v25 = 2048;
      v26 = v7;
      _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "Failed to find alarm for item in AlarmCache. event_id = %d, alarm_id = %d, occurrence_date = %f, fire_date = %f", &v19, 0x22u);
    }

    v14 = *a2;
    v15 = @"AlarmCache insert - missing alarm";
LABEL_12:
    _CalDatabaseIntegrityError(v14, v15);
    return 0;
  }

  v11 = v10;
  if (_CalAlarmIsDisplayable(v10))
  {
    if (_CalCalendarItemHasRecurrenceRules(v9))
    {
      v12 = CalEventOccurrenceCreate(v9, a2[4], v6);
    }

    else
    {
      v12 = 0;
    }

    v18 = CalAlarmOccurrenceCreate(v11, v12, v7);
    _CalAlarmOccurrencesInsertResult(v18, a2[1], a2[2]);
    CFRelease(v18);
    if (v12)
    {
      CFRelease(v12);
    }
  }

  return 0;
}

uint64_t CalAlarmOccurrenceCreate(const void *a1, const void *a2, double a3)
{
  pthread_once(&__CalAlarmOccurrenceRegisterOnce, CalAlarmOccurrenceRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = CFRetain(a1);
  *(Instance + 24) = a3;
  if (a2)
  {
    v7 = CFRetain(a2);
  }

  else
  {
    v7 = 0;
  }

  *(Instance + 32) = v7;
  return Instance;
}

void _CalAlarmOccurrencesInsertResult(void *value, const __CFArray **a2, int *a3)
{
  v6 = *a2;
  if (*a2)
  {
    v11.length = *a3;
    v11.location = 0;
    v7 = CFArrayBSearchValues(v6, v11, value, _CompareAlarmOccurrencesByFireDate, 0);
    v8 = *a3;
    if (v7 < v8)
    {
      v8 = v7;
    }

    v9 = v8 & ~(v8 >> 63);
    Mutable = *a2;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v9 = 0;
    *a2 = Mutable;
  }

  CFArrayInsertValueAtIndex(Mutable, v9, value);
  ++*a3;
}

const __CFArray *CalDatabaseCopyAlarmOccurrencesInDateRange(os_unfair_lock_s *a1, const __CFArray *a2, double a3, double a4)
{
  v98[0] = 0;
  v97 = 0;
  v8 = CalTimeZoneCopyCFTimeZone();
  v9 = CalCopyTimeZone();
  CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
  v11 = v10;
  v93 = v9;
  cf = v8;
  CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
  v13 = v12;
  v14 = CalDatabaseGetPreferences(a1);
  GlobalDefaultTimedAlarmOffset = CalAlarmGetGlobalDefaultTimedAlarmOffset(v14);
  v83 = v14;
  GlobalDefaultAllDayAlarmOffset = CalAlarmGetGlobalDefaultAllDayAlarmOffset(v14);
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

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
  {
    if (*(Database + 104))
    {
      v20 = CPRecordStoreGetContext();
      if (v20)
      {
        os_unfair_lock_assert_owner(v20 + 20);
      }
    }
  }

  v21 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (v21)
  {
    v22 = v21;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v21)
      {
        if (*(*v21 + 104))
        {
          v23 = CPRecordStoreGetContext();
          if (v23)
          {
            os_unfair_lock_assert_owner(v23 + 20);
          }
        }
      }
    }

    CPSqliteConnectionBegin();
    v24 = _CalCopyAbsoluteCalendarItemAlarmsInDateRange(a1, a2, a3, a4);
    v25 = _CalCopyRelativeNonRecurringEventAlarmsInDateRange(a1, a2, GlobalDefaultTimedAlarmOffset, GlobalDefaultAllDayAlarmOffset, v22[1], a3, a4, v11, v13);
    theArray = _CalCopyRelativeRecurringEventAlarmsInDateRange(a1, a2, GlobalDefaultTimedAlarmOffset, GlobalDefaultAllDayAlarmOffset, v22[1], a3, a4, v11, v13);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v22)
      {
        if (*(*v22 + 13))
        {
          v26 = CPRecordStoreGetContext();
          if (v26)
          {
            os_unfair_lock_assert_owner(v26 + 20);
          }
        }
      }
    }

    CPSqliteConnectionRollback();
  }

  else
  {
    theArray = 0;
    v25 = 0;
    v24 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  if (v24)
  {
    Count = CFArrayGetCount(v24);
    if (Count >= 1)
    {
      v28 = Count;
      for (i = 0; i != v28; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v24, i);
        os_unfair_lock_lock(a1 + 20);
        if (_CalAlarmIsDisplayable(ValueAtIndex))
        {
          TriggerDate = _CalAlarmGetTriggerDate(ValueAtIndex);
          v32 = CalAlarmOccurrenceCreate(ValueAtIndex, 0, TriggerDate);
          _CalAlarmOccurrencesInsertResult(v32, v98, &v97);
          CFRelease(v32);
        }

        if (CDBLockingAssertionsEnabled == 1)
        {
          os_unfair_lock_assert_owner(a1 + 20);
        }

        os_unfair_lock_unlock(a1 + 20);
      }
    }

    CFRelease(v24);
  }

  if (v25)
  {
    v33 = CFArrayGetCount(v25);
    if (v33 >= 1)
    {
      v34 = v33;
      for (j = 0; j != v34; ++j)
      {
        v36 = CFArrayGetValueAtIndex(v25, j);
        os_unfair_lock_lock(a1 + 20);
        if (_CalAlarmIsDisplayable(v36))
        {
          OwningCalendarItem = _CalAlarmGetOwningCalendarItem(v36);
          EntityType = _CalCalendarItemGetEntityType(OwningCalendarItem);
          if (OwningCalendarItem)
          {
            if (EntityType == 2)
            {
              _CalEventGetStartDate(OwningCalendarItem);
              if (CFStringCompare(v39, @"_float", 0) == kCFCompareEqualTo)
              {
                CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
              }

              valuePtr = _CalAlarmGetTriggerInterval(v36);
              if (!_CalAlarmIsDefaultAlarm(v36) || ((IsAllDay = _CalCalendarItemIsAllDay(OwningCalendarItem), Store = _CalEventGetStore(OwningCalendarItem), !IsAllDay) ? (v42 = _CalStoreCopyDefaultAlarmOffset(Store)) : (v42 = _CalStoreCopyDefaultAllDayAlarmOffset(Store)), (v43 = v42) == 0 ? (!IsAllDay ? (v44 = GlobalDefaultTimedAlarmOffset) : (v44 = GlobalDefaultAllDayAlarmOffset), valuePtr = v44) : (CFNumberGetValue(v42, kCFNumberIntType, &valuePtr), CFRelease(v43), v44 = valuePtr), v44 != -1))
              {
                v45 = _CalEventCopyTravelTime(OwningCalendarItem);
                v95 = 0;
                if (v45)
                {
                  v46 = v45;
                  CFNumberGetValue(v45, kCFNumberIntType, &v95);
                  valuePtr -= v95;
                  CFRelease(v46);
                }

                memset(v94, 0, 24);
                *&v94[3] = valuePtr;
                CalAbsoluteTimeAddGregorianUnits();
                v48 = CalAlarmOccurrenceCreate(v36, 0, v47);
                _CalAlarmOccurrencesInsertResult(v48, v98, &v97);
                CFRelease(v48);
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

    CFRelease(v25);
  }

  v49 = theArray;
  if (theArray)
  {
    v50 = CFArrayGetCount(theArray);
  }

  else
  {
    v50 = 0;
  }

  v51 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:{v93, v83}];
  if (v50 >= 1)
  {
    v52 = 0;
    v85 = v50;
    do
    {
      v53 = CFArrayGetValueAtIndex(v49, v52);
      if (CalAlarmIsDisplayable(v53))
      {
        v54 = CalAlarmCopyOwningCalendarItem(v53);
        if (v54)
        {
          v55 = v54;
          if (CalCalendarItemGetEntityType(v54) != 2)
          {
            goto LABEL_97;
          }

          LODWORD(v94[0]) = CalAlarmGetTriggerInterval(v53);
          if (!CalAlarmIsDefaultAlarm(v53))
          {
            goto LABEL_83;
          }

          v56 = CalCalendarItemIsAllDay(v55);
          v57 = CalEventCopyStore(v55);
          v58 = v57;
          v59 = (v56 ? CalStoreCopyDefaultAllDayAlarmOffset(v57) : CalStoreCopyDefaultAlarmOffset(v57));
          v60 = v59;
          if (v59)
          {
            CFNumberGetValue(v59, kCFNumberIntType, v94);
            CFRelease(v60);
          }

          else
          {
            v61 = v56 ? GlobalDefaultAllDayAlarmOffset : GlobalDefaultTimedAlarmOffset;
            LODWORD(v94[0]) = v61;
          }

          CFRelease(v58);
          if (LODWORD(v94[0]) == -1)
          {
LABEL_97:
            CFRelease(v55);
          }

          else
          {
LABEL_83:
            v62 = CalEventCopyTravelTime(v55);
            valuePtr = 0;
            if (v62)
            {
              v63 = v62;
              CFNumberGetValue(v62, kCFNumberIntType, &valuePtr);
              LODWORD(v94[0]) -= valuePtr;
              CFRelease(v63);
            }

            v64 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3 - SLODWORD(v94[0])];
            v65 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a4 - SLODWORD(v94[0])];
            v66 = CalEventCopyOccurrenceDatesInDateRange(v55, v64, v65, v93);
            if (v66)
            {
              v67 = v66;
              v89 = v65;
              v90 = v64;
              v92 = v55;
              v68 = CFArrayGetCount(v66);
              if (v68 >= 1)
              {
                v69 = v68;
                for (k = 0; k != v69; ++k)
                {
                  v71 = CFArrayGetValueAtIndex(v67, k);
                  v72 = [v71 CalDateByComponentwiseAddingSeconds:SLODWORD(v94[0]) inCalendar:v51];
                  [v72 timeIntervalSinceReferenceDate];
                  if (v73 >= a3 && v73 <= a4)
                  {
                    v75 = v73;
                    [v71 timeIntervalSinceReferenceDate];
                    v77 = CalEventOccurrenceCreate(v92, v93, v76);
                    v78 = v51;
                    v79 = CalAlarmOccurrenceCreate(v53, v77, v75);
                    _CalAlarmOccurrencesInsertResult(v79, v98, &v97);
                    v80 = v79;
                    v51 = v78;
                    CFRelease(v80);
                    if (v77)
                    {
                      CFRelease(v77);
                    }
                  }
                }
              }

              CFRelease(v67);
              v49 = theArray;
              v55 = v92;
              v50 = v85;
              v65 = v89;
              v64 = v90;
            }

            CFRelease(v55);
          }
        }
      }

      ++v52;
    }

    while (v52 != v50);
  }

  if (v49)
  {
    CFRelease(v49);
  }

  CFRelease(cf);
  CFRelease(v93);
  v81 = v98[0];

  return v81;
}

uint64_t CalAlarmOccurrenceRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __CalAlarmOccurrenceTypeID = result;
  return result;
}

void CalAlarmOccurrenceDestroy(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }
}

uint64_t CalAlarmOccurrenceEqual(uint64_t a1, uint64_t a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 != CFGetTypeID(a2))
  {
    return 0;
  }

  result = CFEqual(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return vabdd_f64(*(a1 + 24), *(a2 + 24)) < 2.22044605e-16;
  }

  return result;
}

uint64_t _CompareAlarmOccurrencesByFireDate(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  if (v2 >= v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = -1;
  }

  if (v2 > v3)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void CalAuxDatabaseInitializeTables(uint64_t a1, void *a2)
{
  if ((*(CPRecordStoreGetContext() + 362) & 1) == 0)
  {
    CPRecordStoreCreateTablesForClass();
    CalMigrationCreateIndexes(a2, &kCalAuxDatabaseClass, 0, &kCalAuxDatabaseChangesIndexes);

    CalMigrationCreateTriggers(a2, &kCalAuxDatabaseClass, &kCalAuxDatabaseTriggers);
  }
}

void CalAuxDatabaseMigrateTables(uint64_t a1, void *a2, unsigned int a3)
{
  if ((*(CPRecordStoreGetContext() + 362) & 1) == 0)
  {
    if (a3 > 16021)
    {
      if (a3 <= 0x4651)
      {
        CalMigrateTableFull(a2, &kCalAuxDatabaseClass, 0, &kCalAuxDatabaseUpgradeInfo, &kCalAuxDatabaseChangesUpgradeInfo, 0, &kCalAuxDatabaseChangesIndexes, &kCalAuxDatabaseTriggers, a3);
      }
    }

    else
    {

      CalAuxDatabaseInitializeTables(a1, a2);
    }
  }
}

const void *_CalDatabaseCreateAuxDatabase(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 26);
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

const void *CalDatabaseCreateAuxDatabase(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  AuxDatabase = _CalDatabaseCreateAuxDatabase(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return AuxDatabase;
}

void CalRemoveAuxDatabase(const void *a1)
{
  DatabaseForRecord = CalGetDatabaseForRecord(a1);
  os_unfair_lock_lock(DatabaseForRecord + 20);
  v3 = CalGetDatabaseForRecord(a1);
  _CalDatabaseRemoveEntity(v3, a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(DatabaseForRecord + 20);
  }

  os_unfair_lock_unlock(DatabaseForRecord + 20);
}

uint64_t _CalAuxDatabaseSaveAddedRecords(uint64_t a1, uint64_t a2)
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

uint64_t _CalDatabaseCopyAllAuxDatabases(uint64_t a1)
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

  return CPRecordStoreCopyAllInstancesOfClass();
}

uint64_t CalDatabaseCopyAllAuxDatabases(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalDatabaseCopyAllAuxDatabases(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

uint64_t _CalDatabaseGetAuxDatabaseWithUID(uint64_t a1, uint64_t a2)
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

  return CPRecordStoreGetInstanceOfClassWithUID();
}

const void *CalDatabaseCopyAuxDatabaseWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  AuxDatabaseWithUID = _CalDatabaseGetAuxDatabaseWithUID(a1, a2);
  v5 = AuxDatabaseWithUID;
  if (AuxDatabaseWithUID)
  {
    CFRetain(AuxDatabaseWithUID);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v5;
}

CFTypeRef CalDatabaseCopyAuxDatabaseForPersonaID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  v4 = _CalDatabaseCopyAuxDatabaseForPersonaID(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

CFTypeRef _CalDatabaseCopyAuxDatabaseForPersonaID(uint64_t a1, uint64_t a2)
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

  v5 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (CFArrayGetCount(v5) < 1)
  {
    v8 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
    v8 = CFRetain(ValueAtIndex);
  }

  CFRelease(v6);
  return v8;
}

CFMutableArrayRef _CalAuxDatabaseCopyAccounts(uint64_t a1)
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

CFMutableArrayRef CalAuxDatabaseCopyAccounts(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalAuxDatabaseCopyAccounts(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

const __CFArray *_CalAuxDatabaseAddAccount(uint64_t a1, void *a2)
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

void CalAuxDatabaseAddAccount(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAuxDatabaseAddAccount(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void *_CalAuxDatabaseRemoveAccount(uint64_t a1, void *a2)
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

void CalAuxDatabaseRemoveAccount(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAuxDatabaseRemoveAccount(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalAuxDatabaseSetPath(uint64_t a1, uint64_t a2)
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

void CalAuxDatabaseSetPath(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAuxDatabaseSetPath(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalAuxDatabaseGetPath(uint64_t a1)
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

CFTypeRef CalAuxDatabaseCopyPath(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Path = _CalAuxDatabaseGetPath(a1);
  if (Path)
  {
    v4 = CFRetain(Path);
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

uint64_t CalAuxDatabaseGetUID(uint64_t a1)
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

void CalAuxDatabaseSetPersonaID(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAttachmentFileSetExternalModTag(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalAuxDatabaseCopyPersonaID(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Data = _CalColorGetData(a1);
  if (Data)
  {
    v4 = CFRetain(Data);
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

uint64_t _CalEventActionPrepareForSave(uint64_t a1)
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

uint64_t _CalEventActionPropertyWillChange(uint64_t result, int a2, uint64_t a3)
{
  if (!a2 && a3 == -1)
  {
    v4 = result;
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

  return result;
}

void CalEventActionInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalEventActionClass, &kCalEventActionIndexes, &kCalEventActionChangesIndexes);
}

void CalEventActionMigrateTables(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 > 41)
  {
    if (a3 <= 0x4651)
    {
      CalMigrateTableFull(a2, &kCalEventActionClass, 0, &kCalEventActionUpgradeInfo, &kCalEventActionChangesUpgradeInfo, &kCalEventActionIndexes, &kCalEventActionChangesIndexes, 0, a3);
    }
  }

  else
  {
    CPRecordStoreCreateTablesForClass();

    CalMigrationCreateIndexes(a2, &kCalEventActionClass, &kCalEventActionIndexes, &kCalEventActionChangesIndexes);
  }
}

CFTypeRef _CalEventActionHasValidParent(uint64_t a1)
{
  result = _CalConferenceGetOwner(a1);
  if (result)
  {

    return _CalRecordStillExists(result);
  }

  return result;
}

uint64_t _CalDatabaseRemoveEventActionChangesInStoreToIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = _CalEventActionCreateChangeHistoryWhereClauseForStore(a1, a2);
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

const void *_CalDatabaseCreateEventAction(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 9);
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
  _CalDatabaseAddEntity(a1, v2);
  return v2;
}

const void *CalDatabaseCreateEventAction(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  EventAction = _CalDatabaseCreateEventAction(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return EventAction;
}

void *_CalEventActionRemove(void *a1)
{
  Owner = _CalConferenceGetOwner(a1);
  if (Owner)
  {

    return _CalEventRemoveEventAction(Owner, a1);
  }

  else
  {
    DatabaseForRecord = CalGetDatabaseForRecord(a1);

    return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  }
}

void CalEventActionRemove(void *a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalEventActionRemove(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t CalEventActionGetPropertyIDWithPropertyName(void *key)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = CalEventActionGetPropertyIDWithPropertyName_sPropDict;
  if (!CalEventActionGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalEventActionGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalEventActionGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"externalID";
      v6 = 1;
      v7 = @"owner";
      v8 = 8;
      v9 = @"externalModificationTag";
      v10 = 2;
      v11 = @"externalFolderID";
      v12 = 3;
      v13 = @"externalScheduleID";
      v14 = 4;
      v15 = @"externalRepresentation";
      v16 = 5;
      CalEventActionGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 6);
      for (i = 80; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalEventActionGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalEventActionGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEC74C28(_Unwind_Exception *a1)
{
  for (i = 80; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t _CalInvalidateEventActionsWithOwnerID(uint64_t a1, int a2)
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

uint64_t CalDatabaseCopyEventActionChangesInStore(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
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
  v6 = _CalEventActionCreateChangeHistoryWhereClauseForStore(v5, a2);
  v7 = _CalDatabaseCopyEventActionChangesWithWhereClauseNoLock(v5, v6, a3);
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

CFStringRef _CalEventActionCreateChangeHistoryWhereClauseForStore(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"store_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v3, v3, 9, v3);
    CFRelease(v3);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v6);
  return v6;
}

uint64_t _CalDatabaseCopyEventActionChangesWithWhereClauseNoLock(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3)
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

uint64_t CalDatabaseRemoveEventActionChangesInStoreToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
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
  v8[2] = __CalDatabaseRemoveEventActionChangesInStoreToIndex_block_invoke;
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

void sub_1DEC75258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveEventActionChangesInStoreToIndex_block_invoke(uint64_t a1)
{
  result = _CalDatabaseRemoveEventActionChangesInStoreToIndex(*(a1 + 40), *(a1 + 48), *(a1 + 56));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t CalDatabaseCopyEventActionChangesInCalendar(os_unfair_lock_s *a1, uint64_t a2, CFMutableDictionaryRef *a3)
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
  v6 = _CalEventActionCreateChangeHistoryWhereClauseForCalendar(v5, a2);
  v7 = _CalDatabaseCopyEventActionChangesWithWhereClauseNoLock(v5, v6, a3);
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

CFStringRef _CalEventActionCreateChangeHistoryWhereClauseForCalendar(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  if (a2)
  {
    v3 = _CalDatabaseCopyClientIdentifier(a1);
    ID = CPRecordGetID();
    v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"calendar_id = %d  AND sequence_number > (SELECT latest_consumed_sequence_number from ClientCursor WHERE client_identifier = '%@')  AND sequence_number NOT IN  (SELECT sequence_number FROM ClientSequence WHERE client_identifier = '%@')  AND ROWID NOT IN  (SELECT consumed_change_id FROM ClientCursorConsumed WHERE consumed_entity_class = %d AND client_identifier = '%@')", ID, v3, v3, 9, v3);
    CFRelease(v3);
  }

  _CalDatabaseCreateOrUpdateChangeHistoryWhereClauseForDatabase(a1, &v6);
  return v6;
}

uint64_t CalDatabaseRemoveEventActionChangesInCalendarToIndex(os_unfair_lock_s *a1, uint64_t a2, int a3)
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
  v6 = _CalEventActionCreateChangeHistoryWhereClauseForCalendar(v5, a2);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __CalDatabaseRemoveEventActionChangesInCalendarToIndex_block_invoke;
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

void sub_1DEC7552C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CalDatabaseRemoveEventActionChangesInCalendarToIndex_block_invoke(uint64_t a1)
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

uint64_t _CalEventActionGetWithUID(uint64_t a1, uint64_t a2)
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

const void *CalDatabaseCopyEventActionWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = _CalEventActionGetWithUID(RecordStore, a2);
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

const void *CalDatabaseCopyEventActionWithExternalIDInCalendarOrStore(os_unfair_lock_s *a1, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v4 = CalDatabaseCopyEventActionsWithExternalIDInCalendarOrStore(a1, a2, a3, a4);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (CFArrayGetCount(v4) < 1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
    CFRetain(ValueAtIndex);
  }

  CFRelease(v5);
  return ValueAtIndex;
}

uint64_t CalDatabaseCopyEventActionsWithExternalIDInCalendarOrStore(os_unfair_lock_s *cf, const __CFString *a2, uint64_t a3, uint64_t a4)
{
  v8 = a3;
  if (!a3)
  {
    v8 = a4;
    if (!a4)
    {
      if (cf)
      {
        CFRetain(cf);
        if (!a2)
        {
          goto LABEL_11;
        }

        goto LABEL_5;
      }

      return 0;
    }
  }

  cf = CalCopyDatabaseForRecord(v8);
  if (!cf)
  {
    return 0;
  }

  if (!a2)
  {
LABEL_11:
    CFRelease(cf);
    return 0;
  }

LABEL_5:
  CStringFromCFString = CalCreateCStringFromCFString(a2);
  if (!CStringFromCFString)
  {
    goto LABEL_11;
  }

  v10 = CStringFromCFString;
  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (!SelectPrefix)
  {
    free(v10);
    CFRelease(cf);
    return 0;
  }

  v12 = SelectPrefix;
  CFStringAppend(SelectPrefix, @" JOIN CalendarItem ON event_id = CalendarItem.ROWID JOIN Calendar ON calendar_id = Calendar.ROWID WHERE EventAction.external_id = ? ");
  if (a3)
  {
    v13 = @" AND calendar_id = ?";
  }

  else
  {
    if (!a4)
    {
      goto LABEL_18;
    }

    v13 = @" AND calendar_id IN (SELECT ROWID FROM Calendar WHERE store_id = ?)";
  }

  CFStringAppend(v12, v13);
LABEL_18:
  os_unfair_lock_lock(cf + 20);
  RecordStore = _CalDatabaseGetRecordStore(cf);
  v17 = RecordStore;
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
        v20 = CPRecordStoreGetContext();
        if (v20)
        {
          os_unfair_lock_assert_owner(v20 + 20);
        }
      }
    }
  }

  v21 = CPSqliteDatabaseStatementForReading();
  if (v21)
  {
    v22 = v21;
    sqlite3_bind_text(*(v21 + 8), 1, v10, -1, 0);
    if (a3 || a4)
    {
      v23 = *(v22 + 8);
      ID = CPRecordGetID();
      sqlite3_bind_int(v23, 2, ID);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v17)
      {
        v25 = CPRecordStoreGetContext();
        if (v25)
        {
          os_unfair_lock_assert_owner(v25 + 20);
        }
      }
    }

    v14 = CPRecordStoreProcessStatementWithPropertyIndices();
  }

  else
  {
    v14 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(cf + 20);
  }

  os_unfair_lock_unlock(cf + 20);
  CFRelease(v12);
  free(v10);
  CFRelease(cf);
  return v14;
}

os_unfair_lock_s *CalDatabaseCopyOfAllEventActionsInStore(os_unfair_lock_s *a1, uint64_t a2)
{
  v2 = a1;
  if (a2)
  {
    if (a1)
    {
      v3 = a1 + 20;
      os_unfair_lock_lock(a1 + 20);
      RecordStore = _CalDatabaseGetRecordStore(v2);
      v5 = RecordStore;
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
        v11 = *(v10 + 8);
        ID = CPRecordGetID();
        sqlite3_bind_int(v11, 1, ID);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v5)
          {
            v13 = CPRecordStoreGetContext();
            if (v13)
            {
              os_unfair_lock_assert_owner(v13 + 20);
            }
          }
        }

        v2 = CPRecordStoreProcessStatement();
      }

      else
      {
LABEL_29:
        v2 = 0;
      }

      if (CDBLockingAssertionsEnabled != 1)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }
  }

  else if (a1)
  {
    v3 = a1 + 20;
    os_unfair_lock_lock(a1 + 20);
    v14 = _CalDatabaseGetRecordStore(v2);
    if (CDBLockingAssertionsEnabled == 1 && v14 != 0)
    {
      v16 = CPRecordStoreGetContext();
      if (v16)
      {
        os_unfair_lock_assert_owner(v16 + 20);
      }
    }

    v2 = CPRecordStoreCopyAllInstancesOfClass();
    if ((CDBLockingAssertionsEnabled & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_31:
    os_unfair_lock_assert_owner(v3);
LABEL_32:
    os_unfair_lock_unlock(v3);
  }

  return v2;
}

const void *CalDatabaseCopyEventActionWithFolderIDAndExternalID(os_unfair_lock_s *a1, const __CFString *a2, const __CFString *a3)
{
  v3 = CalDatabaseCopyEventActionsWithFolderIDAndExternalIDsInStore(a1, a2, a3);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (CFArrayGetCount(v3) < 1)
  {
    ValueAtIndex = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v4, 0);
    CFRetain(ValueAtIndex);
  }

  CFRelease(v4);
  return ValueAtIndex;
}

uint64_t CalDatabaseCopyEventActionsWithFolderIDAndExternalIDsInStore(os_unfair_lock_s *a1, const __CFString *a2, const __CFString *a3)
{
  CFRetain(a1);
  v6 = 0;
  if (!(a2 | a3))
  {
    goto LABEL_37;
  }

  SelectPrefix = CPRecordStoreCreateSelectPrefix();
  if (!SelectPrefix)
  {
    v6 = 0;
    goto LABEL_37;
  }

  v8 = SelectPrefix;
  CFStringAppend(SelectPrefix, @" WHERE ");
  if (a2)
  {
    CFStringAppend(v8, @"external_folder_id = ?");
    if (!a3)
    {
      v9 = @";";
      goto LABEL_10;
    }

    CFStringAppend(v8, @" AND ");
  }

  else if (!a3)
  {
    goto LABEL_11;
  }

  v9 = @"Meventaction.external_id = ?;";
LABEL_10:
  CFStringAppend(v8, v9);
LABEL_11:
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v11 = RecordStore;
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
        v15 = CPRecordStoreGetContext();
        if (v15)
        {
          os_unfair_lock_assert_owner(v15 + 20);
        }
      }
    }

    v16 = CPSqliteDatabaseStatementForReading();
    if (v16)
    {
      v17 = v16;
      if (a2)
      {
        CStringFromCFString = CalCreateCStringFromCFString(a2);
        if (a3)
        {
          goto LABEL_25;
        }
      }

      else
      {
        CStringFromCFString = 0;
        if (a3)
        {
LABEL_25:
          v19 = CalCreateCStringFromCFString(a3);
          if (a2)
          {
            goto LABEL_26;
          }

          goto LABEL_40;
        }
      }

      v19 = 0;
      if (a2)
      {
LABEL_26:
        sqlite3_bind_text(*(v17 + 8), 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
        v20 = 2;
        if (!a3)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_40:
      v20 = 1;
      if (!a3)
      {
LABEL_28:
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v11)
          {
            v21 = CPRecordStoreGetContext();
            if (v21)
            {
              os_unfair_lock_assert_owner(v21 + 20);
            }
          }
        }

        v6 = CPRecordStoreProcessStatementWithPropertyIndices();
        goto LABEL_34;
      }

LABEL_27:
      sqlite3_bind_text(*(v17 + 8), v20, v19, -1, MEMORY[0x1E69E9B38]);
      goto LABEL_28;
    }
  }

  v6 = 0;
LABEL_34:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  CFRelease(v8);
LABEL_37:
  CFRelease(a1);
  return v6;
}

uint64_t _CalEventActionGetRecordID(uint64_t a1)
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

uint64_t CalEventActionGetUID(uint64_t a1)
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

void CalEventActionSetExternalID(uint64_t a1, uint64_t a2)
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

uint64_t CalEventActionCopyExternalID(uint64_t a1)
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

void CalEventActionSetExternalModTag(uint64_t a1, uint64_t a2)
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

uint64_t CalEventActionCopyExternalModTag(uint64_t a1)
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

void CalEventActionSetExternalFolderID(uint64_t a1, uint64_t a2)
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

uint64_t CalEventActionCopyExternalFolderID(uint64_t a1)
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

void CalEventActionSetExternalScheduleID(uint64_t a1, uint64_t a2)
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

uint64_t CalEventActionCopyExternalScheduleID(uint64_t a1)
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

void CalEventActionSetExternalRepresentation(uint64_t a1, uint64_t a2)
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

uint64_t CalEventActionCopyExternalRepresentation(uint64_t a1)
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

CFTypeRef CalEventActionCopyOwningEvent(uint64_t a1)
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

uint64_t _CalEventActionLoadStoreId(uint64_t a1, uint64_t a2)
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

uint64_t _CalEventActionLoadCalendarId(uint64_t a1, uint64_t a2)
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
      result = _CalGetEventWithUID(result, v5);
      if (result)
      {
        result = _CalEventGetCalendarId(result);
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

uint64_t CalEventOccurrenceRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __CalEventOccurrenceTypeID = result;
  return result;
}

uint64_t CalEventOccurrenceCreateForInitialOccurrenceWithTimeZone(const void *a1, void *a2)
{
  *&v4 = COERCE_DOUBLE(CalEventCopyStartDate(a1));
  v6 = v5;
  v7 = *&v4;
  v8 = a2;
  if (!v8)
  {
    v8 = CalCopyTimeZone();
  }

  if (v6 && CFStringCompare(v6, @"_float", 0) == kCFCompareEqualTo)
  {
    v9 = CalTimeZoneCopyCFTimeZone();
    CalAbsoluteTimeGetAbsoluteTimeInTimeZone();
    v7 = v10;
    CFRelease(v9);
  }

  v11 = CalEventOccurrenceCreate(a1, v8, v7);
  CalDateTimeRelease();

  return v11;
}

__CFArray *CalCopyEventOccurrencesForEventInDateRange(const void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = CalCopyDatabaseForRecord(a1);
  v11 = CalEventCopyOccurrenceDatesInDateRange(a1, v7, v8, v9);
  if (v11)
  {
    v12 = v11;
    v23 = v10;
    Count = CFArrayGetCount(v11);
    if (Count < 1)
    {
      Mutable = 0;
    }

    else
    {
      v14 = Count;
      Mutable = 0;
      v16 = 0;
      v17 = MEMORY[0x1E695E9C0];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, v16);
        v19 = MEMORY[0x1E12C5EF0](ValueAtIndex);
        v20 = CalEventOccurrenceCreate(a1, v9, v19);
        if (v20)
        {
          v21 = v20;
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(0, 0, v17);
          }

          CFArrayAppendValue(Mutable, v21);
          CFRelease(v21);
        }

        ++v16;
      }

      while (v14 != v16);
    }

    CFRelease(v12);
    v10 = v23;
  }

  else
  {
    Mutable = 0;
  }

  CFRelease(v10);

  return Mutable;
}

uint64_t CalEventOccurrencesExistForEventInDateRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, const void *a7)
{
  v14 = CalCopyDatabaseForRecord(a1);
  os_unfair_lock_lock(v14 + 20);
  v15 = _CalEventOccurrencesExistInDateRange(a1, a2, a3, a4, a5, a6, a7);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v14 + 20);
  }

  os_unfair_lock_unlock(v14 + 20);
  CFRelease(v14);
  return v15;
}

uint64_t CalEventOccurrencesExistWithinTimeInterval(uint64_t a1, const __CFString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const void *a7, double a8)
{
  v16 = CalCopyDatabaseForRecord(a1);
  os_unfair_lock_lock(v16 + 20);
  exist = _CalEventOccurrencesExistWithinTimeInterval(a1, a2, a3, a4, a5, a8, a6, a7);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v16 + 20);
  }

  os_unfair_lock_unlock(v16 + 20);
  CFRelease(v16);
  return exist;
}

uint64_t _CalAuxDatabaseAccountPrepareForSave(uint64_t a1)
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

uint64_t CalAuxDatabaseAccountInitializeTables(uint64_t a1, uint64_t a2)
{
  result = CPRecordStoreGetContext();
  if ((*(result + 362) & 1) == 0)
  {

    return CPRecordStoreCreateTablesForClass();
  }

  return result;
}

uint64_t CalAuxDatabaseAccountMigrateTables(uint64_t a1, uint64_t a2, int a3)
{
  result = CPRecordStoreGetContext();
  if (a3 <= 16026 && (*(result + 362) & 1) == 0)
  {

    return CalAuxDatabaseAccountInitializeTables(a1, a2);
  }

  return result;
}

const void *_CalDatabaseCreateAuxDatabaseAccount(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 27);
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

const void *CalDatabaseCreateAuxDatabaseAccount(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  AuxDatabaseAccount = _CalDatabaseCreateAuxDatabaseAccount(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return AuxDatabaseAccount;
}

void CalRemoveAuxDatabaseAccount(const void *a1)
{
  DatabaseForRecord = CalGetDatabaseForRecord(a1);
  os_unfair_lock_lock(DatabaseForRecord + 20);
  v3 = CalGetDatabaseForRecord(a1);
  _CalDatabaseRemoveEntity(v3, a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(DatabaseForRecord + 20);
  }

  os_unfair_lock_unlock(DatabaseForRecord + 20);
}

CFTypeRef CalDatabaseCopyAuxDatabaseAccountForAccountID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  v4 = _CalDatabaseCopyAuxDatabaseAccountForAccountID(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

CFTypeRef _CalDatabaseCopyAuxDatabaseAccountForAccountID(uint64_t a1, uint64_t a2)
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

  v5 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (CFArrayGetCount(v5) < 1)
  {
    v8 = 0;
  }

  else
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
    v8 = CFRetain(ValueAtIndex);
  }

  CFRelease(v6);
  return v8;
}

CFTypeRef _CalAuxDatabaseAccountGetDatabase(uint64_t a1)
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

CFTypeRef CalAuxDatabaseAccountCopyAuxDatabase(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Database = _CalAuxDatabaseAccountGetDatabase(a1);
  if (Database)
  {
    v4 = CFRetain(Database);
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

CFTypeRef _CalAuxDatabaseAccountHasValidParent(uint64_t a1)
{
  result = _CalAuxDatabaseAccountGetDatabase(a1);
  if (result)
  {

    return _CalRecordStillExists(result);
  }

  return result;
}

uint64_t CalAuxDatabaseAccountGetUID(uint64_t a1)
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

void CalAuxDatabaseAccountSetAccountID(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAuxDatabaseSetPath(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalAuxDatabaseAccountCopyAccountID(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Path = _CalAuxDatabaseGetPath(a1);
  if (Path)
  {
    v4 = CFRetain(Path);
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

uint64_t internalEntityTypeFromExternalType(uint64_t result)
{
  switch(result)
  {
    case 1:
    case 2:
      return result;
    case 3:
    case 9:
    case 12:
    case 13:
    case 21:
    case 22:
    case 25:
    case 26:
    case 27:
    case 28:
      goto LABEL_4;
    case 4:
      result = 3;
      break;
    case 5:
      result = 4;
      break;
    case 6:
      result = 5;
      break;
    case 7:
      result = 6;
      break;
    case 8:
      result = 7;
      break;
    case 10:
      result = 8;
      break;
    case 11:
      result = 9;
      break;
    case 14:
      result = 10;
      break;
    case 15:
      result = 11;
      break;
    case 16:
      result = 12;
      break;
    case 17:
      result = 13;
      break;
    case 18:
      result = 14;
      break;
    case 19:
      result = 15;
      break;
    case 20:
      result = 16;
      break;
    case 23:
      result = 17;
      break;
    case 24:
      result = 18;
      break;
    case 29:
      result = 20;
      break;
    default:
      if (result == 102)
      {
        result = 19;
      }

      else
      {
LABEL_4:
        result = 0;
      }

      break;
  }

  return result;
}

void sub_1DEC785C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v27 - 152), 8);
  _Unwind_Resume(a1);
}

void EntityDict_set(__CFDictionary **a1, unsigned int a2, int a3, uint64_t a4, int a5)
{
  v5 = *a4;
  if ((*a4 & 0x80000000) != 0)
  {
    v13 = *(a4 + 8);
    if (a5)
    {
      v14 = (a2 | 0x20);
    }

    else
    {
      v14 = a2;
    }

    v15 = *(a4 + 4);
    if (v15 == -1)
    {

      CFArrayAppendValue(v13, v14);
    }

    else
    {

      CFArraySetValueAtIndex(v13, v15, v14);
    }
  }

  else
  {
    v8 = *(a4 + 4);
    if (v8 < 0)
    {
      if (a5)
      {
        v16 = (a2 | 0x20);
      }

      else
      {
        v16 = a2;
      }

      v17 = *(a4 + 16);
      if (v17 > 4)
      {
        Mutable = a1[1];
        if (Mutable)
        {
          v12 = CFArrayGetCount(a1[1]) | 0x80000000;
        }

        else
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
          a1[1] = Mutable;
          v12 = 0x80000000;
        }

        v19 = CFArrayCreateMutable(0, 6, 0);
        do
        {
          CFArrayAppendValue(v19, (v5 & 0x3F));
          v20 = v5 > 0x3F;
          v5 >>= 6;
        }

        while (v20);
        CFArrayAppendValue(v19, v16);
        CFArrayAppendValue(Mutable, v19);
        CFRelease(v19);
      }

      else
      {
        v12 = (v16 << (6 * v17)) | v5;
      }
    }

    else
    {
      v9 = 32 << (6 * v8);
      v10 = v5 & ~v9;
      v11 = v9 | v5;
      if (a5)
      {
        v12 = v11;
      }

      else
      {
        v12 = v10;
      }
    }

    v21 = *a1;

    CFDictionarySetValue(v21, a3, v12);
  }
}

__CFSet *CalDatabaseCreateRecordIDSetFromRecordData(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];
  Mutable = CFSetCreateMutable(0, v3 >> 3, MEMORY[0x1E695E9F8]);
  if ((v3 >> 3) >= 1)
  {
    v5 = (v3 >> 3) & 0x7FFFFFFF;
    v6 = (v2 + 4);
    do
    {
      v7 = CalRecordIDCreate(*(v6 - 1), *v6);
      CFSetAddValue(Mutable, v7);
      CFRelease(v7);
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return Mutable;
}

void CalDatabaseCreateRecordIDSetsFromRecordData(void *a1, unint64_t a2, __CFSet **a3, __CFSet **a4)
{
  v20 = a1;
  v7 = v20;
  v8 = [v20 bytes];
  v9 = [v20 length] >> 3;
  Mutable = CFSetCreateMutable(0, a2, MEMORY[0x1E695E9F8]);
  if (a2)
  {
    v11 = (v8 + 4);
    v12 = a2;
    do
    {
      v13 = CalRecordIDCreate(*(v11 - 1), *v11);
      CFSetAddValue(Mutable, v13);
      CFRelease(v13);
      v11 += 2;
      --v12;
    }

    while (v12);
  }

  v14 = CFSetCreateMutable(0, v9 - a2, MEMORY[0x1E695E9F8]);
  v15 = v9 - a2;
  if (v9 > a2)
  {
    v16 = (v8 + 8 * a2 + 4);
    do
    {
      v17 = CalRecordIDCreate(*(v16 - 1), *v16);
      CFSetAddValue(v14, v17);
      CFRelease(v17);
      v16 += 2;
      --v15;
    }

    while (v15);
  }

  if (a3)
  {
    v18 = Mutable;
    *a3 = Mutable;
  }

  CFRelease(Mutable);
  if (a4)
  {
    v19 = v14;
    *a4 = v14;
  }

  CFRelease(v14);
}

void CalDatabaseAddChangesToArray(CFTypeRef *a1, const __CFArray *a2, _BYTE *a3)
{
  if ((*a3 & 1) == 0)
  {
    v6 = *a1;
    if (v6)
    {
      Count = CFArrayGetCount(v6);
    }

    else
    {
      Count = 0;
    }

    v8 = CFArrayGetCount(a2);
    if (v8 + Count >= 513)
    {
      *a3 = 1;
      if (*a1)
      {
        CFRelease(*a1);
        *a1 = 0;
      }

      goto LABEL_12;
    }

    v9.length = v8;
    v10 = *a1;
    if (!*a1)
    {
LABEL_12:
      *a1 = CFArrayCreateMutableCopy(0, 0, a2);
      return;
    }

    v9.location = 0;

    CFArrayAppendArray(v10, a2, v9);
  }
}

void CalDatabaseAddChangeToArray(CFTypeRef *a1, const void *a2, _BYTE *a3)
{
  if (*a3)
  {
    return;
  }

  v6 = *a1;
  if (!v6)
  {
    goto LABEL_7;
  }

  if (CFArrayGetCount(v6) >= 512)
  {
    *a3 = 1;
    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    goto LABEL_7;
  }

  Mutable = *a1;
  if (!*a1)
  {
LABEL_7:
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *a1 = Mutable;
  }

  CFArrayAppendValue(Mutable, a2);
}

CFIndex _EntityDict_enumerate(uint64_t a1, unsigned int a2, void *a3)
{
  v4 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(*a3 + 8), a2 & 0x7FFFFFFF);
    result = CFArrayGetCount(ValueAtIndex);
    if (result >= 1)
    {
      v9 = result;
      for (i = 0; i != v9; ++i)
      {
        v11 = CFArrayGetValueAtIndex(ValueAtIndex, i);
        result = (*(a3[1] + 16))(a3[1], v11 & 0x1F, a1, (v11 >> 5) & 1);
      }
    }
  }

  else
  {
    do
    {
      result = (*(a3[1] + 16))();
      v7 = v4 > 0x3F;
      v4 >>= 6;
    }

    while (v7);
  }

  return result;
}

void _CalImagePrepareForSave(uint64_t a1)
{
  if (!_CalImageGetStoreID(a1))
  {
    v1 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v2 = 0;
      _os_log_impl(&dword_1DEBB1000, v1, OS_LOG_TYPE_ERROR, "Attempting to save an image that is not in any store", v2, 2u);
    }
  }
}

void CalImageInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();
  CalMigrationCreateIndexes(a2, &kCalImageClass, &kCalImageIndexes, 0);

  CalMigrationCreateTriggers(a2, &kCalImageClass, &kCalImageTriggers);
}

void CalImageMigrateTables(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 17001)
  {
    CalImageInitializeTables(a1, a2);
  }
}

uint64_t CalImageGetPropertyIDWithPropertyName(void *key)
{
  if (CalImageGetPropertyIDWithPropertyName_onceToken != -1)
  {
    CalImageGetPropertyIDWithPropertyName_cold_1();
  }

  value = 0;
  if (CFDictionaryGetValueIfPresent(CalImageGetPropertyIDWithPropertyName_sPropDict, key, &value))
  {
    return value;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void __CalImageGetPropertyIDWithPropertyName_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = @"colorData";
  v2 = 3;
  v3 = @"identifier";
  v4 = 4;
  v5 = @"name";
  v6 = 2;
  v7 = @"type";
  v8 = 1;
  v9 = @"source";
  v10 = 7;
  CalImageGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&v1, 5);
  for (i = 64; i != -16; i -= 16)
  {
  }
}

void sub_1DEC790CC(_Unwind_Exception *a1)
{
  for (i = 64; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

const void *_CalDatabaseCreateImage(uint64_t a1)
{
  v2 = CPRecordCreate();
  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 28);
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

const void *CalDatabaseCreateImage(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  Image = _CalDatabaseCreateImage(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return Image;
}

uint64_t _CalRemoveImage(const void *a1)
{
  DatabaseForRecord = CalGetDatabaseForRecord(a1);

  return _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
}

void CalRemoveImage(const void *a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  DatabaseForRecord = CalGetDatabaseForRecord(a1);
  _CalDatabaseRemoveEntity(DatabaseForRecord, a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalImageHasValidParent(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = _CalColorCopyEvents(a1);
  v3 = [(__CFArray *)v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if (_CalCalendarItemHasValidParent(*(*(&v16 + 1) + 8 * i)))
        {
          v8 = 1;
          v7 = v2;
          goto LABEL_21;
        }
      }

      v4 = [(__CFArray *)v2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = _CalImageCopyCalendars(a1);
  v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v8)
  {
    v9 = *v13;
    while (2)
    {
      for (j = 0; j != v8; ++j)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        if (_CalCalendarHasValidParent(*(*(&v12 + 1) + 8 * j)))
        {
          v8 = 1;
          goto LABEL_20;
        }
      }

      v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v12 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_20:

LABEL_21:
  return v8;
}

CFMutableArrayRef _CalImageCopyCalendars(uint64_t a1)
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

BOOL _CalImageIsUnused(uint64_t a1)
{
  v2 = _CalColorCopyEvents(a1);
  if ([(__CFArray *)v2 count])
  {
    v3 = 0;
  }

  else
  {
    v4 = _CalImageCopyCalendars(a1);
    v3 = [(__CFArray *)v4 count]== 0;
  }

  return v3;
}

uint64_t _CalImageSaveAddedRecords(uint64_t a1, uint64_t a2)
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

uint64_t _CalImageGetWithUID(uint64_t a1, uint64_t a2)
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

const void *CalDatabaseCopyImageWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = _CalImageGetWithUID(RecordStore, a2);
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

void *_CalDatabaseGetImageWithIdentifierInStore(uint64_t a1, uint64_t a2)
{
  DatabaseForRecord = CalGetDatabaseForRecord(a1);
  ID = CPRecordGetID();

  return _CalDatabaseGetImageWithIdentifierInStoreID(DatabaseForRecord, ID, a2);
}

void *_CalDatabaseGetImageWithIdentifierInStoreID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = RecordStore;
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  RowidForRecordID = CPRecordStoreGetRowidForRecordID();
  if (CDBLockingAssertionsEnabled == 1 && v5 != 0)
  {
    v10 = CPRecordStoreGetContext();
    if (v10)
    {
      os_unfair_lock_assert_owner(v10 + 20);
    }
  }

  v14 = MEMORY[0x1E69E9820];
  v11 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
  v12 = [v11 firstObject];

  return v12;
}

CFTypeRef CalDatabaseCopyImageWithIdentifierInStore(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  ImageWithIdentifierInStore = _CalDatabaseGetImageWithIdentifierInStore(a1, a2);
  if (ImageWithIdentifierInStore)
  {
    v6 = CFRetain(ImageWithIdentifierInStore);
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

CFMutableArrayRef CalImageCopyEvents(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalColorCopyEvents(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void CalImageAddEvent(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalColorAddEvent(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalImageRemoveEvent(uint64_t a1, void *a2)
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
    CalToManyRelationRemoveObject(result, a2);
    result = _CalImageIsUnused(a1);
    if (result)
    {
      Store = CPRecordGetStore();
      if (CDBLockingAssertionsEnabled == 1 && Store != 0)
      {
        v8 = CPRecordStoreGetContext();
        if (v8)
        {
          os_unfair_lock_assert_owner(v8 + 20);
        }
      }

      return CPRecordStoreRemoveRecord();
    }
  }

  return result;
}

void CalImageRemoveEvent(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalImageRemoveEvent(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFMutableArrayRef CalImageCopyCalendars(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalImageCopyCalendars(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

void *_CalImageAddCalendar(uint64_t a1, void *a2)
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
    CalToManyRelationAddObject(result, a2);
    Store = CPRecordGetStore();
    if (CDBLockingAssertionsEnabled == 1 && Store != 0)
    {
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }

    return CPRecordStoreAddRecord();
  }

  return result;
}

void CalImageAddCalendar(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalImageAddCalendar(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalImageRemoveCalendar(uint64_t a1, void *a2)
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
    CalToManyRelationRemoveObject(result, a2);
    result = _CalImageIsUnused(a1);
    if (result)
    {
      Store = CPRecordGetStore();
      if (CDBLockingAssertionsEnabled == 1 && Store != 0)
      {
        v8 = CPRecordStoreGetContext();
        if (v8)
        {
          os_unfair_lock_assert_owner(v8 + 20);
        }
      }

      return CPRecordStoreRemoveRecord();
    }
  }

  return result;
}

void CalImageRemoveCalendar(uint64_t a1, void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalImageRemoveCalendar(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalImageGetRecordID(uint64_t a1)
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

uint64_t CalImageGetUID(uint64_t a1)
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

uint64_t _CalImageGetStore(uint64_t a1)
{
  StoreID = _CalImageGetStoreID(a1);
  if (StoreID < 1)
  {
    return 0;
  }

  v2 = StoreID;
  Store = CPRecordGetStore();

  return _CalGetStoreWithUID(Store, v2);
}

uint64_t _CalImageGetStoreID(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
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
  if (Property <= 0)
  {
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = _CalColorCopyEvents(a1);
    v5 = [(__CFArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          Property = _CalCalendarItemGetStoreId(*(*(&v20 + 1) + 8 * i));
          if (Property > 0)
          {
            v9 = v4;
LABEL_29:

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

            CPRecordSetProperty();
            goto LABEL_35;
          }
        }

        v6 = [(__CFArray *)v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      if (Property)
      {
        goto LABEL_35;
      }
    }

    else
    {
    }

    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = _CalImageCopyCalendars(a1);
    v10 = [(__CFArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      while (2)
      {
        for (j = 0; j != v11; ++j)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          Property = _CalCalendarGetStoreId(*(*(&v16 + 1) + 8 * j));
          if (Property > 0)
          {

            goto LABEL_29;
          }
        }

        v11 = [(__CFArray *)v9 countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      Property = 0;
    }

LABEL_35:
  }

  return Property;
}

CFTypeRef CalImageCopyStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Store = _CalImageGetStore(a1);
  if (Store)
  {
    v4 = CFRetain(Store);
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

void CalImageSetType(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalAttachmentFileSetExternalModTag(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

uint64_t _CalImageGetType(uint64_t a1)
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

uint64_t CalImageGetType(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Type = _CalImageGetType(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Type;
}

uint64_t _CalImageSetName(uint64_t a1, uint64_t a2)
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

void CalImageSetName(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalImageSetName(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalImageCopyName(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  ProviderIdentifier = _CalColorGetProviderIdentifier(a1);
  if (ProviderIdentifier)
  {
    v4 = CFRetain(ProviderIdentifier);
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

void CalImageSetColor(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalErrorSetErrorType(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

const void *CalImageCopyColor(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Description = _CalCalendarItemGetDescription(a1);
  v4 = Description;
  if (Description)
  {
    CFRetain(Description);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

void CalImageSetIdentifier(uint64_t a1, uint64_t a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalErrorSetErrorCode(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

const void *CalImageCopyIdentifier(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  ExternalIdentifier = _CalColorGetExternalIdentifier(a1);
  v4 = ExternalIdentifier;
  if (ExternalIdentifier)
  {
    CFRetain(ExternalIdentifier);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalSuggestedEventInfoPrepareForSave(uint64_t a1)
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

void CalSuggestedEventInfoInitializeTables(uint64_t a1, void *a2)
{
  CPRecordStoreCreateTablesForClass();

  CalMigrationCreateIndexes(a2, &kCalSuggestedEventInfoClass, &kCalSuggestedEventInfoIndexes, 0);
}

void CalSuggestedEventInfoMigrateTables(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 > 142)
  {
    if (a3 > 0x32D6)
    {
      return;
    }
  }

  else
  {
    CPRecordStoreCreateTablesForClass();
    CalMigrationCreateIndexes(a2, &kCalSuggestedEventInfoClass, &kCalSuggestedEventInfoIndexes, 0);
  }

  CalMigrateTableFull(a2, &kCalSuggestedEventInfoClass, 0, &kCalSuggestedEventInfoUpgradeInfo, 0, &kCalSuggestedEventInfoIndexes, 0, 0, a3);
}

const void *_CalDatabaseCreateSuggestedEventInfoWithKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CPRecordCreate();
  v7 = v6;
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
  if (CDBLockingAssertionsEnabled == 1 && v7 != 0)
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
    if (CDBLockingAssertionsEnabled == 1 && v7 != 0)
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
    if (CDBLockingAssertionsEnabled == 1 && v7 != 0)
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

  TemporaryRecordIDForEntity = _CalDatbaseCreateTemporaryRecordIDForEntity(a1, 20);
  if (CDBLockingAssertionsEnabled == 1 && v7 != 0)
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

  CPRecordInitializeProperty();
  CFRelease(TemporaryRecordIDForEntity);
  _CalDatabaseAddEntity(a1, v7);
  return v7;
}

const void *CalDatabaseCreateSuggestedEventInfoWithKeys(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 20);
  SuggestedEventInfoWithKeys = _CalDatabaseCreateSuggestedEventInfoWithKeys(a1, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return SuggestedEventInfoWithKeys;
}

uint64_t _CalRemoveSuggestedEventInfo(const void *a1)
{
  Owner = _CalSuggestedEventInfoGetOwner(a1);
  if (Owner)
  {
    _CalEventSetSuggestedEventInfo(Owner, 0);
  }

  result = CPRecordGetStore();
  if (result)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      _CalDatabaseRemoveEntity(Context, a1);
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

CFTypeRef _CalSuggestedEventInfoGetOwner(uint64_t a1)
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

void *_CalEventSetSuggestedEventInfo(uint64_t a1, const void *a2)
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

void CalRemoveSuggestedEventInfo(const void *a1)
{
  v2 = CalSuggestedEventInfoCopyOwner(a1);
  if (v2)
  {
    v3 = v2;
    CalEventSetSuggestedEventInfo(v2, 0);
    CFRelease(v3);
  }

  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (CPRecordGetStore())
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      _CalDatabaseRemoveEntity(Context, a1);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      v6 = CPRecordStoreGetContext();
      if (v6)
      {
        os_unfair_lock_assert_owner(v6 + 20);
      }
    }

    CPRecordStoreRemoveRecord();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

CFTypeRef CalSuggestedEventInfoCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Owner = _CalSuggestedEventInfoGetOwner(a1);
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

void CalEventSetSuggestedEventInfo(uint64_t a1, const void *a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalEventSetSuggestedEventInfo(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

void CalSuggestedEventInfoSetOwner(uint64_t a1, const void *a2)
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

uint64_t CalSuggestedEventInfoCopyOpaqueKey(uint64_t a1)
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

void CalSuggestedEventInfoSetOpaqueKey(uint64_t a1, uint64_t a2)
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

uint64_t CalSuggestedEventInfoCopyUniqueKey(uint64_t a1)
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

void CalSuggestedEventInfoSetUniqueKey(uint64_t a1, uint64_t a2)
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

uint64_t _CalSuggestedEventInfoGetChangedFields(uint64_t a1)
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

uint64_t CalSuggestedEventInfoGetChangedFields(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  ChangedFields = _CalSuggestedEventInfoGetChangedFields(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return ChangedFields;
}

void CalSuggestedEventInfoSetChangedFields(uint64_t a1, unsigned int a2)
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

BOOL CalSuggestedEventInfoGetChangesAcknowledged(uint64_t a1)
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

void CalSuggestedEventInfoSetChangesAcknowledged(uint64_t a1, unsigned int a2)
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

uint64_t CalSuggestedEventInfoGetTimestamp(uint64_t a1)
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

void CalSuggestedEventInfoSetTimestamp(uint64_t a1, uint64_t a2)
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

uint64_t CalSuggestedEventInfoCopyExtractionGroupIdentifier(uint64_t a1)
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

void CalSuggestedEventInfoSetExtractionGroupIdentifier(uint64_t a1, uint64_t a2)
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

CFTypeRef _CalEventGetSuggestedEventInfo(uint64_t a1)
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

CFTypeRef CalEventCopySuggestedEventInfo(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  SuggestedEventInfo = _CalEventGetSuggestedEventInfo(a1);
  v4 = SuggestedEventInfo;
  if (SuggestedEventInfo)
  {
    CFRetain(SuggestedEventInfo);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalSuggestedEventInfoGetWithUID(uint64_t a1, uint64_t a2)
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

const void *CalDatabaseCopySuggestedEventInfoWithUID(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v5 = _CalSuggestedEventInfoGetWithUID(RecordStore, a2);
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

uint64_t CalSuggestedEventInfoGetUID(uint64_t a1)
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

uint64_t CalSuggestedEventInfoGetPropertyIDWithPropertyName(void *key)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = CalSuggestedEventInfoGetPropertyIDWithPropertyName_sPropDict;
  if (!CalSuggestedEventInfoGetPropertyIDWithPropertyName_sPropDict)
  {
    pthread_mutex_lock(&CalSuggestedEventInfoGetPropertyIDWithPropertyName_sPropDictLock);
    if (!CalSuggestedEventInfoGetPropertyIDWithPropertyName_sPropDict)
    {
      value = @"owner";
      v6 = 7;
      v7 = @"opaqueKey";
      v8 = 1;
      v9 = @"uniqueKey";
      v10 = 2;
      v11 = @"changedFields";
      v12 = 3;
      v13 = @"changesAcknowledged";
      v14 = 4;
      v15 = @"timestampAsDate";
      v16 = 5;
      v17 = @"extractionGroupIdentifier";
      v18 = 6;
      CalSuggestedEventInfoGetPropertyIDWithPropertyName_sPropDict = _CalDBCreatePropertyMap(&value, 7);
      for (i = 96; i != -16; i -= 16)
      {
      }
    }

    pthread_mutex_unlock(&CalSuggestedEventInfoGetPropertyIDWithPropertyName_sPropDictLock);
    v2 = CalSuggestedEventInfoGetPropertyIDWithPropertyName_sPropDict;
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

void sub_1DEC7B918(_Unwind_Exception *a1)
{
  for (i = 96; i != -16; i -= 16)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t _CalSuggestedEventInfoGetRecordID(uint64_t a1)
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

CFTypeRef _CalSuggestedEventInfoHasValidParent(uint64_t a1)
{
  result = _CalSuggestedEventInfoGetOwner(a1);
  if (result)
  {

    return _CalRecordStillExists(result);
  }

  return result;
}

void _CalSuggestedEventInfoInsertAndUpdateNotificationsForEvent(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  SuggestedEventInfo = _CalEventGetSuggestedEventInfo(a1);
  if (SuggestedEventInfo)
  {

    _CalSuggestedEventInfoInsertAndUpdateNotificationsForInfo(SuggestedEventInfo);
  }

  else
  {
    v2 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315138;
      v4 = "_CalSuggestedEventInfoInsertAndUpdateNotificationsForEvent";
      _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_ERROR, "%s called on an an event with no suggested event info (probably not a suggested event)", &v3, 0xCu);
    }
  }
}

void _CalSuggestedEventInfoInsertAndUpdateNotificationsForInfo(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  if (CPRecordGetStore())
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      v3 = Context;
      OwnerDirectlyThroughOwnerId = _CalSuggestedEventInfoGetOwnerDirectlyThroughOwnerId(a1);
      _CalSuggestedEventInfoRemoveNotificationsForInfo(a1);
      Calendar = _CalCalendarItemGetCalendar(OwnerDirectlyThroughOwnerId);
      if (!Calendar || !_CalCalendarIsNaturalLanguageSuggestedEventsCalendar(Calendar))
      {
        _CalDatabaseGetSuggestionsCalendar(v3);
        v24 = _CalCalendarItemGetCalendar(OwnerDirectlyThroughOwnerId);
        ChangedFields = _CalSuggestedEventInfoGetChangedFields(a1);
        if (ChangedFields)
        {
          v7 = 1;
        }

        else if ((ChangedFields & 2) != 0)
        {
          v7 = 2;
        }

        else if ((ChangedFields & 4) != 0)
        {
          v7 = 4;
        }

        else
        {
          v7 = ChangedFields & 8;
        }

        Status = _CalCalendarItemGetStatus(OwnerDirectlyThroughOwnerId);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (OwnerDirectlyThroughOwnerId)
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

        v10 = CPRecordCopyProperty();
        v25 = 0;
        v11 = [MEMORY[0x1E6993068] unarchiveDictionaryFromData:v10 error:&v25];
        v12 = v25;
        if (v12)
        {
          v13 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v12;
            _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Error unarchiving structured data. Error: %@", buf, 0xCu);
          }
        }

        v14 = [v11 objectForKey:{*MEMORY[0x1E6993160], v24}];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 BOOLValue] ^ 1;
        }

        else
        {
          v17 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            v18 = v17;
            UniqueIdentifier = _CalEventGetUniqueIdentifier(OwnerDirectlyThroughOwnerId);
            *buf = 138543362;
            v27 = UniqueIdentifier;
            _os_log_impl(&dword_1DEBB1000, v18, OS_LOG_TYPE_ERROR, "Event is missing value for key to determine if suggested event is eligible for notification, event unique identifier = %{public}@", buf, 0xCu);
          }

          v16 = 1;
        }

        ID = CPRecordGetID();
        if (ID == CPRecordGetID())
        {
          if (Status == 3)
          {
LABEL_38:

            return;
          }

          v21 = 0;
          v22 = 1;
        }

        else
        {
          if (Status == 3)
          {
            v22 = 3;
          }

          else
          {
            v22 = 2 * (v7 != 0);
          }

          if (Status == 3)
          {
            v21 = 0;
          }

          else
          {
            v21 = v7;
          }

          if (!v7 && Status != 3)
          {
            goto LABEL_38;
          }
        }

        inserted = _CalDatabaseInsertSuggestionNotificationOnCalendarItemWithTypeAndChanges(v3, OwnerDirectlyThroughOwnerId, v22, v21, v16);
        if (inserted)
        {
          CFRelease(inserted);
        }

        goto LABEL_38;
      }
    }
  }
}

uint64_t _CalSuggestedEventInfoGetOwnerDirectlyThroughOwnerId(uint64_t a1)
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
  DatabaseForRecord = CalGetDatabaseForRecord(a1);
  RecordStore = _CalDatabaseGetRecordStore(DatabaseForRecord);

  return _CalGetCalendarItemWithRowID(RecordStore, Property);
}

void _CalSuggestedEventInfoRemoveNotificationsForInfo(uint64_t a1)
{
  OwnerDirectlyThroughOwnerId = _CalSuggestedEventInfoGetOwnerDirectlyThroughOwnerId(a1);
  v2 = _CalCalendarItemCopyRelatedResourceChanges(OwnerDirectlyThroughOwnerId);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v4 = Mutable;
  if (!v2 || !Mutable)
  {
    goto LABEL_9;
  }

  if (CFArrayGetCount(v2) >= 1)
  {
    v5 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
      v7 = _CalResourceChangeGetNotification(ValueAtIndex);
      if (v7)
      {
        v8 = v7;
        if (_CalNotificationGetEntityType(v7) == 19)
        {
          CFArrayAppendValue(v4, v8);
          _CalResourceChangeSetCalendarItem(ValueAtIndex, 0);
        }
      }

      ++v5;
    }

    while (CFArrayGetCount(v2) > v5);
LABEL_9:
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  CFRelease(v2);
LABEL_11:
  if (v4)
  {
    if (CFArrayGetCount(v4) >= 1)
    {
      v9 = 0;
      do
      {
        v10 = CFArrayGetValueAtIndex(v4, v9);
        _CalResourceChangeNotificationRemoveAllChanges(v10);
        _CalRemoveNotification(v10);
        ++v9;
      }

      while (CFArrayGetCount(v4) > v9);
    }

    CFRelease(v4);
  }
}

uint64_t CalLocationUpdateFromICSComponent(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a3 && a4)
  {
    v8 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = a4;
      _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_DEBUG, "includeLocationProperty should not both be true for property %zd.", buf, 0xCu);
    }

    a3 = 0;
  }

  else if (!a4)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (a4 == 2)
    {
      v9 = [v7 x_apple_end_location];
LABEL_16:
      v15 = v9;
      v16 = [v7 location];
      if (v15)
      {
        v17 = [v15 title];
        v18 = [v15 address];
        v19 = [MEMORY[0x1E6992FD8] fullDisplayStringWithTitle:v17 address:v18];

        if (!a3)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v19 = 0;
        if (!a3)
        {
          goto LABEL_21;
        }
      }

      if (([v16 isEqual:v19] & 1) == 0)
      {

        goto LABEL_28;
      }

LABEL_21:
      if (v15)
      {
        v20 = [v15 title];
        CalLocationSetTitle(a1, v20);

        v21 = [v15 address];
        CalLocationSetAddress(a1, v21);

        v22 = [v15 routing];
        CalLocationSetRouting(a1, v22);

        v23 = [v15 value];
        v24 = [v23 scheme];
        v25 = [v24 lowercaseString];
        v26 = [v25 isEqualToString:@"geo"];

        v54 = v19;
        if (v26)
        {
          v27 = [v23 absoluteString];
          v28 = [v27 substringFromIndex:4];
          v29 = [v28 rangeOfString:@";"];
          if (v30)
          {
            v31 = [v28 substringToIndex:v29];

            v28 = v31;
          }

          v32 = [v28 componentsSeparatedByString:{@", "}];
          if ([v32 count] == 2)
          {
            v33 = [v32 objectAtIndex:0];
            [v33 doubleValue];
            v35 = v34;

            v36 = [v32 objectAtIndex:1];
            [v36 doubleValue];
            v38 = v37;

            *buf = v35;
            *&buf[8] = v38;
            CalLocationSetCoordinates(a1, buf);
          }

          else
          {
            v40 = CDBiCalendarConversionHandle;
            if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              *&buf[4] = v28;
              _os_log_impl(&dword_1DEBB1000, v40, OS_LOG_TYPE_DEBUG, "Ignoring invalid coordinates: %@", buf, 0xCu);
            }
          }
        }

        else
        {
          v39 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v23;
            _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_DEBUG, "Ignoring unexpected location URL scheme: %@.", buf, 0xCu);
          }
        }

        v41 = [v15 parameterValueForName:@"X-APPLE-REFERENCEFRAME"];
        v42 = v41;
        if (v41)
        {
          v43 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v41, "integerValue")}];
        }

        else
        {
          v43 = 0;
        }

        v52 = v23;
        CalLocationSetReferenceFrame(a1, v43);
        v44 = [v15 parameterValueForName:@"X-APPLE-ABUID"];
        if (!v44)
        {
          v44 = [v15 parameterValueForName:{@"X-Apple-ABUID", v23}];
        }

        CalLocationSetAddressBookEntityID(a1, v44);
        v45 = CalLocationCopyMapKitHandle(a1);
        v46 = [v15 mapKitHandle];
        v47 = v46;
        if (v46 != v45 && ([v46 isEqualToData:v45] & 1) == 0)
        {
          CalLocationSetMapKitHandle(a1, v47);
        }

        v48 = [v15 parameterValueForName:{@"X-APPLE-RADIUS", v52}];
        if (v48 || ([v15 parameterValueForName:@"X-Apple-Radius"], (v48 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v49 = v48;
          v50 = MEMORY[0x1E696AD98];
          [v48 doubleValue];
          CalLocationSetRadius(a1, [v50 numberWithDouble:?]);
        }

        else
        {
          CalLocationSetRadius(a1, 0);
        }

        v14 = 1;
        v19 = v54;
        goto LABEL_46;
      }

LABEL_28:
      CalLocationSetTitle(a1, v16);
      CalLocationSetAddress(a1, 0);
      CalLocationSetRouting(a1, 0);
      CalLocationSetAddressBookEntityID(a1, 0);
      CalLocationSetMapKitHandle(a1, 0);
      CalLocationSetCoordinates(a1, 0);
      CalLocationSetReferenceFrame(a1, 0);
      CalLocationSetRadius(a1, 0);
      v14 = 0;
LABEL_46:

      goto LABEL_47;
    }

    if (a4 == 1)
    {
      v9 = [v7 x_apple_travel_start];
      goto LABEL_16;
    }

LABEL_14:
    v9 = [v7 x_apple_structured_location];
    goto LABEL_16;
  }

  v10 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
  {
    v11 = v10;
    v12 = objc_opt_class();
    *buf = 134218242;
    *&buf[4] = a4;
    *&buf[12] = 2112;
    *&buf[14] = v12;
    v13 = v12;
    _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "updating location type %zd, but icsItem is type '%@'", buf, 0x16u);
  }

  v14 = 0;
LABEL_47:

  return v14;
}

uint64_t UpdateICSStructuredLocationFromCalLocation(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a2;
  if (a3 && a4)
  {
    v8 = CDBiCalendarConversionHandle;
    if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *&buf[4] = a4;
      _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_DEBUG, "includeLocationProperty should not both be true for property %zd.", buf, 0xCu);
    }

    a3 = 0;
  }

  else if (!a4)
  {
    v9 = 0;
    if (a1)
    {
LABEL_9:
      v10 = CalLocationCopyAddressBookEntityID(a1);
      v11 = CalLocationCopyMapKitHandle(a1);
      *buf = 0;
      *&buf[8] = 0;
      Coordinates = CalLocationGetCoordinates(a1, buf);
      if ((Coordinates & 1) != 0 || (v13 = 0, v10))
      {
        v13 = objc_alloc_init(MEMORY[0x1E69E3CE8]);
        v14 = v9 ^ 1;
        if (a4 == 1)
        {
          v15 = v9 ^ 1;
        }

        else
        {
          v15 = 1;
        }

        if (v15)
        {
          if (a4 != 2)
          {
            v14 = 1;
          }

          if (v14)
          {
            [v7 setX_apple_structured_location:v13];
          }

          else
          {
            [v7 setX_apple_end_location:v13];
          }
        }

        else
        {
          [v7 setX_apple_travel_start:v13];
        }
      }

      v21 = CalLocationCopyTitle(a1);
      [v13 setTitle:v21];
      v22 = CalLocationCopyAddress(a1);
      [v13 setAddress:v22];
      v23 = CalLocationCopyRouting(a1);
      [v13 setRouting:v23];
      v35 = CalLocationCopyReferenceFrame(a1);
      if (a3)
      {
        v24 = [MEMORY[0x1E6992FD8] fullDisplayStringWithTitle:v21 address:v22];
        [v7 setLocation:v24];
      }

      if (Coordinates)
      {
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"geo:%f, %f", *buf, *&buf[8]];
        v26 = [MEMORY[0x1E695DFF8] URLWithString:v25];
        [v13 setValue:v26 type:5013];

        v27 = v35;
        if (v35)
        {
          v28 = [v35 stringValue];
          [v13 setParameterValue:v28 forName:@"X-APPLE-REFERENCEFRAME"];

          v27 = v35;
        }
      }

      else
      {
        [v13 setValue:0 type:5013];
        [v13 setParameterValue:0 forName:@"X-APPLE-REFERENCEFRAME"];
        v27 = v35;
      }

      [v13 setParameterValue:v10 forName:@"X-APPLE-ABUID"];
      v29 = CalLocationCopyRadius(a1);
      v30 = [v29 stringValue];
      [v13 setParameterValue:v30 forName:@"X-APPLE-RADIUS"];

      if (v11)
      {
        [v13 setMapKitHandle:v11];
        v31 = [v13 ICSStringWithOptions:0];
        v32 = [v31 UTF8String];
        if (v32 && strlen(v32) >= 0x3DF)
        {
          v33 = CDBiCalendarConversionHandle;
          if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_DEBUG))
          {
            *v36 = 0;
            _os_log_impl(&dword_1DEBB1000, v33, OS_LOG_TYPE_DEBUG, "UpdateICSStructuredLocationFromCalLocation dropping mapkit handle because it exceeds the max length restriction on many servers.", v36, 2u);
          }

          [v13 setMapKitHandle:0];
          v27 = v35;
        }
      }

      if (v10)
      {
        CFRelease(v10);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      goto LABEL_53;
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 1;
    if (a1)
    {
      goto LABEL_9;
    }

LABEL_19:
    v19 = v9 ^ 1;
    if (a4 == 1)
    {
      v20 = v9 ^ 1;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      if (a4 != 2)
      {
        v19 = 1;
      }

      if (v19)
      {
        [v7 setX_apple_structured_location:0];
      }

      else
      {
        [v7 setX_apple_end_location:0];
      }
    }

    else
    {
      [v7 setX_apple_travel_start:0];
    }

    goto LABEL_54;
  }

  v16 = CDBiCalendarConversionHandle;
  if (os_log_type_enabled(CDBiCalendarConversionHandle, OS_LOG_TYPE_ERROR))
  {
    v13 = v16;
    v17 = objc_opt_class();
    *buf = 134218242;
    *&buf[4] = a4;
    *&buf[12] = 2112;
    *&buf[14] = v17;
    v18 = v17;
    _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "updating location type %zd, but icsItem is type '%@'", buf, 0x16u);

LABEL_53:
  }

LABEL_54:

  return 0;
}

void CalDatabasePersistentChangeTrackingInitializeDB(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 <= 129)
  {
    CalPerformSQLWithConnection(a2, @"CREATE TABLE ClientCursor(    ROWID INTEGER PRIMARY KEY AUTOINCREMENT,     client_identifier TEXT,     store_id INTEGER,     latest_consumed_sequence_number INTEGER,     latest_consumed_timestamp REAL,     UNIQUE(client_identifier));");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX ClientCursorClientIdentifier ON ClientCursor(client_identifier); ");
    CalPerformSQLWithConnection(a2, @"CREATE TABLE ClientSequence (client_identifier TEXT, sequence_number INTEGER, timestamp REAL);");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX ClientSequenceClientIdentifier ON ClientSequence(client_identifier); ");
    CalPerformSQLWithConnection(a2, @"CREATE TABLE ClientCursorConsumed(   client_identifier TEXT,     consumed_entity_class INTEGER,     consumed_entity_id INTEGER,     consumed_change_id INTEGER,     sequence_number INTEGER);");
    v4 = @"CREATE TRIGGER delete_clientcursor_consumed AFTER DELETE ON ClientCursor     BEGIN         DELETE FROM ClientCursorConsumed WHERE client_identifier = OLD.client_identifier;         DELETE FROM ClientSequence WHERE client_identifier = OLD.client_identifier;     END; ";
    v5 = @"CREATE INDEX ClientCursorConsumedClientIdentifier ON ClientCursorConsumed(client_identifier); ";
LABEL_5:
    CalPerformSQLWithConnection(a2, v5);
    goto LABEL_6;
  }

  if (a3 < 0x87)
  {
    v4 = @"ALTER TABLE ClientSequence ADD COLUMN     timestamp REAL; ";
    v5 = @"ALTER TABLE ClientCursor ADD COLUMN     store_id INTEGER;";
    goto LABEL_5;
  }

  if (a3 >= 0x4651)
  {
    return;
  }

  v4 = @"ALTER TABLE ClientSequence ADD COLUMN     timestamp REAL; ";
LABEL_6:

  CalPerformSQLWithConnection(a2, v4);
}