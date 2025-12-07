uint64_t CalDatabaseCreateWithConfiguration(void *a1)
{
  *&v87[5] = *MEMORY[0x1E69E9840];
  v1 = a1;
  CDBLogInitIfNeeded(v1, v2);
  if (CalDatabaseCreateWithConfiguration_onceToken != -1)
  {
    CalDatabaseCreateWithConfiguration_cold_1();
  }

  v3 = CDBLogHandle;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v87 = v1;
    _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_DEBUG, "Creating database with configuration: [%@]", buf, 0xCu);
  }

  pthread_once(&__CalDatabaseRegisterOnce, CalDatabaseRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v5 = [v1 options];
  if ((v5 & 0x30) == 0x10)
  {
    v6 = v5 & 0xFFFFFFCF;
  }

  else
  {
    v6 = v5;
  }

  if ((v6 & 0x81) == 0)
  {
    if (CalDatabaseIsCurrentProcessCalaccessd_onceToken != -1)
    {
      CalDatabaseCreateWithConfiguration_cold_2();
    }

    if (CalDatabaseIsCurrentProcessCalaccessd_isCalaccessd == 1)
    {
      CalDatabasePerformMigrationIfNeeded();
    }

    else
    {
      CalDatabaseMigrateIfNeededOutOfProcess();
    }
  }

  *(Instance + 80) = 0;
  os_unfair_lock_lock((Instance + 80));
  *(Instance + 24) = 0;
  v7 = (Instance + 24);
  *(Instance + 84) = 0;
  *(Instance + 88) = 0;
  *(Instance + 32) = 0;
  *(Instance + 40) = 0;
  *(Instance + 120) = 0xFFFFFFFF00000000;
  *(Instance + 48) = 0u;
  *(Instance + 64) = 0u;
  *(Instance + 96) = 0;
  *(Instance + 104) = 0;
  *(Instance + 176) = -1;
  *(Instance + 16) = v6;
  *(Instance + 200) = 0u;
  *(Instance + 216) = 0u;
  *(Instance + 232) = 0u;
  *(Instance + 248) = 0;
  *(Instance + 184) = 0;
  *(Instance + 192) = 850045858;
  *(Instance + 256) = 1;
  *(Instance + 360) = 0;
  objc_storeWeak((Instance + 304), 0);
  *(Instance + 160) = CalMonotonicTime();
  *(Instance + 168) = 0;
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v9 = *(Instance + 312);
  *(Instance + 312) = v8;

  *(Instance + 362) = (v6 & 0x800) != 0;
  *(Instance + 336) = 0xFFFFLL;
  *(Instance + 344) = -1;
  v10 = [v1 directoryURL];
  v83 = v10;
  v11 = v10;
  if (v10)
  {
    v12 = [v10 startAccessingSecurityScopedResource];
    v11 = v83;
  }

  else
  {
    v12 = 0;
  }

  *(Instance + 364) = v12;
  v13 = [v11 path];
  v81 = [v13 stringByAppendingString:@"/"];

  if ([MEMORY[0x1E6993080] isRunningAsSetupUser])
  {
    v14 = CDBLogHandle;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Forcing in-memory database because we are running as the setup user. No changes will be saved.", buf, 2u);
    }

    v15 = 1;
  }

  else
  {
    v15 = (v6 >> 5) & 1;
  }

  obj = [v1 preferences];
  if (!obj)
  {
    if ((v15 & 1) == 0)
    {
      v18 = +[CDBPreferences sharedReadWrite];
      obj = v18;

      objc_storeStrong((Instance + 296), v18);
      goto LABEL_29;
    }

    v16 = +[CDBPreferences sharedReadOnly];
    obj = v16;

    objc_storeStrong((Instance + 296), v16);
LABEL_27:
    IfNeeded = CFRetain(@":memory:");
LABEL_33:
    *(Instance + 128) = IfNeeded;
    goto LABEL_34;
  }

  objc_storeStrong((Instance + 296), obj);
  if (v15)
  {
    goto LABEL_27;
  }

LABEL_29:
  if (!v81)
  {
    IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(0, 1);
    goto LABEL_33;
  }

  *(Instance + 128) = v81;
  if ((v6 & 0x1000) != 0)
  {
    v40 = [v83 URLByAppendingPathComponent:*MEMORY[0x1E69930F0]];
    v41 = [MEMORY[0x1E696AC08] defaultManager];
    v42 = [v40 path];
    v43 = [v41 fileExistsAtPath:v42];

    if ((v43 & 1) == 0)
    {
      v78 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v87 = v83;
        _os_log_impl(&dword_1DEBB1000, v78, OS_LOG_TYPE_DEFAULT, "Failing to create with path %@ because no database exists at that location and we were told not to make one.", buf, 0xCu);
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner((Instance + 80));
      }

      os_unfair_lock_unlock((Instance + 80));
      CFRelease(Instance);

      goto LABEL_187;
    }
  }

  else
  {
    CPFileBuildDirectoriesToPath();
  }

LABEL_34:
  v19 = [CalDatabaseWriteLock writeLockForDatabasePath:*(Instance + 128)];
  v20 = *(Instance + 320);
  *(Instance + 320) = v19;

  v21 = *(Instance + 128);
  if (!v21)
  {
    v25 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_151;
    }

    *buf = 0;
    v26 = "Couldn't get the path to the calendar database.";
LABEL_150:
    _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_ERROR, v26, buf, 2u);
    goto LABEL_151;
  }

  if (CFStringCompare(v21, @":memory:", 0) == kCFCompareEqualTo)
  {
    v24 = CPRecordStoreCreateWithPathAndOptions();
    if (!v24)
    {
      goto LABEL_151;
    }

    goto LABEL_42;
  }

  MutableCopy = CFStringCreateMutableCopy(0, 0, *(Instance + 128));
  v23 = MutableCopy;
  if (!MutableCopy)
  {
    v25 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_151;
    }

    *buf = 0;
    v26 = "Couldn't construct a path to the calendar database.";
    goto LABEL_150;
  }

  CFStringAppend(MutableCopy, *MEMORY[0x1E69930F0]);
  v24 = CPRecordStoreCreateWithPathAndOptions();
  CFRelease(v23);
  if (!v24)
  {
LABEL_151:
    *v7 = 0;
    v61 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v61, OS_LOG_TYPE_ERROR, "Couldn't create calendar database at default path.", buf, 2u);
    }

    goto LABEL_153;
  }

LABEL_42:
  if (CDBLockingAssertionsEnabled == 1)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  Database = CPRecordStoreGetDatabase();
  v29 = Database;
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (Database)
    {
      if (*(Database + 104))
      {
        v30 = CPRecordStoreGetContext();
        if (v30)
        {
          os_unfair_lock_assert_owner(v30 + 20);
        }
      }
    }
  }

  CPSqliteDatabaseSetShouldMigrateInProcess();
  if ((CDBLockingAssertionsEnabled & (v29 != 0)) != 0)
  {
    if (*(v29 + 104))
    {
      v31 = CPRecordStoreGetContext();
      if (v31)
      {
        os_unfair_lock_assert_owner(v31 + 20);
      }
    }
  }

  CPSqliteDatabaseSetMigrationPluginBundleID();
  CPRecordStoreLogChanges();
  CPRecordStoreSetSetupHandler();
  if ((CDBLockingAssertionsEnabled & (v29 != 0)) != 0)
  {
    if (*(v29 + 104))
    {
      v32 = CPRecordStoreGetContext();
      if (v32)
      {
        os_unfair_lock_assert_owner(v32 + 20);
      }
    }
  }

  CPSqliteDatabaseSetMigrationHandlers();
  if ((v6 & 0x400) != 0)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v29)
      {
        if (*(v29 + 104))
        {
          v33 = CPRecordStoreGetContext();
          if (v33)
          {
            os_unfair_lock_assert_owner(v33 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseSetExternalConversionChecker();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v29)
    {
      if (*(v29 + 104))
      {
        v34 = CPRecordStoreGetContext();
        if (v34)
        {
          os_unfair_lock_assert_owner(v34 + 20);
        }
      }
    }
  }

  CPSqliteDatabaseSetVersion();
  if ((CDBLockingAssertionsEnabled & (v29 != 0)) != 0)
  {
    if (*(v29 + 104))
    {
      v35 = CPRecordStoreGetContext();
      if (v35)
      {
        os_unfair_lock_assert_owner(v35 + 20);
      }
    }
  }

  CPSqliteDatabaseSetAutoVacuumLevel();
  if ((CDBLockingAssertionsEnabled & (v29 != 0)) != 0)
  {
    if (*(v29 + 104))
    {
      v36 = CPRecordStoreGetContext();
      if (v36)
      {
        os_unfair_lock_assert_owner(v36 + 20);
      }
    }
  }

  CPSqliteDatabaseSetJournalModeWAL();
  if ((CDBLockingAssertionsEnabled & (v29 != 0)) != 0)
  {
    if (*(v29 + 104))
    {
      v37 = CPRecordStoreGetContext();
      if (v37)
      {
        os_unfair_lock_assert_owner(v37 + 20);
      }
    }
  }

  CPSqliteDatabaseSetStatementCacheLimit();
  if ((CDBLockingAssertionsEnabled & (v29 != 0)) != 0)
  {
    if (*(v29 + 104))
    {
      v38 = CPRecordStoreGetContext();
      if (v38)
      {
        os_unfair_lock_assert_owner(v38 + 20);
      }
    }
  }

  CPSqliteDatabaseSetDataProtectionLevel();
  if ((v6 & 2) != 0)
  {
    if ((CDBLockingAssertionsEnabled & (v29 != 0)) != 0)
    {
      if (*(v29 + 104))
      {
        v44 = CPRecordStoreGetContext();
        if (v44)
        {
          os_unfair_lock_assert_owner(v44 + 20);
        }
      }
    }

    CPSqliteDatabaseSetShouldYieldWhenRequested();
  }

  else
  {
    if ((CDBLockingAssertionsEnabled & (v29 != 0)) != 0)
    {
      if (*(v29 + 104))
      {
        v39 = CPRecordStoreGetContext();
        if (v39)
        {
          os_unfair_lock_assert_owner(v39 + 20);
        }
      }
    }

    CPSqliteDatabaseSetShouldRequestUnlock();
  }

  *v7 = v24;
  if (CDBLockingAssertionsEnabled == 1)
  {
    v45 = CPRecordStoreGetContext();
    if (v45)
    {
      os_unfair_lock_assert_owner(v45 + 20);
    }
  }

  v46 = CPRecordStoreGetDatabase();
  CPRecordStoreSetContext();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v46)
    {
      if (*(v46 + 104))
      {
        v47 = CPRecordStoreGetContext();
        if (v47)
        {
          os_unfair_lock_assert_owner(v47 + 20);
        }
      }
    }
  }

  CPSqliteDatabaseSetCorruptionHandler();
  if ((CDBLockingAssertionsEnabled & (v46 != 0)) != 0)
  {
    if (*(v46 + 104))
    {
      v48 = CPRecordStoreGetContext();
      if (v48)
      {
        os_unfair_lock_assert_owner(v48 + 20);
      }
    }
  }

  CPSqliteDatabaseSetCommitHookCallback();
  if ((v6 & 0x40) != 0)
  {
    if ((CDBLockingAssertionsEnabled & (v46 != 0)) != 0)
    {
      if (*(v46 + 104))
      {
        v60 = CPRecordStoreGetContext();
        if (v60)
        {
          os_unfair_lock_assert_owner(v60 + 20);
        }
      }
    }

    CPSqliteDatabaseSetSupportsReadOnlyConnections();
  }

  else
  {
    if ((CDBLockingAssertionsEnabled & (v46 != 0)) != 0)
    {
      if (*(v46 + 104))
      {
        v49 = CPRecordStoreGetContext();
        if (v49)
        {
          os_unfair_lock_assert_owner(v49 + 20);
        }
      }
    }

    CPSqliteDatabaseSetDatabaseDeletedCallback();
    v50 = [*(Instance + 296) get_sqlProfileLoggingEnabled];
    v51 = ct_green_tea_logging_enabled();
    CalDatabaseSetProfilingEnabled(Instance, v50, v51, 0);
    objc_initWeak(&location, Instance);
    if ((CDBLockingAssertionsEnabled & (v46 != 0)) != 0)
    {
      if (*(v46 + 104))
      {
        v52 = CPRecordStoreGetContext();
        if (v52)
        {
          os_unfair_lock_assert_owner(v52 + 20);
        }
      }
    }

    objc_copyWeak(&v84, &location);
    CPSqliteRegisterYieldNotifyBlock();
    objc_destroyWeak(&v84);
    if ((CDBLockingAssertionsEnabled & (v46 != 0)) != 0)
    {
      if (*(v46 + 104))
      {
        v53 = CPRecordStoreGetContext();
        if (v53)
        {
          os_unfair_lock_assert_owner(v53 + 20);
        }
      }
    }

    v54 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlagsAndReturnError();
    v55 = *(Instance + 361) & ((v6 & 0x100) >> 8);
    if (v54)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v54)
        {
          if (*(*v54 + 104))
          {
            v58 = CPRecordStoreGetContext();
            if (v58)
            {
              os_unfair_lock_assert_owner(v58 + 20);
            }
          }
        }
      }

      CPSqliteDatabaseReleaseSqliteConnection();
    }

    else
    {
      v80 = *(Instance + 361) & ((v6 & 0x100) >> 8);
      v56 = CDBLogHandle;
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = *(Instance + 128);
        *buf = 67109378;
        v87[0] = 0;
        LOWORD(v87[1]) = 2112;
        *(&v87[1] + 2) = v57;
        _os_log_impl(&dword_1DEBB1000, v56, OS_LOG_TYPE_ERROR, "Error [%d] opening a connection to the calendar database at [%@]", buf, 0x12u);
      }

      v55 = v80 | ((v6 & 0x200) >> 9);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v46)
      {
        if (*(v46 + 104))
        {
          v59 = CPRecordStoreGetContext();
          if (v59)
          {
            os_unfair_lock_assert_owner(v59 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseSetStatementCompileErrorCallback();
    objc_destroyWeak(&location);
    if (v55)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner((Instance + 80));
      }

      os_unfair_lock_unlock((Instance + 80));
      CFRelease(Instance);
LABEL_187:
      Instance = 0;
LABEL_188:
      v75 = obj;
      goto LABEL_189;
    }
  }

LABEL_153:
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v7)
    {
      v62 = CPRecordStoreGetContext();
      if (v62)
      {
        os_unfair_lock_assert_owner(v62 + 20);
      }
    }
  }

  v63 = CPRecordStoreGetDatabase();
  v64 = *(v63 + 8);
  if (v64 || (v64 = *(v63 + 280)) != 0)
  {
    sqlite3_rollback_hook(*(v64 + 8), _CalDatabaseRollbackHook, Instance);
  }

  else
  {
    v77 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v77, OS_LOG_TYPE_ERROR, "No existing database handle while setting rollback hook callback.", buf, 2u);
    }
  }

  _CalAttachmentFileRegisterFunctionsWithDatabase(Instance);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if ((_CalDatabaseShouldPostInProcessChangeNotification(Instance) & 1) == 0)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, Instance, _CalDatabaseChangedExternally, @"_CalDatabaseChangedNotification", 0, CFNotificationSuspensionBehaviorDrop);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, Instance, _CalDatabaseChangedExternally, @"_CalDatabaseChangedNotification", 0, CFNotificationSuspensionBehaviorDrop);
  }

  CFNotificationCenterAddObserver(DarwinNotifyCenter, Instance, CalDatabaseReceivedSQLProfileLoggingEnabledNotification, @"com.apple.calendar.database.preference.notification.sqlProfileLoggingEnabled", 0, CFNotificationSuspensionBehaviorDrop);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, Instance, CalDatabaseReceivedGreenTeaLoggingEnabledNotification, @"com.apple.ManagedConfiguration.profileListChanged", 0, CFNotificationSuspensionBehaviorDrop);
  os_unfair_lock_lock(&__GlobalLock);
  if (!__ValidDatabases)
  {
    v67 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:261 capacity:16];
    v68 = __ValidDatabases;
    __ValidDatabases = v67;
  }

  v69 = objc_autoreleasePoolPush();
  [__ValidDatabases addObject:Instance];
  objc_autoreleasePoolPop(v69);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(&__GlobalLock);
  }

  os_unfair_lock_unlock(&__GlobalLock);
  if ((v6 & 0x10) == 0)
  {
    v70 = CalCopyTimeZone();
    *(Instance + 32) = CalEventOccurrenceCacheCreateForDatabase(Instance);
    *(Instance + 40) = CalScheduledTaskCacheCreateForDatabase(Instance, v70);
    CFRelease(v70);
  }

  v71 = [v1 dataContainerProvider];
  v72 = v71;
  if (v71)
  {
    v73 = v71;
    v74 = *(Instance + 288);
    *(Instance + 288) = v73;
  }

  else
  {
    v74 = [MEMORY[0x1E6993090] sharedInstance];
    objc_storeStrong((Instance + 288), v74);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((Instance + 80));
  }

  os_unfair_lock_unlock((Instance + 80));
  v75 = obj;
  if (v6)
  {
    if (CalDatabaseCleanUpAttachmentsRemovedDuringMigration_onceToken != -1)
    {
      CalDatabaseCreateWithConfiguration_cold_3();
      v75 = obj;
    }

    if (CalDatabaseCleanUpAttachmentsRemovedDuringMigration_cleanupRequired == 1)
    {
      v76 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v76, OS_LOG_TYPE_DEFAULT, "Migration caused some attachments to be removed from the database. Going to try to find any leftover files and remove them now.", buf, 2u);
      }

      CalDatabaseCleanUpOrphanedLocalAttachments(Instance);
      goto LABEL_188;
    }
  }

LABEL_189:

  return Instance;
}

void CDBLogInitIfNeeded(uint64_t result, uint64_t a2)
{
  if (CDBLogInitIfNeeded_onceToken != -1)
  {
    CDBLogInitIfNeeded_cold_1();
  }
}

BOOL _CalStoreGetFlag(uint64_t a1, int a2)
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

  return (CPRecordGetProperty() & a2) != 0;
}

CFTypeRef CalRelationRawGetRelatedObject(uint64_t a1)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 72));
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = CFRetain(v2);
      v4 = CFAutorelease(v3);
    }

    else
    {
      v4 = 0;
    }

    pthread_mutex_unlock((a1 + 72));
  }

  else
  {
    v5 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_ERROR, "Given 'relation' is NULL.  Will not get related object reference.", v7, 2u);
    }

    return 0;
  }

  return v4;
}

CFTypeRef CalRelationGetRelatedObject(uint64_t a1)
{
  _EnsureLoaded_0(a1);

  return CalRelationRawGetRelatedObject(a1);
}

void CalDatabaseSetClientName(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 80));
  v4 = *(a1 + 152);
  if (v4 != a2)
  {
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2)
    {
      v5 = CFRetain(a2);
    }

    else
    {
      v5 = 0;
    }

    *(a1 + 152) = v5;
  }

  v6 = [*(a1 + 296) get_sqlProfileLoggingEnabled];
  v7 = ct_green_tea_logging_enabled();
  CalDatabaseSetProfilingEnabled(a1, v6, v7, 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

void CalDatabaseSetProfilingEnabled(uint64_t a1, int a2, int a3, int a4)
{
  if (a1)
  {
    if (a4)
    {
      os_unfair_lock_lock((a1 + 80));
    }

    if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    Database = CPRecordStoreGetDatabase();
    if (a3)
    {
      CalDatabaseCopyClientName(a1, 0);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (Database)
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
    }

    CPSqliteDatabaseSetProfileCallbackWithContext();
    if (a4)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner((a1 + 80));
      }

      os_unfair_lock_unlock((a1 + 80));
    }
  }

  else
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "No 'database' given.  Will not adjust profile logging.", v12, 2u);
    }
  }
}

