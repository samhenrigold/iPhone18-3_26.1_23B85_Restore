@interface CalEventOccurrenceCacheProcessEventOccurrencesInDateRange
@end

@implementation CalEventOccurrenceCacheProcessEventOccurrencesInDateRange

void ___CalEventOccurrenceCacheProcessEventOccurrencesInDateRange_block_invoke(uint64_t a1)
{
  if (__CalDatabaseBeginReadTransaction(*(*(a1 + 104) + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2816"))
  {
    if (*(a1 + 128) == 1)
    {
      v2 = _CalEventOccurrenceCacheCreateOccurrenceCacheRange(*(a1 + 104));
      v3 = *(*(a1 + 64) + 8);
      v4 = *(v3 + 40);
      *(v3 + 40) = v2;
    }

    v5 = _CalEventOccurrenceCacheGetCacheCalendar(*(a1 + 104));
    if (*(a1 + 129))
    {
      goto LABEL_5;
    }

    v44 = *(a1 + 104);
    _CalEventOccurrenceCacheLoadInfo(v44);
    v45 = *(v44 + 40);
    v46 = v45;
    v47 = *(v44 + 48);
    v48 = v47;
    v49 = v45;
    v50 = v47;
    v51 = [v5 timeZone];
    if ([v49 isAfterDate:*(a1 + 32)] & 1) != 0 || (objc_msgSend(v50, "isBeforeDate:", *(a1 + 40)))
    {
LABEL_42:
      __CalDatabaseRollbackTransaction(*(*(a1 + 104) + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2844");
      (*(*(a1 + 56) + 16))();

LABEL_50:
      return;
    }

    if (([*(a1 + 48) isEqualToTimeZone:v51] & 1) == 0)
    {
      v54 = [*(a1 + 32) dateInTimeZone:v51 fromTimeZone:*(a1 + 48)];
      v55 = [*(a1 + 40) dateInTimeZone:v51 fromTimeZone:*(a1 + 48)];
      if ([v49 isAfterDate:v54])
      {

        goto LABEL_42;
      }

      v56 = [v50 isBeforeDate:v55];

      if (v56)
      {
        goto LABEL_42;
      }
    }

LABEL_5:
    RecordStore = _CalDatabaseGetRecordStore(*(*(a1 + 104) + 24));
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
      v10 = Database;
      *buf = @"SELECT event_id, IFNULL(occurrence_start_date, occurrence_date) AS fetched_occurrence_start_date, occurrence_end_date FROM OccurrenceCache";
      v63 = @"day >= ? AND day < ?";
      v64 = @"GROUP BY event_id, fetched_occurrence_start_date";
      v65 = 0;
      LODWORD(v65) = *(a1 + 120);
      v11 = _CalFilterCopyQuery(*(a1 + 112));
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(v10 + 104))
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }

      v13 = CPSqliteDatabaseStatementForReading();
      if (v13)
      {
        v14 = v13;
        v15 = [v5 startOfDayForDate:*(a1 + 32)];
        v16 = *(a1 + 32);
        v17 = [v5 timeZone];
        v18 = [v16 dateInTimeZone:v17 fromTimeZone:*(a1 + 48)];

        v57 = v18;
        if ([v18 CalIsBeforeDate:v15])
        {
          v19 = [v15 dateByAddingDays:-1 inCalendar:v5];

          v15 = v19;
        }

        v20 = [v5 components:30 fromDate:*(a1 + 40)];
        [v20 setHour:23];
        [v20 setMinute:59];
        [v20 setSecond:59];
        v21 = [v5 dateFromComponents:v20];
        v22 = *(a1 + 40);
        v23 = [v5 timeZone];
        v24 = [v22 dateInTimeZone:v23 fromTimeZone:*(a1 + 48)];

        if ([v24 CalIsAfterDate:v21])
        {
          v25 = [v21 dateByAddingDays:1 inCalendar:v5];

          v21 = v25;
        }

        v26 = v14[1];
        [v15 timeIntervalSinceReferenceDate];
        sqlite3_bind_double(v26, 1, v27);
        v28 = v14[1];
        [v21 timeIntervalSinceReferenceDate];
        sqlite3_bind_double(v28, 2, v29);
        if (!*(a1 + 124))
        {
          *(*(*(a1 + 72) + 8) + 24) = CFSetCreateMutable(0, 0, 0);
        }

        *(*(*(a1 + 80) + 8) + 24) = CFArrayCreateMutable(0, 0, 0);
        v30 = [*(a1 + 32) earlierDate:v57];
        v31 = [*(a1 + 40) laterDate:v24];
        v32 = *(*(*(a1 + 80) + 8) + 24);
        *v58 = *(*(*(a1 + 72) + 8) + 24);
        v59 = v32;
        [v30 timeIntervalSinceReferenceDate];
        v60 = v33;
        [v31 timeIntervalSinceReferenceDate];
        v61 = v34;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v14)
          {
            v35 = **v14;
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

        CPSqliteStatementSendResults();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v14)
          {
            v37 = **v14;
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

        CPSqliteStatementReset();
        v39 = [v5 timeZone];
        v40 = *(*(a1 + 88) + 8);
        v41 = *(v40 + 40);
        *(v40 + 40) = v39;

        *(*(*(a1 + 96) + 8) + 24) = _CalEventOccurrenceCacheCopyBatchOfEvents(*(a1 + 104), *(*(*(a1 + 72) + 8) + 24), *(*(*(a1 + 80) + 8) + 24), 0, *(a1 + 124), *(a1 + 32), *(a1 + 40), *(*(*(a1 + 88) + 8) + 40), *(a1 + 48));
        if (!*(a1 + 124))
        {
          v42 = *(*(*(a1 + 96) + 8) + 24);
          v66.length = CFArrayGetCount(v42);
          v66.location = 0;
          CFArraySortValues(v42, v66, _CompareCalEventOccurrences, *(*(a1 + 104) + 24));
        }

        v43 = *(*(*(a1 + 72) + 8) + 24);
        if (v43)
        {
          CFRelease(v43);
        }
      }

      else
      {
        v53 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *v58 = 0;
          _os_log_impl(&dword_1DEBB1000, v53, OS_LOG_TYPE_ERROR, "Failed to get SQL statement when fetching event occurrences", v58, 2u);
        }
      }

      if (v11)
      {
        CFRelease(v11);
      }
    }

    else
    {
      v52 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v52, OS_LOG_TYPE_ERROR, "Failed to get db handle when fetching event occurrences", buf, 2u);
      }
    }

    __CalDatabaseRollbackTransaction(*(*(a1 + 104) + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2927");
    goto LABEL_50;
  }
}

__CFArray *___CalEventOccurrenceCacheProcessEventOccurrencesInDateRange_block_invoke_484(uint64_t a1)
{
  result = _CalEventOccurrenceCacheCopyBatchOfEvents(*(a1 + 80), 0, *(*(*(a1 + 64) + 8) + 24), *(a1 + 88), *(a1 + 96), *(a1 + 32), *(a1 + 40), *(*(*(a1 + 72) + 8) + 40), *(a1 + 48));
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

@end