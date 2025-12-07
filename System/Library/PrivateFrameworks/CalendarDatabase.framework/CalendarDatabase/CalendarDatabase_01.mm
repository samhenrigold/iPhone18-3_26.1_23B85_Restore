uint64_t _CalDatabaseCommitHook(uint64_t a1)
{
  _CalDatabaseReportIntegrityErrors(a1);
  if (!*(a1 + 104))
  {
    v5 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v10 = 0;
    v6 = "The calendar database was committed, but we can't find the CPRecordStoreRef on it.";
    v7 = &v10;
LABEL_9:
    _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
    return 0;
  }

  Context = CPRecordStoreGetContext();
  if (!Context)
  {
    v5 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return 0;
    }

    v9 = 0;
    v6 = "The calendar database was committed, but we can't find the CalDatabaseRef on the record store.";
    v7 = &v9;
    goto LABEL_9;
  }

  v3 = Context;
  if ((*(Context + 363) & 1) == 0)
  {
    v4 = *(Context + 312);
    [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_618];
    [*(v3 + 312) removeAllObjects];
  }

  return 0;
}

void CalDatabaseDatabaseDeletedHandler(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 67109120;
    v8[1] = a2;
    _os_log_impl(&dword_1DEBB1000, v4, OS_LOG_TYPE_ERROR, "Opening the database caused it to be deleted for reason: %d", v8, 8u);
  }

  if (!*(a1 + 104))
  {
    v6 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v8[0]) = 0;
    v7 = "The calendar database was deleted when opened, but we can't find the CPRecordStoreRef to notify!";
    goto LABEL_10;
  }

  Context = CPRecordStoreGetContext();
  if (Context)
  {
    *(Context + 361) = 1;
    return;
  }

  v6 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v8[0]) = 0;
    v7 = "The calendar database was deleted when opened, but we can't find the CalDatabaseRef to notify!";
LABEL_10:
    _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
  }
}

void __CalDatabaseCreateWithConfiguration_block_invoke_89(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    pthread_mutex_lock(WeakRetained + 3);
    v3 = *&v2[2].__opaque[48];
    if (v3)
    {
      (*(v3 + 16))();
    }

    pthread_mutex_unlock(v2 + 3);

    CFRelease(v2);
  }
}

void _CalDatabaseStatementCompilationFailureHandler(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) != a2)
  {
    v5 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v16) = 0;
    v6 = "Ignoring statement creation failure because the connection is read-only";
    goto LABEL_4;
  }

  if (a3 == 1)
  {
    if ([MEMORY[0x1E6992F90] hasBeenUnlockedSinceBoot])
    {
      _CalDatabaseValidateSchemaDeleteDBAndAbortOnFailure(a1, a2);
      v12 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
      {
        v16 = 136315394;
        *v17 = a4;
        *&v17[8] = 2080;
        *&v17[10] = a5;
        _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_FAULT, "Failed to compile sql statement %s: %s", &v16, 0x16u);
      }

      if (*(a1 + 104))
      {
        Context = CPRecordStoreGetContext();
        if (Context)
        {
          _CalDatabaseIntegrityError(Context, @"SQL Compile Error");
        }
      }
    }

    else
    {
      v5 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v16) = 0;
        v6 = "Ignoring statement creation failure because device has never unlocked.";
LABEL_4:
        _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_ERROR, v6, &v16, 2u);
      }
    }
  }

  else
  {
    v14 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      v16 = 67109378;
      *v17 = a3;
      *&v17[4] = 2082;
      *&v17[6] = sqlite3_errstr(a3);
      _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, "Ignoring statement creation failure for error %i (%{public}s)", &v16, 0x12u);
    }
  }
}

void _CalDatabaseChangedExternally(uint64_t a1, uint64_t a2)
{
  v2 = _CalDatabaseCopyDatabaseIfValid(a2);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  os_unfair_lock_lock(v2 + 20);
  v4 = *(v3 + 120);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v6 < 0 != v5)
  {
    goto LABEL_21;
  }

  *(v3 + 120) = v6;
  if (CDBLockingAssertionsEnabled == 1 && *(v3 + 24) != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  LastSequenceNumber = CPRecordStoreGetLastSequenceNumber();
  if (LastSequenceNumber == -1)
  {
    LastSequenceNumber = *(v3 + 124);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(v3 + 24))
    {
      v10 = CPRecordStoreGetContext();
      if (v10)
      {
        os_unfair_lock_assert_owner(v10 + 20);
      }
    }
  }

  if (CPRecordStoreGetSequenceNumber() != LastSequenceNumber)
  {
    *(v3 + 120) = 0;
LABEL_21:
    if ((*(v3 + 16) & 4) == 0)
    {
      _CalDatabaseRevertInternal(v3, 0);
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner((v3 + 80));
    }

    os_unfair_lock_unlock((v3 + 80));
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterPostNotification(LocalCenter, @"kCalDatabaseChangedExternallyNotification", v3, 0, 1u);
    goto LABEL_26;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((v3 + 80));
  }

  os_unfair_lock_unlock((v3 + 80));
LABEL_26:

  CFRelease(v3);
}

void CalDatabaseReceivedSQLProfileLoggingEnabledNotification(uint64_t a1, uint64_t a2, __CFString *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = a3;
    _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_DEBUG, "Received notification: [%@]", &v12, 0xCu);
  }

  v6 = _CalDatabaseCopyDatabaseIfValid(a2);
  if (v6)
  {
    v7 = v6;
    v8 = [*(v6 + 296) get_sqlProfileLoggingEnabled];
    v9 = ct_green_tea_logging_enabled();
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"Disabling";
      if (v8)
      {
        v11 = @"Enabling";
      }

      v12 = 138412546;
      v13 = v11;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_DEBUG, "[%@] profile logging for database: [%p]", &v12, 0x16u);
    }

    CalDatabaseSetProfilingEnabled(v7, v8, v9, 1);
    CFRelease(v7);
  }
}

void CalDatabaseReceivedGreenTeaLoggingEnabledNotification(uint64_t a1, uint64_t a2, __CFString *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412290;
    v13 = a3;
    _os_log_impl(&dword_1DEBB1000, v5, OS_LOG_TYPE_DEBUG, "Received notification: [%@]", &v12, 0xCu);
  }

  v6 = _CalDatabaseCopyDatabaseIfValid(a2);
  if (v6)
  {
    v7 = v6;
    v8 = [*(v6 + 296) get_sqlProfileLoggingEnabled];
    v9 = ct_green_tea_logging_enabled();
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v11 = @"Disabling";
      if (v9)
      {
        v11 = @"Enabling";
      }

      v12 = 138412546;
      v13 = v11;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_DEBUG, "[%@] greentea logging for database: [%p]", &v12, 0x16u);
    }

    CalDatabaseSetProfilingEnabled(v7, v8, v9, 1);
    CFRelease(v7);
  }
}

uint64_t CalDatabaseCreateWithOptionsAndDatabaseDirectory(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:a2];
  }

  else
  {
    v3 = 0;
  }

  v4 = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(a1, v3);

  return v4;
}

uint64_t CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(uint64_t a1, void *a2)
{
  v3 = a2;
  IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(0, 0);
  if ((a1 & 0x800) != 0 || !v3 || ([v3 path], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", IfNeeded), v5, v6))
  {
    v7 = [MEMORY[0x1E6993090] sharedInstance];
  }

  else
  {
    v8 = [v3 URLByAppendingPathComponent:*MEMORY[0x1E6993110] isDirectory:1];
    v7 = [objc_alloc(MEMORY[0x1E6992FF8]) initWithCalendarDataContainerURL:v8];
  }

  v9 = CalDatabaseCreateWithOptionsDatabaseDirectoryURLAndContainerProvider(a1, v3, v7);

  return v9;
}

CalDatabaseInitializationConfiguration *CalDatabaseCopyInitializationConfiguration(uint64_t a1)
{
  v2 = objc_alloc_init(CalDatabaseInitializationConfiguration);
  [(CalDatabaseInitializationConfiguration *)v2 setOptions:*(a1 + 16)];
  v3 = *(a1 + 136);
  if (!v3)
  {
    if (*(a1 + 128))
    {
      v3 = [MEMORY[0x1E695DFF8] fileURLWithPath:?];
    }

    else
    {
      v3 = 0;
    }
  }

  [(CalDatabaseInitializationConfiguration *)v2 setDirectoryURL:v3];
  [(CalDatabaseInitializationConfiguration *)v2 setDataContainerProvider:*(a1 + 288)];
  [(CalDatabaseInitializationConfiguration *)v2 setPreferences:*(a1 + 296)];

  return v2;
}

void CalDatabaseSetClientIdentifier(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 80));
  v4 = *(a1 + 144);
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

    *(a1 + 144) = v5;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

CFTypeRef CalDatabaseCopyClientIdentifierOptionalLock(uint64_t a1, char a2)
{
  if (a2)
  {
    os_unfair_lock_lock((a1 + 80));
    v3 = [*(a1 + 144) copy];
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
    v3 = [*(a1 + 144) copy];
    if (!v3)
    {
LABEL_7:
      v3 = CalDatabaseGetProcessName();
    }
  }

  v4 = CFRetain(v3);

  return v4;
}

id CalDatabaseGetProcessName()
{
  v4 = *MEMORY[0x1E69E9840];
  buffer[0] = 0;
  v0 = getpid();
  proc_name(v0, buffer, 0x400u);
  v1 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:buffer];

  return v1;
}

uint64_t CalDatabaseSaveAndFlushCaches(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    return 1;
  }

  v1 = 1;
  CalDatabaseSaveInternalWithOptions(a1, 1u, 0, &cf, 4);
  if (cf)
  {
    CFRelease(cf);
    return 0;
  }

  return v1;
}

CFTypeRef CalDatabaseSaveAndFlushCachesWithConflictPolicy(CFTypeRef result, unsigned __int16 a2)
{
  v2 = 0;
  if (result)
  {
    CalDatabaseSaveInternalWithOptions(result, 1u, a2, &v2, 4);
    return v2;
  }

  return result;
}

void CalDatabaseSaveInternalWithOptions(uint64_t a1, unsigned int a2, unsigned int a3, CFTypeRef *a4, char a5)
{
  v286 = *MEMORY[0x1E69E9840];
  v6 = (a5 & 2) == 0;
  v248 = CalDatabaseCopyClientIdentifierOptionalLock(a1, v6);
  v253 = a1;
  v249 = CalDatabaseCopyClientName(a1, v6);
  v7 = CDBLogHandle;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CalBooleanAsString();
    *buf = 138543874;
    *&buf[4] = v248;
    *&buf[12] = 2114;
    *&buf[14] = v249;
    *&buf[22] = 2114;
    *&buf[24] = v8;
    _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_DEFAULT, "Commencing database save for client with identifier [%{public}@], name [%{public}@].  Commit: [%{public}@]", buf, 0x20u);
  }

  v251 = objc_alloc_init(MEMORY[0x1E6993060]);
  [v251 start];
  cf = 0;
  if ((a5 & 2) == 0)
  {
    os_unfair_lock_lock((v253 + 80));
  }

  *(v253 + 366) = (a5 & 4) != 0;
  _CalDatabaseTrimConsumedSequences(v253);
  v9 = v253;
  if (*(v253 + 24))
  {
    if (CDBLockingAssertionsEnabled == 1)
    {
      Context = CPRecordStoreGetContext();
      if (Context)
      {
        os_unfair_lock_assert_owner(Context + 20);
      }
    }

    v11 = CPRecordStoreCopyAddedRecords();
    if (CDBLockingAssertionsEnabled == 1)
    {
      v12 = CPRecordStoreGetContext();
      if (v12)
      {
        os_unfair_lock_assert_owner(v12 + 20);
      }
    }

    v13 = CPRecordStoreCopyChangedRecords();
    if (CDBLockingAssertionsEnabled == 1)
    {
      v14 = CPRecordStoreGetContext();
      if (v14)
      {
        os_unfair_lock_assert_owner(v14 + 20);
      }
    }

    v15 = CPRecordStoreCopyDeletedRecords();
    v16 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_DEBUG, "Commencing log of changes to be saved.", buf, 2u);
      if (v11)
      {
        Count = CFArrayGetCount(v11);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            v19 = objc_autoreleasePoolPush();
            ValueAtIndex = CFArrayGetValueAtIndex(v11, i);
            v21 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v22 = v21;
              DebugDescription = _CalEntityGetDebugDescription(ValueAtIndex);
              *buf = 138412290;
              *&buf[4] = DebugDescription;
              _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_DEBUG, "Added entity: [%@]", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v19);
          }
        }
      }

      if (v13)
      {
        v24 = CFArrayGetCount(v13);
        if (v24 >= 1)
        {
          for (j = 0; j != v24; ++j)
          {
            v26 = objc_autoreleasePoolPush();
            v27 = CFArrayGetValueAtIndex(v13, j);
            v28 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v29 = v28;
              v30 = _CalEntityGetDebugDescription(v27);
              *buf = 138412290;
              *&buf[4] = v30;
              _os_log_impl(&dword_1DEBB1000, v29, OS_LOG_TYPE_DEBUG, "Updated entity: [%@]", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v26);
          }
        }
      }

      if (v15)
      {
        v31 = CFArrayGetCount(v15);
        if (v31 >= 1)
        {
          for (k = 0; k != v31; ++k)
          {
            v33 = objc_autoreleasePoolPush();
            v34 = CFArrayGetValueAtIndex(v15, k);
            v35 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
            {
              v36 = v35;
              v37 = _CalEntityGetDebugDescription(v34);
              *buf = 138412290;
              *&buf[4] = v37;
              _os_log_impl(&dword_1DEBB1000, v36, OS_LOG_TYPE_DEBUG, "Deleted entity: [%@]", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v33);
          }
        }
      }

      v38 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_DEBUG, "Completed log of changes to be saved.", buf, 2u);
      }
    }

    v285 = 0;
    v283 = 0u;
    v284 = 0u;
    v281 = 0u;
    v282 = 0u;
    v280 = 0u;
    memset(buf, 0, sizeof(buf));
    v278 = 0;
    v276 = 0u;
    v277 = 0u;
    v274 = 0u;
    v275 = 0u;
    v272 = 0u;
    v273 = 0u;
    v271 = 0u;
    v270 = 0;
    v268 = 0u;
    v269 = 0u;
    v266 = 0u;
    v267 = 0u;
    v264 = 0u;
    v265 = 0u;
    v263 = 0u;
    LODWORD(theArray) = 0;
    *v259 = 0;
    v258 = 0;
    if (v11)
    {
      _CalDatabaseCountEntitiesByType(v11, buf, &theArray);
      CFRelease(v11);
    }

    if (v13)
    {
      _CalDatabaseCountEntitiesByType(v13, &v271, v259);
      CFRelease(v13);
    }

    if (v15)
    {
      _CalDatabaseCountEntitiesByType(v15, &v263, &v258);
      CFRelease(v15);
    }

    for (m = 0; m != 29; ++m)
    {
      v40 = *&buf[4 * m];
      if (v40 || *(&v271 + m) || *(&v263 + m))
      {
        v41 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v41;
          Name = CalEntityTypeGetName(m + 1);
          v44 = *(&v271 + m);
          v45 = *(&v263 + m);
          *v260 = 138544130;
          *&v260[4] = Name;
          *&v260[12] = 1024;
          *&v260[14] = v40;
          *&v260[18] = 1024;
          *&v260[20] = v44;
          v261 = 1024;
          v262 = v45;
          _os_log_impl(&dword_1DEBB1000, v42, OS_LOG_TYPE_DEFAULT, "Summary of changes being saved: %{public}@ (add: %i mod: %i del: %i)", v260, 0x1Eu);
        }
      }
    }

    v46 = theArray;
    v47 = *v259;
    v48 = v258;
    if (theArray || *v259 || v258)
    {
      v49 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v260 = 67109632;
        *&v260[4] = v46;
        *&v260[8] = 1024;
        *&v260[10] = v47;
        *&v260[14] = 1024;
        *&v260[16] = v48;
        _os_log_impl(&dword_1DEBB1000, v49, OS_LOG_TYPE_DEFAULT, "Summary of changes being saved: Unknown (add: %i mod: %i del: %i)", v260, 0x14u);
      }
    }

    v9 = v253;
  }

  else
  {
    v50 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_61;
    }

    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v50, OS_LOG_TYPE_ERROR, "No recordStore found.  Will not log database changes to be saved.", buf, 2u);
  }

  if (*(v9 + 24))
  {
    v51 = *(v9 + 32);
    if (v51)
    {
      v246 = CFRetain(v51);
      _CalEventOccurrenceCacheBeginTrackingUpdates(v246);
      v9 = v253;
    }

    else
    {
      v246 = 0;
    }

    v52 = *(v9 + 40);
    if (v52)
    {
      v245 = CFRetain(v52);
      _CalScheduledTaskCacheBeginTrackingUpdates(v245);
      v9 = v253;
    }

    else
    {
      v245 = 0;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v9 + 24))
      {
        v53 = CPRecordStoreGetContext();
        if (v53)
        {
          os_unfair_lock_assert_owner(v53 + 20);
        }
      }
    }

    v54 = CPRecordStoreCopyChangedRecords();
    v55 = v54;
    if (v54)
    {
      v56 = CFArrayGetCount(v54);
      if (v56 >= 1)
      {
        v57 = 0;
        while (1)
        {
          v58 = CFArrayGetValueAtIndex(v55, v57);
          Type = _CalEntityGetType(v58);
          if (Type != 7)
          {
            break;
          }

          if (!_CalParticipantGetOwner(v58))
          {
            v63 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 0;
              v61 = v63;
              v62 = "Attendee has no owner. We need to remove it.";
LABEL_85:
              _os_log_impl(&dword_1DEBB1000, v61, OS_LOG_TYPE_DEBUG, v62, buf, 2u);
            }

LABEL_86:
            _CalDatabaseRemoveEntity(v253, v58);
          }

LABEL_87:
          if (v56 == ++v57)
          {
            goto LABEL_88;
          }
        }

        if (Type != 8 || _CalParticipantGetOwner(v58))
        {
          goto LABEL_87;
        }

        v60 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          v61 = v60;
          v62 = "Organizer has no owner.  We need to remove it.";
          goto LABEL_85;
        }

        goto LABEL_86;
      }

LABEL_88:
      CFRelease(v55);
    }

    theArray = 0;
    *&v271 = 0;
    *(&v271 + 1) = &v271;
    *&v272 = 0x2020000000;
    BYTE8(v272) = 0;
    *&v263 = 0;
    *(&v263 + 1) = &v263;
    *&v264 = 0x2020000000;
    BYTE8(v264) = 0;
    *v260 = 0;
    *&v260[8] = v260;
    *&v260[16] = 0x2020000000;
    LOBYTE(v261) = 0;
    v255[0] = MEMORY[0x1E69E9820];
    v255[1] = 3221225472;
    v255[2] = __CalDatabaseSaveInternalWithOptions_block_invoke;
    v255[3] = &unk_1E86886D8;
    v255[4] = &v271;
    v255[5] = &v263;
    v255[6] = v260;
    v239 = MEMORY[0x1E12C7520](v255);
    v64 = v253;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v253 + 24))
      {
        v65 = CPRecordStoreGetContext();
        if (v65)
        {
          os_unfair_lock_assert_owner(v65 + 20);
        }
      }
    }

    v66 = CPRecordStoreCopyAddedRecords();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v253 + 24))
      {
        v67 = CPRecordStoreGetContext();
        if (v67)
        {
          os_unfair_lock_assert_owner(v67 + 20);
        }
      }
    }

    v247 = CPRecordStoreCopyChangedRecords();
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*(v253 + 24))
      {
        v68 = CPRecordStoreGetContext();
        if (v68)
        {
          os_unfair_lock_assert_owner(v68 + 20);
        }
      }
    }

    v254 = CPRecordStoreCopyDeletedRecords();
    v69 = *(v253 + 264);
    if (a2)
    {
      if (v66)
      {
        v240 = v66;
        if (v69)
        {
          v240 = [(__CFArray *)v66 arrayByAddingObjectsFromArray:?];
        }
      }

      else
      {
        v240 = *(v253 + 264);
      }

      v280 = 0u;
      memset(buf, 0, sizeof(buf));
      v73 = [MEMORY[0x1E695DF00] CalSimulatedDateForNow];
      *buf = 1;
      v74 = v73;
      v75 = [v74 dateByAddingTimeInterval:86400.0];
      v76 = [objc_alloc(MEMORY[0x1E6992F70]) initWithStartDate:v74 endDate:v75];
      v77 = *&buf[8];
      *&buf[8] = v76;

      *&buf[16] = 1;
      v78 = CalCopyCalendar();
      v79 = [v78 startOfDayForDate:v74];
      [MEMORY[0x1E69930B0] lookaheadIntervalForDaysPerEntry:*MEMORY[0x1E6992EA8]];
      v80 = [v79 dateByAddingTimeInterval:?];
      v81 = [objc_alloc(MEMORY[0x1E6992F70]) initWithStartDate:v79 endDate:v80];
      v82 = *&buf[24];
      *&buf[24] = v81;

      LOBYTE(v280) = 0;
      v83 = v253;
      _CalDatabaseChangesOfTypeMayAffectWidgets(v253, v240, 0, buf);
      if ((buf[1] & 1) == 0)
      {
        _CalDatabaseChangesOfTypeMayAffectWidgets(v253, v247, 1uLL, buf);
        if ((buf[1] & 1) == 0)
        {
          _CalDatabaseChangesOfTypeMayAffectWidgets(v253, v254, 2uLL, buf);
        }
      }

      v72 = buf[17];
      if (buf[17])
      {
        *(v253 + 84) |= 0x80u;
      }

      else
      {
        v84 = CDBWidgetReloadHandle;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
        {
          *v259 = 0;
          _os_log_impl(&dword_1DEBB1000, v84, OS_LOG_TYPE_DEFAULT, "Disallowing reload for changes because they don't affect the widget", v259, 2u);
        }

        v83 = v253;
      }

      if (buf[1] == 1)
      {
        *(v83 + 84) |= 0x40u;
      }

      for (n = 40; n != -8; n -= 16)
      {
      }

      v64 = v253;
    }

    else
    {
      v70 = v66;
      if (v69)
      {
        if (!v66)
        {
          v240 = 0;
          v72 = 0;
          goto LABEL_129;
        }

        v70 = [*(v253 + 264) arrayByAddingObjectsFromArray:v66];
      }

      if (!v70 || (v71 = *(v253 + 264), v70 == v71))
      {
        v72 = 0;
      }

      else
      {
        if (v71)
        {
          CFRelease(v71);
        }

        v72 = 0;
        *(v253 + 264) = CFRetain(v70);
      }

      v240 = v66;
    }