const void *_CalDatabaseCopyOfAllStores(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1)
  {
    goto LABEL_9;
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

  v1 = CPRecordStoreCopyAllInstancesOfClass();
  *(a1 + 96) = v1;
  if (v1)
  {
LABEL_9:
    CFRetain(v1);
  }

  return v1;
}

void _EnsureLoaded(uint64_t a1)
{
  if (*(a1 + 80))
  {
    return;
  }

  if (CPRecordGetID() == -1 || (v2 = *(a1 + 32)) == 0 || CFArrayGetCount(v2) <= 0)
  {
    *(a1 + 80) = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
    goto LABEL_37;
  }

  v3 = 0;
  MutableCopy = 0;
  v29 = v32;
  do
  {
    valuePtr = -1;
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 32), v3);
    CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr);
    v6 = *(*(a1 + 56) + 80);
    v7 = v6 + 40 * valuePtr;
    if (*(v7 + 16) != &kCalRelationMethods)
    {
      v27 = *CPRecordGetPropertyDescriptor();
      v28 = *(*(*(a1 + 56) + 80) + 40 * valuePtr);
LABEL_8:
      CFLog();
      goto LABEL_30;
    }

    v8 = *(v7 + 32);
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = *v8;
    if (v9 == -1)
    {
      _EnsureLoaded_cold_1();
    }

    v10 = *(v6 + 40 * v9);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    if (v11)
    {
      if (v12 == -1)
      {
        v13 = CFStringCreateWithFormat(0, 0, @"WHERE %s = ? AND (%@)", v10, v11, v28, v29, v30, v31);
      }

      else
      {
        v13 = CFStringCreateWithFormat(0, 0, @"WHERE %s = ? AND entity_type = ? AND (%@)", v10, v11, v28, v29, v30, v31);
      }
    }

    else if (v12 == -1)
    {
      v13 = CFStringCreateWithFormat(0, 0, @"WHERE %s = ?", v10, v27, v28, v29, v30, v31);
    }

    else
    {
      v13 = CFStringCreateWithFormat(0, 0, @"WHERE %s = ? AND entity_type = ?", v10, v27, v28, v29, v30, v31);
    }

    v14 = v13;
    Store = CPRecordGetStore();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (Store)
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }

    v30 = MEMORY[0x1E69E9820];
    v31 = 3221225472;
    v32[0] = ___EnsureLoaded_block_invoke;
    v32[1] = &__block_descriptor_40_e66_v16__0__CPSqliteStatement___CPSqliteConnection___sqlite3_stmt_dB_8l;
    v32[2] = a1;
    v17 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
    v18 = v17;
    if (!MutableCopy && v17)
    {
      Count = CFArrayGetCount(v17);
      MutableCopy = CFArrayCreateMutableCopy(0, Count, v18);
LABEL_28:
      CFRelease(v18);
      goto LABEL_29;
    }

    if (v17)
    {
      v34.length = CFArrayGetCount(v17);
      v34.location = 0;
      CFArrayAppendArray(MutableCopy, v18, v34);
      goto LABEL_28;
    }

LABEL_29:
    CFRelease(v14);
LABEL_30:
    ++v3;
  }

  while (CFArrayGetCount(*(a1 + 32)) > v3);
  *(a1 + 80) = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
  if (MutableCopy)
  {
    v20 = CFArrayGetCount(MutableCopy);
    if (v20 >= 1)
    {
      v21 = v20;
      for (i = 0; i != v21; ++i)
      {
        v23 = *(a1 + 80);
        v24 = CFArrayGetValueAtIndex(MutableCopy, i);
        CFSetAddValue(v23, v24);
      }
    }

    CFRelease(MutableCopy);
  }

LABEL_37:
  v25 = *(a1 + 88);
  if (v25)
  {
    CFSetApplyFunction(v25, _AddItemToSet, *(a1 + 80));
  }

  v26 = *(a1 + 96);
  if (v26)
  {
    CFSetApplyFunction(v26, _RemoveItemFromSet, *(a1 + 80));
  }
}

void _EnsureLoaded_0(uint64_t a1)
{
  if (!CalRelationRawGetRelatedObject(a1))
  {
    if (CDBLockingAssertionsEnabled == 1 && *(a1 + 16) != 0)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }

    if (CPRecordGetProperty() >= 1)
    {
      Store = CPRecordGetStore();
      if (CDBLockingAssertionsEnabled == 1 && Store != 0)
      {
        v6 = CPRecordStoreGetContext();
        if (v6)
        {
          os_unfair_lock_assert_owner(v6 + 20);
        }
      }

      InstanceOfClassWithUID = CPRecordStoreGetInstanceOfClassWithUID();
      if (InstanceOfClassWithUID)
      {

        CalRelationSetAndLoadRawRelatedObject(a1, InstanceOfClassWithUID);
      }
    }
  }
}

BOOL isValidEntityType(int a1)
{
  result = 1;
  if ((a1 + 1) <= 0x1E)
  {
    if (((1 << (a1 + 1)) & 0x7F7FFFFC) != 0)
    {
      return result;
    }

    if (a1 == -1)
    {
      return 0;
    }
  }

  return (a1 - 100) >= 2 && a1 == 102;
}

uint64_t CalDatabasePerformMigrationIfNeeded()
{
  result = [MEMORY[0x1E6992F90] hasBeenUnlockedSinceBoot];
  if (result)
  {
    if ([MEMORY[0x1E6993080] isRunningAsSetupUser])
    {
      return 0;
    }

    else
    {
      if (CalDatabasePerformMigrationIfNeeded_onceToken != -1)
      {
        CalDatabasePerformMigrationIfNeeded_cold_1();
      }

      return 1;
    }
  }

  return result;
}

const void *CalDatabaseCopyOfAllStores(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalDatabaseCopyOfAllStores(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

uint64_t CalStoreGetUID(uint64_t a1)
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

void *CalGetRecordLock(uint64_t a1)
{
  v1 = &__GlobalLock;
  if (CPRecordGetStore())
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      return (Context + 80);
    }
  }

  return v1;
}

BOOL CalStoreGetFlag(uint64_t a1, int a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Flag = _CalStoreGetFlag(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Flag;
}

uint64_t CalEntityGetType(const void *a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Type = _CalEntityGetType(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return Type;
}

uint64_t _CalEntityGetType(const void *a1)
{
  result = CalEntityGetRawType(a1);
  if (result > 100)
  {
    if (result == 101)
    {

      return _CalCalendarItemGetEntityType(a1);
    }

    else if (result == 102)
    {

      return _CalNotificationGetEntityType(a1);
    }
  }

  else if (result)
  {
    if (result == 100)
    {

      return _CalParticipantGetEntityType(a1);
    }
  }

  else
  {
    CPRecordGetClass();
    CFGetTypeID(a1);
    CFLog();
    return 0;
  }

  return result;
}

__CFArray *CalDatabaseCopyOfAllCalendarsInStoreWithOptions(CFTypeRef cf, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a2)
  {
    v6 = CalCopyDatabaseForRecord(a2);
  }

  else
  {
    v6 = CFRetain(cf);
  }

  v7 = v6;
  if (!v6)
  {
    return 0;
  }

  os_unfair_lock_lock(v6 + 20);
  v8 = _CalDatabaseCopyOfAllCalendarsInStoreWithOptions(cf, a2, v3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v7 + 20);
  }

  os_unfair_lock_unlock(v7 + 20);
  CFRelease(v7);
  return v8;
}

void _CalAttachmentFileRegisterFunctionsWithDatabase(uint64_t a1)
{
  RecordStore = _CalDatabaseGetRecordStore(a1);
  v2 = RecordStore;
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
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  v8 = CPSqliteDatabaseConnectionForReading();
  if (v8)
  {

    _CalAttachmentFileRegisterFunctions(v2, v8);
  }
}

void _CalAttachmentFileRegisterFunctions(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  Context = CPRecordStoreGetContext();
  function = sqlite3_create_function(*(a2 + 8), "CalNoteAttachmentDeleted", 2, 1, Context, _CalAttachmentFileNoteAttachmentDeleted, 0, 0);
  if (function)
  {
    v5 = function;
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 67109120;
      v11 = v5;
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, "Error adding CalNoteAttachmentDeleted function: %i", &v10, 8u);
    }
  }

  v7 = sqlite3_create_function(*(a2 + 8), "CalNoteStoreDeleted", 3, 1, Context, _CalAttachmentFileNoteStoreDeleted, 0, 0);
  if (v7)
  {
    v8 = v7;
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = 67109120;
      v11 = v8;
      _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, "Error adding CalNoteStoreDeleted function: %i", &v10, 8u);
    }
  }
}

uint64_t _CalDatabaseShouldPostInProcessChangeNotification(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained(&calDatabaseDarwinNotificationPoster);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = CFRetain(WeakRetained);
    CFAutorelease(v4);
LABEL_7:
    v5 = 1;
    goto LABEL_8;
  }

  if ((*(a1 + 17) & 0x20) != 0)
  {
    goto LABEL_7;
  }

  if (CalDatabaseIsCurrentProcessCalaccessd_onceToken != -1)
  {
    _CalDatabaseShouldPostInProcessChangeNotification_cold_1();
  }

  v5 = CalDatabaseIsCurrentProcessCalaccessd_isCalaccessd;
LABEL_8:

  return v5 & 1;
}

uint64_t CalEventOccurrenceCacheCreateForDatabase(uint64_t a1)
{
  pthread_once(&__CalEventOccurrenceCacheRegisterOnce, CalEventOccurrenceCacheRegisterClass);
  result = _CFRuntimeCreateInstance();
  *(result + 24) = a1;
  *(result + 16) = 1;
  *(result + 20) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  return result;
}

uint64_t CalScheduledTaskCacheCreateForDatabase(uint64_t a1, const void *a2)
{
  pthread_once(&__CalScheduledTaskCacheRegisterOnce, CalScheduledTaskCacheRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 24) = a1;
  v5 = CFRetain(a2);
  *(Instance + 16) = 1;
  *(Instance + 32) = v5;
  *(Instance + 40) = 0;
  *(Instance + 48) = 0;
  *(Instance + 56) = 0;
  return Instance;
}

uint64_t CalEntityGetRawType(const void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = CFGetTypeID(a1);
    if (CPRecordGetTypeID() == v1)
    {
      return *(CPRecordGetClass() + 64);
    }

    v3 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v4 = v3;
      v5 = 134218240;
      TypeID = CPRecordGetTypeID();
      v7 = 2048;
      v8 = v1;
      _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_ERROR, "typeId != CPRecordGetTypeID(), CPRecordGetTypeID(): %lu, typeId: %lu", &v5, 0x16u);
    }
  }

  return 0xFFFFFFFFLL;
}

void _CalLoadRelation(uint64_t a1, uint64_t a2)
{
  PropertyDescriptor = CPRecordGetPropertyDescriptor();
  if (!PropertyDescriptor)
  {
    return;
  }

  if (*(PropertyDescriptor + 16) != &kCalRelationMethods)
  {
    return;
  }

  v5 = *(PropertyDescriptor + 32);
  if (!v5)
  {
    return;
  }

  v6 = *(v5 + 32);
  if (v6 < 1)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFArrayCreateMutable(0, v6, MEMORY[0x1E695E9C0]);
    if (*(v5 + 32) >= 1)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = CFNumberCreate(0, kCFNumberIntType, (*(v5 + 24) + v8));
        CFArrayAppendValue(Mutable, v10);
        CFRelease(v10);
        ++v9;
        v8 += 4;
      }

      while (v9 < *(v5 + 32));
    }
  }

  if (*v5 == -1)
  {
    v13 = *(v5 + 8);
    if (v13)
    {
      v11 = CFStringCreateWithCString(0, v13, 0x8000100u);
    }

    else
    {
      v11 = 0;
    }

    v14 = CalToManyRelationCreateWithEntityTypeAndFilter(a1, a2, *(v5 + 16), Mutable, *(v5 + 4), v11);
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (CPRecordGetStore())
        {
          Context = CPRecordStoreGetContext();
          if (Context)
          {
            os_unfair_lock_assert_owner(Context + 20);
          }
        }
      }
    }

    CPRecordInitializeProperty();
    CFRelease(v14);
    if (!v11)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v11 = CalRelationCreate(a1, a2, *(v5 + 16), Mutable, *(v5 + 36), *(v5 + 40));
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
  }

  CFRelease(v11);
LABEL_28:
  if (Mutable)
  {

    CFRelease(Mutable);
  }
}

void _CalEventOccurrenceCacheLoadInfo(uint64_t a1)
{
  CurrentTransactionID = _CalDatabaseGetCurrentTransactionID(*(a1 + 24));
  if (CurrentTransactionID != *(a1 + 20))
  {
    v3 = CurrentTransactionID;
    if (!CurrentTransactionID)
    {
      _CalEventOccurrenceCacheLoadInfo_cold_1();
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
    if (CDBLockingAssertionsEnabled == 1 && Database != 0)
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

    v10 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
    v11 = v10;
    if (CDBLockingAssertionsEnabled == 1 && v10 != 0)
    {
      if (*v10)
      {
        if (*(*v10 + 104))
        {
          v13 = CPRecordStoreGetContext();
          if (v13)
          {
            os_unfair_lock_assert_owner(v13 + 20);
          }
        }
      }
    }

    v14 = CPSqliteConnectionCopyValueForProperty();
    v15 = CalTimeZoneCopyCFTimeZone();
    v16 = *(a1 + 32);
    *(a1 + 32) = v15;

    if (v14)
    {
      CFRelease(v14);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v11)
      {
        if (*v11)
        {
          if (*(*v11 + 104))
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

    v18 = CPSqliteConnectionCopyValueForProperty();
    v44 = v18;
    if (v18)
    {
      v19 = [v18 integerValue];
      v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v19];
    }

    v20 = *(a1 + 40);
    *(a1 + 40) = v18;

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v11)
      {
        if (*v11)
        {
          if (*(*v11 + 104))
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

    v22 = CPSqliteConnectionCopyValueForProperty();
    v23 = v22;
    if (v22)
    {
      v24 = [v22 integerValue];
      v22 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v24];
    }

    v25 = *(a1 + 48);
    *(a1 + 48) = v22;

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v11)
      {
        if (*v11)
        {
          if (*(*v11 + 104))
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

    v27 = CPSqliteConnectionCopyValueForProperty();
    v28 = v27;
    if (v27)
    {
      v29 = [v27 integerValue];
      v27 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v29];
    }

    v30 = *(a1 + 56);
    *(a1 + 56) = v27;

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v11)
      {
        if (*v11)
        {
          if (*(*v11 + 104))
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

    v32 = CPSqliteConnectionCopyValueForProperty();
    v33 = v32;
    if (v32)
    {
      v34 = [v32 integerValue];
      v32 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v34];
    }

    v35 = *(a1 + 64);
    *(a1 + 64) = v32;

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v11)
      {
        if (*v11)
        {
          if (*(*v11 + 104))
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

    v37 = CPSqliteConnectionCopyValueForProperty();
    v38 = v37;
    if (v37)
    {
      v39 = [v37 integerValue];
    }

    else
    {
      v39 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *(a1 + 72) = v39;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v11)
      {
        if (*v11)
        {
          if (*(*v11 + 104))
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

    v41 = CPSqliteConnectionCopyValueForProperty();
    v42 = v41;
    if (v41)
    {
      v43 = [v41 integerValue];
    }

    else
    {
      v43 = 0x7FFFFFFFFFFFFFFFLL;
    }

    *(a1 + 80) = v43;
    *(a1 + 20) = v3;
  }
}

CFTypeRef _CalCalendarGetStore(uint64_t a1)
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

CFTypeRef CalFilterCreateWithDatabaseShowingCalendarsWithUIDsAndEntityType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [[EKCalendarFilter alloc] initWithDatabase:a1 entityType:a3 showingCalendarsWithUIDs:a2];
  v4 = CFRetain(v3);

  return v4;
}

__CFArray *_CalDatabaseCopyOfAllCalendarsInStoreWithOptions(uint64_t a1, uint64_t a2, char a3)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    v7 = _CalStoreCopyCalendars(a2);
  }

  else
  {
    v7 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v8 = _CalDatabaseCopyOfAllStores(a1);
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
          if (((a3 & 8) == 0 || _CalStoreGetType(ValueAtIndex) != 6) && ((a3 & 2) == 0 || _CalStoreIsEnabled(v14)))
          {
            v15 = _CalStoreCopyCalendars(v14);
            if (v15)
            {
              v16 = v15;
              v27.length = CFArrayGetCount(v15);
              v27.location = 0;
              CFArrayAppendArray(v7, v16, v27);
              CFRelease(v16);
            }
          }
        }
      }

      CFRelease(v9);
    }
  }

  if (v7)
  {
    v17 = CFArrayGetCount(v7);
    if (v17 >= 1)
    {
      v18 = v17;
      for (j = 0; v18 != j; ++j)
      {
        v20 = CFArrayGetValueAtIndex(v7, j);
        v21 = v20;
        if ((a3 & 2) != 0)
        {
          Store = _CalCalendarGetStore(v20);
          if (Store)
          {
            IsEnabled = _CalStoreIsEnabled(Store);
          }

          else
          {
            IsEnabled = 0;
          }

          v22 = !_CalCalendarGetFlag(v21, 2) && IsEnabled;
          if (a3)
          {
LABEL_24:
            v22 &= !_CalCalendarIsEffectivelyReadOnly(v21);
          }
        }

        else
        {
          v22 = 1;
          if (a3)
          {
            goto LABEL_24;
          }
        }

        if ((a3 & 4) != 0)
        {
          if (!_CalCalendarGetFlag(v21, 128))
          {
            continue;
          }

          v25 = _CalCalendarGetSharingInvitationResponse(v21) ? 0 : v22;
          if ((v25 & 1) == 0)
          {
            continue;
          }
        }

        else if (!v22)
        {
          continue;
        }

        CFArrayAppendValue(Mutable, v21);
      }
    }

    CFRelease(v7);
  }

  return Mutable;
}

CFMutableArrayRef _CalStoreCopyCalendars(uint64_t a1)
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

CFMutableArrayRef CalToManyRelationCopyObjects(uint64_t a1)
{
  _EnsureLoaded(a1);
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    CFSetApplyFunction(*(a1 + 80), _AddItemToArray, Mutable);
  }

  return Mutable;
}

uint64_t _CalCalendarCanContainEntityType(uint64_t a1, int a2)
{
  v2 = a2 == 2;
  v3 = a2 == 3;
  if ((a2 & 0xFFFFFFFE) != 2)
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

  Property = CPRecordGetProperty();
  v6 = Property == 4 && v2;
  if (Property == 8)
  {
    v6 = v3;
  }

  if (Property)
  {
    return v6;
  }

  else
  {
    return 1;
  }
}

void CalDatabaseUnlockForThread(os_unfair_lock_s *a1)
{
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

BOOL _CalStoreIsEnabled(uint64_t a1)
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

BOOL _CalCalendarGetFlag(uint64_t a1, int a2)
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

  return (CPRecordGetProperty() & a2) != 0;
}

uint64_t CalToManyRelationCreateWithEntityTypeAndFilter(uint64_t a1, int a2, uint64_t a3, const __CFArray *a4, int a5, const __CFString *a6)
{
  pthread_once(&__CalToManyRelationRegisterOnce, CalToManyRelationRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = a1;
  *(Instance + 24) = a2;
  *(Instance + 56) = a3;
  *(Instance + 64) = 0u;
  *(Instance + 80) = 0u;
  *(Instance + 96) = 0;
  *(Instance + 48) = a5;
  Copy = 0;
  if (a6)
  {
    Copy = CFStringCreateCopy(0, a6);
  }

  *(Instance + 40) = Copy;
  v14 = 0;
  if (a4)
  {
    v14 = CFArrayCreateCopy(0, a4);
  }

  *(Instance + 32) = v14;
  return Instance;
}

uint64_t _CalDatabaseCopyEventOccurrenceCache(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRetain(*(a1 + 32));
  }

  return v1;
}