LABEL_129:
    if (_os_feature_enabled_impl())
    {
      v86 = [EKWeakLinkClass() sharedNotifier];
      v87 = [v86 isObserved];

      if (v87)
      {
        v64 = v253;
        v238 = _CalDatabaseChangesOfTypeMayAffectAppEntities(v240, 0) || _CalDatabaseChangesOfTypeMayAffectAppEntities(v247, 1) || _CalDatabaseChangesOfTypeMayAffectAppEntities(v254, 2);
LABEL_137:
        if ((*(v64 + 365) & 1) != 0 || __CalDatabaseBeginWriteTransaction(v64, "write at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabase.m:2822"))
        {
          *(v64 + 365) = a2 ^ 1;
          if (((a2 ^ 1) & 1) == 0)
          {
            v89 = [[CalDatabaseChangeReport alloc] initWithAdded:v240 updated:v247 deleted:v254];
            v90 = 0;
LABEL_145:
            if (cf)
            {
              goto LABEL_239;
            }

            cf = _CalStoreSaveAddedRecords(v253, a3);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 1, _CalCalendarHasValidParent);
            cf = _CalCalendarSaveAddedRecords(v253, a3);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 28, _CalImageHasValidParent);
            cf = _CalImageSaveAddedRecords(v253, a3);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 29, _CalColorHasValidParent);
            cf = _CalColorSaveAddedRecords(v253, a3);
            if (cf)
            {
              goto LABEL_239;
            }

            v93 = *(v253 + 64);
            if (v93)
            {
              Mutable = CFSetCreateMutable(0, 0, MEMORY[0x1E695E9F8]);
              Value = CFDictionaryGetValue(v93, 2);
              if (Value)
              {
                CFSetApplyFunction(Value, _CalendarItemSetUnion, Mutable);
              }

              v96 = CFDictionaryGetValue(v93, 3);
              if (v96)
              {
                CFSetApplyFunction(v96, _CalendarItemSetUnion, Mutable);
              }

              if (Mutable)
              {
                if (CFSetGetCount(Mutable) >= 1)
                {
                  v97 = CFStringCreateMutable(0, 0);
                  v98 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                  v99 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                  *buf = v253;
                  *&buf[8] = v97;
                  *&buf[16] = v98;
                  *&buf[24] = v99;
                  CFSetApplyFunction(Mutable, _CalGatherAddedDetachedItemDetails, buf);
                  Length = CFStringGetLength(v97);
                  if (Length >= 1)
                  {
                    v287.length = 1;
                    v287.location = Length - 1;
                    CFStringDelete(v97, v287);
                    if (CDBLockingAssertionsEnabled == 1)
                    {
                      if (*(v253 + 24))
                      {
                        v101 = CPRecordStoreGetContext();
                        if (v101)
                        {
                          os_unfair_lock_assert_owner(v101 + 20);
                        }
                      }
                    }

                    Database = CPRecordStoreGetDatabase();
                    v103 = CFStringCreateMutable(0, 0);
                    CFStringAppendFormat(v103, 0, @"SELECT ROWID, orig_item_id, orig_date FROM CalendarItem WHERE orig_date IN (%@)", v97);
                    if (CDBLockingAssertionsEnabled == 1)
                    {
                      if (Database)
                      {
                        if (*(Database + 104))
                        {
                          v104 = CPRecordStoreGetContext();
                          if (v104)
                          {
                            os_unfair_lock_assert_owner(v104 + 20);
                          }
                        }
                      }
                    }

                    v105 = CPSqliteDatabaseStatementForReading();
                    v106 = v105;
                    if (v105)
                    {
                      if (CDBLockingAssertionsEnabled == 1)
                      {
                        if (*v105)
                        {
                          v107 = **v105;
                          if (v107)
                          {
                            if (*(v107 + 104))
                            {
                              v108 = CPRecordStoreGetContext();
                              if (v108)
                              {
                                os_unfair_lock_assert_owner(v108 + 20);
                              }
                            }
                          }
                        }
                      }

                      CPSqliteStatementSendResults();
                      if (CDBLockingAssertionsEnabled == 1)
                      {
                        if (*v106)
                        {
                          v109 = **v106;
                          if (v109)
                          {
                            if (*(v109 + 104))
                            {
                              v110 = CPRecordStoreGetContext();
                              if (v110)
                              {
                                os_unfair_lock_assert_owner(v110 + 20);
                              }
                            }
                          }
                        }
                      }

                      CPSqliteStatementReset();
                    }

                    CFRelease(v103);
                  }

                  CFRelease(v99);
                  CFRelease(v98);
                  CFRelease(v97);
                }

                CFRelease(Mutable);
              }
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 2, _CalCalendarItemHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 3, _CalCalendarItemHasValidParent);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*(v253 + 24))
              {
                v111 = CPRecordStoreGetContext();
                if (v111)
                {
                  os_unfair_lock_assert_owner(v111 + 20);
                }
              }
            }

            v112 = CPRecordStoreCopyAddedRecords();
            v113 = v112;
            if (v112)
            {
              v114 = CFArrayGetCount(v112);
              if (v114 >= 1)
              {
                for (ii = 0; ii != v114; ++ii)
                {
                  v116 = CFArrayGetValueAtIndex(v113, ii);
                  if (_CalEntityIsOfType(v116, 2))
                  {
                    _CalEventRectifyRecurrenceSeriesPrivacyLevels(v116);
                  }
                }
              }

              CFRelease(v113);
            }

            cf = _CalEventSaveAddedRecords(v253, a3);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 4, _CalAlarmHasValidParent);
            cf = _CalAlarmSaveAddedRecords(v253, a3);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 25, _CalAttachmentFileHasValidParent);
            cf = _CalAttachmentFileSaveAddedRecords(v253, a3);
            if (cf)
            {
              goto LABEL_239;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 11, _CalAttachmentHasValidParent);
            cf = _CalAttachmentSaveAddedRecords(v253, a3);
            if (cf)
            {
              goto LABEL_239;
            }

            v117 = *(v253 + 24);
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (v117)
              {
                v118 = CPRecordStoreGetContext();
                if (v118)
                {
                  os_unfair_lock_assert_owner(v118 + 20);
                }
              }
            }

            v119 = CPRecordStoreCopyAddedRecords();
            v120 = v119;
            if (v119)
            {
              v121 = CFArrayGetCount(v119);
              if (v121 >= 1)
              {
                for (jj = 0; jj != v121; ++jj)
                {
                  v123 = CFArrayGetValueAtIndex(v120, jj);
                  if (_CalEntityIsOfType(v123, 20))
                  {
                    _CalSuggestedEventInfoInsertAndUpdateNotificationsForInfo(v123);
                  }
                }
              }

              CFRelease(v120);
            }

            if (CDBLockingAssertionsEnabled == 1)
            {
              if (v117)
              {
                v124 = CPRecordStoreGetContext();
                if (v124)
                {
                  os_unfair_lock_assert_owner(v124 + 20);
                }
              }
            }

            v125 = CPRecordStoreCopyChangedRecords();
            v126 = v125;
            if (v125)
            {
              v127 = CFArrayGetCount(v125);
              if (v127 >= 1)
              {
                for (kk = 0; kk != v127; ++kk)
                {
                  v129 = CFArrayGetValueAtIndex(v126, kk);
                  if (_CalEntityIsOfType(v129, 20))
                  {
                    _CalSuggestedEventInfoInsertAndUpdateNotificationsForInfo(v129);
                  }

                  else if (_CalEntityIsOfType(v129, 2) && _CalCalendarItemGetStatus(v129) == 3 && _CalEventIsSuggestedEvent(v129))
                  {
                    _CalSuggestedEventInfoInsertAndUpdateNotificationsForEvent(v129);
                  }
                }
              }

              CFRelease(v126);
            }

            if (CDBLockingAssertionsEnabled == 1)
            {
              if (v117)
              {
                v130 = CPRecordStoreGetContext();
                if (v130)
                {
                  os_unfair_lock_assert_owner(v130 + 20);
                }
              }
            }

            v131 = CPRecordStoreCopyDeletedRecords();
            v132 = v131;
            if (v131)
            {
              v133 = CFArrayGetCount(v131);
              if (v133 >= 1)
              {
                for (mm = 0; mm != v133; ++mm)
                {
                  v135 = CFArrayGetValueAtIndex(v132, mm);
                  if (_CalEntityIsOfType(v135, 20))
                  {
                    _CalSuggestedEventInfoRemoveNotificationsForInfo(v135);
                  }
                }
              }

              CFRelease(v132);
            }

            if (cf || (_CalDatabaseRemoveOrphanedEntitiesOfType(v253, 102, _CalNotificationHasValidParent), (cf = _CalNotificationSaveAddedRecords(v253, a3)) != 0) || (cf = _CalAuxDatabaseSaveAddedRecords(v253, a3)) != 0)
            {
LABEL_239:
              if ((v90 & 1) == 0)
              {
                __CalDatabaseRollbackTransaction(v253, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabase.m:3092");
              }

              v136 = 0;
LABEL_242:
              v137 = v253;
              v138 = cf;
              if (*(v253 + 32) && cf)
              {
                _CalEventOccurrenceCacheStopTrackingAndRevert();
                v138 = cf;
                v137 = v253;
              }

              v139 = *(v137 + 40);
              if (v139)
              {
                if (v138)
                {
                  _CalScheduledTaskCacheStopTrackingUpdates(v139);
                  _CalScheduledTaskCacheRevert(*(v253 + 40));
                  if (a2)
                  {
                    _CalScheduledTaskCacheFinishSave();
                  }
                }
              }

              v140 = v253;
              v141 = _CalDatabaseShouldPostInProcessChangeNotification(v253);
              v142 = 0;
              v143 = 0;
              if (!a2 || cf)
              {
                goto LABEL_294;
              }

              if ((*(v253 + 16) & 8) != 0)
              {
                v143 = 0;
                v142 = 0;
                goto LABEL_294;
              }

              v144 = v141;
              if (v136)
              {
                v145 = CFArrayGetCount(v136);
              }

              else
              {
                v145 = 0;
              }

              v146 = theArray;
              if (theArray)
              {
                v147 = CFArrayGetCount(theArray);
              }

              else
              {
                v147 = 0;
              }

              if (*(*(&v271 + 1) + 24))
              {
                goto LABEL_261;
              }

              if ((*(*(&v263 + 1) + 24) & 1) == 0)
              {
                if ((*(*&v260[8] + 24) & 1) == 0)
                {
                  v143 = 0;
                  v142 = 0;
                  goto LABEL_293;
                }

                v142 = 2;
                goto LABEL_262;
              }

              if (*(*&v260[8] + 24))
              {
LABEL_261:
                v142 = 0;
              }

              else
              {
                v142 = 1;
              }

LABEL_262:
              if (v136)
              {
                v148 = v146 == 0;
              }

              else
              {
                v148 = 1;
              }

              v150 = !v148 && v147 + v145 < 513;
              if (v144)
              {
                v151 = [CalDatabaseInMemoryChangeTracking changeTrackingForDatabase:v253];
                v152 = v151;
                if (v150)
                {
                  [v151 addChangeset:v136 deletes:v146 clientID:*(v253 + 168) changeType:v142];
                }

                else
                {
                  [v151 clearAllChangesets];
                }

                v140 = v253;
              }

              else
              {
                if (v150)
                {
                  v140 = v253;
                  v153 = _CalDatabaseSendChangeNotificationAndObjectIdsToCalaccessd(v253, v136, v146, v142, a5 & 1, v249);
                }

                else
                {
                  v140 = v253;
                  v153 = _CalDatabaseSendChangeNotificationWithNoObjectIdsToCalaccessd(v253, v142);
                }

                if (!v153)
                {
                  _CalDatabasePostChangeNotificationToExternalClients(v140, v142);
                }
              }

              CalDatabaseRequestApplicationSnapshotUpdateWithRateLimiter();
              if (v72)
              {
                CalDatabaseRequestWidgetRefreshWithRateLimiter(v154);
              }

              if (v238)
              {
                v155 = [EKWeakLinkClass() sharedNotifier];
                [v155 notifyObservers];

                v143 = v144;
LABEL_293:
                v140 = v253;
                goto LABEL_294;
              }

              v143 = v144;
LABEL_294:
              v156 = cf;
              if (((*(v140 + 272) | _IsUnitTesting) & 1) != 0 && a2 && !cf)
              {
                if ((*(v140 + 16) & 8) == 0)
                {
                  goto LABEL_306;
                }

                v157 = [CalDatabaseInMemoryChangeTracking changeTrackingForDatabase:v140];
                v158 = v157;
                if (v136 && theArray)
                {
                  [v157 addChangeset:v136 deletes:theArray clientID:*(v140 + 168) changeType:v142];
                }

                else
                {
                  [v157 clearAllChangesets];
                }

                v156 = cf;
                v140 = v253;
              }

              if (v156)
              {
                if (!a2)
                {
LABEL_387:
                  [(CalDatabaseChangeReport *)v89 changesSavedInDatabase:v140];
                  if (*(v140 + 366) == 1)
                  {
                    _CalDatabaseRevertInternal(v140, 1);
                    *(v140 + 366) = 0;
                  }

                  if (CDBLockingAssertionsEnabled == 1)
                  {
                    os_unfair_lock_assert_owner((v140 + 80));
                  }

                  os_unfair_lock_unlock((v140 + 80));
                  if (v143)
                  {
                    _CalDatabasePostDBOrSyncStatusChangeNotificationToInternalAndExternalClients(v140, v142, a5 & 1);
                  }

                  if (a2 && !v89)
                  {
                    v89 = [[CalDatabaseChangeReport alloc] initForReset];
                  }

                  if (v89)
                  {
                    CalDatabaseDistributeChangeReport(v140, v89, a5 & 1);
                  }

                  if (cf)
                  {
                    if (a4)
                    {
                      *a4 = cf;
                    }

                    else
                    {
                      CFRelease(cf);
                    }
                  }

                  if (v136)
                  {
                    CFRelease(v136);
                  }

                  if (theArray)
                  {
                    CFRelease(theArray);
                  }

                  if (v66)
                  {
                    CFRelease(v66);
                  }

                  if (v247)
                  {
                    CFRelease(v247);
                  }

                  if (v254)
                  {
                    CFRelease(v254);
                  }

                  if (v246)
                  {
                    CFRelease(v246);
                  }

                  if (v245)
                  {
                    CFRelease(v245);
                  }

                  [v251 stop];
                  v192 = CDBLogHandle;
                  if (os_log_type_enabled(v192, OS_LOG_TYPE_DEBUG))
                  {
                    v193 = CalBooleanAsString();
                    v194 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v251, "elapsedTimeAsNumber:", 1)}];
                    *buf = 138412546;
                    *&buf[4] = v193;
                    *&buf[12] = 2112;
                    *&buf[14] = v194;
                    _os_log_impl(&dword_1DEBB1000, v192, OS_LOG_TYPE_DEBUG, "Database save complete.  Commit: [%@].  Total time spent: [%@] milliseconds.", buf, 0x16u);
                  }

                  _Block_object_dispose(v260, 8);
                  _Block_object_dispose(&v263, 8);
                  _Block_object_dispose(&v271, 8);
                  goto LABEL_419;
                }

LABEL_385:
                v191 = *(v140 + 264);
                if (v191)
                {
                  CFRelease(v191);
                  *(v140 + 264) = 0;
                }

                goto LABEL_387;
              }

LABEL_306:
              if (v254 && CFArrayGetCount(v254) >= 1)
              {
                if (CalDatabaseIsCurrentProcessCalaccessd_onceToken != -1)
                {
                  CalDatabaseCreateWithConfiguration_cold_2();
                  v140 = v253;
                }

                if (CalDatabaseIsCurrentProcessCalaccessd_isCalaccessd == 1)
                {
                  if (_CalDatabaseVacuumIfNeeded_onceToken != -1)
                  {
                    CalDatabaseSaveInternalWithOptions_cold_2();
                    v140 = v253;
                  }

                  Current = CFAbsoluteTimeGetCurrent();
                  if (Current - *&_CalDatabaseVacuumIfNeeded___LastVacuumTimestamp > 3.0)
                  {
                    if (CDBLockingAssertionsEnabled == 1)
                    {
                      if (*(v140 + 24))
                      {
                        v160 = CPRecordStoreGetContext();
                        if (v160)
                        {
                          os_unfair_lock_assert_owner(v160 + 20);
                        }
                      }
                    }

                    v161 = CPRecordStoreGetDatabase();
                    if (CDBLockingAssertionsEnabled == 1)
                    {
                      if (v161)
                      {
                        if (*(v161 + 104))
                        {
                          v162 = CPRecordStoreGetContext();
                          if (v162)
                          {
                            os_unfair_lock_assert_owner(v162 + 20);
                          }
                        }
                      }
                    }

                    v163 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
                    v164 = v163;
                    if (v163)
                    {
                      if (CDBLockingAssertionsEnabled == 1)
                      {
                        if (*v163)
                        {
                          if (*(*v163 + 104))
                          {
                            v165 = CPRecordStoreGetContext();
                            if (v165)
                            {
                              os_unfair_lock_assert_owner(v165 + 20);
                            }
                          }
                        }
                      }

                      v166 = CPSqliteConnectionStatementForSQL();
                      if (CDBLockingAssertionsEnabled == 1)
                      {
                        if (*v164)
                        {
                          if (*(*v164 + 104))
                          {
                            v167 = CPRecordStoreGetContext();
                            if (v167)
                            {
                              os_unfair_lock_assert_owner(v167 + 20);
                            }
                          }
                        }
                      }

                      v168 = CPSqliteConnectionStatementForSQL();
                      if (v166)
                      {
                        v169 = v168;
                        if (v168)
                        {
                          *v259 = 0;
                          if (CDBLockingAssertionsEnabled == 1)
                          {
                            if (*v166)
                            {
                              v170 = **v166;
                              if (v170)
                              {
                                if (*(v170 + 104))
                                {
                                  v171 = CPRecordStoreGetContext();
                                  if (v171)
                                  {
                                    os_unfair_lock_assert_owner(v171 + 20);
                                  }
                                }
                              }
                            }
                          }

                          v242 = CPSqliteStatementIntegerResult();
                          if (CDBLockingAssertionsEnabled == 1)
                          {
                            if (*v166)
                            {
                              v172 = **v166;
                              if (v172)
                              {
                                if (*(v172 + 104))
                                {
                                  v173 = CPRecordStoreGetContext();
                                  if (v173)
                                  {
                                    os_unfair_lock_assert_owner(v173 + 20);
                                  }
                                }
                              }
                            }
                          }

                          CPSqliteStatementReset();
                          if (CDBLockingAssertionsEnabled == 1)
                          {
                            if (*v169)
                            {
                              v174 = **v169;
                              if (v174)
                              {
                                if (*(v174 + 104))
                                {
                                  v175 = CPRecordStoreGetContext();
                                  if (v175)
                                  {
                                    os_unfair_lock_assert_owner(v175 + 20);
                                  }
                                }
                              }
                            }
                          }

                          v176 = CPSqliteStatementIntegerResult();
                          if (CDBLockingAssertionsEnabled == 1)
                          {
                            if (*v169)
                            {
                              v177 = **v169;
                              if (v177)
                              {
                                if (*(v177 + 104))
                                {
                                  v178 = CPRecordStoreGetContext();
                                  if (v178)
                                  {
                                    os_unfair_lock_assert_owner(v178 + 20);
                                  }
                                }
                              }
                            }
                          }

                          CPSqliteStatementReset();
                          if (*v259 != 1)
                          {
                            v179 = v242 - v176;
                            v180 = v179 / v242;
                            if (v180 <= 0.85 || v176 >= 512)
                            {
                              v181 = v176 - v179;
                              if (v180 >= 0.4)
                              {
                                v181 = (v176 * 0.2);
                              }

                              v182 = CFStringCreateWithFormat(0, 0, @"pragma incremental_vacuum(%d);", v181);
                              if (v182)
                              {
                                if (CDBLockingAssertionsEnabled == 1)
                                {
                                  if (*v164)
                                  {
                                    if (*(*v164 + 104))
                                    {
                                      v183 = CPRecordStoreGetContext();
                                      if (v183)
                                      {
                                        os_unfair_lock_assert_owner(v183 + 20);
                                      }
                                    }
                                  }
                                }

                                v184 = CPSqliteConnectionStatementForSQL();
                                if (v184)
                                {
                                  if (CDBLockingAssertionsEnabled == 1)
                                  {
                                    if (*v184)
                                    {
                                      v185 = **v184;
                                      if (v185)
                                      {
                                        if (*(v185 + 104))
                                        {
                                          v186 = CPRecordStoreGetContext();
                                          if (v186)
                                          {
                                            os_unfair_lock_assert_owner(v186 + 20);
                                          }
                                        }
                                      }
                                    }
                                  }

                                  CPSqliteStatementSendResults();
                                }

                                else
                                {
                                  v187 = CDBLogHandle;
                                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                                  {
                                    v188 = v164[1];
                                    v189 = v187;
                                    v190 = sqlite3_errmsg(v188);
                                    *buf = 138412546;
                                    *&buf[4] = v182;
                                    *&buf[12] = 2080;
                                    *&buf[14] = v190;
                                    _os_log_impl(&dword_1DEBB1000, v189, OS_LOG_TYPE_ERROR, "Couldn't get statement for SQL %@\nError: %s", buf, 0x16u);

                                    v140 = v253;
                                  }
                                }

                                CFRelease(v182);
                              }
                            }
                          }
                        }
                      }
                    }

                    _CalDatabaseVacuumIfNeeded___LastVacuumTimestamp = *&Current;
                  }
                }
              }

              if (!a2)
              {
                goto LABEL_387;
              }

              *(v140 + 84) = 0;
              *(v140 + 88) = 0;
              goto LABEL_385;
            }

            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 7, _CalParticipantHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 8, _CalParticipantHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 9, _CalEventActionHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 5, _CalRecurrenceHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 10, _CalExceptionDateHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 14, _CalLocationHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 15, _CalShareeHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 16, _CalNotificationHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 18, _CalResourceChangeHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 20, _CalSuggestedEventInfoHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 21, _CalContactHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 23, _CalConferenceHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 24, _CalErrorHasValidParent);
            _CalDatabaseRemoveOrphanedEntitiesOfType(v253, 27, _CalAuxDatabaseAccountHasValidParent);
            v195 = *(v253 + 64);
            if (v195)
            {
              CFRelease(v195);
              *(v253 + 64) = 0;
            }

            v196 = *(v253 + 72);
            if (v196)
            {
              CFRelease(v196);
              *(v253 + 72) = 0;
            }

            v197 = *(v253 + 96);
            if (v197)
            {
              CFRelease(v197);
              *(v253 + 96) = 0;
            }

            v136 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
            if (!v247 || (v235 = CFArrayGetCount(v247), v235 < 1))
            {
LABEL_461:
              if (v254)
              {
                v237 = CFArrayGetCount(v254);
                if (v237 >= 1)
                {
                  for (nn = 0; nn != v237; ++nn)
                  {
                    v213 = CFArrayGetValueAtIndex(v254, nn);
                    RecordID = _CalEntityGetRecordID(v213);
                    v215 = RecordID;
                    if (RecordID)
                    {
                      if (!CalDatabaseChangesToRecordIDShouldBeIgnoredByEventKit(RecordID))
                      {
                        if (_CalEntityIsOfType(v213, 24))
                        {
                          *(*(&v263 + 1) + 24) = 1;
                          validateAndAddObjectID(theArray, v215);
                        }

                        else
                        {
                          (v239)[2](v239, v213);
                          validateAndAddObjectID(theArray, v215);
                          addRelatedObjectIDsForDeletedRecord(v213, &theArray);
                        }
                      }
                    }

                    else
                    {
                      v216 = CDBLogHandle;
                      if (os_log_type_enabled(v216, OS_LOG_TYPE_ERROR))
                      {
                        ID = CPRecordGetID();
                        if (CDBLockingAssertionsEnabled == 1)
                        {
                          if (v213)
                          {
                            if (CPRecordGetStore())
                            {
                              v218 = CPRecordStoreGetContext();
                              if (v218)
                              {
                                os_unfair_lock_assert_owner(v218 + 20);
                              }
                            }
                          }
                        }

                        IsDeleted = CPRecordIsDeleted();
                        *buf = 67109376;
                        *&buf[4] = ID;
                        *&buf[8] = 1024;
                        *&buf[10] = IsDeleted;
                        _os_log_impl(&dword_1DEBB1000, v216, OS_LOG_TYPE_ERROR, "CalDatabaseSaveInternal: failed to get recordID for deleted record with rowid [%d], deleted: %d", buf, 0xEu);
                      }
                    }
                  }
                }
              }

              v220 = CDBLockingAssertionsEnabled;
              if (!*(v253 + 24))
              {
                v220 = 0;
              }

              if (a2)
              {
                if (v220)
                {
                  v221 = CPRecordStoreGetContext();
                  if (v221)
                  {
                    os_unfair_lock_assert_owner(v221 + 20);
                  }
                }

                v222 = CPRecordStoreSaveWithPreAndPostCallbacksAndTransactionType();
                v223 = v222;
                if (a3 != 1 && v222 != 1)
                {
                  if (cf)
                  {
                    Domain = CFErrorGetDomain(cf);
                    if (Domain)
                    {
                      if (CFStringCompare(Domain, *MEMORY[0x1E698B6C8], 0) == kCFCompareEqualTo && CFErrorGetCode(cf) == 2)
                      {
                        CFRelease(cf);
                        cf = 0;
                        if (CDBLockingAssertionsEnabled == 1)
                        {
                          if (*(v253 + 24))
                          {
                            v225 = CPRecordStoreGetContext();
                            if (v225)
                            {
                              os_unfair_lock_assert_owner(v225 + 20);
                            }
                          }
                        }

                        v223 = CPRecordStoreSaveWithPreAndPostCallbacksAndTransactionType();
                      }
                    }
                  }
                }

                if (v223)
                {
                  __CalDatabaseCommitTransaction(v253, "commit at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabase.m:3064");
                }

                else
                {
                  __CalDatabaseRollbackTransaction(v253, "rollback at /Library/Caches/com.apple.xbs/Sources/CalendarDatabase/CalendarDatabase/CalDatabase.m:3066");
                }
              }

              else
              {
                if (v220)
                {
                  v226 = CPRecordStoreGetContext();
                  if (v226)
                  {
                    os_unfair_lock_assert_owner(v226 + 20);
                  }
                }

                CPRecordStoreProcessAddedRecordsWithPolicyAndTransactionType();
              }

              if (v240)
              {
                v243 = CFArrayGetCount(v240);
                if (v243 >= 1)
                {
                  for (i1 = 0; i1 != v243; ++i1)
                  {
                    v228 = CFArrayGetValueAtIndex(v240, i1);
                    v229 = _CalEntityGetRecordID(v228);
                    v230 = v229;
                    if (v229)
                    {
                      if (!CalDatabaseChangesToRecordIDShouldBeIgnoredByEventKit(v229))
                      {
                        if (_CalEntityIsOfType(v228, 24))
                        {
                          *(*(&v263 + 1) + 24) = 1;
                        }

                        else
                        {
                          (v239)[2](v239, v228);
                        }

                        validateAndAddObjectID(v136, v230);
                      }
                    }

                    else
                    {
                      v231 = CDBLogHandle;
                      if (os_log_type_enabled(v231, OS_LOG_TYPE_ERROR))
                      {
                        v232 = CPRecordGetID();
                        if (CDBLockingAssertionsEnabled == 1)
                        {
                          if (v228)
                          {
                            if (CPRecordGetStore())
                            {
                              v233 = CPRecordStoreGetContext();
                              if (v233)
                              {
                                os_unfair_lock_assert_owner(v233 + 20);
                              }
                            }
                          }
                        }

                        v234 = CPRecordIsDeleted();
                        *buf = 67109376;
                        *&buf[4] = v232;
                        *&buf[8] = 1024;
                        *&buf[10] = v234;
                        _os_log_impl(&dword_1DEBB1000, v231, OS_LOG_TYPE_ERROR, "CalDatabaseSaveInternal: failed to get recordID for added record with rowid [%d], deleted: %d", buf, 0xEu);
                      }
                    }
                  }
                }
              }

              goto LABEL_242;
            }

            v198 = 0;
            while (1)
            {
              v236 = CFArrayGetValueAtIndex(v247, v198);
              v199 = _CalEntityGetRecordID(v236);
              v200 = v199;
              if (!v199)
              {
                v205 = CDBLogHandle;
                if (os_log_type_enabled(v205, OS_LOG_TYPE_ERROR))
                {
                  v206 = CPRecordGetID();
                  if (CDBLockingAssertionsEnabled == 1)
                  {
                    if (v236)
                    {
                      if (CPRecordGetStore())
                      {
                        v207 = CPRecordStoreGetContext();
                        if (v207)
                        {
                          os_unfair_lock_assert_owner(v207 + 20);
                        }
                      }
                    }
                  }

                  v208 = CPRecordIsDeleted();
                  *buf = 67109376;
                  *&buf[4] = v206;
                  *&buf[8] = 1024;
                  *&buf[10] = v208;
                  _os_log_impl(&dword_1DEBB1000, v205, OS_LOG_TYPE_ERROR, "CalDatabaseSaveInternal: failed to get recordID for updated record with rowid [%d], deleted: %d", buf, 0xEu);
                }

                goto LABEL_460;
              }

              if (!CalDatabaseChangesToRecordIDShouldBeIgnoredByEventKit(v199))
              {
                if (CalRecordIDGetEntityType(v200) == 6)
                {
                  HasDirtyInstanceAttributes = _CalStoreHasDirtyInstanceAttributes(v236);
                  HasDirtySyncAttributes = _CalStoreHasDirtySyncAttributes(v236);
                  _CalStoreClearDirtyAttributes(v236);
                  if (!HasDirtyInstanceAttributes)
                  {
                    if (!HasDirtySyncAttributes)
                    {
                      goto LABEL_460;
                    }

LABEL_447:
                    *(*(&v263 + 1) + 24) = 1;
                    validateAndAddObjectID(v136, v200);
                    goto LABEL_460;
                  }

                  v203 = _CalStoreAllowsEvents(v236);
                  v204 = _CalStoreAllowedEvents(v236);
                  if (v203 || v204)
                  {
                    if (v203 || !v204)
                    {
                      goto LABEL_458;
                    }

                    (v239)[2](v239, v236);
                    validateAndAddObjectID(theArray, v200);
                    addRelatedObjectIDsForDeletedRecord(v236, &theArray);
                  }
                }

                else
                {
                  if (CalRecordIDGetEntityType(v200) != 1)
                  {
                    if (_CalEntityIsOfType(v236, 11))
                    {
                      HasDirtyNotifiableAttributes = _CalAttachmentHasDirtyInstanceAttributes(v236);
LABEL_454:
                      if (!HasDirtyNotifiableAttributes)
                      {
                        goto LABEL_460;
                      }

                      goto LABEL_458;
                    }

                    if (_CalEntityIsOfType(v236, 101))
                    {
                      HasDirtyNotifiableAttributes = _CalCalendarItemHasDirtyNotifiableAttributes(v236);
                      goto LABEL_454;
                    }

                    if (_CalEntityIsOfType(v236, 24))
                    {
                      *(*(&v263 + 1) + 24) = 1;
                    }

                    else
                    {
LABEL_458:
                      (v239)[2](v239, v236);
                    }

                    validateAndAddObjectID(v136, v200);
                    goto LABEL_460;
                  }

                  v209 = _CalCalendarHasDirtyInstanceAttributes(v236);
                  v210 = _CalCalendarHasDirtySyncAttributes(v236);
                  if (v209)
                  {
                    goto LABEL_458;
                  }

                  if (v210)
                  {
                    goto LABEL_447;
                  }
                }
              }

LABEL_460:
              if (v235 == ++v198)
              {
                goto LABEL_461;
              }
            }
          }
        }

        else
        {
          v91 = CDBLogHandle;
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1DEBB1000, v91, OS_LOG_TYPE_ERROR, "Couldn't begin a transaction. Won't save the database", buf, 2u);
          }

          v92 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CalDatabaseErrorDomain" code:1 userInfo:0];

          cf = v92;
        }

        v89 = 0;
        v90 = 1;
        goto LABEL_145;
      }

      v88 = CDBAppEntityHandle;
      v64 = v253;
      if (os_log_type_enabled(CDBAppEntityHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1DEBB1000, v88, OS_LOG_TYPE_DEFAULT, "App Entity Observation: no observers", buf, 2u);
      }
    }

    v238 = 0;
    goto LABEL_137;
  }

  v50 = CDBLogHandle;