__CFArray *_CalDatabaseCopyEventOccurrencesInDateRangeInternal(os_unfair_lock_s *a1, void *a2, void *a3, void *a4, void *a5, int a6, void *a7)
{
  v11 = a3;
  v12 = a4;
  v105 = a5;
  v13 = a7;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"DisableOccurrenceCache", *MEMORY[0x1E695E8A8], &keyExistsAndHasValidFormat);
  v102 = v12;
  v103 = v11;
  v104 = v13;
  if (!keyExistsAndHasValidFormat || !AppBooleanValue)
  {
    v15 = CalDatabaseCopyEventOccurrenceCache(a1);
    if (v15)
    {
      v16 = v15;
      v17 = v13;
      v18 = v17 ? 0 : a6;
      v19 = CalEventOccurrenceCacheCopyEventOccurrencesInDateRangeWithLimit(v16, a2, v11, v12, v105, 0, v18, 0);
      if (v19)
      {
        v20 = v19;
        v101 = v16;
        Count = CFArrayGetCount(v19);
        Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
        v23 = Count - 1;
        if (Count >= 1)
        {
          v24 = 0;
          v25 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v20, v24);
            v27 = ValueAtIndex[2];
            if (CalEventIsDisplayable(v27) && (!v17 || v17[2](v17, v27)))
            {
              CFArrayAppendValue(Mutable, ValueAtIndex);
              ++v25;
            }

            v28 = v25 != a6 || a6 <= 0;
            if (!v28)
            {
              break;
            }

            v61 = v23 == v24++;
          }

          while (!v61);
        }

        CFRelease(v20);
        v11 = v103;
        v16 = v101;
      }

      else
      {
        Mutable = 0;
      }

      CFRelease(v16);
      v29 = v104;
      if (Mutable)
      {
        goto LABEL_125;
      }
    }
  }

  v30 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
  v31 = [v30 timeZone];
  v32 = [v11 dateInTimeZone:v31 fromTimeZone:v105];

  v33 = [v30 timeZone];
  v34 = [v12 dateInTimeZone:v33 fromTimeZone:v105];

  [v11 timeIntervalSinceReferenceDate];
  v95 = CalCFTimeZoneCopyCalTimeZone();
  v35 = a1;
  os_unfair_lock_lock(a1 + 20);
  RecordStore = _CalDatabaseGetRecordStore(a1);
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
        v39 = CPRecordStoreGetContext();
        if (v39)
        {
          os_unfair_lock_assert_owner(v39 + 20);
        }
      }
    }
  }

  v40 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  v41 = v40;
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v40)
    {
      if (*v40)
      {
        if (*(*v40 + 104))
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

  CPSqliteConnectionBegin();
  [v11 timeIntervalSinceReferenceDate];
  v44 = v43;
  [v12 timeIntervalSinceReferenceDate];
  v46 = v45;
  [v32 timeIntervalSinceReferenceDate];
  v48 = v47;
  [v34 timeIntervalSinceReferenceDate];
  v50 = _CalDatabaseCopyNonRecurringEventsInDateRange(a1, v41, a2, v44, v46, v48, v49);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v41)
    {
      if (*v41)
      {
        if (*(*v41 + 104))
        {
          v51 = CPRecordStoreGetContext();
          if (v51)
          {
            os_unfair_lock_assert_owner(v51 + 20);
          }
        }
      }
    }
  }

  CPSqliteConnectionRollback();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  v29 = v104;
  v94 = v30;
  v96 = v34;
  v97 = v32;
  if (!v50)
  {
    Mutable = 0;
    v55 = 0;
    goto LABEL_65;
  }

  v52 = CFArrayGetCount(v50);
  if (v52 < 1)
  {
    Mutable = 0;
    v55 = 0;
    goto LABEL_64;
  }

  v53 = v52;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v54 = 0;
  v55 = 0;
  while (1)
  {
    v56 = CFArrayGetValueAtIndex(v50, v54);
    if (!CalEventIsDisplayable(v56) || v29 && !(v29)[2](v29, v56))
    {
      goto LABEL_59;
    }

    CalEventCopyStartDate(v56);
    CalDateTimeGetAbsoluteTime();
    v58 = CalEventOccurrenceCreate(v56, v105, v57);
    if (v58)
    {
      v59 = v58;
      CFArrayAppendValue(Mutable, v58);
      CFRelease(v59);
      ++v55;
    }

    CalDateTimeRelease();
    if (a6 < 1)
    {
      v29 = v104;
      goto LABEL_59;
    }

    v29 = v104;
    if (v55 == a6)
    {
      break;
    }

LABEL_59:
    if (v53 == ++v54)
    {
      goto LABEL_63;
    }
  }

  v55 = a6;
LABEL_63:
  v35 = a1;
LABEL_64:
  CFRelease(v50);
  v12 = v102;
  v11 = v103;
LABEL_65:
  if (a6 < 1 || v55 < a6)
  {
    os_unfair_lock_lock(v35 + 20);
    v60 = _CalDatabaseGetRecordStore(v35);
    v61 = CDBLockingAssertionsEnabled != 1 || v60 == 0;
    if (!v61)
    {
      v62 = CPRecordStoreGetContext();
      if (v62)
      {
        os_unfair_lock_assert_owner(v62 + 20);
      }
    }

    v63 = CPRecordStoreGetDatabase();
    if (CDBLockingAssertionsEnabled == 1 && v63 != 0)
    {
      if (*(v63 + 104))
      {
        v65 = CPRecordStoreGetContext();
        if (v65)
        {
          os_unfair_lock_assert_owner(v65 + 20);
        }
      }
    }

    v66 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
    v67 = v66;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v66)
      {
        if (*v66)
        {
          if (*(*v66 + 104))
          {
            v68 = CPRecordStoreGetContext();
            if (v68)
            {
              os_unfair_lock_assert_owner(v68 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionBegin();
    [v11 timeIntervalSinceReferenceDate];
    v70 = v69;
    [v12 timeIntervalSinceReferenceDate];
    v72 = v71;
    [v97 timeIntervalSinceReferenceDate];
    v74 = v73;
    [v34 timeIntervalSinceReferenceDate];
    v76 = _CalDatabaseCopyRecurringEventsPossiblyOccurringInDateRange(v35, a2, v95, v70, v72, v74, v75);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v67)
      {
        if (*v67)
        {
          if (*(*v67 + 104))
          {
            v77 = CPRecordStoreGetContext();
            if (v77)
            {
              os_unfair_lock_assert_owner(v77 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionRollback();
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v35 + 20);
    }

    os_unfair_lock_unlock(v35 + 20);
    v29 = v104;
    if (v76)
    {
      v78 = CFArrayGetCount(v76);
      if (v78 >= 1)
      {
        v79 = v78;
        v80 = 0;
        v100 = v76;
        do
        {
          v81 = CFArrayGetValueAtIndex(v76, v80);
          if (CalEventIsDisplayable(v81) && (!v29 || (v29)[2](v29, v81)))
          {
            v82 = CalEventCopyOccurrenceDatesInDateRange(v81, v11, v12, v105);
            if (v82)
            {
              v83 = v82;
              v84 = CFArrayGetCount(v82);
              if (v84 >= 1)
              {
                v85 = v84;
                v86 = 1;
                do
                {
                  v87 = CFArrayGetValueAtIndex(v83, v86 - 1);
                  v88 = MEMORY[0x1E12C5EF0](v87);
                  v89 = CalEventOccurrenceCreate(v81, v105, v88);
                  if (v89)
                  {
                    v90 = v89;
                    if (!Mutable)
                    {
                      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                    }

                    CFArrayAppendValue(Mutable, v90);
                    CFRelease(v90);
                    ++v55;
                  }

                  if (v55 == a6 && a6 >= 1)
                  {
                    break;
                  }

                  v28 = v86++ < v85;
                }

                while (v28);
              }

              CFRelease(v83);
              v12 = v102;
              v11 = v103;
              v29 = v104;
              v76 = v100;
            }

            else
            {
              v29 = v104;
            }
          }

          if (v55 == a6 && a6 > 0)
          {
            break;
          }

          ++v80;
        }

        while (v80 != v79);
      }

      CFRelease(v76);
    }
  }

  if (v95)
  {
    CFRelease(v95);
  }

LABEL_125:
  return Mutable;
}

uint64_t CalDatabaseCopyEventOccurrenceCache(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalDatabaseCopyEventOccurrenceCache(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

uint64_t CalEventOccurrenceCacheCopyEventOccurrencesInDateRangeWithLimit(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = a7;
  v10 = a6;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = v15;
  v19 = v16;
  v20 = v17;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___CalEventOccurrenceCacheCopyEventOccurrencesInDateRange_block_invoke;
  v23[3] = &unk_1E8693410;
  v23[4] = &v24;
  _CalEventOccurrenceCacheProcessEventOccurrencesInDateRange(a1, a2, v18, v19, v20, v10, v9, 0, a8, v23);
  v21 = v25[3];
  _Block_object_dispose(&v24, 8);

  return v21;
}

void sub_1DEBB6160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _CalEventOccurrenceCacheProcessEventOccurrencesInDateRange(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, char a6, int a7, int a8, void *a9, void *a10)
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a10;
  v74 = 0;
  v75 = &v74;
  v76 = 0x2020000000;
  v77 = 0;
  v73[0] = 0;
  v73[1] = v73;
  v73[2] = 0x2020000000;
  v73[3] = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v67[0] = 0;
  v67[1] = v67;
  v67[2] = 0x3032000000;
  v67[3] = __Block_byref_object_copy__2;
  v67[4] = __Block_byref_object_dispose__2;
  v68 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__2;
  v65 = __Block_byref_object_dispose__2;
  v66 = 0;
  context = objc_autoreleasePoolPush();
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = ___CalEventOccurrenceCacheProcessEventOccurrencesInDateRange_block_invoke;
  v45[3] = &unk_1E8693438;
  v59 = a9 != 0;
  v55 = a1;
  v50 = &v61;
  v60 = a6;
  v34 = v14;
  v46 = v34;
  v32 = v15;
  v47 = v32;
  v31 = v16;
  v48 = v31;
  v18 = v17;
  v57 = a7;
  v58 = a8;
  v49 = v18;
  v51 = v73;
  v52 = &v74;
  v53 = v67;
  v56 = a2;
  v54 = &v69;
  _CalEventOccurrenceCachePerformWithLock(a1, v45);
  if (v70[3])
  {
    v18[2](v18);
    CFRelease(v70[3]);
  }

  objc_autoreleasePoolPop(context);
  if (a9)
  {
    *a9 = v62[5];
  }

  v19 = v75;
  if (a8)
  {
    v20 = v75[3];
    if (v20)
    {
      Count = CFArrayGetCount(v20);
      v22 = a8;
      while (v22 < Count)
      {
        v23 = objc_autoreleasePoolPush();
        CalDatabaseReset(*(a1 + 24));
        v35[0] = MEMORY[0x1E69E9820];
        v35[1] = 3221225472;
        v35[2] = ___CalEventOccurrenceCacheProcessEventOccurrencesInDateRange_block_invoke_484;
        v35[3] = &unk_1E8693460;
        v39 = &v69;
        v40 = &v74;
        v42 = a1;
        v43 = v22;
        v44 = a8;
        v36 = v34;
        v37 = v32;
        v41 = v67;
        v38 = v31;
        _CalEventOccurrenceCachePerformWithLock(a1, v35);
        if (v70[3])
        {
          v18[2](v18);
          CFRelease(v70[3]);
        }

        v22 += a8;

        objc_autoreleasePoolPop(v23);
      }

      v19 = v75;
    }
  }

  v24 = v19[3];
  if (v24)
  {
    v25 = CFArrayGetCount(v24);
    if (v25 >= 1)
    {
      for (i = 0; i != v25; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v75[3], i);
        free(ValueAtIndex);
      }
    }

    CFRelease(v75[3]);
  }

  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(v67, 8);
  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(v73, 8);
  _Block_object_dispose(&v74, 8);
}

void sub_1DEBB65B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, ...)
{
  va_start(va, a45);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v45 - 248), 8);
  _Block_object_dispose((v45 - 200), 8);
  _Block_object_dispose((v45 - 168), 8);
  _Block_object_dispose((v45 - 136), 8);
  _Unwind_Resume(a1);
}

void _CalEventOccurrenceCachePerformWithLock(uint64_t a1, void *a2)
{
  v3 = a2;
  if (CalDatabaseLockForThread(*(a1 + 24)))
  {
    v3[2]();
    CalDatabaseUnlockForThread(*(a1 + 24));
  }
}

id _CalEventOccurrenceCacheGetCacheCalendar(uint64_t a1)
{
  _CalEventOccurrenceCacheLoadInfo(a1);
  if (*(a1 + 32))
  {
    [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:?];
  }

  else
  {
    CalCopyCalendar();
  }
  v2 = ;

  return v2;
}

void *_CalFilterCopyQuery(void *a1)
{
  v1 = [a1 filterQueryForQueryString:? creator:? userInfo:?];
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  return v2;
}

__CFString *_CalEventOccurrenceCacheCreateCalendarIdQueryForFilterIncludingNullId(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (CalFilterIncludeDisableStores(a1))
  {
    v8 = 0;
  }

  else
  {
    v8 = _CalDatabaseCopyDisabledStoresClause(a2);
  }

  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, *a3);
  v10 = _CalFilterCopyCalendarIDClauseForQuery(a1, @"calendar_id");
  v11 = v10;
  if (!a4 && !v10 && !v8)
  {
    if (!*(a3 + 8))
    {
      goto LABEL_17;
    }

    v12 = @" WHERE ";
    goto LABEL_16;
  }

  if (v10)
  {
    CFStringAppendFormat(MutableCopy, 0, @" WHERE %@ AND calendar_id != -2", v10);
    CFRelease(v11);
  }

  else if (v8)
  {
    CFStringAppend(MutableCopy, @" WHERE store_id != -2 AND store_id NOT IN ");
    CFStringAppend(MutableCopy, v8);
  }

  else
  {
    CFStringAppendFormat(MutableCopy, 0, @" WHERE calendar_id = -2");
  }

  if (*(a3 + 8))
  {
    v12 = @" AND ";
LABEL_16:
    CFStringAppend(MutableCopy, v12);
  }

LABEL_17:
  if (*(a3 + 8))
  {
    CFStringAppendFormat(MutableCopy, 0, @" %@", *(a3 + 8));
  }

  if (*(a3 + 16))
  {
    CFStringAppendFormat(MutableCopy, 0, @" %@", *(a3 + 16));
  }

  if (*(a3 + 24) >= 1)
  {
    CFStringAppendFormat(MutableCopy, 0, @" LIMIT %d", *(a3 + 24));
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return MutableCopy;
}

CFTypeRef CalFilterCreateWithDatabaseFilteringCalendarsWithUIDs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [[EKCalendarFilter alloc] initWithDatabase:a1 entityType:a2 filteringCalendarsWithUIDs:a3];
  v4 = CFRetain(v3);

  return v4;
}

BOOL _CalDatabaseBeginTransactionOfType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v25 = *MEMORY[0x1E69E9840];
  if (*(a1 + 336) != 0xFFFF)
  {
    _CalDatabaseBeginTransactionOfType_cold_1((a1 + 336), a1, a2, a3);
  }

  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
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

  v11 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (CDBLockingAssertionsEnabled == 1 && v11 != 0)
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

  v14 = CPSqliteConnectionBeginTransactionType();
  v15 = v14;
  if (v14 && v14 != 101)
  {
    v20 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v21 = 136446466;
      v22 = a3;
      v23 = 1024;
      v24 = v15;
      _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_ERROR, "Begin transaction (%{public}s) failed with error %i", &v21, 0x12u);
    }
  }

  else
  {
    *(a1 + 336) = v4;
    v16 = *(a1 + 340);
    if ((v16 + 1) > 1)
    {
      v17 = v16 + 1;
    }

    else
    {
      v17 = 1;
    }

    *(a1 + 340) = v17;
    *(a1 + 328) = a3;
  }

  return v15 == 101 || v15 == 0;
}

void *_CalFilterCopyCalendarIDClauseForQuery(void *a1, uint64_t a2)
{
  v2 = [a1 calendarIDClauseForQueryWithVariableName:a2];
  v3 = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  return v3;
}

CFMutableStringRef _CalDatabaseCopyDisabledStoresClause(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == CFNullGetTypeID())
    {
      return 0;
    }

    else
    {
      v14 = *(a1 + 104);

      return CFRetain(v14);
    }
  }

  else
  {
    theString = 0;
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
            v7 = CPRecordStoreGetContext();
            if (v7)
            {
              os_unfair_lock_assert_owner(v7 + 20);
            }
          }
        }

        v8 = CPSqliteDatabaseStatementForReading();
        if (v8)
        {
          v9 = v8;
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v8)
            {
              v10 = **v8;
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

          CPSqliteStatementSendResults();
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v9)
            {
              v12 = **v9;
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

          CPSqliteStatementReset();
          *(a1 + 104) = CFRetain(*MEMORY[0x1E695E738]);
        }
      }
    }

    return theString;
  }
}

uint64_t _CalDatabaseGetCurrentTransactionID(uint64_t a1)
{
  if (*(a1 + 336) == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 340);
  }
}

uint64_t _CalDatabaseGetSuggestionsCalendar(uint64_t a1)
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

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
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

  v8 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (v8)
  {
    v9 = v8;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v8)
      {
        if (*(*v8 + 104))
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }
    }

    v11 = CPSqliteConnectionIntegerForProperty();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v9)
      {
        if (*(*v9 + 104))
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v13 = _CalDatabaseGetRecordStore(a1);

  return _CalGetCalendarWithUID(v13, v11);
}

const void *CalDatabaseCopySuggestionsCalendar(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  SuggestionsCalendar = _CalDatabaseGetSuggestionsCalendar(a1);
  v3 = SuggestionsCalendar;
  if (SuggestionsCalendar)
  {
    CFRetain(SuggestionsCalendar);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v3;
}

uint64_t _CalGetCalendarWithUID(uint64_t result, uint64_t a2)
{
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

    return CPRecordStoreGetInstanceOfClassWithUID();
  }

  return result;
}

uint64_t _CalDatabaseGetNaturalLanguageSuggestionsCalendar(uint64_t a1)
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

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
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

  v8 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (v8)
  {
    v9 = v8;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v8)
      {
        if (*(*v8 + 104))
        {
          v10 = CPRecordStoreGetContext();
          if (v10)
          {
            os_unfair_lock_assert_owner(v10 + 20);
          }
        }
      }
    }

    v11 = CPSqliteConnectionIntegerForProperty();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v9)
      {
        if (*(*v9 + 104))
        {
          v12 = CPRecordStoreGetContext();
          if (v12)
          {
            os_unfair_lock_assert_owner(v12 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  else
  {
    v11 = 0xFFFFFFFFLL;
  }

  v13 = _CalDatabaseGetRecordStore(a1);

  return _CalGetCalendarWithUID(v13, v11);
}

const void *CalDatabaseCopyNaturalLanguageSuggestionsCalendar(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  NaturalLanguageSuggestionsCalendar = _CalDatabaseGetNaturalLanguageSuggestionsCalendar(a1);
  v3 = NaturalLanguageSuggestionsCalendar;
  if (NaturalLanguageSuggestionsCalendar)
  {
    CFRetain(NaturalLanguageSuggestionsCalendar);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v3;
}

uint64_t CalDatabaseMigrateIfNeededOutOfProcess()
{
  if ([MEMORY[0x1E6992F90] hasBeenUnlockedSinceBoot])
  {
    os_unfair_lock_lock(&CalDatabaseMigrateIfNeededOutOfProcess_lock);
    if (CalDatabaseMigrateIfNeededOutOfProcess_haveMigrated)
    {
      goto LABEL_18;
    }

    v0 = CalendarMigrationLibraryCore(0);
    v1 = CDBLogHandle;
    if (v0)
    {
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10[0]) = 0;
        _os_log_impl(&dword_1DEBB1000, v1, OS_LOG_TYPE_INFO, "Requesting out-of-process migration", v10, 2u);
      }

      v11 = 0;
      v12 = &v11;
      v13 = 0x2050000000;
      v2 = getCalOutOfProcessMigratorClass_softClass;
      v14 = getCalOutOfProcessMigratorClass_softClass;
      if (!getCalOutOfProcessMigratorClass_softClass)
      {
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __getCalOutOfProcessMigratorClass_block_invoke;
        v10[3] = &unk_1E86885F0;
        v10[4] = &v11;
        __getCalOutOfProcessMigratorClass_block_invoke(v10);
        v2 = v12[3];
      }

      v3 = v2;
      _Block_object_dispose(&v11, 8);
      if ([v2 performMigrationIfNeeded])
      {
        CalDatabaseMigrateIfNeededOutOfProcess_haveMigrated = 1;
        v4 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10[0]) = 0;
          v5 = "Out-of-process migration complete";
          v6 = v4;
          v7 = OS_LOG_TYPE_INFO;
LABEL_17:
          _os_log_impl(&dword_1DEBB1000, v6, v7, v5, v10, 2u);
        }

LABEL_18:
        v8 = CalDatabaseMigrateIfNeededOutOfProcess_haveMigrated;
        os_unfair_lock_unlock(&CalDatabaseMigrateIfNeededOutOfProcess_lock);
        return v8;
      }

      v1 = CDBLogHandle;
      if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      LOWORD(v10[0]) = 0;
      v5 = "Out of process migration failed! This may cause the database to get deleted!";
    }

    else
    {
      if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      LOWORD(v10[0]) = 0;
      v5 = "Skipping out of process migration because CalendarMigration.framework is not available";
    }

    v6 = v1;
    v7 = OS_LOG_TYPE_ERROR;
    goto LABEL_17;
  }

  return 0;
}

void sub_1DEBB7994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CalEntityGetID(uint64_t a1)
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

uint64_t CalCalendarCanContainEntityTypeAndStoreAllowsIt(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  CanContainEntityTypeAndStoreAllowsIt = _CalCalendarCanContainEntityTypeAndStoreAllowsIt(a1, v2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return CanContainEntityTypeAndStoreAllowsIt;
}

uint64_t _CalCalendarCanContainEntityTypeAndStoreAllowsIt(uint64_t a1, int a2)
{
  result = _CalCalendarCanContainEntityType(a1, a2);
  if (result)
  {
    Store = _CalCalendarGetStore(a1);
    if (Store)
    {
      if (a2 == 2)
      {

        return _CalStoreAllowsEvents(Store);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t CalCalendarGetUID(uint64_t a1)
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

void _CalLoadLazyString(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = *CPRecordGetPropertyDescriptor();
    Class = CPRecordGetClass();
    v8 = CFStringCreateWithFormat(v5, 0, @"SELECT %s FROM %s WHERE ROWID = ?", v6, *Class);
    if (CDBLockingAssertionsEnabled == 1)
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

    v10 = CPSqliteConnectionStatementForSQL();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + 8);
      ID = CPRecordGetID();
      sqlite3_bind_int(v12, 1, ID);
      if (CDBLockingAssertionsEnabled == 1)
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

      v16 = CPSqliteStatementCopyStringResult();
      if (v16)
      {
        v17 = v16;
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

        CPRecordInitializeProperty();
        CFRelease(v17);
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v11)
        {
          v19 = **v11;
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
    }

    if (v8)
    {

      CFRelease(v8);
    }
  }
}

BOOL CalEntityIsVirtual(const void *a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IsVirtual = _CalEntityIsVirtual(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsVirtual;
}

BOOL _CalEntityIsVirtual(const void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  RecordID = _CalEntityGetRecordID(a1);
  if (RecordID)
  {

    return CalRecordIDIsVirtual(RecordID);
  }

  else
  {
    v4 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v5 = v4;
      ID = CPRecordGetID();
      if (a1)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (CPRecordGetStore())
          {
            Context = CPRecordStoreGetContext();
            if (Context)
            {
              os_unfair_lock_assert_owner(Context + 20);
            }
          }
        }
      }

      v8[0] = 67109376;
      v8[1] = ID;
      v9 = 1024;
      IsDeleted = CPRecordIsDeleted();
      _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_DEBUG, "_CalEntityIsVirtual: failed to get recordID for record with rowid [%d], deleted: %d", v8, 0xEu);
    }

    return 0;
  }
}

uint64_t _CalEntityGetRecordID(const void *a1)
{
  Type = _CalEntityGetType(a1);
  switch(Type)
  {
    case 1:

      return _CalCalendarGetRecordID(a1);
    case 2:
    case 3:

      return _CalCalendarItemGetRecordID(a1);
    case 4:

      return _CalAlarmGetRecordID(a1);
    case 5:

      return _CalRecurrenceGetRecordID(a1);
    case 6:

      return _CalStoreGetRecordID(a1);
    case 7:
    case 8:

      return _CalParticipantGetRecordID(a1);
    case 9:

      return _CalEventActionGetRecordID(a1);
    case 10:

      return _CalExceptionDateGetRecordID(a1);
    case 11:

      return _CalAttachmentGetRecordID(a1);
    case 12:

      return _CalCategoryGetRecordID(a1);
    case 13:

      return _CalCategoryLinkGetRecordID(a1);
    case 14:

      return _CalLocationGetRecordID(a1);
    case 15:

      return _CalShareeGetRecordID(a1);
    case 16:
    case 17:
    case 19:
      goto LABEL_2;
    case 18:

      return _CalResourceChangeGetRecordID(a1);
    case 20:

      return _CalSuggestedEventInfoGetRecordID(a1);
    case 21:

      return _CalContactGetRecordID(a1);
    case 22:
      goto LABEL_12;
    case 23:
      v5 = a1;

      goto LABEL_24;
    case 24:

      return _CalErrorGetRecordID(a1);
    case 25:

      return _CalAttachmentFileGetRecordID(a1);
    case 26:
      v4 = a1;

      goto LABEL_15;
    case 27:
      v4 = a1;

LABEL_15:
      result = _CalCalendarItemGetDescription(v4);
      break;
    case 28:

      result = _CalImageGetRecordID(a1);
      break;
    case 29:
      v5 = a1;

LABEL_24:
      result = _CalColorGetRecordID(v5);
      break;
    default:
      if (Type == 102)
      {
LABEL_2:

        result = _CalNotificationGetRecordID(a1);
      }

      else
      {
LABEL_12:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t _CalCalendarGetRecordID(uint64_t a1)
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

void _CalDatabaseFaultDefaultRelationsForEvents(uint64_t a1, CFArrayRef theArray)
{
  v21[0] = a1;
  v21[1] = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
  }

  else
  {
    Count = 0;
  }

  v4 = 1;
  do
  {
    v5 = v4;
    Mutable = CFSetCreateMutable(0, 0, 0);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (CDBLockingAssertionsEnabled == 1 && ValueAtIndex != 0)
        {
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
        if (Property >= 1)
        {
          CFSetAddValue(Mutable, (Property & 0x7FFFFFFF));
        }
      }
    }

    v12 = CFSetGetCount(Mutable);
    MEMORY[0x1EEE9AC00]();
    v14 = (v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v13 >= 0x200)
    {
      v15 = 512;
    }

    else
    {
      v15 = v13;
    }

    bzero(v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
    CFSetGetValues(Mutable, v14);
    v16 = CFArrayCreate(0, v14, v12, 0);
    RecordStore = _CalDatabaseGetRecordStore(v21[0]);
    if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
    {
      v19 = CPRecordStoreGetContext();
      if (v19)
      {
        os_unfair_lock_assert_owner(v19 + 20);
      }
    }

    v20 = CPRecordStoreCopyInstancesOfClassWithUIDs();
    if (v20)
    {
      CFRelease(v20);
    }

    CFRelease(v16);
    CFRelease(Mutable);
    v4 = 0;
  }

  while ((v5 & 1) != 0);
}

CFTypeRef CalFilterCreateWithDatabaseShowingCalendarsWithUIDs(uint64_t a1, uint64_t a2)
{
  v2 = [[EKCalendarFilter alloc] initWithDatabase:a1 showingCalendarsWithUIDs:a2];
  v3 = CFRetain(v2);

  return v3;
}

uint64_t CalEventOccurrenceCacheCopyAllDaysAndOccurrenceCounts(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __CalEventOccurrenceCacheCopyAllDaysAndOccurrenceCounts_block_invoke;
  v6[3] = &unk_1E8689148;
  v6[5] = a1;
  v6[6] = a2;
  v6[4] = &v7;
  _CalEventOccurrenceCachePerformWithLock(a1, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1DEBB8654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __CalEventOccurrenceCacheCopyAllDaysAndOccurrenceCounts_block_invoke(uint64_t a1)
{
  v49[16] = *MEMORY[0x1E69E9840];
  __CalDatabaseBeginReadTransaction(*(*(a1 + 40) + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:1921");
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
    v7 = _CalFilterCopyQuery(*(a1 + 48));
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v6 + 104))
      {
        v8 = CPRecordStoreGetContext();
        if (v8)
        {
          os_unfair_lock_assert_owner(v8 + 20);
        }
      }
    }

    v9 = CPSqliteDatabaseStatementForReading();
    if (v9)
    {
      v10 = v9;
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v9)
        {
          v11 = **v9;
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

      CPSqliteStatementSendResults();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v10)
        {
          v13 = **v10;
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

    CFRelease(v7);
    v43 = *(a1 + 40);
    v15 = _CalFilterCopyVisibleCalendars(*(a1 + 48));
    v16 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v46;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v17);
          }

          Store = _CalCalendarGetStore(*(*(&v45 + 1) + 8 * i));
          if (Store && _CalStoreGetType(Store) == 6)
          {
            ID = CPRecordGetID();
            if ([v16 length])
            {
              [v16 appendString:{@", "}];
            }

            [v16 appendFormat:@"%i", ID];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v19);
    }

    if ([v16 length])
    {
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v49[0] = Mutable;
      v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT day, COUNT() FROM OccurrenceCache WHERE next_reminder_date IS NOT NULL AND (next_reminder_date >= ?) AND calendar_id IN (%@) GROUP BY day", v16];
      v25 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
      _CalEventOccurrenceCacheLoadInfo(v43);
      v26 = *(v43 + 32);
      v27 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v26];
      v28 = [v27 dateByAddingUnit:16 value:1 toDate:v25 options:0];
      v29 = [v27 components:30 fromDate:v28];
      v30 = [v27 dateFromComponents:v29];
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(v6 + 104))
        {
          v31 = CPRecordStoreGetContext();
          if (v31)
          {
            os_unfair_lock_assert_owner(v31 + 20);
          }
        }
      }

      v32 = CPSqliteDatabaseStatementForReading();
      if (v32)
      {
        v33 = v32;
        v34 = *(v32 + 8);
        [v30 timeIntervalSinceReferenceDate];
        sqlite3_bind_double(v34, 1, v35);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v33)
          {
            v36 = **v33;
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

        CPSqliteStatementSendResults();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v33)
          {
            v38 = **v33;
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
        Mutable = v49[0];
      }
    }

    else
    {
      Mutable = 0;
    }

    if ([(__CFArray *)Mutable count])
    {
      v40 = CalEventOccurrenceCacheMergeCounts(*(*(*(a1 + 32) + 8) + 24), Mutable);
      if (v40)
      {
        v41 = *(*(*(a1 + 32) + 8) + 24);
        if (v40 != v41)
        {
          CFRelease(v41);
          *(*(*(a1 + 32) + 8) + 24) = v40;
        }
      }
    }
  }

  return __CalDatabaseRollbackTransaction(*(*(a1 + 40) + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:1949");
}

uint64_t CalStoreGetType(uint64_t a1)
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

uint64_t CalRelationCreate(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray *a4, char a5, uint64_t a6)
{
  v10 = a2;
  pthread_once(&__CalRelationRegisterOnce, CalRelationRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  v13 = *(CPRecordGetPropertyDescriptor() + 32);
  *(Instance + 16) = a1;
  LODWORD(v13) = *v13;
  *(Instance + 24) = v10;
  *(Instance + 28) = v13;
  *(Instance + 48) = a3;
  *(Instance + 56) = 0;
  *(Instance + 40) = a5;
  *(Instance + 64) = a6;
  pthread_mutex_init((Instance + 72), 0);
  Copy = 0;
  if (a4)
  {
    Copy = CFArrayCreateCopy(0, a4);
  }

  *(Instance + 32) = Copy;
  return Instance;
}

void CDBLoadCommonEntityFunctionalityHandlerProperty(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(CDBCommonEntityFunctionalityHandler);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordInitializeProperty();
}

void CalRelationSetAndLoadRawRelatedObject(uint64_t a1, const void *a2)
{
  CalRelationRawSetRelatedObject(a1, a2);
  if ((*(a1 + 40) & 1) == 0)
  {
    v4 = CDBGetCommonEntityFunctionalityHandler(a2, 1, 0);
    [v4 addDestructionObserver:a1];
  }
}

void CalRelationRawSetRelatedObject(uint64_t a1, CFTypeRef a2)
{
  if (a1)
  {
    pthread_mutex_lock((a1 + 72));
    v4 = *(a1 + 56);
    if (v4 != a2)
    {
      if (*(a1 + 40) == 1)
      {
        if (a2)
        {
          a2 = CFRetain(a2);
        }

        if (v4)
        {
          CFRelease(v4);
        }
      }

      *(a1 + 56) = a2;
    }

    pthread_mutex_unlock((a1 + 72));
  }

  else
  {
    v5 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_ERROR, "Given 'relation' is NULL.  Will not set related object reference.", v6, 2u);
    }
  }
}

id CDBGetCommonEntityFunctionalityHandler(const void *a1, int a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a3)
    {
      RecordLock = CalGetRecordLock(a1);
      os_unfair_lock_lock(RecordLock);
    }

    else
    {
      RecordLock = 0;
    }

    RawType = CalEntityGetRawType(a1);
    v10 = RawType;
    if (RawType <= 99)
    {
      switch(RawType)
      {
        case -1:
          v15 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            LOWORD(v19) = 0;
            _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, "Could not find the raw type of the given entity.  Will not get a common entity functionality handler property ID.", &v19, 2u);
          }

          goto LABEL_19;
        case 1:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        case 19:
        case 20:
        case 21:
        case 23:
        case 24:
        case 25:
        case 26:
        case 27:
        case 28:
        case 29:
          goto LABEL_20;
        default:
          goto LABEL_13;
      }
    }

    if (RawType == 100 || RawType == 101 || RawType == 102)
    {
LABEL_20:
      if (a2)
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
      }

      else
      {
        Property = CPRecordGetCachedProperty();
      }

      v8 = Property;
    }

    else
    {
LABEL_13:
      v11 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = MEMORY[0x1E696AD98];
        v13 = v11;
        v14 = [v12 numberWithInt:v10];
        v19 = 138412290;
        v20 = v14;
        _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Could not find the property ID for the entity with raw type [%@].  Will not get a common entity functionality handler.", &v19, 0xCu);
      }

LABEL_19:
      v8 = 0;
    }

    if (a3)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner(RecordLock);
      }

      os_unfair_lock_unlock(RecordLock);
    }
  }

  else
  {
    v7 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_ERROR, "NULL 'entity' given.  Will not acquire a common entity functionality handler.", &v19, 2u);
    }

    v8 = 0;
  }

  return v8;
}

uint64_t _DayAndOccurrenceCountLoadHandler(uint64_t a1, CFMutableArrayRef *a2)
{
  v4 = sqlite3_column_double(*(a1 + 8), 0);
  valuePtr = sqlite3_column_int(*(a1 + 8), 1);
  if (valuePtr)
  {
    v5 = CFDateCreate(0, v4);
    v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, @"day", v5);
    CFDictionaryAddValue(Mutable, @"occurrenceCount", v6);
    CFArrayAppendValue(*a2, Mutable);
    CFRelease(Mutable);
    CFRelease(v5);
    CFRelease(v6);
  }

  return 0;
}

void *_CalFilterCopyVisibleCalendars(void *a1)
{
  v1 = [a1 _visibleCalendarsWithOptions:2];
  v2 = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  return v2;
}

uint64_t _DisabledStoreRowidHandler(uint64_t a1, CFMutableStringRef *a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  if (*a2)
  {
    CFStringAppendFormat(*a2, 0, @", %d", v3);
  }

  else
  {
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    *a2 = Mutable;
    CFStringAppendFormat(Mutable, 0, @"(%d"), v3;
  }

  return 0;
}

__CFArray *_CalEventOccurrenceCacheCopyBatchOfEvents(uint64_t a1, const __CFSet *a2, const __CFArray *a3, CFIndex a4, int a5, void *a6, void *a7, void *a8, void *a9)
{
  v56 = a6;
  v15 = a7;
  v57 = a8;
  v59 = a9;
  Count = CFArrayGetCount(a3);
  if (!a5 || (v17 = a4 + a5, Count < v17))
  {
    v17 = Count;
  }

  v54 = v15;
  if (a2)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFSetCreateMutable(0, 0, 0);
    if (v17 > a4)
    {
      v19 = a4;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, v19);
        CFSetAddValue(Mutable, *ValueAtIndex);
        ++v19;
      }

      while (v17 != v19);
    }

    a2 = Mutable;
  }

  cf = Mutable;
  v21 = CFSetGetCount(a2);
  v22 = malloc_type_malloc(8 * v21, 0x100004000313F17uLL);
  CFSetGetValues(a2, v22);
  v23 = CFArrayCreate(0, v22, v21, 0);
  free(v22);
  RecordStore = _CalDatabaseGetRecordStore(*(a1 + 24));
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v27 = CPRecordStoreCopyInstancesOfClassWithUIDs();
  CFRelease(v23);
  v51 = v27;
  _CalDatabaseFaultDefaultRelationsForEvents(*(a1 + 24), v27);
  theArray = CFArrayCreateMutable(0, v17 - a4, MEMORY[0x1E695E9C0]);
  v28 = v54;
  if (v17 > a4)
  {
    v29 = v57;
    if (v59)
    {
      v29 = v59;
    }

    v49 = v29;
    v55 = v17;
    do
    {
      v30 = CFArrayGetValueAtIndex(a3, a4);
      if (v30)
      {
        v31 = v30;
        v32 = a3;
        v33 = *(a1 + 24);
        v34 = v56;
        v35 = v28;
        v36 = v57;
        v37 = v59;
        if (v57)
        {
          v38 = _CalDatabaseGetRecordStore(v33);
          EventWithUID = _CalGetEventWithUID(v38, *v31);
          if (EventWithUID)
          {
            v40 = EventWithUID;
            v41 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v31[1]];
            v42 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v31[2]];
            IsFloating = _CalCalendarItemIsFloating(v40);
            if (v59 && IsFloating && ([v37 isEqualToTimeZone:v36] & 1) == 0)
            {
              v50 = [v41 dateInTimeZone:v37 fromTimeZone:v36];

              v44 = [v42 dateInTimeZone:v37 fromTimeZone:v36];

              v41 = v50;
              v42 = v44;
            }

            if ([v42 CalIsAfterOrSameAsDate:{v34, v48}] && objc_msgSend(v41, "CalIsBeforeDate:", v35))
            {
              [v41 timeIntervalSinceReferenceDate];
              v46 = CalEventOccurrenceCreate(v40, v49, v45);
              CFArrayAppendValue(theArray, v46);
              CFRelease(v46);
            }

            v28 = v54;
          }

          else
          {
            v48 = *v31;
            CFLog();
          }
        }

        a3 = v32;
        v17 = v55;
      }

      ++a4;
    }

    while (v17 != a4);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  return theArray;
}