LABEL_61:
  if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v50, OS_LOG_TYPE_DEBUG, "No record store found.  Will not proceed with saving the database.", buf, 2u);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((v9 + 80));
  }

  os_unfair_lock_unlock((v9 + 80));
LABEL_419:
}

void sub_1DEBC4724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void CalDatabaseSetStatementCacheLimit(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 80));
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
      v7 = CPRecordStoreGetContext();
      if (v7)
      {
        os_unfair_lock_assert_owner(v7 + 20);
      }
    }
  }

  CPSqliteDatabaseSetStatementCacheLimit();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t CalDatabaseStatementCacheLimit(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
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
      v6 = CPRecordStoreGetContext();
      if (v6)
      {
        os_unfair_lock_assert_owner(v6 + 20);
      }
    }
  }

  StatementCacheLimit = CPSqliteDatabaseGetStatementCacheLimit();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return StatementCacheLimit;
}

uint64_t CalDatabaseCopyAddedRecords(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v4 = CPRecordStoreCopyAddedRecords();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v4;
}

CFTypeRef CalDatabaseSaveWithConflictPolicy(CFTypeRef result, unsigned __int16 a2)
{
  v2 = 0;
  if (result)
  {
    CalDatabaseSaveInternalWithOptions(result, 1u, a2, &v2, 0);
    return v2;
  }

  return result;
}

uint64_t CalDatabaseSaveWithOptions(uint64_t a1, char a2)
{
  cf = 0;
  if (!a1)
  {
    return 1;
  }

  v2 = 1;
  CalDatabaseSaveInternalWithOptions(a1, 1u, 0, &cf, a2);
  if (cf)
  {
    CFRelease(cf);
    return 0;
  }

  return v2;
}

void CalDatabaseProcessAddedRecords(uint64_t a1)
{
  cf = 0;
  if (a1)
  {
    CalDatabaseSaveInternalWithOptions(a1, 0, 0, &cf, 0);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

CFTypeRef CalDatabaseProcessAddedRecordsWithConflictPolicy(CFTypeRef result, unsigned __int16 a2)
{
  v2 = 0;
  if (result)
  {
    CalDatabaseSaveInternalWithOptions(result, 0, a2, &v2, 0);
    return v2;
  }

  return result;
}

void CalDatabaseSetProperty(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 20);
  _CalDatabaseSetProperty(a1, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

uint64_t _CalDatabaseSetProperty(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
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

    return MEMORY[0x1EEDEC858](v3, a2, a3);
  }

  return result;
}

uint64_t CalDatabaseCopyProperty(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  v4 = _CalDatabaseCopyProperty(a1, a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v4;
}

uint64_t _CalDatabaseCopyProperty(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  return CPRecordStoreCopyValueForProperty();
}

void CalDatabaseRemoveProperty(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 80));
  v4 = *(a1 + 24);
  if (v4)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __CalDatabaseRemoveProperty_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = v4;
    v5[5] = a2;
    [*(a1 + 320) performWithWriteLock:v5];
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t __CalDatabaseRemoveProperty_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (CDBLockingAssertionsEnabled == 1 && v2 != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v5 = *(a1 + 40);

  return MEMORY[0x1EEDEC818](v2, v5);
}

void CalDatabaseSetIntegerProperty(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock(a1 + 20);
  _CalDatabaseSetIntegerProperty(a1, a2, a3);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void _CalDatabaseSetIntegerProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CFStringCreateWithFormat(0, 0, @"%d", a3);
  if (v5)
  {
    v6 = v5;
    _CalDatabaseSetProperty(a1, a2, v5);

    CFRelease(v6);
  }
}

uint64_t CalDatabaseCopyUniqueIdentifier(uint64_t a1)
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
    v2 = Database;
    if (Database)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*(Database + 104))
        {
          v5 = CPRecordStoreGetContext();
          if (v5)
          {
            os_unfair_lock_assert_owner(v5 + 20);
          }
        }
      }

      v2 = CPSqliteDatabaseCopyUniqueIdentifier();
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v2;
}

void CalDatabaseSetChangeLoggingEnabled(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 20);
  CPRecordStoreLogChanges();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

uint64_t CalDatabaseIsChangeLoggingEnabled(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  IsLoggingChanges = CPRecordStoreIsLoggingChanges();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return IsLoggingChanges;
}

void CalDatabaseSetPropertyModificationLoggingEnabled(uint64_t a1, char a2)
{
  os_unfair_lock_lock((a1 + 80));
  *(a1 + 256) = a2;
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t CalDatabaseIsPropertyModificationLoggingEnabled(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 256);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v2;
}

uint64_t CalDatabaseGetSequenceNumber(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  SequenceNumber = CPRecordStoreGetSequenceNumber();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return SequenceNumber;
}

void CalDatabaseRevert(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  _CalDatabaseRevertInternal(a1, 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void CalDatabaseReset(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  _CalDatabaseRevertInternal(a1, 1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
}

void CalDatabaseInvalidateCaches(uint64_t a1)
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

    CPRecordStoreInvalidateCaches();
    *(a1 + 160) = CalMonotonicTime();
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

uint64_t CalDatabaseGetLastCacheInvalidationTimestamp(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 160);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v2;
}

uint64_t CalDatabaseCountCachedRecords(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  if (CDBLockingAssertionsEnabled == 1 && *(a1 + 24) != 0)
  {
    Context = CPRecordStoreGetContext();
    if (Context)
    {
      os_unfair_lock_assert_owner(Context + 20);
    }
  }

  v4 = CPRecordStoreCountCachedRecords();
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v4;
}

uint64_t CalDatabaseFlushStatementCache(uint64_t a1)
{
  if (!a1)
  {
    return CFLog();
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
      v5 = CPRecordStoreGetContext();
      if (v5)
      {
        os_unfair_lock_assert_owner(v5 + 20);
      }
    }
  }

  v6 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
  v7 = v6;
  if (CDBLockingAssertionsEnabled == 1 && v6 != 0)
  {
    if (*v6)
    {
      if (*(*v6 + 104))
      {
        v9 = CPRecordStoreGetContext();
        if (v9)
        {
          os_unfair_lock_assert_owner(v9 + 20);
        }
      }
    }
  }

  return MEMORY[0x1EEDEC8B8](v7);
}

void _CalDatabasePerformPreferenceMigrationIfNeeded(uint64_t a1, int a2, int a3)
{
  v6 = [*(a1 + 296) preferences];
  v7 = [v6 getIntegerPreference:@"PrefMigrationSeed" defaultValue:0];
  if (v7 < 6 || a3 != 0)
  {
    v9 = v7;
    if (v7 < 1)
    {
      v10 = *MEMORY[0x1E6993150];
      v11 = [v6 getValueForPreference:*MEMORY[0x1E6993150] expectedClass:0];
      if (v11)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ([v11 BOOLValue] & 1) == 0)
        {
          [v6 setBooleanPreference:v10 value:1 notificationName:0];
        }
      }

      v12 = *MEMORY[0x1E6993148];
      v13 = [v6 getValueForPreference:*MEMORY[0x1E6993148] expectedClass:objc_opt_class()];
      if (v13)
      {
        [v6 setValueForPreference:*MEMORY[0x1E6993158] value:v13 notificationName:0];
        [v6 removePreference:v12 notificationName:0];
      }
    }

    if (v9 > 1 || a2 == 0)
    {
      if (v9 > 3)
      {
        if (!a3)
        {
          goto LABEL_29;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v15 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_DEFAULT, "Cleaning up plist...", v32, 2u);
      }

      [v6 removePreference:@"DefaultCalendarUID" notificationName:0];
      [v6 removePreference:@"DefaultCalendarDatabaseID" notificationName:0];
      [v6 removePreference:@"DefaultCalendarStoreUID" notificationName:0];
      [v6 removePreference:@"DefaultCalendarName" notificationName:0];
    }

    [v6 removePreference:@"BirthdayEventsGenerationVersion" notificationName:0];
    if (!a3)
    {
      goto LABEL_29;
    }

LABEL_25:
    v17 = v6;
    v18 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F59EF9C8];
    v19 = _overrideTimezoneName(v17);
    if (v19 && [v18 containsObject:v19])
    {
      v20 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"Asia/Shanghai"];
      [v17 setValueForPreference:*MEMORY[0x1E6993158] value:@"Asia/Shanghai" notificationName:0];
      CalSetDefaultTimeZone();
      v21 = [MEMORY[0x1E698B670] sharedManager];
      v22 = [v21 defaultCityForTimeZone:v20];

      v23 = *MEMORY[0x1E6993140];
      v24 = [v22 properties];
      [v17 setValueForPreference:v23 value:v24 notificationName:0];
    }

LABEL_29:
    if (v9 >= 5)
    {
      if (v9 > 5)
      {
LABEL_39:
        [v6 setIntegerPreference:@"PrefMigrationSeed" value:6 notificationName:0];
        goto LABEL_40;
      }
    }

    else
    {
      [v6 removePreference:@"OwnerEmailAddress" notificationName:0];
      [v6 removePreference:@"defaultCalendarName" notificationName:0];
    }

    v25 = [*(a1 + 296) get_defaultCalendarStoreUID];
    v26 = [*(a1 + 296) get_defaultCalendarID];
    if (v26)
    {
      if (v25 >= 1)
      {
        v27 = CalDatabaseCopyStoreWithUID(a1, v25);
        if (v27)
        {
          v28 = v27;
          v29 = CalDatabaseCopyCalendarWithExternalIDInStore(a1, v26, v27);
          if (v29)
          {
            v30 = v29;
            v31 = CalCalendarCopyUUID(v29);
            CFRelease(v30);
            [*(a1 + 296) set_defaultCalendarID:v31];
          }

          CFRelease(v28);
        }
      }
    }

    goto LABEL_39;
  }

LABEL_40:
}

void __CalDatabasePerformMigrationIfNeeded_block_invoke()
{
  v149 = *MEMORY[0x1E69E9840];
  v0 = +[CDBPreferences sharedReadWrite];
  if ([v0 get_migrationAttempts] <= 2)
  {

    goto LABEL_40;
  }

  v1 = [v0 get_allowUnlimitedMigrationAttempts];

  if (v1)
  {
    goto LABEL_40;
  }

  v2 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
  {
    *&buf = 0x304000100;
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_FAULT, "Migration has failed to complete %i consecutive times; deleting database and starting over.", &buf, 8u);
  }

  v3 = +[CDBPreferences sharedReadWrite];
  IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(0, 1);
  v5 = [(__CFString *)IfNeeded stringByAppendingPathComponent:*MEMORY[0x1E69930F0]];
  *&buf = 0;
  v6 = v5;
  v7 = sqlite3_open_v2([v5 fileSystemRepresentation], &buf, 1, 0);
  if (v7 || !buf)
  {
    v21 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LODWORD(ppStmt[0]) = 67109120;
      HIDWORD(ppStmt[0]) = v7;
      _os_log_impl(&dword_1DEBB1000, v21, OS_LOG_TYPE_ERROR, "Error opening database that couldn't be migrated to search for related databases. (%i)", ppStmt, 8u);
    }

    goto LABEL_31;
  }

  ppStmt[0] = 0;
  v8 = sqlite3_prepare_v2(buf, "SELECT path FROM AuxDatabase", -1, ppStmt, 0);
  if (v8 || !ppStmt[0])
  {
    v22 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v146 = 67109120;
      *&v146[4] = v8;
      _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_ERROR, "Error compiling statement to find aux database paths. (%i)", v146, 8u);
    }

    sqlite3_close(buf);
LABEL_31:
    v9 = 0;
    goto LABEL_32;
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  while (1)
  {
    v10 = sqlite3_step(ppStmt[0]);
    v11 = v10;
    if (v10 != 100)
    {
      break;
    }

    v16 = sqlite3_column_text(ppStmt[0], 0);
    if (v16 && ([MEMORY[0x1E696AEC0] stringWithUTF8String:v16], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [v9 addObject:v17];
    }

    else
    {
      v18 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v146 = 0;
        v13 = v18;
        v14 = "Invalid cstring returned by sqlite3_column_text loading aux database paths";
        v15 = 2;
        goto LABEL_21;
      }
    }

LABEL_22:
    if (v11 != 100)
    {
      goto LABEL_23;
    }
  }

  if (v10 && v10 != 101)
  {
    v12 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v146 = 67109120;
      *&v146[4] = v11;
      v13 = v12;
      v14 = "Error stepping. (%i)";
      v15 = 8;
LABEL_21:
      _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, v14, v146, v15);
      goto LABEL_22;
    }

    goto LABEL_22;
  }

LABEL_23:
  sqlite3_finalize(ppStmt[0]);
  v19 = sqlite3_close(buf);
  if (v19)
  {
    v20 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v146 = 67109120;
      *&v146[4] = v19;
      _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_ERROR, "Error closing database: %i", v146, 8u);
    }
  }

LABEL_32:
  _CalDatabaseDeleteDatabaseBecauseOfExcessiveFailedMigrationAttempts(IfNeeded);
  v140 = 0u;
  v141 = 0u;
  *ppStmt = 0u;
  v139 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:ppStmt objects:&buf count:16];
  if (v24)
  {
    v25 = *v139;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v139 != v25)
        {
          objc_enumerationMutation(v23);
        }

        _CalDatabaseDeleteDatabaseBecauseOfExcessiveFailedMigrationAttempts(*(ppStmt[1] + i));
      }

      v24 = [v23 countByEnumeratingWithState:ppStmt objects:&buf count:16];
    }

    while (v24);
  }

  [v3 set_migrationAttempts:0];
  v27 = [objc_alloc(MEMORY[0x1E6992EE8]) initWithType:@"Database" subtype:@"MigrationFailure" context:@"General"];
  [v27 setIgnoreRateLimiting:1];
  [v27 report];

LABEL_40:
  v28 = +[CDBPreferences sharedReadWrite];
  [v28 set_migrationAttempts:{objc_msgSend(v28, "get_migrationAttempts") + 1}];

  v130 = os_transaction_create();
  v29 = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(204, 0);
  os_unfair_lock_lock((v29 + 80));
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*(v29 + 24))
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
        v32 = CPRecordStoreGetContext();
        if (v32)
        {
          os_unfair_lock_assert_owner(v32 + 20);
        }
      }
    }
  }

  v33 = CPSqliteDatabaseConnectionForReading();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (v33)
    {
      if (*v33)
      {
        if (*(*v33 + 104))
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

  v35 = CPSqliteConnectionDatabaseVersion();
  if (v35 < 19002 || !_CalDatabaseGetIntegerProperty(v29, @"DataSeparationMigrationCompleted") || (v36 = _CalDatabaseTargetBirthdayMigrationState(), ((v36 ^ (_CalDatabaseGetIntegerProperty(v29, @"BirthdayMigrationState") != 0)) & 1) != 0))
  {
    v37 = 1;
    goto LABEL_59;
  }

  if (v35 == 19002)
  {
    v77 = _CalDatabaseCopyAllAuxDatabases(v29);
    v140 = 0u;
    v141 = 0u;
    *ppStmt = 0u;
    v139 = 0u;
    v78 = v77;
    v79 = [v78 countByEnumeratingWithState:ppStmt objects:&buf count:16];
    if (v79)
    {
      v132 = *v139;
      *&v80 = 138543362;
      v129 = v80;
      do
      {
        v81 = 0;
        do
        {
          if (*v139 != v132)
          {
            objc_enumerationMutation(v78);
          }

          v82 = *(ppStmt[1] + v81);
          v83 = _CalAuxDatabaseGetPath(v82);
          v84 = CalDatabaseCreateWithOptionsAndDatabaseDirectory(4300, v83);
          if (!v84)
          {
            v92 = _CalColorGetData(v82);
            v93 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *v146 = 138543618;
              *&v146[4] = v92;
              *&v146[12] = 2114;
              *&v146[14] = v83;
              _os_log_impl(&dword_1DEBB1000, v93, OS_LOG_TYPE_DEFAULT, "Didn't find aux DB for persona %{public}@ at path %{public}@. Getting current path for persona", v146, 0x16u);
            }

            v94 = [*(v29 + 288) containerInfoForPersonaIdentifier:{v92, v129}];
            v95 = [v94 containerURL];
            v96 = v95;
            if (!v94)
            {
              v97 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                *v146 = v129;
                *&v146[4] = v92;
                v98 = v97;
                v99 = "Couldn't look up persona %{public}@";
                goto LABEL_153;
              }

LABEL_155:

              goto LABEL_156;
            }

            if (!v95)
            {
              v100 = CDBLogHandle;
              if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_155;
              }

              *v146 = v129;
              *&v146[4] = v92;
              v98 = v100;
              v99 = "No container for persona %{public}@";
LABEL_153:
              v101 = 12;
LABEL_154:
              _os_log_impl(&dword_1DEBB1000, v98, OS_LOG_TYPE_ERROR, v99, v146, v101);
              goto LABEL_155;
            }

            v84 = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(4300, v95);
            if (!v84)
            {
              v102 = CDBLogHandle;
              if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_155;
              }

              *v146 = 138543618;
              *&v146[4] = v92;
              *&v146[12] = 2114;
              *&v146[14] = v96;
              v98 = v102;
              v99 = "Still couldn't open aux DB for persona %{public}@ after looking up current container URL %{public}@";
              v101 = 22;
              goto LABEL_154;
            }
          }

          os_unfair_lock_lock((v84 + 80));
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*(v84 + 24))
            {
              v85 = CPRecordStoreGetContext();
              if (v85)
              {
                os_unfair_lock_assert_owner(v85 + 20);
              }
            }
          }

          v86 = CPRecordStoreGetDatabase();
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (v86)
            {
              if (*(v86 + 104))
              {
                v87 = CPRecordStoreGetContext();
                if (v87)
                {
                  os_unfair_lock_assert_owner(v87 + 20);
                }
              }
            }
          }

          v88 = CPSqliteDatabaseConnectionForReading();
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (v88)
            {
              if (*v88)
              {
                if (*(*v88 + 104))
                {
                  v89 = CPRecordStoreGetContext();
                  if (v89)
                  {
                    os_unfair_lock_assert_owner(v89 + 20);
                  }
                }
              }
            }
          }

          v90 = CPSqliteConnectionDatabaseVersion();
          if (v90 <= 19001)
          {
            v91 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *v146 = 67109376;
              *&v146[4] = 19002;
              *&v146[8] = 1024;
              *&v146[10] = v90;
              _os_log_impl(&dword_1DEBB1000, v91, OS_LOG_TYPE_ERROR, "Main database schema is up-to-date (%i), but aux database schema is out-of-date. (%i)", v146, 0xEu);
            }
          }

          if (CDBLockingAssertionsEnabled == 1)
          {
            os_unfair_lock_assert_owner((v84 + 80));
          }

          os_unfair_lock_unlock((v84 + 80));
          CFRelease(v84);
          if (v90 < 19002)
          {

            v37 = 1;
            goto LABEL_201;
          }