BOOL __CalDatabaseRollbackTransaction(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 336) == 0xFFFF)
  {
    __CalDatabaseRollbackTransaction_cold_1(a1, a2);
  }

  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
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

  v9 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (CDBLockingAssertionsEnabled == 1 && v9 != 0)
  {
    if (*v9)
    {
      if (*(*v9 + 104))
      {
        v11 = CPRecordStoreGetContext();
        if (v11)
        {
          os_unfair_lock_assert_owner(v11 + 20);
        }
      }
    }
  }

  v12 = CPSqliteConnectionRollback();
  if (*(a1 + 336) == 1)
  {
    [*(a1 + 320) unlock];
  }

  *(a1 + 336) = 0xFFFF;
  *(a1 + 328) = a2;
  return v12 != 1;
}

uint64_t _CalStoreGetType(uint64_t a1)
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

uint64_t _CalStoreGetRecordID(uint64_t a1)
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

const void *CalDatabaseCopyDefaultCalendarForNewEventsInStore(uint64_t a1, uint64_t a2)
{
  v3 = CalDatabaseCopyDefaultSelectedCalendarForEntityTypeCore(a1, 2, a2, 0);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = CalDatabaseCopyDefaultLocalCalendar(a1);
    if (!v4)
    {
      return v4;
    }
  }

  if (CalCalendarGetFlag(v4, 2) || CalCalendarIsEffectivelyReadOnly(v4) || (v5 = CalCalendarCopyStore(v4)) != 0 && (v6 = v5, v7 = CalStoreAllowsEvents(v5), CFRelease(v6), !v7))
  {
    CFRelease(v4);
    return 0;
  }

  return v4;
}

CFTypeRef CalDatabaseCopyDefaultSelectedCalendarForEntityTypeCore(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a3)
  {

    return CalStoreCopyDelegatedAccountDefaultCalendarForNewEvents(a3);
  }

  os_unfair_lock_lock((a1 + 80));
  if (a2 == 2)
  {
    v9 = [*(a1 + 296) get_defaultCalendarID];
LABEL_38:
    v20 = 0xFFFFFFFFLL;
    goto LABEL_39;
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

  Database = CPRecordStoreGetDatabase();
  if (CDBLockingAssertionsEnabled == 1 && Database != 0)
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

  v16 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (!v16)
  {
    v9 = 0;
    goto LABEL_38;
  }

  v17 = v16;
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v16)
    {
      if (*(*v16 + 104))
      {
        v18 = CPRecordStoreGetContext();
        if (v18)
        {
          os_unfair_lock_assert_owner(v18 + 20);
        }
      }
    }
  }

  v9 = CPSqliteConnectionCopyValueForProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v17)
    {
      if (*(*v17 + 104))
      {
        v19 = CPRecordStoreGetContext();
        if (v19)
        {
          os_unfair_lock_assert_owner(v19 + 20);
        }
      }
    }
  }

  v20 = CPSqliteConnectionIntegerForProperty();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*v17)
    {
      if (*(*v17 + 104))
      {
        v21 = CPRecordStoreGetContext();
        if (v21)
        {
          os_unfair_lock_assert_owner(v21 + 20);
        }
      }
    }
  }

  CPSqliteDatabaseReleaseSqliteConnection();
LABEL_39:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  v22 = 0;
  if (v20 < 1 || !v9)
  {
LABEL_45:
    if (v22)
    {
      goto LABEL_48;
    }

    goto LABEL_46;
  }

  v23 = CalDatabaseCopyStoreWithUID(a1, v20);
  if (v23)
  {
    v24 = v23;
    v22 = CalDatabaseCopyCalendarWithExternalIDInStore(a1, v9, v23);
    CFRelease(v24);
    goto LABEL_45;
  }

  v22 = 0;
LABEL_46:
  if (v9)
  {
    v22 = CalDatabaseCopyCalendarWithUUID(a1, v9);
  }

LABEL_48:
  if (!v22 || (a4 & 1) != 0)
  {
    if (!v22)
    {
      goto LABEL_58;
    }
  }

  else if ((CalCalendarCanContainEntityTypeAndStoreAllowsIt(v22, a2) & 1) == 0)
  {
    v25 = v22;
    goto LABEL_56;
  }

  v26 = CalCalendarCopyStore(v22);
  if (v26)
  {
    v25 = v26;
    if (CalStoreGetType(v26) != 6)
    {
LABEL_57:
      CFRelease(v25);
      goto LABEL_58;
    }

    CFRelease(v22);
LABEL_56:
    v22 = 0;
    goto LABEL_57;
  }

LABEL_58:
  if (v9)
  {
    CFRelease(v9);
  }

  return v22;
}

CFTypeRef CalDatabaseCopyDefaultOrAnyReadWriteCalendarForNewEvents(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  result = CalDatabaseCopyDefaultCalendarForNewEventsInStore(a1, a2);
  if (!result)
  {
    v5 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      v6 = 136315138;
      v7 = "CalCalendarRef CalDatabaseCopyDefaultOrAnyReadWriteCalendarForNewEvents(CalDatabaseRef, CalStoreRef)";
      _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_INFO, "%s: No default set. Getting first suitable read-write calendar.", &v6, 0xCu);
    }

    return CalDatabaseCopyFirstReadWriteCalendarThatSupportsEntityType(a1, 2, a2);
  }

  return result;
}

void *CalDatabaseCopyOrCreateDefaultCalendarForNewEvents(os_unfair_lock_s *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  CalendarForEntityType = CalDatabaseCopyDefaultOrAnyReadWriteCalendarForNewEvents(a1, 0);
  if (!CalendarForEntityType)
  {
    v3 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
    {
      v7 = 136315138;
      v8 = "CalCalendarRef CalDatabaseCopyOrCreateDefaultCalendarForNewEvents(CalDatabaseRef)";
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_INFO, "%s: Failed to find either default or suitable read-write calendar. Making one.", &v7, 0xCu);
    }

    v4 = CalDatabaseCopyLocalStore(a1);
    if (v4)
    {
      v5 = v4;
      if (CalStoreAllowsEvents(v4))
      {
        CalendarForEntityType = CalDatabaseCreateCalendarForEntityType(a1, 2);
        CalCalendarSetTitle(CalendarForEntityType, @"DEFAULT_CALENDAR_NAME");
        CalStoreAddCalendar(v5, CalendarForEntityType);
        CalDatabaseSave(a1);
      }

      else
      {
        CalendarForEntityType = 0;
      }

      CFRelease(v5);
    }

    else
    {
      return 0;
    }
  }

  return CalendarForEntityType;
}

uint64_t _CalDatabaseCopyOfAllEventsCreatedFromSuggestionsInStore(os_unfair_lock_s *cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = CalCopyDatabaseForRecord(a2);
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = cf;
    if (!cf)
    {
      return 0;
    }

    CFRetain(cf);
  }

  os_unfair_lock_lock(v6 + 20);
  if (a3 | a4)
  {
    v7 = @"extraction_group_identifier";
    if (!a4)
    {
      v7 = 0;
    }

    if (a3)
    {
      v7 = @"opaque_key";
    }

    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"JOIN SuggestedEventInfo ON CalendarItem.ROWID = SuggestedEventInfo.owner_id WHERE SuggestedEventInfo.%@ = ?", v7];
  }

  else
  {
    v8 = @"JOIN SuggestedEventInfo ON CalendarItem.ROWID = SuggestedEventInfo.owner_id";
  }

  RecordStore = _CalDatabaseGetRecordStore(v6);
  if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v9 = CPRecordStoreCopyAllInstancesOfClassWithAliasAndFilter();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v6 + 20);
  }

  os_unfair_lock_unlock(v6 + 20);

  CFRelease(v6);
  return v9;
}

CFTypeRef CalDatabaseCopyCalendarWithUUID(os_unfair_lock_s *a1, const void *a2)
{
  v2 = a2;
  if (a2)
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

    v7 = CPRecordStoreCopyAllInstancesOfClassWhereWithBindBlock();
    if (v7)
    {
      v8 = v7;
      if (CFArrayGetCount(v7) < 1)
      {
        v2 = 0;
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, 0);
        v2 = CFRetain(ValueAtIndex);
      }

      CFRelease(v8);
    }

    else
    {
      v2 = 0;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(a1 + 20);
    }

    os_unfair_lock_unlock(a1 + 20);
  }

  return v2;
}

CFMutableArrayRef CalStoreCopyCalendars(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalStoreCopyCalendars(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

uint64_t __CalDatabaseCopyCalendarWithUUID_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  CStringFromCFString = CalCreateCStringFromCFString(*(a1 + 32));
  v4 = MEMORY[0x1E69E9B38];

  return sqlite3_bind_text(v2, 1, CStringFromCFString, -1, v4);
}

void *CalCreateCStringFromCFString(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  Length = CFStringGetLength(a1);
  MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
  v4 = malloc_type_calloc(MaximumSizeForEncoding + 1, 1uLL, 0xE036A2BEuLL);
  if (v4 && !CFStringGetCString(a1, v4, MaximumSizeForEncoding + 1, 0x8000100u))
  {
    free(v4);
    return 0;
  }

  return v4;
}

uint64_t CalStoreCopyDelegatedAccountOwnerStoreID(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  v3 = _CalStoreCopyDelegatedAccountOwnerStoreID(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v3;
}

CFTypeRef CalCalendarCopyStore(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Store = _CalCalendarGetStore(a1);
  v4 = Store;
  if (Store)
  {
    CFRetain(Store);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

uint64_t _CalStoreCopyDelegatedAccountOwnerStoreID(uint64_t a1)
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

BOOL CalCalendarGetFlag(uint64_t a1, int a2)
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

uint64_t CalEventOccurrenceCacheCopyOccurrencesOnDay(uint64_t a1, uint64_t a2, double a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __CalEventOccurrenceCacheCopyOccurrencesOnDay_block_invoke;
  v5[3] = &unk_1E868D418;
  v5[5] = a1;
  v5[6] = a2;
  *&v5[7] = a3;
  v5[4] = &v6;
  _CalEventOccurrenceCachePerformWithLock(a1, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __CalEventOccurrenceCacheCopyOccurrencesOnDay_block_invoke(uint64_t a1)
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
    __CalDatabaseBeginReadTransaction(*(*(a1 + 40) + 24), "read at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2003");
    v7 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
    v8 = *(a1 + 40);
    _CalEventOccurrenceCacheLoadInfo(v8);
    v9 = *(v8 + 32);
    v10 = [MEMORY[0x1E695DEE8] CalGregorianCalendarForTimeZone:v9];
    v11 = [v10 dateByAddingUnit:16 value:1 toDate:v7 options:0];
    v12 = [v10 components:30 fromDate:v11];
    v13 = [v10 dateFromComponents:v12];
    v14 = _CalFilterCopyQuery(*(a1 + 48));
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v6 + 104))
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
      sqlite3_bind_int(*(v16 + 8), 1, *(a1 + 56));
      v18 = v17[1];
      [v13 timeIntervalSinceReferenceDate];
      sqlite3_bind_double(v18, 2, v19);
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

      CPSqliteStatementSendResults();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v17)
        {
          v22 = **v17;
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

    CFRelease(v14);
    __CalDatabaseRollbackTransaction(*(*(a1 + 40) + 24), "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalEventOccurrenceCache.m:2033");
  }
}

uint64_t _DayAndOccurrenceLoadHandler(uint64_t a1, CFMutableArrayRef *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!*a2)
  {
    *a2 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  }

  v4 = sqlite3_column_double(*(a1 + 8), 0);
  v5 = sqlite3_column_int(*(a1 + 8), 1);
  valuePtr = v5;
  v6 = sqlite3_column_double(*(a1 + 8), 2);
  v7 = sqlite3_column_type(*(a1 + 8), 3);
  v8 = 0.0;
  if (v7 != 5)
  {
    v8 = sqlite3_column_double(*(a1 + 8), 3);
  }

  if (v5 == -1)
  {
    v14 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v6;
      _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Skipping invalid entry in occurrence cache occurring at %f with eventID -1", buf, 0xCu);
    }
  }

  else
  {
    v9 = CFDateCreate(0, v4);
    v10 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v11 = CFDateCreate(0, v6);
    if (v7 == 5)
    {
      v12 = 0;
      v13 = 2;
    }

    else
    {
      v12 = CFDateCreate(0, v8);
      v13 = 3;
    }

    *buf = xmmword_1E86933F0;
    v20 = @"nextReminderDate";
    values[0] = v10;
    values[1] = v11;
    values[2] = v12;
    v15 = CFDictionaryCreate(0, buf, values, v13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFArrayAppendValue(*a2, v15);
    CFRelease(v15);
    CFRelease(v11);
    if (v12)
    {
      CFRelease(v12);
    }

    CFRelease(v10);
    CFRelease(v9);
  }

  return 0;
}

uint64_t _CalCalendarItemGetEntityType(uint64_t a1)
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
  if ((Property - 4) <= 0xFFFFFFFD)
  {
    CPRecordGetID();
    CFLog();
  }

  return Property;
}

uint64_t _CalCalendarItemGetRecordID(uint64_t a1)
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

CFTypeRef CalCalendarItemCopyCalendar(uint64_t a1)
{
  v2 = CalCopyDatabaseForRecord(a1);
  os_unfair_lock_lock(v2 + 20);
  Calendar = _CalCalendarItemGetCalendar(a1);
  v4 = Calendar;
  if (Calendar)
  {
    CFRetain(Calendar);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(v2 + 20);
  }

  os_unfair_lock_unlock(v2 + 20);
  CFRelease(v2);
  return v4;
}

const void *CalCopyDatabaseForRecord(uint64_t a1)
{
  if (!CPRecordGetStore())
  {
    return 0;
  }

  Context = CPRecordStoreGetContext();
  v2 = Context;
  if (Context)
  {
    CFRetain(Context);
  }

  return v2;
}

CFTypeRef _CalCalendarItemGetCalendar(uint64_t a1)
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

uint64_t CalShowDeclinedEvents()
{
  v0 = objc_alloc(MEMORY[0x1E6993020]);
  v1 = [v0 initWithDomain:*MEMORY[0x1E6993168]];
  v2 = [v1 getBooleanPreference:@"ShowDeclinedEvents" defaultValue:0];

  return v2;
}

uint64_t _FastOccurrenceLoadHandler(uint64_t a1, uint64_t a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = sqlite3_column_double(*(a1 + 8), 1);
  v6 = sqlite3_column_double(*(a1 + 8), 2);
  if (v6 >= *(a2 + 16) && v5 < *(a2 + 24))
  {
    v7 = malloc_type_malloc(0x18uLL, 0x1000040D315E998uLL);
    v8 = v7;
    if (v7)
    {
      *v7 = v4;
      *(v7 + 1) = v5;
      *(v7 + 2) = v6;
    }

    else
    {
      CFLog();
    }

    if (*a2)
    {
      CFSetAddValue(*a2, v4);
    }

    CFArrayAppendValue(*(a2 + 8), v8);
  }

  return 0;
}

uint64_t _CalGetCalendarItemWithRowID(uint64_t a1, uint64_t a2)
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

BOOL _CalCalendarItemIsFloating(uint64_t a1)
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
  return !Property || CFStringCompare(Property, @"_float", 0) == kCFCompareEqualTo;
}

uint64_t CalEventOccurrenceCreate(const void *a1, const void *a2, double a3)
{
  pthread_once(&__CalEventOccurrenceRegisterOnce, CalEventOccurrenceRegisterClass);
  Instance = _CFRuntimeCreateInstance();
  *(Instance + 16) = CFRetain(a1);
  *(Instance + 24) = a3;
  *(Instance + 32) = CFRetain(a2);
  return Instance;
}

void _CalRecordIDLoad(const void *a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  ID = CPRecordGetID();
  if (ID == -1)
  {
    v8 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v9 = MEMORY[0x1E696AD98];
      v10 = v8;
      v11 = [v9 numberWithInt:0xFFFFFFFFLL];
      v16 = 138412546;
      v17 = v11;
      v18 = 2048;
      v19 = a1;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_ERROR, "Record with a rowID of [%@] found.  Record pointer address: [%p].  Will not load record ID.", &v16, 0x16u);
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

    IsDeleted = CPRecordIsDeleted();
    v14 = CDBLogHandle;
    v15 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (!IsDeleted)
    {
      _CalRecordIDLoad_cold_1(v15, a1, v14);
    }

    if (v15)
    {
      v16 = 134217984;
      v17 = a1;
      _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Record with pointer address of [%p] was marked as being deleted.", &v16, 0xCu);
    }

    if (os_variant_has_internal_diagnostics())
    {
      [MEMORY[0x1E6992F58] simulateCrashWithMessage:@"<rdar://problem/27536217>"];
    }
  }

  else
  {
    v4 = ID;
    Type = _CalEntityGetType(a1);
    pthread_once(&__CalRecordIDRegisterOnce, CalRecordIDRegisterClass);
    Instance = _CFRuntimeCreateInstance();
    Instance[4] = Type;
    Instance[5] = v4;
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

    CPRecordInitializeProperty();

    CFRelease(Instance);
  }
}

CFComparisonResult _CompareCalEventOccurrences(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return -1;
  }

  if (!a2)
  {
    return 1;
  }

  Event = CalEventOccurrenceGetEvent(a1);
  v5 = CalEventOccurrenceGetEvent(a2);
  Date = CalEventOccurrenceGetDate(a1);
  v7 = CalEventOccurrenceGetDate(a2);
  if (Date < v7)
  {
    return -1;
  }

  if (Date > v7)
  {
    return 1;
  }

  IsAllDay = _CalEventIsAllDay(Event);
  v11 = _CalEventIsAllDay(v5);
  if (IsAllDay && !v11)
  {
    return -1;
  }

  if (!IsAllDay && v11)
  {
    return 1;
  }

  Calendar = _CalEventGetCalendar(Event);
  v13 = _CalEventGetCalendar(v5);
  if (Calendar | v13)
  {
    v14 = -1;
  }

  else
  {
    v14 = 0;
  }

  if (Calendar)
  {
    v8 = kCFCompareGreaterThan;
  }

  else
  {
    v8 = v14;
  }

  if (!Calendar)
  {
    goto LABEL_52;
  }

  v15 = v13;
  if (!v13)
  {
    goto LABEL_52;
  }

  Store = _CalCalendarGetStore(Calendar);
  v17 = _CalCalendarGetStore(v15);
  Type = _CalStoreGetType(Store);
  v19 = _CalStoreGetType(v17);
  if (Type == v19)
  {
    v20 = _CalStoreCopyUUID(Store);
    v21 = _CalStoreCopyUUID(v17);
    v22 = [v20 compare:v21];
    if (v20)
    {
      CFRelease(v20);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (v22)
    {
      if (v22 == -1)
      {
        return -1;
      }

      else
      {
        return 1;
      }
    }

    DisplayOrder = _CalCalendarGetDisplayOrder(Calendar);
    v26 = _CalCalendarGetDisplayOrder(v15);
    if (DisplayOrder == -1)
    {
      v27 = 0x7FFFFFFF;
    }

    else
    {
      v27 = DisplayOrder;
    }

    if (v26 == -1)
    {
      v28 = 0x7FFFFFFF;
    }

    else
    {
      v28 = v26;
    }

    if (v27 < v28)
    {
      return -1;
    }

    if (v27 <= v28)
    {
      v29 = _CalCalendarCopyTitle(Calendar);
      v30 = _CalCalendarCopyTitle(v15);
      v31 = v30;
      if (v29 && v30)
      {
        v8 = CFStringCompare(v29, v30, 0);
        goto LABEL_50;
      }

      if (v29)
      {
        v8 = kCFCompareLessThan;
LABEL_50:
        CFRelease(v29);
        if (!v31)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }

      v8 = kCFCompareGreaterThan;
      if (v30)
      {
LABEL_51:
        CFRelease(v31);
      }

LABEL_52:
      if (v8)
      {
        return v8;
      }

      v32 = _CalEventCopySummary(Event);
      v33 = _CalEventCopySummary(v5);
      if (!(v32 | v33))
      {
        return 0;
      }

      v34 = v33;
      if (!v32 && v33)
      {
        v8 = kCFCompareLessThan;
        goto LABEL_64;
      }

      if (!v32 || v33)
      {
        v8 = CFStringCompare(v32, v33, 0x81uLL);
        if (!v32)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v8 = kCFCompareGreaterThan;
      }

      CFRelease(v32);
LABEL_63:
      if (!v34)
      {
        return v8;
      }

LABEL_64:
      CFRelease(v34);
      return v8;
    }

    return 1;
  }

  if (Type > 5)
  {
    v23 = 1;
  }

  else
  {
    v23 = dword_1DECB213C[Type];
  }

  if (v19 > 5)
  {
    v24 = 1;
  }

  else
  {
    v24 = dword_1DECB213C[v19];
  }

  if (v23 < v24)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

uint64_t _CalEventIsDisplayable(uint64_t a1)
{
  if (_CalEventIsHidden(a1))
  {
    return 0;
  }

  if (_CalCalendarItemGetStatus(a1) == 3)
  {
    Organizer = _CalCalendarItemGetOrganizer(a1);
    if (Organizer)
    {
      if (_CalOrganizerIsSelf(Organizer))
      {
        return 0;
      }
    }
  }

  if (_CalEventGetParticipationStatus(a1) == 2 && (!CalShowDeclinedEvents() || (Calendar = _CalEventGetCalendar(a1)) != 0 && (Store = _CalCalendarGetStore(Calendar)) != 0 && _CalStoreGetType(Store) == 1) && _CalEventGetProposedStartDate(a1) == *MEMORY[0x1E6993100])
  {
    return 0;
  }

  if ((CalShowCompletedReminders() & 1) == 0 && _CalCalendarItemGetIsCompleted(a1) && _CalEventIsReminderIntegrationEvent(a1))
  {
    return 0;
  }

  v6 = _CalEventGetCalendar(a1);
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  result = _CalCalendarCanContainEntityType(v6, 2);
  if (result)
  {
    return !_CalCalendarIsHidden(v7);
  }

  return result;
}

uint64_t CalEventIsDisplayable(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IsDisplayable = _CalEventIsDisplayable(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsDisplayable;
}

BOOL _CalEventIsHidden(uint64_t a1)
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

uint64_t _CalEventGetParticipationStatus(uint64_t a1)
{
  SelfAttendee = _CalCalendarItemGetSelfAttendee(a1);
  if (SelfAttendee)
  {

    return _CalRecurrenceGetWeekStartRaw(SelfAttendee);
  }

  else if (_CalCalendarItemIsInvite(a1))
  {
    return 1;
  }

  else
  {
    return 7;
  }
}

CFTypeRef _CalCalendarItemGetSelfAttendee(uint64_t a1)
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

uint64_t _CalCalendarItemGetStatus(uint64_t a1)
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

BOOL _CalCalendarItemIsInvite(uint64_t a1)
{
  Organizer = _CalCalendarItemGetOrganizer(a1);
  if (!Organizer || _CalOrganizerIsSelf(Organizer))
  {
    return 0;
  }

  return CalCalendarItemHasAttendees(a1, 0);
}

CFTypeRef _CalCalendarItemGetOrganizer(uint64_t a1)
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

uint64_t CalShowCompletedReminders()
{
  v0 = objc_alloc(MEMORY[0x1E6993020]);
  v1 = [v0 initWithDomain:*MEMORY[0x1E6993168]];
  v2 = [v1 getBooleanPreference:@"ShowCompletedReminders" defaultValue:1];

  return v2;
}

uint64_t _CalEventGetCalendar(uint64_t a1)
{
  CalendarId = _CalEventGetCalendarId(a1);
  Store = CPRecordGetStore();

  return _CalGetCalendarWithUID(Store, CalendarId);
}

uint64_t _CalEventGetCalendarId(uint64_t a1)
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

uint64_t _CalEventGetJunkStatusWhileLocked(uint64_t a1, char a2)
{
  RecordLock = CalGetRecordLock(a1);
  v5 = RecordLock;
  if ((a2 & 1) == 0)
  {
    os_unfair_lock_lock(RecordLock);
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

  Property = CPRecordGetProperty();
  if ((a2 & 1) == 0)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(v5);
    }

    os_unfair_lock_unlock(v5);
  }

  return Property;
}

void _CalEventLoadSelfParticipantStatus(uint64_t a1, uint64_t a2)
{
  valuePtr = 7;
  Organizer = _CalCalendarItemGetOrganizer(a1);
  if (Organizer)
  {
    if (_CalOrganizerIsSelf(Organizer))
    {
      valuePtr = 1;
    }

    else
    {
      Calendar = _CalEventGetCalendar(a1);
      if (Calendar)
      {
        Store = _CalCalendarGetStore(Calendar);
        if (Store)
        {
          if (_CalStoreGetBoolConstraintValue(Store, @"StatusIsAccurate", 0, 1))
          {
            valuePtr = _CalEventGetParticipationStatus(a1);
          }
        }
      }
    }
  }

  v6 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (CPRecordGetStore())
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }
  }

  CPRecordInitializeProperty();
  CFRelease(v6);
}

void _CalEventLoadHasDescription(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = *MEMORY[0x1E695E480];
    Class = CPRecordGetClass();
    v7 = CFStringCreateWithFormat(v5, 0, @"SELECT (description != '') FROM %s WHERE ROWID = ?", *Class);
    if (CDBLockingAssertionsEnabled == 1)
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

    v9 = CPSqliteConnectionStatementForSQL();
    if (v9)
    {
      v10 = v9;
      v11 = *(v9 + 8);
      ID = CPRecordGetID();
      sqlite3_bind_int(v11, 1, ID);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v10)
        {
          v13 = **v10;
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

      CPSqliteStatementIntegerResult();
      if (a1)
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

      CPRecordInitializeProperty();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v10)
        {
          v16 = **v10;
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

      CPSqliteStatementReset();
    }

    if (v7)
    {

      CFRelease(v7);
    }
  }
}

double CalEventNextReminderOccurrenceDateIfEventKitIsLikelyToWantIt(uint64_t a1, double a2)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  if (_CalEventIsReminderIntegrationEvent(a1) && _CalCalendarItemHasRecurrenceRules(a1) && ([MEMORY[0x1E695DF00] CalSimulatedDateForNow], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "timeIntervalSinceReferenceDate"), v7 = v6, v5, v7 >= a2) && (DatabaseForRecord = CalGetDatabaseForRecord(a1)) != 0 && (v9 = _CalDatabaseCopyEventOccurrenceCache(DatabaseForRecord)) != 0)
  {
    v10 = v9;
    ID = CPRecordGetID();
    EventOccurrenceDateAfterDate = _CalEventOccurrenceCacheNextEventOccurrenceDateAfterDate(v10, ID, a2);
    CFRelease(v10);
  }

  else
  {
    EventOccurrenceDateAfterDate = *MEMORY[0x1E6993100];
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return EventOccurrenceDateAfterDate;
}

BOOL _CalEventIsReminderIntegrationEvent(uint64_t a1)
{
  StoreId = _CalCalendarItemGetStoreId(a1);
  Store = CPRecordGetStore();
  StoreWithUID = _CalGetStoreWithUID(Store, StoreId);
  result = 0;
  if (Store)
  {
    if (StoreWithUID)
    {
      return _CalStoreGetType(StoreWithUID) == 6;
    }
  }

  return result;
}

uint64_t _CalCalendarItemGetStoreId(uint64_t a1)
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

uint64_t _CalCalendarItemLoadStoreId(uint64_t a1, uint64_t a2)
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
  if ((result & 0x80000000) == 0)
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

uint64_t _CalCalendarGetStoreId(uint64_t a1)
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

uint64_t _CalGetStoreWithUID(uint64_t a1, uint64_t a2)
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

BOOL CalEntityIsDeleted(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  IsDeleted = _CalEntityIsDeleted(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return IsDeleted;
}

BOOL _CalEntityIsDeleted(uint64_t a1)
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

  return CPRecordIsDeleted() != 0;
}

uint64_t CalCalendarItemCopySummary(uint64_t a1)
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

void CalEventGetProposedStartDate(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  _CalEventGetProposedStartDate(a1);
  _CalRecordGetDateProperty(a1, 4);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
}

double _CalRecordGetDateProperty(uint64_t a1, uint64_t a2)
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

  if (CPRecordGetProperty())
  {

    JUMPOUT(0x1E12C5EF0);
  }

  return *MEMORY[0x1E6993100];
}

double _CalEventGetProposedStartDate(uint64_t a1)
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
    return *MEMORY[0x1E6993100];
  }

  return _CFDateRefToCalDate(Property);
}

uint64_t CalEventGetParticipationStatus(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  ParticipationStatus = _CalEventGetParticipationStatus(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return ParticipationStatus;
}

void CalEventOccurrenceDestroy(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

void _CalDatabaseDestroy(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  _CalDatabaseTrimConsumedSequences(a1);
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
    _CalDatabaseReportIntegrityErrors(Database);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, a1);
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveEveryObserver(LocalCenter, a1);
  v6 = *(a1 + 32);
  if (v6)
  {
    CalEventOccurrenceCacheInvalidate(v6);
    CFRelease(*(a1 + 32));
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CalScheduledTaskCacheInvalidate(v7);
    CFRelease(*(a1 + 40));
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 264);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 128);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 56);
  if (v15)
  {
    CFRelease(v15);
  }

  if (*(a1 + 24))
  {
    CPRecordStoreDestroy();
  }

  v16 = *(a1 + 136);
  if (v16)
  {
    if (*(a1 + 364) == 1)
    {
      MEMORY[0x1E12C6420]();
      v16 = *(a1 + 136);
    }

    CFRelease(v16);
  }

  v17 = *(a1 + 144);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 152);
  if (v18)
  {
    CFRelease(v18);
  }

  v19 = *(a1 + 288);
  *(a1 + 288) = 0;

  v20 = *(a1 + 296);
  *(a1 + 296) = 0;

  v21 = *(a1 + 312);
  *(a1 + 312) = 0;

  v22 = *(a1 + 320);
  *(a1 + 320) = 0;

  pthread_mutex_lock((a1 + 192));
  if (*(a1 + 184))
  {
    v23 = MEMORY[0x1E12C7520]();
    *(a1 + 184) = 0;
    CFRelease(v23);
  }

  pthread_mutex_unlock((a1 + 192));
  objc_storeWeak((a1 + 304), 0);
  pthread_mutex_destroy((a1 + 192));
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

void _CalDatabaseTrimConsumedSequences(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (*(a1 + 280))
  {
    if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    Database = CPRecordStoreGetDatabase();
    v5 = *(a1 + 280);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v6)
    {
      v22 = *v25;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
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
          v23 = -2;
          _CalDatabaseGetLatestConsumedSequenceNumberForClient(v11, v8, &v23);
          v12 = v23;
          v28 = 0;
          v29 = &v28;
          v30 = 0x2020000000;
          v31 = 0x7FFFFFFF;
          SequenceNumber = *(a1 + 344);
          if (SequenceNumber < 0)
          {
            RecordStore = _CalDatabaseGetRecordStore(a1);
            if (CDBLockingAssertionsEnabled == 1 && RecordStore != 0)
            {
              v16 = CPRecordStoreGetContext();
              if (v16)
              {
                os_unfair_lock_assert_owner(v16 + 20);
              }
            }

            SequenceNumber = CPRecordStoreGetSequenceNumber();
          }

          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___CalDatabaseGetLastSequenceNumberWithAllChangesConsumed_block_invoke;
          v34 = &unk_1E8694B80;
          v35 = &v28;
          _CalDatabaseEnumerateUnconsumedObjectChangesForClient(a1, v8, v12, 1, buf);
          v17 = *(v29 + 6);
          if (v17 == 0x7FFFFFFF)
          {
            v18 = SequenceNumber;
          }

          else
          {
            v18 = v17 - 1;
          }

          _Block_object_dispose(&v28, 8);
          v19 = CDBLogHandle;
          v20 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG);
          if (v18 <= v12)
          {
            if (v20)
            {
              *buf = 138412546;
              *&buf[4] = v8;
              *&buf[12] = 1024;
              *&buf[14] = v12;
              _os_log_impl(&dword_1DEBB1000, v19, OS_LOG_TYPE_DEBUG, "Client cursor for %@ is still %i.", buf, 0x12u);
            }
          }

          else
          {
            if (v20)
            {
              *buf = 138412802;
              *&buf[4] = v8;
              *&buf[12] = 1024;
              *&buf[14] = v12;
              *&buf[18] = 1024;
              *&buf[20] = v18;
              _os_log_impl(&dword_1DEBB1000, v19, OS_LOG_TYPE_DEBUG, "Moving client cursor for %@ forward from %i to %i because all changes in those sequences have been individually consumed.", buf, 0x18u);
            }

            _CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient(a1, v8, v18);
          }
        }

        v6 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v6);
    }

    CFRelease(*(a1 + 280));
    *(a1 + 280) = 0;
  }
}

void sub_1DEBBCC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _CalDatabaseReportIntegrityErrors(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = _CalDatabaseGetErrorsForDatabase(a1);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 errors];
    _CalDatabaseSetErrorsForDatabase(a1, 0);
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v29 = v3;
      v9 = 0;
      v31 = 0;
      v10 = *v33;
      v11 = *MEMORY[0x1E69D5050];
      v12 = *MEMORY[0x1E69D5058];
      v30 = v5;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          v15 = v6;
          v16 = [v6 countForObject:v14];
          if (v16 > v9)
          {
            v17 = v14;

            v9 = v16;
            v31 = v17;
            v5 = v30;
          }

          v36[1] = v12;
          v37[0] = v14;
          v36[0] = v11;
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v16];
          v37[1] = v18;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
          [v5 addObject:v19];

          v6 = v15;
        }

        v8 = [v15 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v8);

      v20 = v31;
      if (!v31)
      {
        v3 = v29;
LABEL_19:

        goto LABEL_20;
      }

      v3 = v29;
      v21 = [v29 delegate];
      if (v21)
      {
        v22 = v5;
        v23 = v31;
        [v21 reportIntegrityErrors:v22];
      }

      else
      {
        v24 = MEMORY[0x1E6992EE8];
        v25 = v5;
        v26 = v31;
        v27 = [v24 alloc];
        v28 = v26;
        v5 = v30;
        v22 = [v27 initWithType:@"Database" subtype:@"Integrity" context:v28];
        [v22 setEvents:v25];

        v6 = v15;
        [v22 report];
      }
    }

    else
    {
      v20 = 0;
      v21 = v6;
    }

    goto LABEL_19;
  }

LABEL_20:
}

id _CalDatabaseGetErrorsForDatabase(uint64_t a1)
{
  os_unfair_lock_lock(&lock);
  v2 = [table objectForKey:a1];
  os_unfair_lock_unlock(&lock);

  return v2;
}

void CalEventOccurrenceCacheDestroy(void *a1)
{
  v2 = a1[4];
  a1[4] = 0;

  v3 = a1[5];
  a1[5] = 0;

  v4 = a1[6];
  a1[6] = 0;

  v5 = a1[7];
  a1[7] = 0;

  v6 = a1[8];
  a1[8] = 0;

  v7 = a1[11];
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = a1[12];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[14];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = a1[15];
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = a1[16];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = a1[17];
  if (v13)
  {

    CFRelease(v13);
  }
}

void CalScheduledTaskCacheDestroy(uint64_t a1)
{
  CFRelease(*(a1 + 32));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {

    CFRelease(v4);
  }
}

void CDBEntityDestroy(const void *a1)
{
  v1 = CDBGetCommonEntityFunctionalityHandler(a1, 0, 0);
  [v1 notifyOfEntityDestruction];
}

void CalRelationDestroy(uint64_t a1)
{
  pthread_mutex_destroy((a1 + 72));
  *(a1 + 16) = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    if (*(a1 + 40) == 1)
    {
      CFRelease(v2);
    }

    else
    {
      v3 = CDBGetCommonEntityFunctionalityHandler(v2, 0, 0);
      [v3 removeDestructionObserver:a1];
    }

    *(a1 + 56) = 0;
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }
}

void sub_1DEBBD258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void CDBRelationEliminateRelatedObjectReference(uint64_t a1)
{
  if (a1)
  {

    CalRelationRawSetRelatedObject(a1, 0);
  }

  else
  {
    v5 = v1;
    v6 = v2;
    v3 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_impl(&dword_1DEBB1000, v3, OS_LOG_TYPE_ERROR, "Given 'relation' is NULL.  Will not eliminate related object reference.", v4, 2u);
    }
  }
}

void CalToManyRelationDestroy(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[12];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[4];
  if (v6)
  {

    CFRelease(v6);
  }
}

CFTypeRef CalCalendarItemCopyOrganizer(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Organizer = _CalCalendarItemGetOrganizer(a1);
  v4 = Organizer;
  if (Organizer)
  {
    CFRetain(Organizer);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(RecordLock);
  }

  os_unfair_lock_unlock(RecordLock);
  return v4;
}

CFTypeRef CalLocationCopyOwner(uint64_t a1)
{
  RecordLock = CalGetRecordLock(a1);
  os_unfair_lock_lock(RecordLock);
  Owner = _CalLocationGetOwner(a1);
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

CFTypeRef _CalLocationGetOwner(uint64_t a1)
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
  if (!Property || (v4 = Property, !CalRelationGetRelatedObject(Property)))
  {
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
    if (!v6 || (v4 = v6, !CalRelationGetRelatedObject(v6)))
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

      v8 = CPRecordGetProperty();
      if (!v8 || (v4 = v8, !CalRelationGetRelatedObject(v8)))
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

        v10 = CPRecordGetProperty();
        if (!v10 || (v4 = v10, !CalRelationGetRelatedObject(v10)))
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

          v12 = CPRecordGetProperty();
          if (!v12)
          {
            return 0;
          }

          v4 = v12;
          if (!CalRelationGetRelatedObject(v12))
          {
            return 0;
          }
        }
      }
    }
  }

  return CalRelationGetRelatedObject(v4);
}

void _CalLoadLazyData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = *CPRecordGetPropertyDescriptor();
  Class = CPRecordGetClass();
  v8 = CFStringCreateWithFormat(v5, 0, @"SELECT %s FROM %s WHERE ROWID = ?", v6, *Class);
  if (CDBLockingAssertionsEnabled == 1)
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

  v10 = CPSqliteConnectionStatementForSQL();
  if (v10)
  {
    v11 = v10;
    v12 = *(v10 + 8);
    ID = CPRecordGetID();
    sqlite3_bind_int(v12, 1, ID);
    if (sqlite3_step(*(v11 + 8)) != 100)
    {
LABEL_23:
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v11)
        {
          v19 = **v11;
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
      goto LABEL_30;
    }

    v14 = sqlite3_column_bytes(*(v11 + 8), 0);
    v15 = sqlite3_column_blob(*(v11 + 8), 0);
    if (v14)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (v16)
    {
      v17 = 0;
      if (a1)
      {
LABEL_17:
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
    }

    else
    {
      v17 = CFDataCreate(v5, v15, v14);
      if (a1)
      {
        goto LABEL_17;
      }
    }

    CPRecordInitializeProperty();
    if (v17)
    {
      CFRelease(v17);
    }

    goto LABEL_23;
  }

LABEL_30:
  if (v8)
  {

    CFRelease(v8);
  }
}

id CalInvalidAlarmDate(uint64_t a1)
{
  if (CalInvalidAlarmDate_onceToken != -1)
  {
    CalInvalidAlarmDate_cold_1();
  }

  v2 = CalInvalidAlarmDate_sInvalidDate;

  return v2;
}