LABEL_156:

          ++v81;
        }

        while (v79 != v81);
        v103 = [v78 countByEnumeratingWithState:ppStmt objects:&buf count:16];
        v79 = v103;
      }

      while (v103);
    }

    v37 = 0;
LABEL_201:
  }

  else
  {
    v37 = 0;
  }

LABEL_59:
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((v29 + 80));
  }

  os_unfair_lock_unlock((v29 + 80));
  CFRelease(v29);
  cf = CalDatabaseCreateWithOptionsAndDatabaseDirectoryURL(13, 0);
  CalDatabaseSetIsSafeForUseInDataMigration(cf, 1);
  v38 = CDBLogHandle;
  v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
  if (v37)
  {
    if (v39)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Migration needed", &buf, 2u);
    }

    CalDatabaseSetChangeLoggingEnabled(cf, 0);
    _CalDatabasePerformSchemaMigrationIfNeededOnDatabase(cf);
    v40 = [MEMORY[0x1E6992F10] legacyCalendarDataContainer];
    v41 = CalDatabaseGetCalendarDataContainerProvider(cf);
    [CDBAttachmentMigrator migrateWithLegacyCalendarDataContainer:v40 calendarDataContainerProvider:v41 database:cf];
    if (_os_feature_enabled_impl())
    {
      os_unfair_lock_lock(cf + 20);
      if (_CalDatabaseGetIntegerProperty(cf, @"DataSeparationMigrationCompleted") || !_CalDatabaseMigrateToMultipleDatabases(cf))
      {
        if (CDBLockingAssertionsEnabled == 1)
        {
          os_unfair_lock_assert_owner(cf + 20);
        }

        os_unfair_lock_unlock(cf + 20);
      }

      else
      {
        _CalDatabaseSetIntegerProperty(cf, @"DataSeparationMigrationCompleted", 1);
        CalDatabaseSaveWithOptions(cf, 2);
      }
    }

    v42 = CalDatabaseCopyAllAuxDatabases(cf);
    v43 = CDBLogHandle;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v42 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v44;
      _os_log_impl(&dword_1DEBB1000, v43, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] %lu aux databases to migrate", &buf, 0xCu);
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    v45 = v42;
    v46 = [v45 countByEnumeratingWithState:&v133 objects:ppStmt count:16];
    if (v46)
    {
      v47 = *v134;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v134 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = *(*(&v133 + 1) + 8 * j);
          v50 = CalAuxDatabaseCopyPath(v49);
          v51 = CDBLogHandle;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v50;
            _os_log_impl(&dword_1DEBB1000, v51, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] migrating aux database at %@", &buf, 0xCu);
          }

          v52 = CalDatabaseCreateWithOptionsAndDatabaseDirectory(2061, v50);
          CalDatabaseSetChangeLoggingEnabled(v52, 0);
          CalDatabaseSetIsSafeForUseInDataMigration(v52, 1);
          v52[43]._os_unfair_lock_opaque = CalAuxDatabaseGetUID(v49);
          _CalDatabaseMigrateSchemaCheckIntegrityAndCleanUp(v52);
          CFRelease(v52);
        }

        v46 = [v45 countByEnumeratingWithState:&v133 objects:ppStmt count:16];
      }

      while (v46);
    }

    v38 = v45;
    if (os_variant_has_internal_diagnostics())
    {
      v53 = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(0, 1);
      _CalDatabaseCleanUpMovedAsideDatabaseFilesInDirectory(v53);
      v147 = 0u;
      v148 = 0u;
      memset(v146, 0, sizeof(v146));
      v54 = v38;
      v55 = [v54 countByEnumeratingWithState:v146 objects:&buf count:16];
      if (v55)
      {
        v56 = **&v146[16];
        do
        {
          for (k = 0; k != v55; ++k)
          {
            if (**&v146[16] != v56)
            {
              objc_enumerationMutation(v54);
            }

            v58 = CalAuxDatabaseCopyPath(*(*&v146[8] + 8 * k));
            _CalDatabaseCleanUpMovedAsideDatabaseFilesInDirectory(v58);
          }

          v55 = [v54 countByEnumeratingWithState:v146 objects:&buf count:16];
        }

        while (v55);
      }
    }
  }

  else if (v39)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_1DEBB1000, v38, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Migration not needed", &buf, 2u);
  }

  v59 = CalDatabaseGetPreferences(cf);
  v60 = [v59 preferences];

  shouldMigrateChinaTimezones = _shouldMigrateChinaTimezones(v60);
  _CalDatabasePerformPreferenceMigrationIfNeeded(cf, 0, shouldMigrateChinaTimezones);

  os_unfair_lock_lock(cf + 20);
  IntegerProperty = _CalDatabaseGetIntegerProperty(cf, @"BirthdayMigrationState");
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(cf + 20);
  }

  v63 = IntegerProperty != 0;
  os_unfair_lock_unlock(cf + 20);
  v64 = _CalDatabaseTargetBirthdayMigrationState();
  if (v63 != v64)
  {
    v65 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 67109376;
      DWORD1(buf) = v63;
      WORD4(buf) = 1024;
      *(&buf + 10) = v64;
      _os_log_impl(&dword_1DEBB1000, v65, OS_LOG_TYPE_DEFAULT, "Need to migrate birthdays: current version %{BOOL}i target version %{BOOL}i", &buf, 0xEu);
    }

    if (v64)
    {
      v66 = CalDatabaseCopyBirthdayCalendar(cf, 0);
      v67 = CDBLogHandle;
      v68 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT);
      if (v66)
      {
        if (v68)
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_1DEBB1000, v67, OS_LOG_TYPE_DEFAULT, "Deleting old birthday calendar", &buf, 2u);
        }

        CalRemoveCalendar(v66);
      }

      else if (v68)
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_1DEBB1000, v67, OS_LOG_TYPE_DEFAULT, "Migration did nothing because no old birthday calendar found", &buf, 2u);
      }
    }

    else
    {
      v69 = CalDatabaseCopyOfAllStores(cf);
      v147 = 0u;
      v148 = 0u;
      memset(v146, 0, sizeof(v146));
      v70 = v69;
      v71 = [v70 countByEnumeratingWithState:v146 objects:&buf count:16];
      if (v71)
      {
        v72 = **&v146[16];
        while (2)
        {
          for (m = 0; m != v71; ++m)
          {
            if (**&v146[16] != v72)
            {
              objc_enumerationMutation(v70);
            }

            v74 = *(*&v146[8] + 8 * m);
            v75 = CalStoreCopyAppGroupIdentifier(v74);
            if ([v75 isEqualToString:@"com.apple.contacts.ContactsCalendars"])
            {
              v104 = CDBLogHandle;
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *v137 = 0;
                _os_log_impl(&dword_1DEBB1000, v104, OS_LOG_TYPE_DEFAULT, "Deleting ContactsCalendars store", v137, 2u);
              }

              CalRemoveStore(v74);

              goto LABEL_165;
            }
          }

          v71 = [v70 countByEnumeratingWithState:v146 objects:&buf count:16];
          if (v71)
          {
            continue;
          }

          break;
        }
      }

      v76 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v137 = 0;
        _os_log_impl(&dword_1DEBB1000, v76, OS_LOG_TYPE_DEFAULT, "Migration did nothing because the contacts store wasn't found.", v137, 2u);
      }

LABEL_165:
    }

    CalDatabaseSetIntegerProperty(cf, @"BirthdayMigrationState", v64);
    CalDatabaseSaveWithOptions(cf, 0);
  }

  CalDatabaseCleanupStoresWithoutIdentifiers(cf);
  if (CalendarMigrationLibraryCore(0))
  {
    *v146 = 0;
    *&v146[8] = v146;
    *&v146[16] = 0x2050000000;
    v105 = getCalDefaultReminderKitProviderClass_softClass;
    *&v146[24] = getCalDefaultReminderKitProviderClass_softClass;
    if (!getCalDefaultReminderKitProviderClass_softClass)
    {
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v143 = __getCalDefaultReminderKitProviderClass_block_invoke;
      v144 = &unk_1E86885F0;
      v145 = v146;
      __getCalDefaultReminderKitProviderClass_block_invoke(&buf);
      v105 = *(*&v146[8] + 24);
    }

    v106 = v105;
    _Block_object_dispose(v146, 8);
    v107 = [v105 sharedInstance];
    if ([v107 reminderKitAvailable])
    {
      *v146 = 0;
      *&v146[8] = v146;
      *&v146[16] = 0x2050000000;
      v108 = getCalDefaultReminderMigrationDefaultsProviderClass_softClass;
      *&v146[24] = getCalDefaultReminderMigrationDefaultsProviderClass_softClass;
      if (!getCalDefaultReminderMigrationDefaultsProviderClass_softClass)
      {
        *&buf = MEMORY[0x1E69E9820];
        *(&buf + 1) = 3221225472;
        v143 = __getCalDefaultReminderMigrationDefaultsProviderClass_block_invoke;
        v144 = &unk_1E86885F0;
        v145 = v146;
        __getCalDefaultReminderMigrationDefaultsProviderClass_block_invoke(&buf);
        v108 = *(*&v146[8] + 24);
      }

      v109 = v108;
      _Block_object_dispose(v146, 8);
      v110 = [v108 sharedInstance];
      v111 = [v107 newDatabaseMigrationContext];
      v112 = v111;
      if (v111)
      {
        v113 = [v111 shouldPerformMigration];
        v114 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v113;
          _os_log_impl(&dword_1DEBB1000, v114, OS_LOG_TYPE_DEFAULT, "ReminderKit wants migration = %d", &buf, 8u);
        }

        v115 = [v110 havePerformedReminderMigrationCleanup];
        v116 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v115 ^ 1;
          _os_log_impl(&dword_1DEBB1000, v116, OS_LOG_TYPE_DEFAULT, "Needs reminder migration cleanup = %d", &buf, 8u);
          v116 = CDBLogHandle;
        }

        v117 = os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT);
        if ((v113 | v115 ^ 1))
        {
          if (v117)
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1DEBB1000, v116, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Performing reminders migration", &buf, 2u);
          }

          *v146 = 0;
          *&v146[8] = v146;
          *&v146[16] = 0x2050000000;
          v118 = getCalCalendarDatabaseReminderMigratorClass_softClass;
          *&v146[24] = getCalCalendarDatabaseReminderMigratorClass_softClass;
          if (!getCalCalendarDatabaseReminderMigratorClass_softClass)
          {
            *&buf = MEMORY[0x1E69E9820];
            *(&buf + 1) = 3221225472;
            v143 = __getCalCalendarDatabaseReminderMigratorClass_block_invoke;
            v144 = &unk_1E86885F0;
            v145 = v146;
            __getCalCalendarDatabaseReminderMigratorClass_block_invoke(&buf);
            v118 = *(*&v146[8] + 24);
          }

          v119 = v118;
          _Block_object_dispose(v146, 8);
          v120 = [[v118 alloc] initWithReminderKitProvider:v107 defaultsProvider:v110];
          [v120 attemptMigrationWithCalendarDatabase:cf];
          v121 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_1DEBB1000, v121, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Finished reminders migration", &buf, 2u);
          }

          goto LABEL_196;
        }

        if (v117)
        {
          LOWORD(buf) = 0;
          v125 = "Skipping reminders migration because it is not needed";
          v126 = v116;
          v127 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_195;
        }
      }

      else
      {
        v124 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          v125 = "Failed to get a CalReminderKitDatabaseMigrationContext. Skipping reminders migration";
          v126 = v124;
          v127 = OS_LOG_TYPE_ERROR;
LABEL_195:
          _os_log_impl(&dword_1DEBB1000, v126, v127, v125, &buf, 2u);
        }
      }

LABEL_196:

      goto LABEL_197;
    }

    v123 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DEBB1000, v123, OS_LOG_TYPE_ERROR, "Skipping reminders migration because ReminderKit.framework is not available", &buf, 2u);
    }
  }

  else
  {
    v122 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1DEBB1000, v122, OS_LOG_TYPE_ERROR, "Skipping reminders migration because CalendarMigration.framework is not available", &buf, 2u);
    }
  }

LABEL_197:
  CFRelease(cf);
  CalDatabaseDeleteFile(@"/var/mobile/Library/Calendar/Notifications.db");
  CalDatabaseDeleteFile(@"/var/mobile/Library/Calendar/Notifications.db-wal");
  CalDatabaseDeleteFile(@"/var/mobile/Library/Calendar/Notifications.db-shm");

  v128 = +[CDBPreferences sharedReadWrite];
  [v128 set_migrationAttempts:0];
}

void CalDatabaseCleanupStoresWithoutIdentifiers(os_unfair_lock_s *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = CalDatabaseCopyOfAllStores(a1);
  if (!v2)
  {
    return;
  }

  v3 = v2;
  v18 = a1;
  Count = CFArrayGetCount(v2);
  if (!Count)
  {
    goto LABEL_20;
  }

  v5 = Count;
  v6 = 0;
  for (i = 0; i != v5; ++i)
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
      v9 = CalStoreCopyUUID(ValueAtIndex);
      v10 = v9;
      if (v9)
      {
        if (CFStringGetLength(v9))
        {
          break;
        }
      }

      v11 = CFUUIDCreate(0);
      v12 = CFUUIDCreateString(0, v11);
      v13 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v13;
        ID = CPRecordGetID();
        *buf = 67109378;
        v20 = ID;
        v21 = 2114;
        v22 = v12;
        _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_DEFAULT, "Found a store with no identifier at ROWID %d. Setting identifier to %{public}@", buf, 0x12u);
      }

      CalStoreSetUUID(ValueAtIndex, v12);
      CFRelease(v12);
      CFRelease(v11);
      if (v10)
      {
        v6 = 1;
        break;
      }

      ++i;
      v6 = 1;
      if (i == v5)
      {
        goto LABEL_15;
      }
    }

    CFRelease(v10);
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  v16 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_DEFAULT, "Saving database after cleaning up stores without identifiers", buf, 2u);
  }

  if ((CalDatabaseSaveWithOptions(v18, 0) & 1) == 0)
  {
    v17 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_ERROR, "Failed to save database after cleaning up stores with missing identifiers", buf, 2u);
    }
  }

LABEL_20:
  CFRelease(v3);
}

void _CalDatabasePerformSchemaMigrationIfNeededOnDatabase(os_unfair_lock_s *a1)
{
  if (!a1)
  {
    v4 = 0;
    LODWORD(v12) = 0;
    goto LABEL_24;
  }

  v2 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Beginning schema migration", buf, 2u);
  }

  v3 = CalDatabaseGetPreferences(a1);
  v4 = [v3 preferences];

  _CalDatabaseMigrateSchemaCheckIntegrityAndCleanUp(a1);
  v5 = [v4 getValueForPreference:@"DefaultCalendarUID" expectedClass:0];
  if (!v5)
  {
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [MEMORY[0x1E696AB08] decimalDigitCharacterSet];
    v8 = [v6 rangeOfCharacterFromSet:v7];
    v10 = v9;

    if (v8 || v10 != [v6 length])
    {
      IntegerProperty = 0xFFFFFFFFLL;
    }

    else
    {
      IntegerProperty = [v6 intValue];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_15:
      IntegerProperty = CalDatabaseGetIntegerProperty(a1, @"DefaultCalendarUID");
      goto LABEL_16;
    }

    IntegerProperty = [v5 intValue];
  }

  if (IntegerProperty == -1)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (IntegerProperty < 1)
  {
    LODWORD(v12) = 0;
  }

  else
  {
    v12 = CalDatabaseCopyCalendarWithUID(a1, IntegerProperty);
    if (v12)
    {
      CalDatabaseSetDefaultCalendarForNewEventsWithReason(a1, v12, 0, @"migration");
      CalDatabaseRemoveProperty(a1, @"DefaultCalendarUID");
      CFRelease(v12);
      LODWORD(v12) = 1;
    }
  }

  v13 = CalDatabaseGetIntegerProperty(a1, @"DefaultTaskCalendarUID");
  if (v13 >= 1)
  {
    v14 = CalDatabaseCopyCalendarWithUID(a1, v13);
    if (v14)
    {
      v15 = v14;
      CalDatabaseSetDefaultCalendarForNewTasks(a1, v14, 0);
      CalDatabaseRemoveProperty(a1, @"DefaultTaskCalendarUID");
      CFRelease(v15);
    }
  }

LABEL_24:
  shouldMigrateChinaTimezones = _shouldMigrateChinaTimezones(v4);
  _CalDatabasePerformPreferenceMigrationIfNeeded(a1, v12, shouldMigrateChinaTimezones);
  v17 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_DEFAULT, "****** [CDB MIGRATION] Finished all schema migration tasks", v18, 2u);
  }
}

id CalDatabaseGetPreferences(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 296);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));

  return v2;
}

void _CalDatabaseMigrateSchemaCheckIntegrityAndCleanUp(uint64_t a1)
{
  v2 = CalDatabaseCopyUniqueIdentifier(a1);
  if (v2)
  {
    CFRelease(v2);
  }

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
      v5 = Database;
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

      v7 = CPSqliteDatabaseConnectionForWriting();
      _CalDatabaseValidateSchemaDeleteDBAndAbortOnFailure(v5, v7);
    }
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  v8 = CalDatabaseCopyEventOccurrenceCache(a1);
  if (v8)
  {
    v9 = v8;
    if ((CalEventOccurrenceCacheRebuildIfNeeded(v8) & 1) == 0)
    {
      CalEventOccurrenceCacheCleanOrphans(v9);
      CalEventOccurrenceCacheTrimExtendAndUpdate(v9, 0);
    }

    CFRelease(v9);
  }

  CalDatabaseClearSuperfluousChanges(a1);
}

uint64_t _shouldMigrateChinaTimezones(void *a1)
{
  v1 = a1;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___shouldMigrateChinaTimezones_block_invoke;
  block[3] = &unk_1E8688700;
  v7 = v1;
  v2 = _shouldMigrateChinaTimezones_onceToken;
  v3 = v1;
  if (v2 != -1)
  {
    dispatch_once(&_shouldMigrateChinaTimezones_onceToken, block);
  }

  v4 = _shouldMigrateChinaTimezones_shouldMigrate;

  return v4;
}

uint64_t CalDatabaseSizeInBytes()
{
  IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(0, 1);
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, IfNeeded);
  CFStringAppend(MutableCopy, *MEMORY[0x1E69930F0]);
  v2 = 0;
  if (CPSqliteUtilitiesGetSchemaVersionAtPath() != 25)
  {
    v3 = _CPCreateUTF8StringFromCFString();
    memset(&v5, 0, sizeof(v5));
    if (!stat(v3, &v5))
    {
      if ((v5.st_size & 0x8000000000000000) == 0)
      {
        v2 = -1;
        CFLog();
        goto LABEL_6;
      }

      CFLog();
    }

    v2 = 0;
LABEL_6:
    free(v3);
  }

  CFRelease(IfNeeded);
  CFRelease(MutableCopy);
  return v2;
}

void *CalDatabaseCopySourceStats(os_unfair_lock_s *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v1 = CalDatabaseCopyOfAllStores(a1);
  v2 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v1;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = CalStoreCopyUUID(v7);
        if (v8)
        {
          v9 = v8;
        }

        else
        {
          v9 = @"(missing persistent ID)";
        }

        v10 = CalStoreCopyCalendars(v7);
        CountOfCalendarItemsInStore = CalDatabaseGetCountOfCalendarItemsInStore(a1, 0, v7);
        v23[0] = v9;
        v22[0] = @"UUID";
        v22[1] = @"numCalendars";
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[__CFArray count](v10, "count")}];
        v23[1] = v12;
        v22[2] = @"numEvents";
        v13 = [MEMORY[0x1E696AD98] numberWithInt:CountOfCalendarItemsInStore];
        v23[2] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

        [v2 addObject:v14];
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v4);
  }

  return v2;
}

void CalDatabaseSetPreferences(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 80));
  v4 = *(a1 + 296);
  *(a1 + 296) = v3;

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

void CalDatabaseSetCalendarDataContainerProvider(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock((a1 + 80));
  v4 = *(a1 + 288);
  *(a1 + 288) = v3;

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

id CalDatabaseGetCalendarDataContainerProvider(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 288);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));

  return v2;
}

uint64_t CalDatabaseRebuildOccurrenceCache(os_unfair_lock_s *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_1DEBB1000, v2, OS_LOG_TYPE_DEBUG, "Attempting to rebuild the occurrence cache.", &v16, 2u);
  }

  if (!a1)
  {
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      v11 = "No database provided.  Will not rebuild the occurrence cache.";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_1DEBB1000, v12, v13, v11, &v16, 2u);
    }

    return 0;
  }

  v3 = CalDatabaseCopyEventOccurrenceCache(a1);
  if (!v3)
  {
    v14 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v16) = 0;
      v11 = "Could not acquire the occurrence cache.  Will not rebuild the occurrence cache.";
      v12 = v14;
      v13 = OS_LOG_TYPE_DEBUG;
      goto LABEL_14;
    }

    return 0;
  }

  v4 = v3;
  v5 = _CalEventOccurrenceCacheForceRebuild(v3);
  if (v5)
  {
    v6 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138412290;
      v17 = @"kCalEventOccurrenceCacheChangedNotification";
      _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_DEBUG, "Posting Darwin notification: [%@].", &v16, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCalEventOccurrenceCacheChangedNotification", a1, 0, 1u);
    v8 = [CalDatabaseInMemoryChangeTracking changeTrackingForDatabase:a1];
    [v8 clearAllChangesets];

    _CalDatabasePostDBOrSyncStatusChangeNotificationToInternalAndExternalClients(a1, 0, 0);
    v9 = [[CalDatabaseChangeReport alloc] initForReset];
    CalDatabaseDistributeChangeReport(a1, v9, 0);
  }

  CFRelease(v4);
  return v5;
}