void __CalInvalidAlarmDate_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF10]);
  v1 = CalInvalidAlarmDate_sInvalidDate;
  CalInvalidAlarmDate_sInvalidDate = v0;

  v2 = objc_alloc(MEMORY[0x1E695DEE8]);
  v5 = [v2 initWithCalendarIdentifier:*MEMORY[0x1E695D928]];
  [CalInvalidAlarmDate_sInvalidDate setCalendar:v5];
  v3 = CalInvalidAlarmDate_sInvalidDate;
  v4 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  [v3 setTimeZone:v4];

  [CalInvalidAlarmDate_sInvalidDate setYear:1976];
  [CalInvalidAlarmDate_sInvalidDate setMonth:4];
  [CalInvalidAlarmDate_sInvalidDate setDay:1];
  [CalInvalidAlarmDate_sInvalidDate setHour:0];
  [CalInvalidAlarmDate_sInvalidDate setMinute:55];
  [CalInvalidAlarmDate_sInvalidDate setSecond:45];
}

uint64_t CalIsInvalidAlarmDate(void *a1)
{
  v1 = a1;
  v2 = CalInvalidAlarmDate(v1);
  if ([v2 isEqual:v1])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 year];
    if (v4 == [v1 year] && (v5 = objc_msgSend(v2, "month"), v5 == objc_msgSend(v1, "month")) && (v6 = objc_msgSend(v2, "day"), v6 == objc_msgSend(v1, "day")) && (v7 = objc_msgSend(v2, "hour"), v7 == objc_msgSend(v1, "hour")) && (v8 = objc_msgSend(v2, "minute"), v8 == objc_msgSend(v1, "minute")) && (v9 = objc_msgSend(v2, "second"), v9 == objc_msgSend(v1, "second")))
    {
      v10 = [v1 timeZone];
      if (v10)
      {
        v11 = [v2 timeZone];
        v12 = [v1 timeZone];
        v3 = [v11 isEquivalentTo:v12];
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t _CalDatabaseExternalConversionCheckerForRestore(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
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

  v3 = CPSqliteConnectionDatabaseVersion();
  if (v3 > 15013)
  {
    return 0;
  }

  v4 = v3;
  v5 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = v4;
    _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_ERROR, "Refusing to open DB with version %d for restoring", v7, 8u);
  }

  return 2;
}

__CFString *CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(uint64_t a1, int a2)
{
  if (a1 && (v3 = *(a1 + 128)) != 0)
  {

    return CFRetain(v3);
  }

  else
  {
    v5 = CPSharedResourcesDirectory();
    if (!v5)
    {
      return 0;
    }

    MutableCopy = CFStringCreateMutableCopy(0, 0, v5);
    CFStringAppend(MutableCopy, @"/Library/Calendar/");
    if (a2)
    {
      CPFileBuildDirectoriesToPath();
    }

    return MutableCopy;
  }
}

void CalDatabaseMultiLock(os_unfair_lock_s *a1, os_unfair_lock_s *a2)
{
  v2 = a1;
  if (a1 != a2)
  {
    if (a1 >= a2)
    {
      v3 = a2;
    }

    else
    {
      v3 = a1;
    }

    if (a1 < a2)
    {
      v2 = a2;
    }

    os_unfair_lock_lock(v3 + 20);
  }

  os_unfair_lock_lock(v2 + 20);
}

void CalDatabaseMultiUnlock(os_unfair_lock_s *a1, os_unfair_lock_s *a2)
{
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  if (a1 != a2)
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner(a2 + 20);
    }

    os_unfair_lock_unlock(a2 + 20);
  }
}

uint64_t _CalDatabasePerformStatementWithWriteLock(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = *(a1 + 320);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___CalDatabasePerformStatementWithWriteLock_block_invoke;
  v5[3] = &unk_1E8688440;
  v5[4] = &v6;
  v5[5] = a2;
  [v2 performWithWriteLock:v5];
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1DEBBE3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL __CalDatabaseBeginWriteTransaction(uint64_t a1, uint64_t a2)
{
  [*(a1 + 320) lock];
  v4 = _CalDatabaseBeginTransactionOfType(a1, 1, a2);
  if (!v4)
  {
    [*(a1 + 320) unlock];
  }

  return v4;
}

BOOL __CalDatabaseCommitTransaction(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 336) == 0xFFFF)
  {
    __CalDatabaseCommitTransaction_cold_1(a1, a2);
  }

  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
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

  v9 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (CDBLockingAssertionsEnabled == 1 && v9 != 0)
  {
    if (*v9)
    {
      if (*(*v9 + 104))
      {
        v11 = CPRecordStoreGetContext();
        if (v11)
        {
          os_unfair_lock_assert_owner(v11 + 20);
        }
      }
    }
  }

  v12 = CPSqliteConnectionCommit();
  if (*(a1 + 336) == 1)
  {
    [*(a1 + 320) unlock];
  }

  *(a1 + 336) = 0xFFFF;
  *(a1 + 328) = a2;
  return v12 != 1;
}

uint64_t _CalDatbaseCreateTemporaryRecordIDForEntity(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 176);
  *(a1 + 176) = v3 - 1;
  return CalRecordIDCreate(v2, v3);
}

void CalDatabaseSetIntegrityErrorReportingDelegate(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 80));
  objc_storeWeak((a1 + 304), v3);

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

const __CFString *CalDatabaseGetAuxDatabaseChangesSequence(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  IntegerProperty = _CalDatabaseGetIntegerProperty(a1, @"CalLastAuxDatabaseChanges");
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return IntegerProperty;
}

const __CFString *_CalDatabaseGetIntegerProperty(uint64_t a1, uint64_t a2)
{
  result = _CalDatabaseCopyProperty(a1, a2);
  if (result)
  {
    v3 = result;
    IntValue = CFStringGetIntValue(result);
    CFRelease(v3);
    return IntValue;
  }

  return result;
}

const __CFString *CalDatabaseGetRestoreGeneration(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  IntegerProperty = _CalDatabaseGetIntegerProperty(a1, @"RestoreGeneration");
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return IntegerProperty;
}

void _CalDatabaseSetRestoreGeneration(uint64_t a1, int a2)
{
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
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

  v9 = CPSqliteDatabaseConnectionForWriting();
  if (v9)
  {
    v10 = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___CalDatabaseSetRestoreGeneration_block_invoke;
    v13[3] = &__block_descriptor_44_e5_v8__0l;
    v13[4] = v9;
    v14 = a2;
    [*(a1 + 320) performWithWriteLock:v13];
    if (CDBLockingAssertionsEnabled == 1 && *v10 && *(*v10 + 104))
    {
      v11 = CPRecordStoreGetContext();
      if (v11)
      {
        os_unfair_lock_assert_owner(v11 + 20);
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  else
  {
    v12 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, "Failed to get connection for writing to database to update its restore generation", buf, 2u);
    }
  }
}

void sub_1DEBBE8E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    objc_end_catch();
  }

  _Unwind_Resume(exception_object);
}

void CalDatabaseSetRestoreGeneration(os_unfair_lock_s *a1, int a2)
{
  os_unfair_lock_lock(a1 + 20);
  _CalDatabaseSetRestoreGeneration(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void _CalDatabasePostDBOrSyncStatusChangeNotification(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, void *a7, void *a8, char a9)
{
  v13 = a3;
  v16 = a7;
  v17 = a8;
  v18 = a1;
  v19 = v18;
  if (a4)
  {
    _CalDatabasePostDBOrSyncStatusChangeNotificationSync(v18, a2, v13, a5);
    if (a9)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___CalDatabasePostDBOrSyncStatusChangeNotification_block_invoke;
  v22[3] = &unk_1E8688488;
  v25 = a2;
  v26 = v13;
  v23 = v18;
  v24 = a5;
  _CalDatabaseRunOnAsyncNotificationQueue(v22);

  if ((a9 & 1) == 0)
  {
LABEL_5:
    v20 = v16;
    v21 = v17;
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = ___CalDatabaseSendAnalyticsEventForChange_block_invoke;
    v30 = &unk_1E8688550;
    v31 = v20;
    v32 = v21;
    v33 = a5;
    v34 = a6;
    CalAnalyticsSendEventLazy();
  }

LABEL_6:
}

void _CalDatabasePostDBOrSyncStatusChangeNotificationSync(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a1)
    {
      v15[0] = @"path";
      v15[1] = @"auxDBID";
      v16[0] = a1;
      v5 = [MEMORY[0x1E696AD98] numberWithInt:a2];
      v16[1] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    }

    else
    {
      v7 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_ERROR, "When posting a notification, the path should be included.", v14, 2u);
      }

      v6 = 0;
    }

    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"_CalDatabaseChangedNotification", 0, v6, 1u);
  }

  v9 = @"_CalDatabaseChangedNotification";
  if (a4 == 1)
  {
    v9 = @"_CalDatabaseStoreSyncStatusChangedNotification";
  }

  if (a4 == 2)
  {
    v10 = @"_CalDatabaseIntegrationDataChangedNotification";
  }

  else
  {
    v10 = v9;
  }

  WeakRetained = objc_loadWeakRetained(&calDatabaseDarwinNotificationPoster);
  v12 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained postDarwinNotificationNamed:v10];
  }

  else
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v10, 0, 0, 1u);
  }
}

void _CalDatabaseRunOnAsyncNotificationQueue(void *a1)
{
  v1 = _CalDatabaseRunOnAsyncNotificationQueue_onceToken;
  v2 = a1;
  v4 = v2;
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    _CalDatabaseRunOnAsyncNotificationQueue_cold_1();
    v3 = v4;
  }

  dispatch_async(_CalDatabaseRunOnAsyncNotificationQueue_queue, v3);
}

void _CalDatabasePostDBOrSyncStatusChangeNotificationForDatabase(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a7;
  v14 = a6;
  IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(a1, 1);
  _CalDatabasePostDBOrSyncStatusChangeNotification(IfNeeded, *(a1 + 172), a2, a3, a4, a5, v14, v13, *(a1 + 272));
}

void _CalDatabasePostChangeNotificationToExternalClients(uint64_t a1, uint64_t a2)
{
  ++*(a1 + 120);
  v4 = *(a1 + 352);
  v5 = CalDatabaseCopyClientName(a1, 0);
  _CalDatabasePostDBOrSyncStatusChangeNotificationForDatabase(a1, 0, 0, a2, v4, v5, 0);
}

void _CalDatabasePostDBChangeNotificationToInternalAndExternalClients(uint64_t a1)
{
  v2 = _CalDatabaseShouldPostInProcessChangeNotification(a1);
  if (v2)
  {
    v3 = [CalDatabaseInMemoryChangeTracking changeTrackingForDatabase:a1];
    [v3 clearAllChangesets];
  }

  v4 = *(a1 + 352);
  v5 = CalDatabaseCopyClientName(a1, 1);
  _CalDatabasePostDBOrSyncStatusChangeNotificationForDatabase(a1, v2, 0, 0, v4, v5, 0);
}

CFTypeRef CalDatabaseCopyClientName(uint64_t a1, char a2)
{
  if (a2)
  {
    os_unfair_lock_lock((a1 + 80));
    v3 = [*(a1 + 152) copy];
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner((a1 + 80));
    }

    os_unfair_lock_unlock((a1 + 80));
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = [*(a1 + 152) copy];
    if (!v3)
    {
LABEL_7:
      v3 = CalDatabaseGetProcessName();
    }
  }

  v4 = CFRetain(v3);

  return v4;
}

void CalDatabaseRequestApplicationSnapshotUpdateWithRateLimiter()
{
  v0 = [MEMORY[0x1E695DF00] date];
  [v0 timeIntervalSinceReferenceDate];
  v2 = v1;

  if (*&CalDatabaseRequestApplicationSnapshotUpdateWithRateLimiter_lastBackBoardOpenApplicationRequestTimestamp <= 0.0 || v2 - *&CalDatabaseRequestApplicationSnapshotUpdateWithRateLimiter_lastBackBoardOpenApplicationRequestTimestamp > 5.0)
  {
    CalDatabaseRequestApplicationSnapshotUpdateWithRateLimiter_lastBackBoardOpenApplicationRequestTimestamp = *&v2;
    if (_CalDatabaseRequestApplicationSnapshotUpdate_once_token != -1)
    {
      CalDatabaseRequestApplicationSnapshotUpdateWithRateLimiter_cold_1();
    }

    v4 = _CalDatabaseRequestApplicationSnapshotUpdate_systemService;
    v5 = _CalDatabaseRequestApplicationSnapshotUpdate_options;

    [v4 openApplication:@"com.apple.mobilecal" withOptions:v5 completion:&__block_literal_global_261];
  }
}

_BYTE *_CalDatabaseMarkRangeAsImpacted(_BYTE *result)
{
  if (*result == 1)
  {
    v1 = result + 16;
    do
    {
      *(v1 - 15) = 1;
      v2 = *v1;
      v1 += 16;
    }

    while ((v2 & 1) != 0);
  }

  return result;
}

uint64_t CalDatabaseRequestWidgetRefreshWithRateLimiter(uint64_t a1)
{
  if (CalDatabaseRequestWidgetRefreshWithRateLimiter_onceToken != -1)
  {
    CalDatabaseRequestWidgetRefreshWithRateLimiter_cold_1();
  }

  v2 = CalDatabaseRequestWidgetRefreshWithRateLimiter_rateLimitingQueue;

  return [v2 executeBlock];
}

void __CalDatabaseRequestWidgetRefreshWithRateLimiter_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.calendar.database.refreshWidgetQueue", v0);

  v1 = [objc_alloc(MEMORY[0x1E6993028]) initWithQueue:v3 minimumInterval:&__block_literal_global_44 andBlock:3.0];
  v2 = CalDatabaseRequestWidgetRefreshWithRateLimiter_rateLimitingQueue;
  CalDatabaseRequestWidgetRefreshWithRateLimiter_rateLimitingQueue = v1;
}

uint64_t __CalDatabaseRequestWidgetRefreshWithRateLimiter_block_invoke_2()
{
  v0 = CDBWidgetReloadHandle;
  if (os_log_type_enabled(CDBWidgetReloadHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DEBB1000, v0, OS_LOG_TYPE_DEFAULT, "Reloading widget timeline because of database change notification", v2, 2u);
  }

  return [MEMORY[0x1E69930B0] refreshEventWidgets];
}

void CalDatabaseCleanupDanglers(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 24);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
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
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  v8 = CPSqliteDatabaseConnectionForReadingWithSqlite3OpenFlags();
  if (v8)
  {
    v9 = v8;
    _CalDatabaseCleanupDanglers(v2, v8);
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

    CPSqliteDatabaseReleaseSqliteConnection();
  }

  else
  {
    v11 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_DEFAULT, "Unable to get database connection to clean up danglers.", v12, 2u);
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

void _CalDatabaseCleanupDanglers(uint64_t a1, void *a2)
{
  Context = CPRecordStoreGetContext();
  if (a2)
  {
    v4 = Context;
    if (Context)
    {
      _CalCalendarCleanUpDanglingEntities(Context, a2);
      _CalCalendarItemCleanUpDanglingEntities(v4, a2);
      _CalAlarmCleanUpDanglingEntities(v4, a2);
      _CalRecurrenceCleanUpDanglingEntities(v4, a2);
      _CalParticipantCleanUpDanglingEntities(v4, a2);
      _CalEventActionCleanUpDanglingEntities(v4, a2);
      _CalAttachmentCleanUpDanglingEntities(v4, a2);
      _CalLocationCleanUpDanglingEntities(v4, a2);
      _CalShareeCleanUpDanglingEntities(v4, a2);
      _CalNotificationCleanUpDanglingEntities(v4, a2);
      _CalResourceChangeCleanUpDanglingEntities();
      _CalContactCleanUpDanglingEntities(v4, a2);
      _CalConferenceCleanUpDanglingEntities(v4, a2);
      _CalErrorCleanUpDanglingEntities(v4, a2);
      _CalAttachmentFileCleanUpDanglingEntities(v4, a2);
      _CalImageCleanUpDanglingEntities(v4, a2);

      _CalColorCleanUpDanglingEntities(v4, a2);
    }
  }
}

uint64_t CalDatabaseIsCurrentProcessCalaccessd(uint64_t a1, uint64_t a2)
{
  if (CalDatabaseIsCurrentProcessCalaccessd_onceToken != -1)
  {
    _CalDatabaseShouldPostInProcessChangeNotification_cold_1();
  }

  return CalDatabaseIsCurrentProcessCalaccessd_isCalaccessd;
}

uint64_t __CalDatabaseIsCurrentProcessCalaccessd_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  v0 = getpid();
  result = proc_name(v0, v4, 0x80u);
  v3 = *&v4[0] == 0x73656363616C6163 && *(v4 + 3) == 0x64737365636361;
  CalDatabaseIsCurrentProcessCalaccessd_isCalaccessd = v3;
  return result;
}

void _CalDatabaseNoteUntrackedChange(uint64_t a1)
{
  if (_CalDatabaseShouldPostInProcessChangeNotification(a1))
  {
    v2 = [CalDatabaseInMemoryChangeTracking changeTrackingForDatabase:a1];
    [v2 clearAllChangesets];

    ++*(a1 + 120);
    v3 = *(a1 + 352);
    v4 = CalDatabaseCopyClientName(a1, 0);
    _CalDatabasePostDBOrSyncStatusChangeNotificationForDatabase(a1, 1, 0, 0, v3, v4, 0);

    _CalDatabaseRevertInternal(a1, 1);
  }

  else
  {

    _CalDatabaseSendChangeNotificationWithNoObjectIdsToCalaccessd(a1, 0);
  }
}

BOOL _CalDatabaseSendChangeNotificationWithNoObjectIdsToCalaccessd(uint64_t a1, int64_t a2)
{
  v4 = _CalDatabaseCalaccessdXPCConnection();
  if (v4)
  {
    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v5, "function", "postchangenote");
    IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(a1, 1);
    xpc_dictionary_set_string(v5, "databasePath", [(__CFString *)IfNeeded UTF8String]);
    xpc_dictionary_set_int64(v5, "changeType", a2);
    xpc_dictionary_set_int64(v5, "changeReason", *(a1 + 352));
    v7 = CalDatabaseCopyClientName(a1, 0);
    xpc_dictionary_set_string(v5, "clientName", [v7 UTF8String]);
    v8 = xpc_connection_send_message_with_reply_sync(v4, v5);
    v9 = v8;
    v10 = v8 && object_getClass(v8) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_BOOL(v9, "notificationwasposted");
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void _CalDatabaseRevertInternal(uint64_t a1, int a2)
{
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

    LastSequenceNumber = CPRecordStoreGetLastSequenceNumber();
  }

  else
  {
    LastSequenceNumber = -1;
  }

  *(a1 + 124) = LastSequenceNumber;
  v6 = *(a1 + 32);
  if (v6)
  {
    _CalEventOccurrenceCacheRevert(v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    CalScheduledTaskCacheInvalidate(v7);
    CFRelease(*(a1 + 40));
    *(a1 + 40) = 0;
  }

  v8 = *(a1 + 104);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 104) = 0;
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 96) = 0;
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 64) = 0;
  }

  v11 = *(a1 + 72);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 72) = 0;
  }

  v12 = *(a1 + 264);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 264) = 0;
  }

  *(a1 + 84) = 0;
  *(a1 + 88) = 0;
  if (a2)
  {
    *(a1 + 176) = -1;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(a1 + 24))
    {
      v13 = CPRecordStoreGetContext();
      if (v13)
      {
        os_unfair_lock_assert_owner(v13 + 20);
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
        v15 = CPRecordStoreGetContext();
        if (v15)
        {
          os_unfair_lock_assert_owner(v15 + 20);
        }
      }
    }
  }

  v16 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  if (v16)
  {
    v17 = v16;
    if (*(a1 + 365) == 1)
    {
      __CalDatabaseRollbackTransaction(a1, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabase.m:4811");
      *(a1 + 365) = 0;
    }

    else
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v16)
        {
          if (*(*v16 + 104))
          {
            v18 = CPRecordStoreGetContext();
            if (v18)
            {
              os_unfair_lock_assert_owner(v18 + 20);
            }
          }
        }
      }

      CPSqliteConnectionRollback();
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v17)
      {
        if (*(*v17 + 104))
        {
          v19 = CPRecordStoreGetContext();
          if (v19)
          {
            os_unfair_lock_assert_owner(v19 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
    v20 = CDBLockingAssertionsEnabled;
    if (!*(a1 + 24))
    {
      v20 = 0;
    }

    if (a2)
    {
      if (v20)
      {
        v21 = CPRecordStoreGetContext();
        if (v21)
        {
          os_unfair_lock_assert_owner(v21 + 20);
        }
      }

      CPRecordStoreInvalidateCaches();
    }

    else
    {
      if (v20)
      {
        v22 = CPRecordStoreGetContext();
        if (v22)
        {
          os_unfair_lock_assert_owner(v22 + 20);
        }
      }

      CPRecordStoreRevert();
    }

    *(a1 + 160) = CalMonotonicTime();
  }

  if ((*(a1 + 16) & 0x10) == 0)
  {
    v23 = CalCopyTimeZone();
    *(a1 + 40) = CalScheduledTaskCacheCreateForDatabase(a1, v23);

    CFRelease(v23);
  }
}

void CalDatabaseSetChangeReason(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 80));
  *(a1 + 352) = a2;
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t CalDatabaseGetChangeReason(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 352);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v2;
}

__CFDictionary *CalDatabaseCopyChangesSinceSequenceNumber(os_unfair_lock_s *a1, int a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr = CalDatabaseGetIntegerProperty(a1, @"CalLastCalendarChanges");
  if (valuePtr > a2)
  {
    v6 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"CalLastCalendarChanges", v6);
    CFRelease(v6);
  }

  valuePtr = CalDatabaseGetIntegerProperty(a1, @"CalLastEventRecurrenceChanges");
  if (valuePtr > a2)
  {
    v7 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"CalLastEventRecurrenceChanges", v7);
    CFRelease(v7);
  }

  valuePtr = CalDatabaseGetIntegerProperty(a1, @"CalLastEventAlarmChanges");
  if (valuePtr > a2)
  {
    v8 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"CalLastEventAlarmChanges", v8);
    CFRelease(v8);
  }

  valuePtr = CalDatabaseGetIntegerProperty(a1, @"CalLastCategoryChanges");
  if (valuePtr > a2)
  {
    v9 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"CalLastCategoryChanges", v9);
    CFRelease(v9);
  }

  valuePtr = CalDatabaseGetIntegerProperty(a1, @"CalChangesAffectingNearbyEvents24hr");
  if (valuePtr > a2)
  {
    v10 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"CalChangesAffectingNearbyEvents24hr", v10);
    CFRelease(v10);
  }

  valuePtr = CalDatabaseGetIntegerProperty(a1, @"CalChangesAffectingNearbyEventsWidgetRange");
  if (valuePtr > a2)
  {
    v11 = CFNumberCreate(v4, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(Mutable, @"CalChangesAffectingNearbyEventsWidgetRange", v11);
    CFRelease(v11);
  }

  return Mutable;
}

const __CFString *CalDatabaseGetIntegerProperty(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  IntegerProperty = _CalDatabaseGetIntegerProperty(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return IntegerProperty;
}

uint64_t CalGetDatabaseForRecord(uint64_t a1)
{
  result = CPRecordGetStore();
  if (result)
  {

    return CPRecordStoreGetContext();
  }

  return result;
}

void CalPerformSQLWithConnectionAndBindBlock(void *a1, int a2, uint64_t a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a4;
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

  v9 = CPSqliteConnectionStatementForSQL();
  if (v9)
  {
    v10 = v9;
    if (v7)
    {
      v7[2](v7, v9);
    }

    if (a2)
    {
      v11 = CPRecordStoreGetContext();
      v12 = _CalDatabasePerformStatementWithWriteLock(v11, v10);
    }

    else
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v10)
        {
          v16 = **v10;
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

      v12 = CPSqliteStatementPerform();
    }

    v18 = v12;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v10)
      {
        v19 = **v10;
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
    if (v18)
    {
      if (v18 != 101)
      {
        v21 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          v22 = 67109378;
          *v23 = v18;
          *&v23[4] = 2112;
          *&v23[6] = a3;
          _os_log_impl(&dword_1DEBB1000, v21, OS_LOG_TYPE_ERROR, "Bad result %i for query %@", &v22, 0x12u);
        }
      }
    }
  }

  else
  {
    v13 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v14 = a1[1];
      v15 = v13;
      v22 = 138412546;
      *v23 = a3;
      *&v23[8] = 2080;
      *&v23[10] = sqlite3_errmsg(v14);
      _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, "Couldn't get statement for SQL %@; Error: %s", &v22, 0x16u);
    }
  }
}

uint64_t sendResultsWithBlock(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E12C7520](a2);
  v4 = v3[2](v3, a1);

  return v4;
}

void CalSendResults(uint64_t **a1, void *a2)
{
  v5 = a2;
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

  CPSqliteStatementSendResults();
}

void _CalDatabaseAddEntity(uint64_t a1, const void *a2)
{
  if (CPRecordGetID() != 0x7FFFFFFF)
  {
    if ((CPRecordGetID() & 0x80000000) != 0)
    {
      goto LABEL_20;
    }

    if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    CPRecordGetClass();
    v6 = CPRecordStoreCopyDeletedRecordIDsOfClass();
    if (v6)
    {
      v7 = v6;
      Count = CFArrayGetCount(v6);
      if (Count < 1)
      {

        CFRelease(v7);
      }

      else
      {
        v9 = Count;
        ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);
        if (CPRecordGetID() == ValueAtIndex)
        {
          CFRelease(v7);
          goto LABEL_20;
        }

        v11 = 1;
        do
        {
          v12 = v11;
          if (v9 == v11)
          {
            break;
          }

          v13 = CFArrayGetValueAtIndex(v7, v11);
          ID = CPRecordGetID();
          v11 = v12 + 1;
        }

        while (ID != v13);
        CFRelease(v7);
        if (v12 < v9)
        {
LABEL_20:
          if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
          {
            v16 = CPRecordStoreGetContext();
            if (v16)
            {
              os_unfair_lock_assert_owner(v16 + 20);
            }
          }

          CPRecordStoreAddRecord();
          if (!*(a1 + 64))
          {
            *(a1 + 64) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9E8]);
          }

          Type = _CalEntityGetType(a2);
          Value = CFDictionaryGetValue(*(a1 + 64), Type);
          if (!Value)
          {
            Value = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
            CFDictionarySetValue(*(a1 + 64), Type, Value);
            CFRelease(Value);
          }

          CFSetAddValue(Value, a2);
          if (!*(a1 + 72))
          {
            *(a1 + 72) = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          }

          RecordID = _CalEntityGetRecordID(a2);
          if (RecordID)
          {
            CFDictionaryAddValue(*(a1 + 72), RecordID, a2);
          }

          v20 = _CalEntityGetType(a2);
          if (v20 <= 11)
          {
            if (v20 == 1)
            {
              v21 = *(a1 + 84) | 2;
              goto LABEL_44;
            }

            if (v20 != 4)
            {
              return;
            }
          }

          else
          {
            if (v20 == 12)
            {
              v21 = *(a1 + 84) | 0x10;
              goto LABEL_44;
            }

            if (v20 != 14)
            {
              if (v20 != 26)
              {
                return;
              }

              v21 = *(a1 + 84) | 0x20;
              goto LABEL_44;
            }
          }

          v21 = *(a1 + 84) | 8;
LABEL_44:
          *(a1 + 84) = v21;
        }
      }
    }
  }
}

uint64_t _CalDatabaseRemoveEntity(uint64_t result, const void *a2)
{
  if (*(result + 24))
  {
    v3 = result;
    Type = _CalEntityGetType(a2);
    v5 = 1;
    switch(Type)
    {
      case 1:
        *(v3 + 84) |= 2u;
        v5 = 2;
        goto LABEL_22;
      case 2:
        v5 = 4;
        goto LABEL_22;
      case 3:
        _CalTaskPrepareForRemove(a2);
        v5 = 8;
        goto LABEL_22;
      case 4:
      case 14:
        v6 = *(v3 + 84) | 8;
        goto LABEL_16;
      case 5:
        _CalRecurrencePrepareForRemove(a2);
        v5 = 32;
        goto LABEL_22;
      case 6:
        goto LABEL_22;
      case 7:
        v5 = 64;
        goto LABEL_22;
      case 8:
      case 10:
      case 13:
      case 22:
      case 23:
      case 24:
      case 25:
        break;
      case 9:
        v5 = 128;
        goto LABEL_22;
      case 11:
        v5 = 256;
        goto LABEL_22;
      case 12:
        v6 = *(v3 + 84) | 0x10;
        goto LABEL_16;
      case 15:
        v5 = 512;
        goto LABEL_22;
      case 16:
      case 17:
      case 19:
        goto LABEL_3;
      case 18:
        v5 = 2048;
        goto LABEL_22;
      case 20:
        v5 = 4096;
        goto LABEL_22;
      case 21:
        v5 = 0x2000;
        goto LABEL_22;
      case 26:
        v6 = *(v3 + 84) | 0x20;
LABEL_16:
        *(v3 + 84) = v6;
        break;
      default:
        if (Type == 102)
        {
LABEL_3:
          v5 = 1024;
LABEL_22:
          *(v3 + 88) |= v5;
        }

        break;
    }

    if (*(v3 + 64))
    {
      v7 = _CalEntityGetType(a2);
      Value = CFDictionaryGetValue(*(v3 + 64), v7);
      if (Value)
      {
        CFSetRemoveValue(Value, a2);
      }
    }

    if (*(v3 + 72))
    {
      RecordID = _CalEntityGetRecordID(a2);
      if (RecordID)
      {
        CFDictionaryRemoveValue(*(v3 + 72), RecordID);
      }
    }

    Store = CPRecordGetStore();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (Store)
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          os_unfair_lock_assert_owner(Context + 20);
        }
      }
    }

    return CPRecordStoreRemoveRecord();
  }

  return result;
}

void _CalDatabaseAddPostCommitActionWithBlock(uint64_t a1, void *a2)
{
  v3 = a2;
  Mutable = *(a1 + 112);
  v6 = v3;
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    v3 = v6;
    *(a1 + 112) = Mutable;
  }

  v5 = [v3 copy];
  CFArrayAppendValue(Mutable, v5);
}

const void *CalDatabaseCopyEntityWithRecordID(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 80));
  if (CalRecordIDIsTemporary(a2) && (v4 = *(a1 + 72)) != 0)
  {
    Value = CFDictionaryGetValue(v4, a2);
    v6 = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  else
  {
    v6 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  if (v6)
  {
    return v6;
  }

  switch(CalRecordIDGetEntityType(a2))
  {
    case 1u:
      v8 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyCalendarWithUID(a1, v8);
      break;
    case 2u:
      v13 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyEventWithUID(a1, v13);
      break;
    case 3u:
      v17 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyCalendarItemWithRowID(a1, v17);
      break;
    case 4u:
      v16 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyAlarmWithUID(a1, v16);
      break;
    case 5u:
      v11 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyRecurrenceWithUID(a1, v11);
      break;
    case 6u:
      v14 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyStoreWithUID(a1, v14);
      break;
    case 7u:
      v18 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyAttendeeWithUID(a1, v18);
      break;
    case 8u:
      v19 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyOrganizerWithUID(a1, v19);
      break;
    case 9u:
      v23 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyEventActionWithUID(a1, v23);
      break;
    case 0xAu:
      v22 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyExceptionDateWithUID(a1, v22);
      break;
    case 0xBu:
      v10 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyAttachmentWithUID(a1, v10);
      break;
    case 0xCu:
      v15 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyCategoryWithUID(a1, v15);
      break;
    case 0xFu:
      v12 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyShareeWithUID(a1, v12);
      break;
    case 0x10u:
      v9 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyInviteReplyNotificationWithUID(a1, v9);
      break;
    case 0x11u:
      v20 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyResourceChangeNotificationWithUID(a1, v20);
      break;
    case 0x12u:
      v21 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyResourceChangeWithUID(a1, v21);
      break;
    case 0x13u:
      v25 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopySuggestionNotificationWithUID(a1, v25);
      break;
    case 0x15u:
      v24 = CalRecordIDGetRowID(a2);

      result = CalDatabaseCopyContactWithUID(a1, v24);
      break;
    default:
      return v6;
  }

  return result;
}

uint64_t _CalDatabaseCopyScheduledTaskCache(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRetain(*(a1 + 40));
  }

  return v1;
}

void CalDatabaseRegisterYieldBlock(uint64_t a1, void *a2)
{
  v3 = a2;
  pthread_mutex_lock((a1 + 192));
  v4 = MEMORY[0x1E12C7520](*(a1 + 184));
  cf = v4;
  if (v3)
  {
    v5 = [v3 copy];
    v6 = CFRetain(v5);

    v4 = cf;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 184) = v6;
  if (v4)
  {
    CFRelease(cf);
  }

  pthread_mutex_unlock((a1 + 192));
}

uint64_t _CalDatabaseUnlockRequested(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 24);
  if (v2)
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
    if (CDBLockingAssertionsEnabled == 1 && Database != 0)
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

    v2 = CPSqliteDatabaseUnlockRequested();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v2;
}

uint64_t CalDatabaseCreateWithOptionsDatabaseDirectoryURLAndContainerProvider(uint64_t a1, void *a2, void *a3)
{
  if (a1 || a2 || a3)
  {
    v6 = a3;
    v7 = a2;
    v5 = objc_alloc_init(CalDatabaseInitializationConfiguration);
    [(CalDatabaseInitializationConfiguration *)v5 setOptions:a1];
    [(CalDatabaseInitializationConfiguration *)v5 setDirectoryURL:v7];

    [(CalDatabaseInitializationConfiguration *)v5 setDataContainerProvider:v6];
  }

  else
  {
    v5 = 0;
  }

  v8 = CalDatabaseCreateWithConfiguration(v5);

  return v8;
}

uint64_t __CalDatabaseCreateWithConfiguration_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  CDBLockingAssertionsEnabled = result;
  return result;
}

uint64_t _CalDatabaseCorruptionHandler(void *a1)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v2 = a1[1];
  if (!v2)
  {
    v2 = a1[35];
    if (!v2)
    {
      v16 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "No existing database handle while handling corrupt database error.", buf, 2u);
      }

      goto LABEL_14;
    }
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
LABEL_14:
    v4 = 0xFFFFFFFFLL;
    goto LABEL_19;
  }

  v4 = sqlite3_extended_errcode(*(v2 + 8));
  v40[0] = 0;
  v5 = sqlite3_file_control(v3, 0, 7, v40);
  if (v40[0])
  {
    v6 = (*(*v40[0] + 16))(v40[0], buf, 100, 0);
    if (!v6)
    {
      v15 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:100];
      goto LABEL_16;
    }

    v7 = v6;
    v33 = 0;
    v8 = sqlite3_file_control(v3, 0, 4, &v33);
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v34) = 67109632;
      HIDWORD(v34) = v7;
      v35 = 1024;
      v36 = v33;
      v37 = 1024;
      v38 = v8;
      v10 = "Reading sqlite database header failed; sqlitecode=%i, sqlite_last_errno=%i, sqlite3_file_control return value=%i";
      v11 = &v34;
      v12 = v9;
      v13 = 20;
LABEL_10:
      _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, v10, v11, v13);
    }
  }

  else
  {
    v14 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      v10 = "Unable to get sqlite3_file: %i";
      v11 = buf;
      v12 = v14;
      v13 = 8;
      goto LABEL_10;
    }
  }

  v15 = 0;
LABEL_16:
  v17 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v18 = v17;
    v19 = [v15 base64EncodedStringWithOptions:0];
    *buf = 67109378;
    *&buf[4] = v4;
    *&buf[8] = 2112;
    *&buf[10] = v19;
    _os_log_impl(&dword_1DEBB1000, v18, OS_LOG_TYPE_ERROR, "Calendar database corrupted with extended sqlite code %i; header from corrupt database=%@", buf, 0x12u);
  }

LABEL_19:
  if (!a1[13] || (Context = CPRecordStoreGetContext()) == 0 || (v21 = Context, *(Context + 362) != 1))
  {
LABEL_25:
    if (v4 == -1)
    {
      v26 = @"UNKNOWN";
    }

    else
    {
      v26 = @"SQLITE_OK";
      switch(v4)
      {
        case 0:
          break;
        case 1:
          v26 = @"SQLITE_ERROR";
          break;
        case 2:
          v26 = @"SQLITE_INTERNAL";
          break;
        case 3:
          v26 = @"SQLITE_PERM";
          break;
        case 4:
          v26 = @"SQLITE_ABORT";
          break;
        case 5:
          v26 = @"SQLITE_BUSY";
          break;
        case 6:
          v26 = @"SQLITE_LOCKED";
          break;
        case 7:
          v26 = @"SQLITE_NOMEM";
          break;
        case 8:
          v26 = @"SQLITE_READONLY";
          break;
        case 9:
          v26 = @"SQLITE_INTERRUPT";
          break;
        case 10:
          v26 = @"SQLITE_IOERR";
          break;
        case 11:
          v26 = @"SQLITE_CORRUPT";
          break;
        case 12:
          v26 = @"SQLITE_NOTFOUND";
          break;
        case 13:
          v26 = @"SQLITE_FULL";
          break;
        case 14:
          v26 = @"SQLITE_CANTOPEN";
          break;
        case 15:
          v26 = @"SQLITE_PROTOCOL";
          break;
        case 16:
          v26 = @"SQLITE_EMPTY";
          break;
        case 17:
          v26 = @"SQLITE_SCHEMA";
          break;
        case 18:
          v26 = @"SQLITE_TOOBIG";
          break;
        case 19:
          v26 = @"SQLITE_CONSTRAINT";
          break;
        case 20:
          v26 = @"SQLITE_MISMATCH";
          break;
        case 21:
          v26 = @"SQLITE_MISUSE";
          break;
        case 22:
          v26 = @"SQLITE_NOLFS";
          break;
        case 23:
          v26 = @"SQLITE_AUTH";
          break;
        case 24:
          v26 = @"SQLITE_FORMAT";
          break;
        case 25:
          v26 = @"SQLITE_RANGE";
          break;
        case 26:
          v26 = @"SQLITE_NOTADB";
          break;
        case 27:
          v26 = @"SQLITE_NOTICE";
          break;
        case 28:
          v26 = @"SQLITE_WARNING";
          break;
        default:
          if (v4 == 100)
          {
            v26 = @"SQLITE_ROW";
          }

          else if (v4 == 101)
          {
            v26 = @"SQLITE_DONE";
          }

          else
          {
            v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:sqlite3_errstr(v4)];
          }

          break;
      }
    }

    v27 = [objc_alloc(MEMORY[0x1E6992EE8]) initWithType:@"Database" subtype:@"SQLCorruption" context:v26];
    v40[0] = @"com.apple.calendardatabase.sqlite_error_code";
    v28 = [MEMORY[0x1E696AD98] numberWithInt:v4];
    v34 = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:v40 count:1];
    *buf = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];

    [v27 setEvents:v30];
    [v27 setIgnoreRateLimiting:1];
    [v27 report];

    return 0;
  }

  v22 = [MEMORY[0x1E696AC08] defaultManager];
  v23 = [v22 fileExistsAtPath:*(v21 + 128)];

  v24 = CDBLogHandle;
  if (v23)
  {
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v25 = *(v21 + 128);
      *buf = 138412290;
      *&buf[4] = v25;
      _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_ERROR, "The aux database at path %@ is corrupt.", buf, 0xCu);
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v32 = *(v21 + 128);
    *buf = 138412290;
    *&buf[4] = v32;
    _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_DEFAULT, "The aux database at path %@ no longer exists. Since this is an aux database, assuming that the volume was removed and ignoring.", buf, 0xCu);
  }

  return 1;
}