void _CalDatabasePostDBOrSyncStatusChangeNotificationToInternalAndExternalClients(uint64_t a1, uint64_t a2, int a3)
{
  os_unfair_lock_lock((a1 + 80));
  ++*(a1 + 120);
  v6 = CalDatabaseCopyClientName(a1, 0);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  _CalDatabasePostDBOrSyncStatusChangeNotificationForDatabase(a1, 1, a3, a2, *(a1 + 352), v6, 0);
}

void CalDatabaseDistributeChangeReport(uint64_t a1, void *a2, int a3)
{
  v25[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(a1, 1);
  if (IfNeeded)
  {
    v7 = *(a1 + 172);
    if (_CalDatabaseShouldPostInProcessChangeNotification(a1))
    {
      v25[0] = IfNeeded;
      v24[0] = @"path";
      v24[1] = @"auxDBID";
      v8 = [MEMORY[0x1E696AD98] numberWithInt:v7];
      v24[2] = @"report";
      v25[1] = v8;
      v25[2] = v5;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __CalDatabaseDistributeChangeReport_block_invoke;
      v20[3] = &unk_1E8688700;
      v21 = v9;
      v10 = v9;
      v11 = MEMORY[0x1E12C7520](v20);
      v12 = v11;
      if (a3)
      {
        v11[2](v11);
      }

      else
      {
        _CalDatabaseRunOnAsyncNotificationQueue(v11);
      }
    }

    else
    {
      v19 = 0;
      v14 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v5 requiringSecureCoding:1 error:&v19];
      v15 = v19;
      if (!v14)
      {
        v16 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v23 = v15;
          _os_log_impl(&dword_1DEBB1000, v16, OS_LOG_TYPE_ERROR, "Can't distribute a change report because the change report couldn't be serialized: %@", buf, 0xCu);
        }
      }

      v17 = _CalDatabaseCalaccessdXPCConnection();
      if (v17)
      {
        v18 = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_string(v18, "function", "distribute_change_report");
        xpc_dictionary_set_data(v18, "report", [v14 bytes], objc_msgSend(v14, "length"));
        xpc_dictionary_set_string(v18, "databasePath", [(__CFString *)IfNeeded UTF8String]);
        xpc_dictionary_set_int64(v18, "auxDBID", v7);
        xpc_connection_send_message(v17, v18);
      }
    }
  }

  else
  {
    v13 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Can't distribute a change report because the database has no path", buf, 2u);
    }
  }
}

uint64_t CalDatabaseCopyEntitiesWhere(uint64_t a1, int a2, void *a3, void *a4, void *a5, uint64_t a6, int a7)
{
  v51 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  if ((a2 - 2) < 2 || a2 == 101)
  {
    SelectPrefix = CPRecordStoreCreateSelectPrefix();
    if (SelectPrefix)
    {
      if ([v13 length])
      {
        [SelectPrefix appendFormat:@" WHERE %@", v13];
      }

      if (a7)
      {
        [SelectPrefix appendString:@" ORDER BY random()"];
      }

      if (a6 >= 1)
      {
        [SelectPrefix appendFormat:@" LIMIT %i", a6];
      }

      v17 = [v14 count];
      if (v17 == [v15 count])
      {
        v18 = [v14 count];
      }

      else
      {
        v21 = CDBLogHandle;
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
        {
          v22 = v21;
          *buf = 134218240;
          *v50 = [v14 count];
          *&v50[8] = 2048;
          *&v50[10] = [v15 count];
          _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_ERROR, "Passed in %lu values but %lu value types.", buf, 0x16u);
        }

        v23 = [v14 count];
        v24 = [v15 count];
        if (v23 >= v24)
        {
          v18 = v24;
        }

        else
        {
          v18 = v23;
        }
      }

      os_unfair_lock_lock((a1 + 80));
      v25 = *(a1 + 24);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (v25)
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
            v28 = CPRecordStoreGetContext();
            if (v28)
            {
              os_unfair_lock_assert_owner(v28 + 20);
            }
          }
        }
      }

      v29 = CPSqliteDatabaseStatementForReading();
      if (v29)
      {
        v30 = v29;
        v47 = a1;
        v48 = v13;
        if (v18 >= 1)
        {
          v31 = 0;
          v32 = v18 & 0x7FFFFFFF;
          do
          {
            v33 = [v14 objectAtIndexedSubscript:v31];
            v34 = [v15 objectAtIndexedSubscript:v31];
            v35 = [v34 intValue];

            switch(v35)
            {
              case 7:
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v36 = *(v30 + 8);
                  [v33 timeIntervalSinceReferenceDate];
                  sqlite3_bind_double(v36, v31 + 1, v37);
                }

                else
                {
                  v43 = CDBLogHandle;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109378;
                    *v50 = v31;
                    *&v50[4] = 2112;
                    *&v50[6] = v33;
                    v39 = v43;
                    v40 = "Wrong type for parameter %i; expected date but got %@";
                    goto LABEL_50;
                  }
                }

                break;
              case 2:
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  sqlite3_bind_text(*(v30 + 8), v31 + 1, [v33 UTF8String], -1, 0);
                }

                else
                {
                  v42 = CDBLogHandle;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109378;
                    *v50 = v31;
                    *&v50[4] = 2112;
                    *&v50[6] = v33;
                    v39 = v42;
                    v40 = "Wrong type for parameter %i; expected string but got %@";
                    goto LABEL_50;
                  }
                }

                break;
              case 1:
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  sqlite3_bind_int(*(v30 + 8), v31 + 1, [v33 intValue]);
                }

                else
                {
                  v44 = CDBLogHandle;
                  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 67109378;
                    *v50 = v31;
                    *&v50[4] = 2112;
                    *&v50[6] = v33;
                    v39 = v44;
                    v40 = "Wrong type for parameter %i; expected int but got %@";
LABEL_50:
                    v41 = 18;
LABEL_51:
                    _os_log_impl(&dword_1DEBB1000, v39, OS_LOG_TYPE_ERROR, v40, buf, v41);
                  }
                }

                break;
              default:
                v38 = CDBLogHandle;
                if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 67109120;
                  *v50 = v35;
                  v39 = v38;
                  v40 = "Unsupported property type %i";
                  v41 = 8;
                  goto LABEL_51;
                }

                break;
            }

            ++v31;
          }

          while (v32 != v31);
        }

        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v25)
          {
            v45 = CPRecordStoreGetContext();
            if (v45)
            {
              os_unfair_lock_assert_owner(v45 + 20);
            }
          }
        }

        v19 = CPRecordStoreProcessStatementWithPropertyIndices();
        a1 = v47;
        v13 = v48;
      }

      else
      {
        v19 = 0;
      }

      if (CDBLockingAssertionsEnabled == 1)
      {
        os_unfair_lock_assert_owner((a1 + 80));
      }

      os_unfair_lock_unlock((a1 + 80));
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v20 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v50 = a2;
      _os_log_impl(&dword_1DEBB1000, v20, OS_LOG_TYPE_ERROR, "Unsupported entity type %i", buf, 8u);
    }

    v19 = 0;
  }

  return v19;
}

void _CALDatabaseSetShouldBackupToiCloud(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x1E69E9840];
  IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(a1, 1);
  v4 = [MEMORY[0x1E695DFF8] fileURLWithPath:IfNeeded];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:a2 ^ 1u];
  v6 = *MEMORY[0x1E695DB80];
  v11 = 0;
  v7 = [v4 setResourceValue:v5 forKey:v6 error:&v11];
  v8 = v11;

  if ((v7 & 1) == 0)
  {
    v9 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      v10 = @"YES";
      if (a2)
      {
        v10 = @"NO";
      }

      *buf = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = IfNeeded;
      _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, "Failed to set resource value NSURLIsExcludedFromBackupKey to %@ for database directory %@", buf, 0x16u);
    }
  }
}

uint64_t CalDatabaseGetIsSafeForUseInDataMigration(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
  v2 = *(a1 + 360);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
  return v2;
}

void CalDatabaseSetIsSafeForUseInDataMigration(uint64_t a1, char a2)
{
  os_unfair_lock_lock((a1 + 80));
  *(a1 + 360) = a2;
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner((a1 + 80));
  }

  os_unfair_lock_unlock((a1 + 80));
}

void _CalDatabaseEnumerateAddedEntitiesOfType(uint64_t a1, int a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 64);
  if (v6)
  {
    v16 = 0;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = CFDictionaryGetValue(v6, a2);
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v5[2](v5, *(*(&v12 + 1) + 8 * v11), &v16);
        if (v16)
        {
          break;
        }

        if (v9 == ++v11)
        {
          v9 = [v7 countByEnumeratingWithState:&v12 objects:v17 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

void CalDatabaseVacuum(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 80));
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
    CalPerformSQLWithConnectionAndBindBlock(v7, 0, @"VACUUM", 0);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v8)
      {
        if (*(*v8 + 104))
        {
          v9 = CPRecordStoreGetContext();
          if (v9)
          {
            os_unfair_lock_assert_owner(v9 + 20);
          }
        }
      }
    }

    CPSqliteDatabaseReleaseSqliteConnection();
    if (CDBLockingAssertionsEnabled == 1)
    {
      os_unfair_lock_assert_owner((a1 + 80));
    }

    os_unfair_lock_unlock((a1 + 80));
  }

  else
  {
    v10 = CDBLogHandle;
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_ERROR, "Unable to get database connection to run vacuum.", v11, 2u);
    }
  }
}

id _CalDatabaseCalaccessdXPCConnection()
{
  pthread_mutex_lock(&_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnectionLock);
  v0 = _CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection;
  if (!_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection)
  {
    v1 = dispatch_get_global_queue(0, 0);
    mach_service = xpc_connection_create_mach_service("com.apple.calaccessd.xpc", v1, 0);
    v3 = _CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection;
    _CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection = mach_service;

    xpc_connection_set_event_handler(_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection, &__block_literal_global_275);
    xpc_connection_resume(_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection);

    v0 = _CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection;
  }

  v4 = v0;
  pthread_mutex_unlock(&_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnectionLock);

  return v4;
}

uint64_t CalendarMigrationLibraryCore(uint64_t a1)
{
  if (!CalendarMigrationLibraryCore_frameworkLibrary)
  {
    CalendarMigrationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  return CalendarMigrationLibraryCore_frameworkLibrary;
}

uint64_t __CalendarMigrationLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  CalendarMigrationLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getCalOutOfProcessMigratorClass_block_invoke(uint64_t a1)
{
  CalendarMigrationLibrary();
  result = objc_getClass("CalOutOfProcessMigrator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCalOutOfProcessMigratorClass_block_invoke_cold_1();
  }

  getCalOutOfProcessMigratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CalendarMigrationLibrary()
{
  v0 = 0;
  if (!CalendarMigrationLibraryCore(&v0))
  {
    CalendarMigrationLibrary_cold_1(&v0);
  }

  if (v0)
  {
    free(v0);
  }
}

uint64_t CalDatabaseRegisterClass()
{
  result = _CFRuntimeRegisterClass();
  __CalDatabaseTypeID = result;
  return result;
}

void _CalDatabaseSetupHandler(uint64_t a1, void *a2)
{
  CalStoreInitializeTables(a1, a2, 0);
  CalCalendarInitializeTables(a1, a2);
  CalRecurrenceInitializeTables(a1, a2);
  CalAlarmInitializeTables(a1, a2);
  CalAttendeeInitializeTables(a1, a2);
  CalIdentityInitializeTables(a1, a2);
  CalEventActionInitializeTables(a1, a2);
  CalEventInitializeTables(a1, a2);
  CalExceptionDateInitializeTables(a1, a2);
  CalAttachmentFileInitializeTables(a1, a2);
  CalAttachmentInitializeTables(a1, a2);
  CalCategoryInitializeTables(a1, a2);
  CalCategoryLinkInitializeTables(a1, a2);
  CalLocationInitializeTables(a1, a2);
  CalShareeInitializeTables(a1, a2);
  CalNotificationInitializeTables(a1, a2);
  CalResourceChangeInitializeTables(a1, a2);
  CalSuggestedEventInfoInitializeTables(a1, a2);
  CalContactInitializeTables(a1, a2);
  CalConferenceInitializeTables(a1, a2);
  CalErrorInitializeTables(a1, a2);
  CalAuxDatabaseInitializeTables(a1, a2);
  CalAuxDatabaseAccountInitializeTables(a1, a2);
  CalImageInitializeTables(a1, a2);
  CalColorInitializeTables(a1, a2);
  Context = CPRecordStoreGetContext();
  if (*(Context + 362) == 1)
  {
    v5 = Context;
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
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

    CPSqliteConnectionSetIntegerForProperty();
    _CALDatabaseSetShouldBackupToiCloud(v5, 0);
  }

  _CalDatabaseInitializeSchemaDuringMigration(a1, a2, 0xFFFFFFFFLL);
}

BOOL _CalDatabaseMigrationHandler(uint64_t a1, sqlite3 **a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v97 = *MEMORY[0x1E69E9840];
  if (a3 <= 19001)
  {
    CFAbsoluteTimeGetCurrent();
    v7 = CDBLogHandle;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *&buf[4] = v4;
      *&buf[8] = 1024;
      *&buf[10] = 19002;
      _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_DEBUG, "Migrating Calendar database from version %d to version %d...", buf, 0xEu);
    }

    function = sqlite3_create_function(a2[1], "CalNoteAttachmentDeleted", 2, 1, 0, _CalDatabaseAttachmentDeletedDuringMigration, 0, 0);
    if (function)
    {
      v9 = function;
      v10 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_impl(&dword_1DEBB1000, v10, OS_LOG_TYPE_ERROR, "Error adding CalNoteAttachmentDeleted function before migration: %i", buf, 8u);
      }
    }

    v11 = sqlite3_create_function(a2[1], "CalNoteStoreDeleted", 3, 1, 0, _CalDatabaseAttachmentDeletedDuringMigration, 0, 0);
    if (v11)
    {
      v12 = v11;
      v13 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v12;
        _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Error adding CalNoteStoreDeleted function before migration: %i", buf, 8u);
      }
    }

    CalErrorMigrateTables(a4, a2, v4);
    CalStoreMigrateTables(a4, a2, v4);
    CalCalendarMigrateTables(a4, a2, v4);
    CalIdentityMigrateTables(a4, a2, v4);
    CalAttendeeMigrateTables(a4, a2, v4);
    CalLocationMigrateTables(a4, a2, v4);
    CalEventMigrateTables(a4, a2, v4);
    CalAlarmMigrateTables(a4, a2, v4);
    CalRecurrenceMigrateTables(a4, a2, v4);
    CalEventActionMigrateTables(a4, a2, v4);
    CalExceptionDateMigrateTables(a4, a2, v4);
    CalAttachmentFileMigrateTables(a4, a2, v4);
    CalAttachmentMigrateTables(a4, a2, v4);
    CalCategoryMigrateTables(a4, a2, v4);
    CalCategoryLinkMigrateTables(a4, a2, v4);
    CalShareeMigrateTables(a4, a2, v4);
    CalNotificationMigrateTables(a4, a2, v4);
    CalResourceChangeMigrateTables(a4, a2, v4);
    CalSuggestedEventInfoMigrateTables(a4, a2, v4);
    CalContactMigrateTables(a4, a2, v4);
    CalConferenceMigrateTables(a4, a2, v4);
    CalAuxDatabaseMigrateTables(a4, a2, v4);
    CalAuxDatabaseAccountMigrateTables(a4, a2, v4);
    CalImageMigrateTables(a4, a2, v4);
    CalColorMigrateTables(a4, a2, v4);
    CalEventOccurrenceCachePrepareForDBMigration(a4, a2, v4);
    _CalDatabaseInitializeSchemaDuringMigration(a4, a2, v4);
    _CalResourceChangeCleanUpDanglingEntities();
    _CalDatabaseCleanupDanglers(a4, a2);
    v14 = &unk_1ED812000;
    if (v4 > 55)
    {
      if (v4 > 0x68)
      {
        goto LABEL_164;
      }
    }

    else
    {
      if (CDBLockingAssertionsEnabled == 1)
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

      CPSqliteConnectionPerformSQL();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a2)
        {
          if (*(*a2 + 13))
          {
            v16 = CPRecordStoreGetContext();
            if (v16)
            {
              os_unfair_lock_assert_owner(v16 + 20);
            }
          }
        }
      }

      CPSqliteConnectionPerformSQL();
    }

    v17 = CFStringCreateWithFormat(0, 0, @"SELECT ROWID, flags, external_id from Calendar WHERE store_id IN (SELECT ROWID from Store where Type = %d)", 2);
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*a2)
      {
        if (*(*a2 + 13))
        {
          v18 = CPRecordStoreGetContext();
          if (v18)
          {
            os_unfair_lock_assert_owner(v18 + 20);
          }
        }
      }
    }

    v19 = CPSqliteConnectionStatementForSQL();
    CFRelease(v17);
    if (!v19)
    {
      goto LABEL_165;
    }

    v96 = 0;
    *buf = 0u;
    *theArray = 0u;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v19)
      {
        v20 = **v19;
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
      if (*v19)
      {
        v22 = **v19;
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
    if (*&buf[8])
    {
      Count = CFArrayGetCount(*&buf[8]);
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a2)
        {
          if (*(*a2 + 13))
          {
            v24 = CPRecordStoreGetContext();
            if (v24)
            {
              os_unfair_lock_assert_owner(v24 + 20);
            }
          }
        }
      }

      v83 = a4;
      v25 = CPSqliteConnectionStatementForSQL();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a2)
        {
          if (*(*a2 + 13))
          {
            v26 = CPRecordStoreGetContext();
            if (v26)
            {
              os_unfair_lock_assert_owner(v26 + 20);
            }
          }
        }
      }

      v27 = CPSqliteConnectionStatementForSQL();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a2)
        {
          if (*(*a2 + 13))
          {
            v28 = CPRecordStoreGetContext();
            if (v28)
            {
              os_unfair_lock_assert_owner(v28 + 20);
            }
          }
        }
      }

      v86 = v25;
      v84 = v4;
      v29 = CPSqliteConnectionStatementForSQL();
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*a2)
        {
          if (*(*a2 + 13))
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
      if (Count >= 1)
      {
        v32 = v31;
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*&buf[8], i);
          if ((CFArrayGetValueAtIndex(theArray[0], i) & 8) == 0)
          {
            if (v86)
            {
              _runTrimForResult(buf, i, v86);
            }

            v35 = CFStringCreateWithFormat(0, 0, @"SELECT rowid, calendar_id, external_id from CalendarItem where calendar_id = %d", ValueAtIndex);
            if (v14[408] == 1)
            {
              if (*a2)
              {
                if (*(*a2 + 13))
                {
                  v36 = CPRecordStoreGetContext();
                  if (v36)
                  {
                    os_unfair_lock_assert_owner(v36 + 20);
                  }
                }
              }
            }

            v37 = CPSqliteConnectionStatementForSQL();
            CFRelease(v35);
            if (v37)
            {
              v93 = 0;
              *v91 = 0u;
              *v92 = 0u;
              if (v14[408] == 1)
              {
                if (*v37)
                {
                  v38 = **v37;
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

              CPSqliteStatementSendResults();
              if (v14[408] == 1)
              {
                if (*v37)
                {
                  v40 = **v37;
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
              if (v91[1])
              {
                v85 = ValueAtIndex;
                v42 = v14;
                v43 = CFArrayGetCount(v91[1]);
                if (v43 >= 1)
                {
                  v44 = v43;
                  for (j = 0; j != v44; ++j)
                  {
                    v46 = CFArrayGetValueAtIndex(v91[1], j);
                    if (v27)
                    {
                      _runTrimForResult(v91, j, v27);
                    }

                    v47 = CFStringCreateWithFormat(0, 0, @"SELECT rowid, event_id, external_id from EventAction where event_id = %d", v46);
                    if (v42[408] == 1)
                    {
                      if (*a2)
                      {
                        if (*(*a2 + 13))
                        {
                          v48 = CPRecordStoreGetContext();
                          if (v48)
                          {
                            os_unfair_lock_assert_owner(v48 + 20);
                          }
                        }
                      }
                    }

                    v49 = CPSqliteConnectionStatementForSQL();
                    CFRelease(v47);
                    if (v49)
                    {
                      v90 = 0;
                      *v88 = 0u;
                      *cf = 0u;
                      if (v42[408] == 1)
                      {
                        if (*v49)
                        {
                          v50 = **v49;
                          if (v50)
                          {
                            if (*(v50 + 104))
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

                      CPSqliteStatementSendResults();
                      if (v42[408] == 1)
                      {
                        if (*v49)
                        {
                          v52 = **v49;
                          if (v52)
                          {
                            if (*(v52 + 104))
                            {
                              v53 = CPRecordStoreGetContext();
                              if (v53)
                              {
                                os_unfair_lock_assert_owner(v53 + 20);
                              }
                            }
                          }
                        }
                      }

                      CPSqliteStatementReset();
                      v54 = v88[1];
                      if (v88[1] && v29)
                      {
                        v55 = CFArrayGetCount(v88[1]);
                        if (v55 >= 1)
                        {
                          v56 = v55;
                          for (k = 0; k != v56; ++k)
                          {
                            _runTrimForResult(v88, k, v29);
                          }
                        }

                        v54 = v88[1];
                      }

                      if (v54)
                      {
                        CFRelease(v54);
                      }

                      if (cf[0])
                      {
                        CFRelease(cf[0]);
                      }

                      if (cf[1])
                      {
                        CFRelease(cf[1]);
                      }
                    }
                  }
                }

                v14 = v42;
                ValueAtIndex = v85;
                if (v91[1])
                {
                  CFRelease(v91[1]);
                }
              }

              if (v92[0])
              {
                CFRelease(v92[0]);
              }

              if (v92[1])
              {
                CFRelease(v92[1]);
              }
            }

            v58 = CFStringCreateWithFormat(0, 0, @"SELECT rowid, calendar_id, external_id, host_url from Notification where calendar_id = %d", ValueAtIndex);
            if (v14[408] == 1)
            {
              if (*a2)
              {
                if (*(*a2 + 13))
                {
                  v59 = CPRecordStoreGetContext();
                  if (v59)
                  {
                    os_unfair_lock_assert_owner(v59 + 20);
                  }
                }
              }
            }

            v60 = CPSqliteConnectionStatementForSQL();
            CFRelease(v58);
            if (v60)
            {
              v93 = 0;
              *v91 = 0u;
              *v92 = 0u;
              LOBYTE(v91[0]) = 1;
              if (v14[408] == 1)
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
              if (v14[408] == 1)
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
              v65 = v91[1];
              if (v91[1] && v32)
              {
                v66 = CFArrayGetCount(v91[1]);
                if (v66 >= 1)
                {
                  v67 = v66;
                  for (m = 0; m != v67; ++m)
                  {
                    _runTrimForResult(v91, m, v32);
                  }
                }

                v65 = v91[1];
              }

              if (v65)
              {
                CFRelease(v65);
              }

              if (v92[0])
              {
                CFRelease(v92[0]);
              }

              if (v92[1])
              {
                CFRelease(v92[1]);
              }
            }
          }
        }
      }

      LODWORD(v4) = v84;
      a4 = v83;
      if (*&buf[8])
      {
        CFRelease(*&buf[8]);
      }
    }

    if (theArray[0])
    {
      CFRelease(theArray[0]);
    }

    if (theArray[1])
    {
      CFRelease(theArray[1]);
    }

LABEL_164:
    if (v4 > 16036)
    {
LABEL_224:
      CFAbsoluteTimeGetCurrent();
      CFLog();
      _CalAttachmentFileRegisterFunctions(a4, a2);
      return v4 > 19001;
    }

LABEL_165:
    v69 = CPRecordStoreGetContext();
    v70 = *(v69 + 172);
    if (!v70)
    {
      if (a2)
      {
        if (v14[408])
        {
          if (*a2)
          {
            if (*(*a2 + 13))
            {
              v71 = CPRecordStoreGetContext();
              if (v71)
              {
                os_unfair_lock_assert_owner(v71 + 20);
              }
            }
          }
        }
      }

      v72 = CPSqliteConnectionIntegerForPropertyWithDefaultValue();
      if (v72 != -1)
      {
        [*(v69 + 296) set_defaultCalendarDatabaseID:v72];
      }

      if (a2)
      {
        if (v14[408])
        {
          if (*a2)
          {
            if (*(*a2 + 13))
            {
              v73 = CPRecordStoreGetContext();
              if (v73)
              {
                os_unfair_lock_assert_owner(v73 + 20);
              }
            }
          }
        }
      }

      CPSqliteDatabaseReleaseSqliteConnection();
      v70 = *(v69 + 172);
    }

    if ([*(v69 + 296) get_defaultCalendarDatabaseID] == v70)
    {
      if (a2)
      {
        if (v14[408])
        {
          if (*a2)
          {
            if (*(*a2 + 13))
            {
              v74 = CPRecordStoreGetContext();
              if (v74)
              {
                os_unfair_lock_assert_owner(v74 + 20);
              }
            }
          }
        }
      }

      v75 = CPSqliteConnectionCopyValueForProperty();
      if (v75)
      {
        [*(v69 + 296) set_defaultCalendarID:v75];
      }

      if (a2)
      {
        if (v14[408])
        {
          if (*a2)
          {
            if (*(*a2 + 13))
            {
              v76 = CPRecordStoreGetContext();
              if (v76)
              {
                os_unfair_lock_assert_owner(v76 + 20);
              }
            }
          }
        }
      }

      v77 = CPSqliteConnectionIntegerForProperty();
      if (v77 >= 1)
      {
        [*(v69 + 296) set_defaultCalendarStoreUID:v77];
      }
    }

    if (a2)
    {
      if (v14[408])
      {
        if (*a2)
        {
          if (*(*a2 + 13))
          {
            v78 = CPRecordStoreGetContext();
            if (v78)
            {
              os_unfair_lock_assert_owner(v78 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionRemoveProperty();
    if (a2)
    {
      if (v14[408])
      {
        if (*a2)
        {
          if (*(*a2 + 13))
          {
            v79 = CPRecordStoreGetContext();
            if (v79)
            {
              os_unfair_lock_assert_owner(v79 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionRemoveProperty();
    if (a2)
    {
      if (v14[408])
      {
        if (*a2)
        {
          if (*(*a2 + 13))
          {
            v80 = CPRecordStoreGetContext();
            if (v80)
            {
              os_unfair_lock_assert_owner(v80 + 20);
            }
          }
        }
      }
    }

    CPSqliteConnectionRemoveProperty();
    if (a2)
    {
      if (v14[408])
      {
        if (*a2)
        {
          if (*(*a2 + 13))
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

    CPSqliteConnectionRemoveProperty();
    goto LABEL_224;
  }

  return v4 > 19001;
}

uint64_t _CalDatabaseAlwaysFailingMigrationHandler()
{
  v0 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_1DEBB1000, v0, OS_LOG_TYPE_ERROR, "Asked to migrate when the database should already be migrated. Failing.", v2, 2u);
  }

  return 2;
}

void _CalDatabaseInitializeSchemaDuringMigration(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  CalEventOccurrenceCacheInitializeDB(a1, a2, a3);
  CalScheduledTaskCacheInitializeDB(a1, a2, v3);

  CalDatabasePersistentChangeTrackingInitializeDB(a1, a2, v3);
}

uint64_t _CalCalendarGatherRowsToTrimURLs(uint64_t a1, uint64_t a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = sqlite3_column_int(*(a1 + 8), 1);
  if (a2)
  {
    v6 = v5;
    if (!*(a2 + 8))
    {
      *(a2 + 8) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    }

    if (!*(a2 + 16))
    {
      *(a2 + 16) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    }

    if (!*(a2 + 24))
    {
      *(a2 + 24) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    }

    if (*a2 == 1 && !*(a2 + 32))
    {
      *(a2 + 32) = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    }

    CFArrayAppendValue(*(a2 + 8), v4);
    CFArrayAppendValue(*(a2 + 16), v6);
    _appendURLFromSQLResult(a1, 2, *(a2 + 24));
    if (*a2 == 1)
    {
      _appendURLFromSQLResult(a1, 3, *(a2 + 32));
    }
  }

  return 0;
}

void _runTrimForResult(uint64_t a1, CFIndex a2, uint64_t **a3)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), a2);
  v7 = CFArrayGetValueAtIndex(*(a1 + 24), a2);
  CFRetain(v7);
  if (*a1 == 1)
  {
    v8 = CFArrayGetValueAtIndex(*(a1 + 32), a2);
    CFRetain(v8);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v8 = 0;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (CFStringGetLength(v7))
  {
    v9 = CFURLCreateWithString(*MEMORY[0x1E695E480], v7, 0);
    if (v9)
    {
      v10 = v9;
      v11 = CFURLCopyPath(v9);
      if (v11)
      {
        v12 = v11;
        CFRelease(v7);
        v7 = v12;
      }

      CFRelease(v10);
    }
  }

LABEL_10:
  if (v8)
  {
    if (*a1)
    {
      if (CFStringGetLength(v8))
      {
        v13 = CFURLCreateWithString(*MEMORY[0x1E695E480], v8, 0);
        if (v13)
        {
          v14 = v13;
          v15 = CFURLCopyPath(v13);
          if (v15)
          {
            v16 = v15;
            CFRelease(v8);
            v8 = v16;
          }

          CFRelease(v14);
        }
      }
    }
  }

  v17 = a3[1];
  CStringFromCFString = CalCreateCStringFromCFString(v7);
  sqlite3_bind_text(v17, 1, CStringFromCFString, -1, MEMORY[0x1E69E9B38]);
  if (*a1 == 1)
  {
    v19 = a3[1];
    v20 = CalCreateCStringFromCFString(v8);
    sqlite3_bind_text(v19, 2, v20, -1, MEMORY[0x1E69E9B38]);
    v21 = 3;
  }

  else
  {
    v21 = 2;
  }

  sqlite3_bind_int(a3[1], v21, ValueAtIndex);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a3)
    {
      v22 = **a3;
      if (v22)
      {
        if (*(v22 + 104))
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

  CPSqliteStatementPerform();
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a3)
    {
      v24 = **a3;
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
  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {

    CFRelease(v8);
  }
}

void _appendURLFromSQLResult(uint64_t a1, int a2, __CFArray *a3)
{
  v4 = sqlite3_column_text(*(a1 + 8), a2);
  if (v4 && (v5 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v4, 0x8000100u)) != 0)
  {
    v6 = v5;
    CFArrayAppendValue(a3, v5);

    CFRelease(v6);
  }

  else
  {

    CFArrayAppendValue(a3, &stru_1F59E24D8);
  }
}

void CalDatabaseProfileAndGreenTeaCallback(void *a1, const char *a2, unint64_t a3)
{
  CalDatabaseProfileCallback(a1, a2, a3);

  CalDatabaseGreenTeaCallback(a1, a2);
}

void CalDatabaseProfileCallback(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
    v5 = CDBSQLProfileHandle;
    if (os_log_type_enabled(CDBSQLProfileHandle, OS_LOG_TYPE_DEBUG))
    {
      v6 = MEMORY[0x1E696AD98];
      v7 = v5;
      v8 = [v6 numberWithUnsignedLongLong:(a3 / 1000000.0)];
      v9 = 138412546;
      v10 = v8;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_DEBUG, "Execution time was [%@] milliseconds for statement: [%@]", &v9, 0x16u);
    }
  }
}

void CalDatabaseGreenTeaCallback(void *a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a1)
    {
      v3 = a1;
    }

    else
    {
      v3 = &stru_1F59E24D8;
    }

    if (!strncmp("SELECT", a2, 6uLL))
    {
      v4 = @"read Calendar data";
    }

    else if (!strncmp("INSERT", a2, 6uLL) || !strncmp("UPDATE", a2, 6uLL))
    {
      v4 = @"modified Calendar data";
    }

    else
    {
      if (strncmp("DELETE", a2, 6uLL))
      {
LABEL_16:

        return;
      }

      v4 = @"deleted Calendar data";
    }

    ct_green_tea_logger_create_static();
    v5 = getCTGreenTeaOsLogHandle();
    v6 = v5;
    if (v5)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v7 = 138412546;
        v8 = v3;
        v9 = 2112;
        v10 = v4;
        _os_log_impl(&dword_1DEBB1000, v6, OS_LOG_TYPE_INFO, "%@ %@", &v7, 0x16u);
      }
    }

    goto LABEL_16;
  }
}

void _CalDatabaseValidateSchemaDeleteDBAndAbortOnFailure(uint64_t a1, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104) && (Context = CPRecordStoreGetContext()) != 0)
  {
    if (*(Context + 362))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 2;
  }

  do
  {
    v5 = off_1E8688610[v4];
    v6 = [@"SELECT ROWID" mutableCopy];
    if ((v5[7] & 2) != 0)
    {
      v8 = [@"SELECT ROWID" mutableCopy];
      v7 = v8;
      if ((v5[7] & 0x10) != 0)
      {
        [v8 appendString:{@", sequence_number"}];
      }
    }

    else
    {
      v7 = 0;
    }

    if (*(v5 + 18) >= 1)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v5[10];
        v12 = &v11[v9];
        v13 = *&v11[v9 + 24];
        if ((v13 & 4) == 0 && *(v12 + 2))
        {
          [v6 appendFormat:@", %s", *v12];
          v13 = *(v12 + 6);
        }

        if ((v13 & 8) != 0 || (v13 & 2) != 0 && *&v11[v9 + 8])
        {
          [v7 appendFormat:@", %s", *v12];
        }

        ++v10;
        v9 += 40;
      }

      while (v10 < *(v5 + 18));
    }

    [v6 appendFormat:@" FROM %s", *v5];
    [v7 appendFormat:@" FROM %sChanges", *v5];
    if (_CalDatabaseDoesStatementFailToCompile(a2, v6))
    {
      v15 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v16 = *v5;
        *buf = 136315138;
        v33 = v16;
        v17 = "Main table failure for %s";
        goto LABEL_32;
      }

LABEL_33:

      goto LABEL_34;
    }

    if (v7 && _CalDatabaseDoesStatementFailToCompile(a2, v7))
    {
      v15 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        v18 = *v5;
        *buf = 136315138;
        v33 = v18;
        v17 = "Change table failure for %s";
LABEL_32:
        _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, v17, buf, 0xCu);
      }

      goto LABEL_33;
    }

    ++v4;
  }

  while (v4 != 24);
  if (!_CalDatabaseDoesStatementFailToCompile(a2, @"SELECT key, value FROM _SqliteDatabaseProperties"))
  {
    return;
  }

  v14 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "Failure for _SqliteDatabaseProperties", buf, 2u);
  }

LABEL_34:
  v19 = CDBLogHandle;
  if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v19, OS_LOG_TYPE_ERROR, "Schema validation failed. Deleting calendar database and aborting.", buf, 2u);
  }

  v20 = *(a2 + 8);
  if (v20)
  {
    *buf = 141;
    v21 = sqlite3_file_control(v20, 0, 101, buf);
    v22 = CDBLogHandle;
    v23 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      v24 = a1;
      if (!v23)
      {
        goto LABEL_46;
      }

      *v31 = 0;
      v25 = "Failed to delete database with invalid schema.";
    }

    else
    {
      v24 = a1;
      if (!v23)
      {
        goto LABEL_46;
      }

      *v31 = 0;
      v25 = "Successfully deleted database. Aborting.";
    }

    v26 = v31;
  }

  else
  {
    v22 = CDBLogHandle;
    v24 = a1;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_46;
    }

    *buf = 0;
    v25 = "Failed to delete database due to no connection to database";
    v26 = buf;
  }

  _os_log_impl(&dword_1DEBB1000, v22, OS_LOG_TYPE_ERROR, v25, v26, 2u);
LABEL_46:
  if (!*(v24 + 104) || (v27 = CPRecordStoreGetContext()) == 0 || (v28 = v27, WeakRetained = objc_loadWeakRetained((v27 + 304)), WeakRetained, !WeakRetained))
  {
    _CalDatabaseValidateSchemaDeleteDBAndAbortOnFailure_cold_1();
  }

  _CalDatabaseIntegrityError(v28, @"Schema");
}

uint64_t _CalDatabaseDoesStatementFailToCompile(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_15;
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    a1 = 0;
    goto LABEL_15;
  }

  ppStmt = 0;
  v6 = sqlite3_prepare_v2(v5, [v3 UTF8String], -1, &ppStmt, 0);
  if (v6)
  {
    v7 = v6;
    v8 = ppStmt;
    v9 = CDBLogHandle;
    v10 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
    if (v7 == 1 && !v8)
    {
      if (v10)
      {
        v11 = *(a1 + 8);
        v12 = v9;
        v13 = sqlite3_errmsg(v11);
        *buf = 136446210;
        v17 = v13;
        _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, "Compilation failure: %{public}s", buf, 0xCu);
      }

      a1 = 1;
      goto LABEL_13;
    }

    if (v10)
    {
      *buf = 134218240;
      v17 = ppStmt;
      v18 = 1024;
      v19 = v7;
      _os_log_impl(&dword_1DEBB1000, v9, OS_LOG_TYPE_ERROR, "Unexpected compilation failure: statement is %p and error is %i", buf, 0x12u);
    }
  }

  a1 = 0;
LABEL_13:
  if (ppStmt)
  {
    sqlite3_finalize(ppStmt);
  }

LABEL_15:

  return a1;
}

uint64_t _CalDatabaseCopyDatabaseIfValid(uint64_t a1)
{
  os_unfair_lock_lock(&__GlobalLock);
  if (__ValidDatabases)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [__ValidDatabases member:a1];
    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v3 = 0;
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(&__GlobalLock);
  }

  os_unfair_lock_unlock(&__GlobalLock);
  return v3;
}

char *__CalDatabaseSaveInternalWithOptions_block_invoke(char *result, const void *a2)
{
  v2 = *(*(result + 4) + 8);
  v4 = *(v2 + 24);
  v3 = (v2 + 24);
  if ((v4 & 1) == 0)
  {
    v5 = result;
    if ((*(*(*(result + 5) + 8) + 24) & 1) == 0)
    {
      result = _CalDatabaseIsIntegrationRecord(a2);
      v6 = 32;
      if (result)
      {
        v6 = 48;
      }

      v3 = (*(*&v5[v6] + 8) + 24);
    }

    *v3 = 1;
  }

  return result;
}

const void *_CalDatabaseIsIntegrationRecord(const void *a1)
{
  result = _CalEntityGetStore(a1);
  if (result)
  {
    return (_CalStoreGetType(result) == 6);
  }

  return result;
}

void _CalDatabaseRemoveOrphanedEntitiesOfType(uint64_t a1, int a2, void *a3)
{
  v4 = *(a1 + 64);
  if (v4)
  {
    v6 = a2;
    Value = CFDictionaryGetValue(v4, a2);
    if (Value)
    {
      CFSetApplyFunction(Value, _CalDatabaseRemoveOrphanedEntities, a3);
      v8 = *(a1 + 64);

      CFDictionaryRemoveValue(v8, v6);
    }
  }
}

BOOL CalDatabaseChangesToRecordIDShouldBeIgnoredByEventKit(uint64_t a1)
{
  if (CalRecordIDIsTemporary(a1))
  {
    return 1;
  }

  v3 = CalRecordIDGetEntityType(a1);
  return !CalDatabaseEntityTypeParticipatesInInMemoryChangeTracking(v3);
}

void validateAndAddObjectID(__CFArray *a1, const void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v4 = CalRecordIDGetEntityType(a2);
  v5 = CalRecordIDGetRowID(a2);
  if (v4 <= 0)
  {
    v7 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = 67109120;
    v10 = v4;
    v8 = "Attempt to add record with invalid entity type %i";
LABEL_11:
    _os_log_impl(&dword_1DEBB1000, v7, OS_LOG_TYPE_FAULT, v8, &v9, 8u);
    return;
  }

  v6 = v5;
  if (v5 <= 0)
  {
    v7 = CDBLogHandle;
    if (!os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_FAULT))
    {
      return;
    }

    v9 = 67109120;
    v10 = v6;
    v8 = "Attempt to add record with invalid row ID %i";
    goto LABEL_11;
  }

  CFArrayAppendValue(a1, a2);
}

void addRelatedObjectIDsForDeletedRecord(const void *a1, CFTypeRef *a2)
{
  Store = CPRecordGetStore();
  if (Store)
  {
    Store = CPRecordStoreGetContext();
  }

  v11 = 0;
  v5 = _CalEntityCopyRelatedEntitiesDeletedByTriggers(Store, a1, &v11);
  if (v11 == 1 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        RecordID = _CalEntityGetRecordID(ValueAtIndex);
        validateAndAddObjectID(*a2, RecordID);
      }
    }

    CFRelease(v5);
  }
}

void _CalDatabasePreCommitSaveCallback(uint64_t a1, uint64_t a2)
{
  Context = CPRecordStoreGetContext();
  if (!Context)
  {
    return;
  }

  v5 = Context;
  v6 = *(Context + 84);
  if ((v6 & 0xFE) != 0)
  {
    if (a1)
    {
      if (CDBLockingAssertionsEnabled)
      {
        v7 = CPRecordStoreGetContext();
        if (v7)
        {
          os_unfair_lock_assert_owner(v7 + 20);
        }
      }
    }

    CPRecordStoreGetSequenceNumber();
    if ((v6 & 2) != 0)
    {
      if (a2)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a2)
          {
            if (*(*a2 + 104))
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

      CPSqliteConnectionSetIntegerForProperty();
      *(v5 + 84) &= ~2u;
      if ((v6 & 4) == 0)
      {
LABEL_9:
        if ((v6 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_29;
      }
    }

    else if ((v6 & 4) == 0)
    {
      goto LABEL_9;
    }

    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
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
    }

    CPSqliteConnectionSetIntegerForProperty();
    *(v5 + 84) &= ~4u;
    if ((v6 & 8) == 0)
    {
LABEL_10:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_36;
    }

LABEL_29:
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

    CPSqliteConnectionSetIntegerForProperty();
    *(v5 + 84) &= ~8u;
    if ((v6 & 0x10) == 0)
    {
LABEL_11:
      if ((v6 & 0x20) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_43;
    }

LABEL_36:
    if (a2)
    {
      if (CDBLockingAssertionsEnabled)
      {
        if (*a2)
        {
          if (*(*a2 + 104))
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

    CPSqliteConnectionSetIntegerForProperty();
    *(v5 + 84) &= ~0x10u;
    if ((v6 & 0x20) == 0)
    {
LABEL_12:
      if ((v6 & 0x40) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_50;
    }

LABEL_43:
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

    CPSqliteConnectionSetIntegerForProperty();
    *(v5 + 84) &= ~0x20u;
    if ((v6 & 0x40) == 0)
    {
LABEL_13:
      if ((v6 & 0x80) == 0)
      {
        goto LABEL_64;
      }

LABEL_57:
      if (a2)
      {
        if (CDBLockingAssertionsEnabled)
        {
          if (*a2)
          {
            if (*(*a2 + 104))
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

      CPSqliteConnectionSetIntegerForProperty();
      *(v5 + 84) &= ~0x80u;
      goto LABEL_64;
    }

LABEL_50:
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

    CPSqliteConnectionSetIntegerForProperty();
    *(v5 + 84) &= ~0x40u;
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_57;
  }

LABEL_64:
  v15 = *(v5 + 24);
  if (CDBLockingAssertionsEnabled == 1 && v15 != 0)
  {
    v17 = CPRecordStoreGetContext();
    if (v17)
    {
      os_unfair_lock_assert_owner(v17 + 20);
    }
  }

  v18 = CPRecordStoreCopyChangedRecords();
  if (v18)
  {
    v19 = v18;
    Count = CFArrayGetCount(v18);
    if (Count >= 1)
    {
      v21 = Count;
      for (i = 0; i != v21; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v19, i);
        if (_CalEntityIsOfType(ValueAtIndex, 101))
        {
          _CalCalendarItemFixupParticipantsOnEvent(ValueAtIndex);
        }

        if (_CalEntityIsOfType(ValueAtIndex, 2))
        {
          _CalEventRectifyRecurrenceSeriesPrivacyLevels(ValueAtIndex);
        }
      }
    }

    CFRelease(v19);
  }
}

void _CalDatabaseCompleteSave(uint64_t a1, void *a2)
{
  Context = CPRecordStoreGetContext();
  v5 = *(Context + 112);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        v9 = CFArrayGetValueAtIndex(*(Context + 112), i);
        v9[2]();
      }
    }

    CFRelease(*(Context + 112));
    *(Context + 112) = 0;
  }

  if (a2)
  {
    v10 = *(Context + 32);
    if (v10)
    {
      _CalEventOccurrenceCacheStopTrackingUpdatesAndSave(v10, a2);
    }
  }

  if (a2 && (v11 = *(Context + 40)) != 0)
  {
    _CalScheduledTaskCacheStopTrackingUpdates(v11);
    _CalScheduledTaskCacheSave(*(Context + 40), a2);
    _CalScheduledTaskCacheFinishSave();
  }

  else if (!a2)
  {
    return;
  }

  if (a1)
  {
    if (CDBLockingAssertionsEnabled)
    {
      v12 = CPRecordStoreGetContext();
      if (v12)
      {
        os_unfair_lock_assert_owner(v12 + 20);
      }
    }
  }

  SequenceNumber = CPRecordStoreGetSequenceNumber();
  v14 = CalDatabaseCopyClientIdentifierOptionalLock(Context, 0);
  _CalDatabaseAssociateSequenceNumberWithClient(a2, v14, SequenceNumber);

  CFRelease(v14);
}

BOOL _CalDatabaseSendChangeNotificationAndObjectIdsToCalaccessd(uint64_t a1, const __CFArray *a2, const __CFArray *a3, int64_t a4, BOOL a5, void *a6)
{
  v11 = a6;
  v12 = _CalDatabaseCalaccessdXPCConnection();
  if (v12)
  {
    v13 = _CalDatabaseCreateXPCArrayOfChangedObjectIDs(a2);
    v14 = _CalDatabaseCreateXPCArrayOfChangedObjectIDs(a3);
    v15 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v15, "function", "postchangenote");
    IfNeeded = CalDatabaseCopyDirectoryPathForDatabaseCreateIfNeeded(a1, 1);
    xpc_dictionary_set_string(v15, "databasePath", [(__CFString *)IfNeeded UTF8String]);
    xpc_dictionary_set_BOOL(v15, "postnotificationsynchronously", a5);
    if (v13 && v14)
    {
      xpc_dictionary_set_value(v15, "changes", v13);
      xpc_dictionary_set_value(v15, "deletes", v14);
    }

    xpc_dictionary_set_int64(v15, "changeType", a4);
    xpc_dictionary_set_int64(v15, "changeReason", *(a1 + 352));
    xpc_dictionary_set_string(v15, "clientName", [v11 UTF8String]);
    v17 = xpc_connection_send_message_with_reply_sync(v12, v15);
    v18 = v17;
    v19 = v17 && object_getClass(v17) == MEMORY[0x1E69E9E80] && xpc_dictionary_get_BOOL(v18, "notificationwasposted");
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

CFIndex _CalDatabaseCountEntitiesByType(const __CFArray *a1, uint64_t a2, _DWORD *a3)
{
  result = CFArrayGetCount(a1);
  if (result >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = a2 - 4;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v8);
      result = _CalEntityGetType(ValueAtIndex);
      if ((result - 1) >= 0x1D)
      {
        v11 = a3;
      }

      else
      {
        v11 = (v9 + 4 * result);
      }

      ++*v11;
      ++v8;
    }

    while (v7 != v8);
  }

  return result;
}

void _CalDatabaseChangesOfTypeMayAffectWidgets(uint64_t a1, CFArrayRef theArray, unint64_t a3, _BYTE *a4)
{
  v107 = *MEMORY[0x1E69E9840];
  if (!theArray)
  {
    return;
  }

  v6 = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return;
  }

  v8 = Count;
  v9 = 0;
  v87 = a3 & 0xFFFFFFFFFFFFFFFDLL;
  v86 = a4 + 16;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    RecordID = _CalEntityGetRecordID(ValueAtIndex);
    if (!RecordID)
    {
      v13 = CDBWidgetReloadHandle;
      if (os_log_type_enabled(CDBWidgetReloadHandle, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        ID = CPRecordGetID();
        if (ValueAtIndex)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
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
        *buf = 67109376;
        *v103 = ID;
        *&v103[4] = 1024;
        *&v103[6] = IsDeleted;
        _os_log_impl(&dword_1DEBB1000, v14, OS_LOG_TYPE_ERROR, "_CalDatabaseChangesInArrayMayAffectWidgets: failed to get recordID for updated record with rowid [%d], deleted: %{BOOL}d", buf, 0xEu);
      }

      goto LABEL_96;
    }

    v12 = RecordID;
    if (CalRecordIDGetEntityType(RecordID) == 6)
    {
      if (_CalStoreHasDirtyInstanceAttributes(ValueAtIndex))
      {
        v64 = CDBWidgetReloadHandle;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v66 = off_1E8688740[a3];
          *buf = 138543362;
          *v103 = v66;
          _os_log_impl(&dword_1DEBB1000, v64, OS_LOG_TYPE_DEFAULT, "Allowing reload for changeType %{public}@ because store has dirty instance attributes", buf, 0xCu);
        }

        if (*a4 == 1)
        {
          v67 = a4 + 16;
          do
          {
            *(v67 - 15) = 1;
            v68 = *v67;
            v67 += 16;
          }

          while ((v68 & 1) != 0);
        }

        return;
      }

      goto LABEL_96;
    }

    if (CalRecordIDGetEntityType(v12) == 1)
    {
      if (_CalCalendarHasDirtyInstanceAttributes(ValueAtIndex))
      {
        v69 = CDBWidgetReloadHandle;
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
        {
          v71 = off_1E8688740[a3];
          *buf = 138543362;
          *v103 = v71;
          _os_log_impl(&dword_1DEBB1000, v69, OS_LOG_TYPE_DEFAULT, "Allowing reload for changeType %{public}@ because calendar has dirty instance attributes", buf, 0xCu);
        }

        if (*a4 == 1)
        {
          v72 = a4 + 16;
          do
          {
            *(v72 - 15) = 1;
            v73 = *v72;
            v72 += 16;
          }

          while ((v73 & 1) != 0);
        }

        return;
      }

      goto LABEL_96;
    }

    if (CalRecordIDGetEntityType(v12) != 5)
    {
      break;
    }

    if (a3 <= 1)
    {
      v74 = CDBWidgetReloadHandle;
      if (os_log_type_enabled(CDBWidgetReloadHandle, OS_LOG_TYPE_DEFAULT))
      {
        v76 = @"ChangeTypeUpdated";
        if (!a3)
        {
          v76 = @"ChangeTypeAdded";
        }

        v77 = v76;
        *buf = 138543362;
        *v103 = v77;
        v78 = v74;
        _os_log_impl(&dword_1DEBB1000, v78, OS_LOG_TYPE_DEFAULT, "Allowing reload because of changeType %{public}@ for recurrence rule", buf, 0xCu);
      }

      if (*a4 == 1)
      {
        v79 = a4 + 16;
        do
        {
          *(v79 - 15) = 1;
          v80 = *v79;
          v79 += 16;
        }

        while ((v80 & 1) != 0);
      }

      return;
    }

LABEL_96:
    if (++v9 >= v8)
    {
      return;
    }
  }

  if (CalRecordIDGetEntityType(v12) != 29)
  {
    if (_CalEntityIsOfType(ValueAtIndex, 2))
    {
      v88 = a3;
      v85 = v6;
      if (v87)
      {
        if (ValueAtIndex)
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

        v19 = CPRecordCopyChangedProperties();
        if (v19)
        {
          v20 = v19;
          v21 = CFArrayGetCount(v19);
          if (v21 >= 1)
          {
            v22 = v21;
            for (i = 0; v22 != i; ++i)
            {
              v24 = CFArrayGetValueAtIndex(v20, i);
              if (v24 <= 73)
              {
                if (v24 <= 0x39 && ((1 << v24) & 0x2800001000083FFLL) != 0)
                {
LABEL_48:
                  v26 = CDBWidgetReloadHandle;
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    PropertyDescriptor = CPRecordGetPropertyDescriptor();
                    if (PropertyDescriptor && *PropertyDescriptor)
                    {
                      v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
                    }

                    else
                    {
                      v28 = &stru_1F59E24D8;
                    }

                    *buf = 138543362;
                    *v103 = v28;
                    _os_log_impl(&dword_1DEBB1000, v26, OS_LOG_TYPE_DEFAULT, "ChangeTypeUpdated contains changed property (%{public}@), which may affect the widget view if it's in the time range", buf, 0xCu);
                  }

                  CFRelease(v20);
                  goto LABEL_55;
                }
              }

              else if (v24 == 74)
              {
                if (_CalDatabaseIsIntegrationRecord(ValueAtIndex))
                {
                  goto LABEL_48;
                }
              }

              else if ((v24 - 80) < 2 || v24 == 96)
              {
                goto LABEL_48;
              }
            }
          }

          CFRelease(v20);
        }

        v92 = 0;
      }

      else
      {
        v25 = CDBWidgetReloadHandle;
        if (os_log_type_enabled(CDBWidgetReloadHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1DEBB1000, v25, OS_LOG_TYPE_DEFAULT, "Event was added or removed which may affect the widget view if it's in the time range", buf, 2u);
        }

LABEL_55:
        v92 = 1;
      }

      if (*a4 != 1)
      {
LABEL_95:
        a3 = v88;
        v6 = v85;
        if (a4[1])
        {
          return;
        }

        goto LABEL_96;
      }

      v29 = 0;
      v30 = v86;
      v90 = v8;
      v91 = a4;
      while (2)
      {
        v31 = &a4[16 * v29];
        if (*(v31 + 1))
        {
          goto LABEL_95;
        }

        v98 = v29;
        v89 = &a4[16 * v29];
        v32 = v31[1];
        v33 = [v32 startDate];
        v34 = [v32 endDate];
        v35 = CalCopyTimeZone();
        v101 = v33;
        [v33 timeIntervalSinceReferenceDate];
        GregorianDateWithFallbackToDefaultTimeZone = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
        v95 = v37;
        v96 = GregorianDateWithFallbackToDefaultTimeZone;
        v99 = v34;
        [v34 timeIntervalSinceReferenceDate];
        cf = v35;
        v38 = CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
        v93 = v39;
        v94 = v38;
        v40 = MEMORY[0x1E695DF00];
        v41 = v32;
        v42 = [v40 dateWithTimeIntervalSinceReferenceDate:COERCE_DOUBLE(_CalEventGetStartDate(ValueAtIndex))];
        v43 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:_CalRecurrenceGetEndDate(ValueAtIndex)];
        v44 = [v41 intersectsRangeWithStartDate:v42 endDate:v43 allowSinglePointIntersection:0];
        v45 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{_CalRecordGetOriginalDateProperty(ValueAtIndex, 4)}];
        v46 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{_CalRecordGetOriginalDateProperty(ValueAtIndex, 6)}];
        LODWORD(v34) = [v41 intersectsRangeWithStartDate:v45 endDate:v46 allowSinglePointIntersection:0];

        if ((v92 & (v44 | v34)) == 1)
        {
          v47 = CDBWidgetReloadHandle;
          v48 = v98;
          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            v49 = off_1E8688740[v88];
            *buf = 138543874;
            *v103 = v49;
            *&v103[8] = 1024;
            v104 = 1;
            v105 = 1024;
            v106 = v98;
            _os_log_impl(&dword_1DEBB1000, v47, OS_LOG_TYPE_DEFAULT, "Allowing reload for %{public}@ because changedPropertiesShowInWidget (%{BOOL}d) and its in range %i.", buf, 0x18u);
          }

          LODWORD(v50) = 1;
          v8 = v90;
          a4 = v91;
          v51 = cf;
          goto LABEL_63;
        }

        if (v92)
        {
          v51 = cf;
          if (_CalEventOccurrencesExistInDateRange(ValueAtIndex, v96, v95, v94, v93, 0, cf))
          {
            v52 = CDBWidgetReloadHandle;
            v8 = v90;
            a4 = v91;
            v48 = v98;
            if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
            {
              v53 = off_1E8688740[v88];
              *buf = 138543874;
              *v103 = v53;
              *&v103[8] = 1024;
              v104 = 1;
              v105 = 1024;
              v106 = v98;
              _os_log_impl(&dword_1DEBB1000, v52, OS_LOG_TYPE_DEFAULT, "Allowing reload for %{public}@ because changedPropertiesShowInWidget (%{BOOL}d), post-save event occurrences exist in range %i)", buf, 0x18u);
            }

            LODWORD(v50) = 1;
LABEL_63:
            if (v51)
            {
LABEL_64:
              CFRelease(v51);
            }

LABEL_65:

            if (v50)
            {
              if (*v89 == 1)
              {
                do
                {
                  *(v30 - 15) = 1;
                  v63 = *v30;
                  v30 += 16;
                }

                while ((v63 & 1) != 0);
              }

              goto LABEL_95;
            }

            v29 = v48 + 1;
            v30 += 16;
            if (a4[16 * v29] != 1)
            {
              goto LABEL_95;
            }

            continue;
          }

          v50 = *(a1 + 32);
          if (v50)
          {
            CFRetain(*(a1 + 32));
            v54 = CalFilterCreateWithDatabaseShowingAll(a1);
            v55 = CPRecordGetID();
            Mutable = CFArrayCreateMutable(0, 1, 0);
            CFArrayAppendValue(Mutable, v55);
            [v101 timeIntervalSinceReferenceDate];
            v58 = CalEventOccurrenceCacheCopyEventOccurrencesWithIDsAfterDate(v50, v54, Mutable, 1, 0, 0, *(a1 + 365) == 0, 0, v57 + -1.0);
            if (v54)
            {
              CFRelease(v54);
            }

            CFRelease(v50);
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            v8 = v90;
            a4 = v91;
            if (v58)
            {
              if (CFArrayGetCount(v58) == 1 && (v59 = CFArrayGetValueAtIndex(v58, 0), Date = CalEventOccurrenceGetDate(v59), [v99 timeIntervalSinceReferenceDate], Date < v61))
              {
                v50 = CDBWidgetReloadHandle;
                v48 = v98;
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
                {
                  v62 = off_1E8688740[v88];
                  *buf = 138543874;
                  *v103 = v62;
                  *&v103[8] = 1024;
                  v104 = 1;
                  v105 = 1024;
                  v106 = v98;
                  _os_log_impl(&dword_1DEBB1000, v50, OS_LOG_TYPE_DEFAULT, "Allowing reload for %{public}@ because changedPropertiesShowInWidget (%{BOOL}d), pre-save event occurrences exist in range %i)", buf, 0x18u);
                }

                LODWORD(v50) = 1;
              }

              else
              {
                LODWORD(v50) = 0;
                v48 = v98;
              }

              CFRelease(v58);
              v51 = cf;
              if (cf)
              {
                goto LABEL_64;
              }

              goto LABEL_65;
            }

            LODWORD(v50) = 0;
LABEL_74:
            v51 = cf;
          }

          else
          {
            v8 = v90;
            a4 = v91;
          }

          v48 = v98;
          if (v51)
          {
            goto LABEL_64;
          }

          goto LABEL_65;
        }

        break;
      }

      LODWORD(v50) = 0;
      v8 = v90;
      a4 = v91;
      goto LABEL_74;
    }

    goto LABEL_96;
  }

  if (a3 != 1)
  {
    goto LABEL_96;
  }

  v81 = CDBWidgetReloadHandle;
  if (os_log_type_enabled(CDBWidgetReloadHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DEBB1000, v81, OS_LOG_TYPE_DEFAULT, "Allowing reload because a color has been updated", buf, 2u);
  }

  if (*a4 == 1)
  {
    v83 = a4 + 16;
    do
    {
      *(v83 - 15) = 1;
      v84 = *v83;
      v83 += 16;
    }

    while ((v84 & 1) != 0);
  }
}

BOOL _CalDatabaseChangesOfTypeMayAffectAppEntities(const __CFArray *a1, uint64_t a2)
{
  *&v28[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  v7 = 1;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
    RecordID = _CalEntityGetRecordID(ValueAtIndex);
    if (!RecordID)
    {
      v11 = CDBAppEntityHandle;
      if (os_log_type_enabled(CDBAppEntityHandle, OS_LOG_TYPE_ERROR))
      {
        v12 = v11;
        ID = CPRecordGetID();
        if (ValueAtIndex)
        {
          if (CDBLockingAssertionsEnabled)
          {
            if (CPRecordGetStore())
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
        *buf = 67109376;
        v28[0] = ID;
        LOWORD(v28[1]) = 1024;
        *(&v28[1] + 2) = IsDeleted;
        _os_log_impl(&dword_1DEBB1000, v12, OS_LOG_TYPE_ERROR, "_CalDatabaseChangesMayAffectAppEntities: failed to get recordID for updated record with rowid [%d], deleted: %{BOOL}d", buf, 0xEu);
      }

      goto LABEL_23;
    }

    v10 = RecordID;
    if (CalRecordIDGetEntityType(RecordID) == 6)
    {
      if (_CalStoreHasDirtyInstanceAttributes(ValueAtIndex))
      {
        v17 = CDBAppEntityHandle;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = off_1E8688740[a2];
          *buf = 138543362;
          *v28 = v19;
          v20 = "Notifying app entity observers for changeType %{public}@ because store has dirty instance attributes";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      goto LABEL_23;
    }

    if (CalRecordIDGetEntityType(v10) == 1)
    {
      if (_CalCalendarHasDirtyInstanceAttributes(ValueAtIndex))
      {
        v17 = CDBAppEntityHandle;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v22 = off_1E8688740[a2];
          *buf = 138543362;
          *v28 = v22;
          v20 = "Notifying app entity observers for changeType %{public}@ because calendar has dirty instance attributes";
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      goto LABEL_23;
    }

    if (CalRecordIDGetEntityType(v10) == 5)
    {
      break;
    }

    if (_CalEntityIsOfType(ValueAtIndex, 2))
    {
      v17 = CDBAppEntityHandle;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v23 = off_1E8688740[a2];
        *buf = 138543362;
        *v28 = v23;
        v20 = "Notifying app entity observers because of changeType %{public}@ for event";
        goto LABEL_37;
      }

LABEL_38:

      return v7;
    }

    if (_CalEntityIsOfType(ValueAtIndex, 29))
    {
      v17 = CDBAppEntityHandle;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v26 = off_1E8688740[a2];
        *buf = 138543362;
        *v28 = v26;
        v20 = "Notifying app entity observers because of changeType %{public}@ for color";
LABEL_37:
        _os_log_impl(&dword_1DEBB1000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
      }

      goto LABEL_38;
    }

LABEL_23:
    v7 = ++v6 < v5;
    if (v5 == v6)
    {
      return v7;
    }
  }

  if (a2 != 1)
  {
    goto LABEL_23;
  }

  v24 = CDBAppEntityHandle;
  if (os_log_type_enabled(CDBAppEntityHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v28 = @"ChangeTypeUpdated";
    _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_DEFAULT, "Notifying app entity observers because of changeType %{public}@ for recurrence rule", buf, 0xCu);
  }

  return v7;
}

uint64_t _CalDatabaseRemoveOrphanedEntities(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if ((result & 1) == 0)
  {
    if (CPRecordGetStore())
    {
      Context = CPRecordStoreGetContext();
      result = CFLog();
      if (Context)
      {
        v4 = *(Context + 24);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (v4)
          {
            v5 = CPRecordStoreGetContext();
            if (v5)
            {
              os_unfair_lock_assert_owner(v5 + 20);
            }
          }
        }

        return CPRecordStoreRemoveRecord();
      }
    }

    else
    {
      return CFLog();
    }
  }

  return result;
}

void _CalGatherAddedDetachedItemDetails(uint64_t a1, uint64_t a2)
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
    v6 = Property;
    v7 = MEMORY[0x1E12C5EF0]();
    CFStringAppendFormat(*(a2 + 8), 0, @"%f,", *&v7);
    CFArrayAppendValue(*(a2 + 16), v6);
    if (a1 && (CDBLockingAssertionsEnabled & 1) != 0 && CPRecordGetStore())
    {
      v8 = CPRecordStoreGetContext();
      if (v8)
      {
        os_unfair_lock_assert_owner(v8 + 20);
      }
    }

    valuePtr = CPRecordGetProperty();
    v9 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFArrayAppendValue(*(a2 + 24), v9);
    CFRelease(v9);
  }
}

uint64_t _CalAnalyzeExistingDetachedItemsAndRemoveIfNeeded(uint64_t a1, uint64_t *a2)
{
  v4 = sqlite3_column_int(*(a1 + 8), 0);
  v5 = sqlite3_column_int(*(a1 + 8), 1);
  v6 = sqlite3_column_double(*(a1 + 8), 2);
  v7 = a2[2];
  if (v7)
  {
    v8 = v6;
    v9 = a2[3];
    v21 = *a2;
    v10 = *(*a2 + 24);
    Count = CFArrayGetCount(v7);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v7, i);
        if (vabdd_f64(MEMORY[0x1E12C5EF0](ValueAtIndex, v15, v16), v8) < 2.22044605e-16)
        {
          v17 = CFArrayGetValueAtIndex(v9, i);
          valuePtr = -1;
          if (CFNumberGetValue(v17, kCFNumberIntType, &valuePtr))
          {
            if (valuePtr == v5)
            {
              CalendarItemWithRowID = _CalGetCalendarItemWithRowID(v10, v4);
              if (CalendarItemWithRowID)
              {
                v19 = CalendarItemWithRowID;
                CFLog();
                if (_CalEntityIsOfType(v19, 2))
                {
                  _CalRemoveEvent(v19, 0, 0);
                }

                else if (_CalEntityIsOfType(v19, 3))
                {
                  _CalRemoveTask(v21, v19);
                }
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

id _CalDatabaseCreateXPCArrayOfChangedObjectIDs(const __CFArray *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = xpc_array_create(0, 0);
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        v7 = CalRecordIDGetEntityType(ValueAtIndex);
        v8 = CalRecordIDGetRowID(ValueAtIndex);
        v9 = v8;
        if (v7 < 0 || v8 < 0)
        {
          v13 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109376;
            v16 = v7;
            v17 = 1024;
            v18 = v9;
            _os_log_impl(&dword_1DEBB1000, v13, OS_LOG_TYPE_ERROR, "Unexpected entity type: %i row ID: %i", buf, 0xEu);
          }
        }

        else
        {
          v10 = CalRecordIDGetEntityType(ValueAtIndex);
          v11 = CalRecordIDGetRowID(ValueAtIndex);
          v12 = xpc_uint64_create(v11 | (v10 << 32));
          xpc_array_append_value(v2, v12);
        }
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _overrideTimezoneName(void *a1)
{
  v1 = *MEMORY[0x1E6993158];
  v2 = a1;
  v3 = [v2 getValueForPreference:v1 expectedClass:objc_opt_class()];

  return v3;
}

void _CalDatabaseDeleteDatabaseBecauseOfExcessiveFailedMigrationAttempts(void *a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 stringByAppendingPathComponent:*MEMORY[0x1E69930F0]];
  v3 = [v2 stringByAppendingString:@"-wal"];
  v4 = [v2 stringByAppendingString:@"-shm"];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  if (os_variant_has_internal_diagnostics())
  {
    v6 = [v1 stringByAppendingPathComponent:@"Calendar-unableToMigrate.sqlitedb"];
    v7 = [v6 stringByAppendingString:@"-wal"];
    if (([v5 fileExistsAtPath:v6] & 1) != 0 || objc_msgSend(v5, "fileExistsAtPath:", v7))
    {
      v8 = CDBLogHandle;
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v39 = v6;
        _os_log_impl(&dword_1DEBB1000, v8, OS_LOG_TYPE_ERROR, "File already exists at path %{public}@; not keeping database.", buf, 0xCu);
      }
    }

    else
    {
      v35 = 0;
      v9 = [v5 moveItemAtPath:v2 toPath:v6 error:&v35];
      v10 = v35;
      v11 = CDBLogHandle;
      v12 = os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        if (v12)
        {
          *buf = 138543362;
          v39 = v6;
          _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "Keeping database that could not be migrated at %{public}@.", buf, 0xCu);
        }

        v34 = v10;
        v13 = [v5 moveItemAtPath:v3 toPath:v7 error:&v34];
        v14 = v34;

        if ((v13 & 1) == 0)
        {
          v15 = CDBLogHandle;
          if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v39 = v7;
            v40 = 2112;
            v41 = v14;
            _os_log_impl(&dword_1DEBB1000, v15, OS_LOG_TYPE_ERROR, "Unable to move database-wal that failed to migrate to %{public}@: %@", buf, 0x16u);
          }
        }
      }

      else
      {
        if (v12)
        {
          *buf = 138543618;
          v39 = v6;
          v40 = 2112;
          v41 = v10;
          _os_log_impl(&dword_1DEBB1000, v11, OS_LOG_TYPE_ERROR, "Unable to move database that failed to migrate to %{public}@: %@", buf, 0x16u);
        }

        v14 = v10;
      }
    }
  }

  v27 = v2;
  v28 = v1;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v36[0] = v2;
  v36[1] = v3;
  v26 = v3;
  v36[2] = v4;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:{3, v4}];
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v30 + 1) + 8 * i);
        if ([v5 fileExistsAtPath:v21])
        {
          v29 = 0;
          v22 = [v5 removeItemAtPath:v21 error:&v29];
          v23 = v29;
          if ((v22 & 1) == 0)
          {
            v24 = CDBLogHandle;
            if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v39 = v21;
              _os_log_impl(&dword_1DEBB1000, v24, OS_LOG_TYPE_ERROR, "Error removing file at path: %{public}@", buf, 0xCu);
            }
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v30 objects:v37 count:16];
    }

    while (v18);
  }
}

uint64_t _CalDatabaseTargetBirthdayMigrationState()
{
  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    return 1;
  }

  return result;
}

void _CalDatabaseCleanUpMovedAsideDatabaseFilesInDirectory(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = [a1 stringByAppendingPathComponent:@"Calendar-unableToMigrate.sqlitedb"];
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = [&unk_1F59EF9E0 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v23;
    *&v4 = 138412290;
    v20 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(&unk_1F59EF9E0);
        }

        v8 = [v1 stringByAppendingString:{*(*(&v22 + 1) + 8 * i), v20}];
        v9 = [v2 attributesOfItemAtPath:v8 error:0];
        v10 = v9;
        if (v9)
        {
          v11 = [v9 fileModificationDate];
          [v11 timeIntervalSinceNow];
          v13 = v12;

          if (v13 < -31536000.0)
          {
            v21 = 0;
            v14 = [v2 removeItemAtPath:v8 error:&v21];
            v15 = v21;
            v16 = CDBLogHandle;
            if (v14)
            {
              if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v20;
                v27 = v8;
                v17 = v16;
                v18 = OS_LOG_TYPE_DEFAULT;
                v19 = "Cleaned up moved aside file at path %@";
                goto LABEL_13;
              }
            }

            else if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
            {
              *buf = v20;
              v27 = v8;
              v17 = v16;
              v18 = OS_LOG_TYPE_ERROR;
              v19 = "Error removing moved aside file at path %@";
LABEL_13:
              _os_log_impl(&dword_1DEBB1000, v17, v18, v19, buf, 0xCu);
            }
          }
        }
      }

      v5 = [&unk_1F59EF9E0 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }
}

Class __getCalDefaultReminderKitProviderClass_block_invoke(uint64_t a1)
{
  CalendarMigrationLibrary();
  result = objc_getClass("CalDefaultReminderKitProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCalDefaultReminderKitProviderClass_block_invoke_cold_1();
  }

  getCalDefaultReminderKitProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCalDefaultReminderMigrationDefaultsProviderClass_block_invoke(uint64_t a1)
{
  CalendarMigrationLibrary();
  result = objc_getClass("CalDefaultReminderMigrationDefaultsProvider");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCalDefaultReminderMigrationDefaultsProviderClass_block_invoke_cold_1();
  }

  getCalDefaultReminderMigrationDefaultsProviderClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCalCalendarDatabaseReminderMigratorClass_block_invoke(uint64_t a1)
{
  CalendarMigrationLibrary();
  result = objc_getClass("CalCalendarDatabaseReminderMigrator");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCalCalendarDatabaseReminderMigratorClass_block_invoke_cold_1();
  }

  getCalCalendarDatabaseReminderMigratorClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void CalDatabaseDeleteFile(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  if ([v2 fileExistsAtPath:v1])
  {
    v10 = 0;
    v3 = [v2 removeItemAtPath:v1 error:&v10];
    v4 = v10;
    v5 = CDBLogHandle;
    if (v3)
    {
      if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v12 = v1;
        v6 = "Removed %{public}@";
        v7 = v5;
        v8 = OS_LOG_TYPE_INFO;
        v9 = 12;
LABEL_7:
        _os_log_impl(&dword_1DEBB1000, v7, v8, v6, buf, v9);
      }
    }

    else if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v12 = v1;
      v13 = 2112;
      v14 = v4;
      v6 = "Unable to remove %{public}@: %@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 22;
      goto LABEL_7;
    }
  }
}

void ___shouldMigrateChinaTimezones_block_invoke(uint64_t a1)
{
  if ([MEMORY[0x1E698B670] willApplyTimeZoneChanges1])
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F59EF9C8];
    v2 = _overrideTimezoneName(*(a1 + 32));
    v3 = v2;
    if (v2)
    {
      LOBYTE(v2) = [v4 containsObject:v2];
    }

    _shouldMigrateChinaTimezones_shouldMigrate = v2;
  }
}

void __CalDatabaseDistributeChangeReport_block_invoke(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  v3 = *(a1 + 32);

  CFNotificationCenterPostNotification(LocalCenter, @"_CalDatabaseChangeReportAvailableNotification", 0, v3, 1u);
}

void CalScheduledTaskCacheInitializeDB(uint64_t a1, void *a2, int a3)
{
  if (a3 <= 112)
  {
    CalPerformSQLWithConnection(a2, @"CREATE TABLE ScheduledTaskCache (day REAL, date_for_sorting REAL, completed INTEGER, task_id INTEGER, count INTEGER, PRIMARY KEY (day, task_id));");
    CalPerformSQLWithConnection(a2, @"CREATE TRIGGER update_task_cache_count_after_insert AFTER INSERT ON ScheduledTaskCache\nBEGIN\n    REPLACE INTO ScheduledTaskCache VALUES (NEW.day, NULL, NULL, -2, 1 + IFNULL((SELECT count FROM ScheduledTaskCache WHERE day = NEW.day AND task_id = -2), 0));\nEND;\n");
    CalPerformSQLWithConnection(a2, @"CREATE TRIGGER update_task_cache_count_after_update AFTER UPDATE OF day ON ScheduledTaskCache\nBEGIN\n    UPDATE ScheduledTaskCache SET count = count - 1 WHERE day = OLD.day AND task_id = -2;\n    REPLACE INTO ScheduledTaskCache VALUES (NEW.day, NULL, NULL, -2, IFNULL((SELECT count FROM ScheduledTaskCache WHERE day = NEW.day AND task_id = -2), 0));\n    DELETE FROM ScheduledTaskCache WHERE day = OLD.day AND count = 0;\nEND;\n");
    CalPerformSQLWithConnection(a2, @"CREATE TRIGGER update_task_cache_days_after_delete AFTER DELETE ON ScheduledTaskCache\nBEGIN\n    UPDATE ScheduledTaskCache SET count = count - 1 WHERE day = OLD.day AND task_id = -2;\n    DELETE FROM ScheduledTaskCache WHERE day = OLD.day AND count = 0;\nEND;\n");
    CalPerformSQLWithConnection(a2, @"CREATE INDEX ScheduledTaskCacheDayTaskId on ScheduledTaskCache(day);");

    CalPerformSQLWithConnection(a2, @"CREATE INDEX ScheduledTaskCacheTaskId on ScheduledTaskCache(task_id);");
  }
}

uint64_t CalDatabaseCopyScheduledTaskCache(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 20);
  v2 = _CalDatabaseCopyScheduledTaskCache(a1);
  if (CDBLockingAssertionsEnabled == 1)
  {
    os_unfair_lock_assert_owner(a1 + 20);
  }

  os_unfair_lock_unlock(a1 + 20);
  return v2;
}

id CalScheduledTaskCacheCopyAllDaysAndTaskCounts(uint64_t a1)
{
  if (!CalDatabaseLockForThread(*(a1 + 24)))
  {
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
  if (!Database)
  {
    goto LABEL_24;
  }

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
  if (!v7)
  {
LABEL_24:
    CalDatabaseUnlockForThread(*(a1 + 24));
    return 0;
  }

  v8 = v7;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
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

  if (CPSqliteStatementSendResults() != 101)
  {

    goto LABEL_24;
  }

  CalDatabaseUnlockForThread(*(a1 + 24));
  if (v9)
  {
    CFRetain(v9);
  }

  return v9;
}

uint64_t _CopyAllDaysAndTaskCountsResultHandler(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v4 = a2;
  v5 = sqlite3_column_int(v3, 0);
  v6 = sqlite3_column_int(*(a1 + 8), 1);
  v7 = MEMORY[0x1E695DF90];
  v8 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v5];
  v9 = [MEMORY[0x1E696AD98] numberWithInt:v6];
  v10 = [v7 dictionaryWithObjectsAndKeys:{v8, @"day", v9, @"count", 0}];

  [v4 addObject:v10];
  return 0;
}

CFMutableArrayRef CalScheduledTaskCacheCopyTaskRowIDsOnDay(uint64_t a1, double a2)
{
  if (!CalDatabaseLockForThread(*(a1 + 24)))
  {
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
  Mutable = Database;
  if (Database)
  {
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
      v11 = v10;
      sqlite3_bind_int(*(v10 + 8), 1, a2);
      Mutable = CFArrayCreateMutable(0, 0, 0);
      if (CDBLockingAssertionsEnabled == 1)
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

      if (CPSqliteStatementSendResults() == 101)
      {
        goto LABEL_23;
      }

      CFRelease(Mutable);
    }

    Mutable = 0;
  }

LABEL_23:
  CalDatabaseUnlockForThread(*(a1 + 24));
  return Mutable;
}

uint64_t _CopyTaskRowIDsOnDayResultHandler(uint64_t a1, __CFArray *a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  CFArrayAppendValue(a2, v3);
  return 0;
}

CFMutableArrayRef CalScheduledTaskCacheCopyTaskRowIDsOnRange(uint64_t a1, double a2, double a3)
{
  if (!CalDatabaseLockForThread(*(a1 + 24)))
  {
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
  Mutable = Database;
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
      sqlite3_bind_int(*(v12 + 8), 1, a2);
      sqlite3_bind_int(*(v13 + 8), 2, a3);
      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      if (CDBLockingAssertionsEnabled == 1)
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

      if (CPSqliteStatementSendResults() == 101)
      {
        goto LABEL_23;
      }

      CFRelease(Mutable);
    }

    Mutable = 0;
  }

LABEL_23:
  CalDatabaseUnlockForThread(*(a1 + 24));
  return Mutable;
}

uint64_t _CopyTaskRowIDsOnRangeResultHandler(uint64_t a1, __CFArray *a2)
{
  v3 = sqlite3_column_int(*(a1 + 8), 0);
  v4 = CalRecordIDCreate(3, v3);
  CFArrayAppendValue(a2, v4);
  CFRelease(v4);
  return 0;
}

uint64_t CalScheduledTaskCacheUpdateIfNeededForTimeZoneChange(uint64_t a1)
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

    v5 = CPRecordStoreCopyValueForProperty();
    CFAbsoluteTimeGetCurrent();
    v6 = CalCFTimeZoneCopyCalTimeZone();
    v7 = v6;
    if (v5)
    {
      v8 = CFStringCompare(v5, v6, 0);
      CFRelease(v7);
      CFRelease(v5);
      if (v8 == kCFCompareEqualTo)
      {
        v9 = 0;
LABEL_80:
        CalDatabaseUnlockForThread(*(a1 + 24));
        return v9;
      }
    }

    else
    {
      CFRelease(v6);
    }

    v10 = _CalDatabaseGetRecordStore(*(a1 + 24));
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (v10)
      {
        v11 = CPRecordStoreGetContext();
        if (v11)
        {
          os_unfair_lock_assert_owner(v11 + 20);
        }
      }
    }

    Database = CPRecordStoreGetDatabase();
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

      v14 = CPSqliteDatabaseConnectionForWritingWithSqlite3OpenFlags();
      if (v14)
      {
        v15 = v14;
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v14)
          {
            if (*(*v14 + 104))
            {
              v16 = CPRecordStoreGetContext();
              if (v16)
              {
                os_unfair_lock_assert_owner(v16 + 20);
              }
            }
          }
        }

        v17 = CPSqliteConnectionBeginTransactionType();
        if (!v17 || v17 == 101)
        {
          v18 = _CalDatabaseGetRecordStore(*(a1 + 24));
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (v18)
            {
              v19 = CPRecordStoreGetContext();
              if (v19)
              {
                os_unfair_lock_assert_owner(v19 + 20);
              }
            }
          }

          v20 = CPRecordStoreCopyValueForProperty();
          if (v20)
          {
            v21 = [objc_alloc(MEMORY[0x1E695DFE8]) initWithName:v20];
            v22 = CalCopyTimeZone();
            if (v21 && ([v21 isEquivalentTo:v22] & 1) != 0)
            {
LABEL_73:
              if (CDBLockingAssertionsEnabled == 1)
              {
                if (*v15)
                {
                  if (*(*v15 + 104))
                  {
                    v37 = CPRecordStoreGetContext();
                    if (v37)
                    {
                      os_unfair_lock_assert_owner(v37 + 20);
                    }
                  }
                }
              }

              CPSqliteConnectionCommit();

              goto LABEL_79;
            }
          }

          else
          {
            v22 = CalCopyTimeZone();
            v21 = 0;
          }

          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v15)
            {
              if (*(*v15 + 104))
              {
                v23 = CPRecordStoreGetContext();
                if (v23)
                {
                  os_unfair_lock_assert_owner(v23 + 20);
                }
              }
            }
          }

          v24 = CPSqliteConnectionStatementForSQL();
          if (v24)
          {
            v25 = v24;
            Mutable = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
            v27 = objc_alloc_init(CalScheduledTaskCache_TimeZoneFetchContext);
            [(CalScheduledTaskCache_TimeZoneFetchContext *)v27 setPreviousTimeZone:v21];
            [(CalScheduledTaskCache_TimeZoneFetchContext *)v27 setNextTimeZone:v22];
            [(CalScheduledTaskCache_TimeZoneFetchContext *)v27 setDict:Mutable];
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v25)
              {
                v28 = **v25;
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

            CPSqliteStatementSendResults();
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v25)
              {
                v30 = **v25;
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

            CPSqliteStatementReset();
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v15)
              {
                if (*(*v15 + 104))
                {
                  v32 = CPRecordStoreGetContext();
                  if (v32)
                  {
                    os_unfair_lock_assert_owner(v32 + 20);
                  }
                }
              }
            }

            v33 = CPSqliteConnectionStatementForSQL();
            CFDictionaryApplyFunction(Mutable, _UpdateDay, v33);
            CFRelease(Mutable);
          }

          CFAbsoluteTimeGetCurrent();
          v34 = CalCFTimeZoneCopyCalTimeZone();
          if (CDBLockingAssertionsEnabled == 1)
          {
            if (*v15)
            {
              if (*(*v15 + 104))
              {
                v35 = CPRecordStoreGetContext();
                if (v35)
                {
                  os_unfair_lock_assert_owner(v35 + 20);
                }
              }
            }
          }

          CPSqliteConnectionSetValueForProperty();
          CFRelease(v34);
          v36 = *(a1 + 32);
          if (v36)
          {
            CFRelease(v36);
          }

          *(a1 + 32) = CFRetain(v22);
          goto LABEL_73;
        }

        CFLog();
      }
    }

LABEL_79:
    v9 = 1;
    goto LABEL_80;
  }

  return 0;
}

uint64_t CalScheduledTaskCacheRebuildIfNeeded(uint64_t a1)
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
    v6 = Database;
    if (!Database)
    {
      goto LABEL_47;
    }

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
    v6 = v8;
    if (!v8)
    {
      goto LABEL_47;
    }

    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v8)
      {
        if (*(*v8 + 104))
        {
          v9 = CPRecordStoreGetContext();
          if (v9)
          {
            os_unfair_lock_assert_owner(v9 + 20);
          }
        }
      }
    }

    if (CPSqliteConnectionIntegerForPropertyWithDefaultValue() != 1)
    {
      if (CDBLockingAssertionsEnabled == 1)
      {
        if (*v6)
        {
          if (*(*v6 + 104))
          {
            v10 = CPRecordStoreGetContext();
            if (v10)
            {
              os_unfair_lock_assert_owner(v10 + 20);
            }
          }
        }
      }

      v11 = CPSqliteConnectionBeginTransactionType();
      if (!v11 || v11 == 101)
      {
        _RebuildCache(a1, v6);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v6)
          {
            if (*(*v6 + 104))
            {
              v12 = CPRecordStoreGetContext();
              if (v12)
              {
                os_unfair_lock_assert_owner(v12 + 20);
              }
            }
          }
        }

        CPSqliteConnectionSetIntegerForProperty();
        CFAbsoluteTimeGetCurrent();
        v13 = CalCFTimeZoneCopyCalTimeZone();
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v6)
          {
            if (*(*v6 + 104))
            {
              v14 = CPRecordStoreGetContext();
              if (v14)
              {
                os_unfair_lock_assert_owner(v14 + 20);
              }
            }
          }
        }

        CPSqliteConnectionSetValueForProperty();
        CFRelease(v13);
        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v6)
          {
            if (*(*v6 + 104))
            {
              v15 = CPRecordStoreGetContext();
              if (v15)
              {
                os_unfair_lock_assert_owner(v15 + 20);
              }
            }
          }
        }

        CPSqliteConnectionCommit();
        v6 = 1;
        goto LABEL_47;
      }

      CFLog();
    }

    v6 = 0;
LABEL_47:
    CalDatabaseUnlockForThread(*(a1 + 24));
    return v6;
  }

  return 0;
}

void _RebuildCache(uint64_t a1, uint64_t a2)
{
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
  v5 = _CalDatabaseCopyScheduledTasks(*(a1 + 24));
  if (v5)
  {
    v6 = v5;
    Count = CFArrayGetCount(v5);
    v11 = 0;
    if (Count >= 1)
    {
      v8 = Count;
      for (i = 0; i != v8; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        _CalScheduledTaskCacheInsertTaskIfScheduled(a1, a2, &v11, ValueAtIndex);
      }
    }

    CFRelease(v6);
  }
}

void CalScheduledTaskCacheTrimAndExtendAndUpdateOverdue(uint64_t a1)
{
  if (*(a1 + 16) != 1 || !CalDatabaseLockForThread(*(a1 + 24)))
  {
    return;
  }

  NSLog(&cfstr_25534103Beginn.isa);
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

      v11 = CPSqliteConnectionBeginTransactionType();
      if (!v11 || v11 == 101)
      {
        v12 = MEMORY[0x1E69930C8];
        v13 = [MEMORY[0x1E695DF00] date];
        v14 = [MEMORY[0x1E695DFE8] systemTimeZone];
        v15 = [v12 calendarDateWithDate:v13 timeZone:v14];
        v16 = [v15 calendarDateForDay];

        if (CDBLockingAssertionsEnabled == 1)
        {
          if (*v9)
          {
            if (*(*v9 + 13))
            {
              v17 = CPRecordStoreGetContext();
              if (v17)
              {
                os_unfair_lock_assert_owner(v17 + 20);
              }
            }
          }
        }

        v18 = CPSqliteConnectionCopyValueForProperty();
        NSLog(&cfstr_25534103Schedu.isa, v18);
        if (v18)
        {
          IntValue = CFStringGetIntValue(v18);
          v20 = MEMORY[0x1E69930C8];
          v21 = [MEMORY[0x1E695DFE8] systemTimeZone];
          v22 = [v20 calendarDateWithAbsoluteTime:v21 timeZone:IntValue];

          v23 = [v22 compare:v16];
          CFRelease(v18);

          NSLog(&cfstr_25534103TodayI.isa, v16, v23);
          if (v23 != 1)
          {
            if (v23 == -1)
            {
              v24 = objc_opt_new();
              [v24 setYear:-1];
              v25 = [v16 calendarDateByAddingComponents:v24];
              [v16 absoluteTime];
              v27 = v26;
              [v25 absoluteTime];
              if (*v9)
              {
                v29 = _CalScheduledTaskCacheTrimAndExtendCore(a1, v9, v28, v27, IntValue);
                updated = _CalScheduledTaskCacheUpdateOverdueCore(v9, v27);

                if ((v29 & 1) != 0 || updated)
                {
                  goto LABEL_40;
                }
              }

              else
              {
              }
            }

            v32 = 0;
LABEL_43:
            if (CDBLockingAssertionsEnabled == 1)
            {
              if (*v9)
              {
                if (*(*v9 + 13))
                {
                  v33 = CPRecordStoreGetContext();
                  if (v33)
                  {
                    os_unfair_lock_assert_owner(v33 + 20);
                  }
                }
              }
            }

            CPSqliteConnectionCommit();

            CalDatabaseUnlockForThread(*(a1 + 24));
            if (v32)
            {
              DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

              CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kCalScheduledTaskCacheChangedNotification", v6, 0, 1u);
            }

            return;
          }
        }

        else
        {
          NSLog(&cfstr_25534103TodayI.isa, v16, 1);
        }

        _RebuildCache(a1, v9);
LABEL_40:
        _CalScheduledTaskCacheUpdateLastSavedDate(a1, v9);
        v32 = 1;
        goto LABEL_43;
      }

      CFLog();
    }
  }

  v31 = *(a1 + 24);

  CalDatabaseUnlockForThread(v31);
}

uint64_t _CalScheduledTaskCacheTrimAndExtendCore(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
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
    NSLog(&cfstr_EventkitstcErr.isa);
  }

  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a2)
    {
      if (*(*a2 + 104))
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
  if (v12)
  {
    v13 = v12;
    sqlite3_bind_double(*(v12 + 8), 1, a3);
    if (CDBLockingAssertionsEnabled == 1)
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

    CPSqliteStatementPerform();
    v16 = sqlite3_changes((*v13)[1]) > 0;
    if (CDBLockingAssertionsEnabled == 1)
    {
      if (*v13)
      {
        v17 = **v13;
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

    CPSqliteStatementReset();
  }

  else
  {
    v16 = 0;
  }

  v19 = [MEMORY[0x1E69930C8] calendarDateWithAbsoluteTime:*(a1 + 32) timeZone:a4];
  v20 = [MEMORY[0x1E69930C8] calendarDateWithAbsoluteTime:*(a1 + 32) timeZone:a5];
  v21 = objc_opt_new();
  [v21 setYear:2];
  v22 = [v19 calendarDateByAddingComponents:v21];
  v46 = v20;
  v23 = [v20 calendarDateByAddingComponents:v21];
  v45 = v22;
  [v22 absoluteTime];
  v25 = v24;
  v44 = v23;
  [v23 absoluteTime];
  v27 = v26;
  v28 = [MEMORY[0x1E69930C8] calendarDateWithAbsoluteTime:*(a1 + 32) timeZone:?];
  v29 = [MEMORY[0x1E69930C8] calendarDateWithAbsoluteTime:*(a1 + 32) timeZone:v25];
  v30 = [v28 calendarDateInTimeZone:0];
  v31 = [v29 calendarDateInTimeZone:0];
  [v30 absoluteTime];
  v33 = v32;
  [v31 absoluteTime];
  v35 = _CalDatabaseCopyScheduledTasksInDateRange(*(a1 + 24), v27, v25, v33, v34);
  if (v35)
  {
    v36 = v35;
    v42 = v19;
    v43 = v16;
    Count = CFArrayGetCount(v35);
    if (Count >= 1)
    {
      v38 = Count;
      for (i = 0; i != v38; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v36, i);
        v47 = 0;
        _CalScheduledTaskCacheInsertTaskIfScheduled(a1, a2, &v47, ValueAtIndex);
      }
    }

    CFRelease(v36);
    v16 = v43;
    v19 = v42;
  }

  if (v16)
  {
    _CalScheduledTaskCacheUpdateLastSavedDate(a1, a2);
  }

  return v16;
}

BOOL _CalScheduledTaskCacheUpdateOverdueCore(sqlite3 **a1, double a2)
{
  NSLog(&cfstr_25534103Updati.isa, *&a2);
  if (CDBLockingAssertionsEnabled == 1)
  {
    if (*a1)
    {
      if (*(*a1 + 13))
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
  sqlite3_bind_double(v5[1], 1, a2);
  sqlite3_bind_double(v5[1], 2, a2);
  sqlite3_bind_double(v5[1], 3, a2);
  if (v5)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*v5)
      {
        v6 = **v5;
        if (v6)
        {
          if (*(v6 + 104))
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
  }

  v8 = CPSqliteStatementPerform();
  if (v8 != 101 && v8)
  {
    return 0;
  }

  v9 = sqlite3_changes(a1[1]) > 0;
  if (v5)
  {
    if (CDBLockingAssertionsEnabled)
    {
      if (*v5)
      {
        v10 = **v5;
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

  CPSqliteStatementReset();
  return v9;
}

void _CalScheduledTaskCacheUpdateLastSavedDate(uint64_t a1, uint64_t a2)
{
  CFAbsoluteTimeGetCurrent();
  CalAbsoluteTimeGetGregorianDateWithFallbackToDefaultTimeZone();
  CalGregorianDateGetGregorianDateForDay();
  CalGregorianDateGetAbsoluteTimeWithFallbackToDefaultTimeZone();
  v4 = CFStringCreateWithFormat(0, 0, @"%d", v3);
  NSLog(&cfstr_25534103Updati_0.isa, v4);
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

  CPSqliteConnectionSetValueForProperty();

  CFRelease(v4);
}

double CalSchedueldTaskCacheGetLastSavedDate(uint64_t a1)
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

  v4 = CPRecordStoreCopyValueForProperty();
  if (!v4)
  {
    return 0.0;
  }

  v5 = v4;
  IntValue = CFStringGetIntValue(v4);
  CFRelease(v5);
  return IntValue;
}

void _CalScheduledTaskCacheMarkTaskForUpdate(uint64_t a1, void *value)
{
  if (*(a1 + 16) == 1)
  {
    v4 = *(a1 + 56);
    if (!v4 || !CFSetContainsValue(v4, value))
    {
      if (CPRecordGetID() >= 1)
      {
        ID = CPRecordGetID();
        v6 = *(a1 + 40);
        if (v6)
        {
          CFDictionaryRemoveValue(v6, value);
        }

        if (ID >= 1)
        {
          Mutable = *(a1 + 48);
          if (!Mutable)
          {
            Mutable = CFSetCreateMutable(0, 0, 0);
            *(a1 + 48) = Mutable;
          }

          CFSetAddValue(Mutable, ID);
        }
      }

      v8 = *(a1 + 56);
      if (v8)
      {

        CFSetAddValue(v8, value);
      }
    }
  }
}