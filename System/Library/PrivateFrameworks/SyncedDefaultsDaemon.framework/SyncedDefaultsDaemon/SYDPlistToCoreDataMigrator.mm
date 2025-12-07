@interface SYDPlistToCoreDataMigrator
+ (BOOL)isSharedIPad;
+ (BOOL)migrateAllPlistsIfNecessaryToCoreDataStore:(id)store deleteMigratedPlists:(BOOL)plists error:(id *)error;
+ (BOOL)migrateAllPlistsIfNecessaryToCoreDataStore:(id)store deleteMigratedPlists:(BOOL)plists libraryDirectoryURL:(id)l error:(id *)error;
+ (BOOL)migrateAllPlistsToCoreDataStore:(id)store deleteMigratedPlists:(BOOL)plists libraryDirectoryURL:(id)l error:(id *)error;
+ (BOOL)migratePlist:(id)plist forStoreWithIdentifier:(id)identifier toCoreDataStore:(id)store error:(id *)error;
+ (BOOL)shouldIncrementFailureCountForError:(id)error;
+ (BOOL)shouldStopMigrationAfterError:(id)error;
+ (BOOL)shouldUseTransactionForPlistAtURL:(id)l;
+ (id)allPossibleStorePlistURLsWithLibraryDirectoryURL:(id)l;
+ (id)keyValueStorePlistFromURL:(id)l error:(id *)error;
+ (id)knownDaemons;
+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(id)record toDictionary:(id)dictionary uncontainerizedSyncedPreferencesDirectoryURL:(id)l;
+ (void)addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary:(id)dictionary uncontainerizedSyncedPreferencesDirectoryURL:(id)l;
+ (void)addPlistURLsForBundleIdentifier:(id)identifier defaultStoreIdentifier:(id)storeIdentifier additionalStoreIdentifiers:(id)identifiers toDictionary:(id)dictionary syncedPreferencesDirectoryURL:(id)l;
@end

@implementation SYDPlistToCoreDataMigrator

+ (BOOL)migrateAllPlistsIfNecessaryToCoreDataStore:(id)store deleteMigratedPlists:(BOOL)plists error:(id *)error
{
  plistsCopy = plists;
  storeCopy = store;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v16 = 0;
  v10 = [defaultManager URLForDirectory:5 inDomain:1 appropriateForURL:0 create:0 error:&v16];
  v11 = v16;

  if (v10)
  {
    v12 = [self migrateAllPlistsIfNecessaryToCoreDataStore:storeCopy deleteMigratedPlists:plistsCopy libraryDirectoryURL:v10 error:error];
  }

  else
  {
    v13 = SYDGetMigrationLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:error:];
    }

    if (error)
    {
      v14 = v11;
      v12 = 0;
      *error = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

+ (BOOL)migrateAllPlistsIfNecessaryToCoreDataStore:(id)store deleteMigratedPlists:(BOOL)plists libraryDirectoryURL:(id)l error:(id *)error
{
  plistsCopy = plists;
  storeCopy = store;
  lCopy = l;
  v12 = _os_activity_create(&dword_26C384000, "kvs/migrate-if-necessary", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  v13 = SYDGetMigrationLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
  }

  v41 = 0;
  v14 = [storeCopy didMigrateFromPlistsWithError:&v41];
  v15 = v41;
  if (!v15)
  {
    if (v14)
    {
      v17 = SYDGetMigrationLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
      }

LABEL_30:
      v16 = 0;
      v18 = 1;
      goto LABEL_31;
    }

    if ([self isSharedIPad])
    {
      v17 = SYDGetMigrationLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
      }

      goto LABEL_30;
    }

    v19 = SYDGetMigrationLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
    }

    v40 = 0;
    v20 = [self migrateAllPlistsToCoreDataStore:storeCopy deleteMigratedPlists:plistsCopy libraryDirectoryURL:lCopy error:&v40];
    v21 = v40;
    v16 = v21;
    if (v20)
    {
      v39 = v21;
      [storeCopy setDidMigrateFromPlists:1 error:&v39];
      v17 = v39;

      if (v17)
      {
        v22 = SYDGetMigrationLog();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
        }
      }

      else
      {
        v17 = SYDGetMigrationLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
        }
      }

      goto LABEL_30;
    }

    v23 = SYDGetMigrationLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
    }

    if (![self shouldIncrementFailureCountForError:v16])
    {
      v18 = 0;
      goto LABEL_32;
    }

    v38 = 0;
    v24 = [storeCopy failedMigrationCountWithError:&v38];
    v25 = v38;
    if (v25)
    {
      v26 = v25;
      v27 = SYDGetMigrationLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
      }
    }

    else
    {
      v30 = (v24 + 1);
      v37 = 0;
      v31 = [storeCopy setFailedMigrationCount:v30 error:&v37];
      v17 = v37;
      if ((v31 & 1) == 0)
      {
        v27 = SYDGetMigrationLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
        }

        v18 = 0;
        v26 = v17;
        goto LABEL_48;
      }

      v32 = SYDGetMigrationLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
      }

      if (v30 < 10)
      {
        goto LABEL_6;
      }

      v33 = SYDGetMigrationLog();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
      {
        +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
      }

      v36 = v17;
      v34 = [storeCopy setDidMigrateFromPlists:1 error:&v36];
      v26 = v36;

      if (v34)
      {
        v35 = SYDGetMigrationLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
        }

        v18 = 1;
        v27 = v16;
        v16 = 0;
        goto LABEL_48;
      }

      v27 = SYDGetMigrationLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
      }
    }

    v18 = 0;
LABEL_48:

    v17 = v26;
    goto LABEL_31;
  }

  v16 = v15;
  v17 = SYDGetMigrationLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    +[SYDPlistToCoreDataMigrator migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
  }

LABEL_6:
  v18 = 0;
LABEL_31:

LABEL_32:
  if (error)
  {
    v28 = v16;
    *error = v16;
  }

  os_activity_scope_leave(&state);
  return v18;
}

+ (BOOL)migrateAllPlistsToCoreDataStore:(id)store deleteMigratedPlists:(BOOL)plists libraryDirectoryURL:(id)l error:(id *)error
{
  plistsCopy = plists;
  v56[1] = *MEMORY[0x277D85DE8];
  storeCopy = store;
  lCopy = l;
  v12 = _os_activity_create(&dword_26C384000, "kvs/migrate-all-plists", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v12, &state);
  if (SYDIsDataSeparatedPersona())
  {
    v13 = SYDGetMigrationLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      +[SYDPlistToCoreDataMigrator migrateAllPlistsToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
    }

    v14 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    v56[0] = @"Cannot migrate the non-personal persona";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
    date = [v14 errorWithDomain:@"SyncedDefaults" code:1025 userInfo:v15];

    if (error)
    {
      v17 = date;
      v18 = 0;
      *error = date;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"SYDPlistToCoreDataMigratorWillMigrateNotification" object:0 userInfo:0];

    v20 = SYDGetMigrationLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      +[SYDPlistToCoreDataMigrator migrateAllPlistsToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
    }

    date = [MEMORY[0x277CBEAA8] date];
    v45 = 0;
    v46 = &v45;
    v47 = 0x2020000000;
    v48 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__4;
    v43 = __Block_byref_object_dispose__4;
    v44 = 0;
    v21 = [self allPossibleStorePlistURLsWithLibraryDirectoryURL:lCopy];
    v22 = SYDGetMigrationLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      +[SYDPlistToCoreDataMigrator migrateAllPlistsToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:].cold.2(buf, [v21 count], v22);
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke;
    v33[3] = &unk_279D30040;
    selfCopy = self;
    v35 = &v39;
    v34 = storeCopy;
    v36 = &v45;
    v38 = plistsCopy;
    [v21 enumerateKeysAndObjectsUsingBlock:v33];
    [date timeIntervalSinceNow];
    v24 = v23;
    v25 = SYDGetMigrationLog();
    v26 = -v24;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      +[SYDPlistToCoreDataMigrator migrateAllPlistsToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:];
    }

    if (plistsCopy)
    {
      v27 = v40[5];
      if (v27)
      {
        v52 = @"errorDomainAndCode";
        v28 = MEMORY[0x277CCACA8];
        domain = [v27 domain];
        v30 = [v28 stringWithFormat:@"%@_%ld", domain, objc_msgSend(v40[5], "code")];
        v53 = v30;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      }

      else
      {
        v50[0] = @"storeCount";
        domain = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v46[3]];
        v51[0] = domain;
        v50[1] = @"duration";
        v30 = [MEMORY[0x277CCABB0] numberWithDouble:v26];
        v51[1] = v30;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
      }
      v31 = ;
      AnalyticsSendEvent();
    }

    if (error)
    {
      *error = v40[5];
    }

    v18 = v40[5] == 0;

    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v45, 8);
  }

  os_activity_scope_leave(&state);
  return v18;
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 56);
  v42 = 0;
  v11 = [v10 keyValueStorePlistFromURL:v7 error:&v42];
  v12 = v42;
  v13 = v42;
  if (v13)
  {
    v14 = v13;
    v15 = SYDGetMigrationLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_1();
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v12);
    if ([*(a1 + 56) shouldStopMigrationAfterError:v14])
    {
      *a4 = 1;
    }

    goto LABEL_44;
  }

  if (v11)
  {
    v36 = v9;
    if ([*(a1 + 56) shouldUseTransactionForPlistAtURL:v7])
    {
      v16 = *(a1 + 32);
      v41 = 0;
      v17 = [v16 transactionalStoreWithError:&v41];
      v18 = v41;
      v19 = v18 == 0;
      if (v18)
      {
        v20 = v18;
        v21 = SYDGetMigrationLog();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
        {
          __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_2();
        }
      }

      if (v17)
      {
LABEL_19:
        v23 = *(a1 + 56);
        v40 = 0;
        v24 = v17;
        v25 = [v23 migratePlist:v11 forStoreWithIdentifier:v8 toCoreDataStore:v17 error:{&v40, v36}];
        v26 = v40;
        v27 = v26;
        if (v19 && v25)
        {
          v39 = v26;
          v28 = [v24 saveTransaction:&v39];
          v14 = v39;

          if ((v28 & 1) == 0)
          {
            v34 = SYDGetMigrationLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
            {
              __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_3();
            }

            goto LABEL_35;
          }

          v27 = v14;
        }

        if (v25)
        {
          v29 = SYDGetMigrationLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_5();
          }

          ++*(*(*(a1 + 48) + 8) + 24);
          if (*(a1 + 64) == 1)
          {
            v30 = [MEMORY[0x277CCAA00] defaultManager];
            v38 = v27;
            v31 = [v30 removeItemAtURL:v7 error:&v38];
            v14 = v38;

            v32 = SYDGetMigrationLog();
            v33 = v32;
            if (v31)
            {
              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
              {
                __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_7();
              }
            }

            else
            {
              if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
              {
                __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_6();
              }

              v14 = 0;
            }
          }

          else
          {
            v14 = v27;
          }

LABEL_43:

          v9 = v37;
          goto LABEL_44;
        }

        v14 = v27;
LABEL_35:
        v35 = SYDGetMigrationLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_4();
        }

        objc_storeStrong((*(*(a1 + 40) + 8) + 40), v14);
        if ([*(a1 + 56) shouldStopMigrationAfterError:v14])
        {
          *a4 = 1;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v19 = 0;
    }

    v17 = *(a1 + 32);
    goto LABEL_19;
  }

  v22 = SYDGetMigrationLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_8();
  }

  v14 = 0;
LABEL_44:

  objc_autoreleasePoolPop(v9);
}

+ (BOOL)migratePlist:(id)plist forStoreWithIdentifier:(id)identifier toCoreDataStore:(id)store error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  identifierCopy = identifier;
  storeCopy = store;
  v12 = SYDGetMigrationLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[SYDPlistToCoreDataMigrator migratePlist:forStoreWithIdentifier:toCoreDataStore:error:];
  }

  date = [MEMORY[0x277CBEAA8] date];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__4;
  v29 = __Block_byref_object_dispose__4;
  v30 = 0;
  v14 = [plistCopy objectForKeyedSubscript:@"values"];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke;
  v21[3] = &unk_279D30068;
  v15 = identifierCopy;
  v22 = v15;
  v16 = storeCopy;
  v23 = v16;
  v24 = &v25;
  [v14 enumerateKeysAndObjectsUsingBlock:v21];
  v17 = SYDGetMigrationLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [date timeIntervalSinceNow];
    [SYDPlistToCoreDataMigrator migratePlist:v15 forStoreWithIdentifier:buf toCoreDataStore:v17 error:v18];
  }

  if (error)
  {
    *error = v26[5];
  }

  v19 = v26[5] == 0;

  _Block_object_dispose(&v25, 8);
  return v19;
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = SYDGetMigrationLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_1();
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v35 = 0;
    v10 = SYDGetPropertyListAndTimestampFromStorage(v8, &v35);
    if (v10)
    {
      if (v35)
      {
        v12 = a1[4];
        v11 = a1[5];
        v13 = *(a1[6] + 8);
        obj = *(v13 + 40);
        v14 = [v11 keyValueForKey:v7 inStoreWithIdentifier:v12 createIfNecessary:1 error:&obj];
        objc_storeStrong((v13 + 40), obj);
        if (*(*(a1[6] + 8) + 40))
        {
          v15 = SYDGetMigrationLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_3();
          }
        }

        else
        {
          v17 = [v14 valueModificationDate];

          if (v17)
          {
            v18 = [v14 valueModificationDate];
            [v18 timeIntervalSinceReferenceDate];
            v20 = v19;
            v21 = v35;

            v22 = SYDGetMigrationLog();
            v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);
            if (v20 >= v21)
            {
              if (v23)
              {
                __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_4();
              }

              goto LABEL_17;
            }

            if (v23)
            {
              v24 = a1[4];
              v25 = v35;
              v26 = [v14 valueModificationDate];
              [v26 timeIntervalSinceReferenceDate];
              *buf = 138478595;
              v37 = v7;
              v38 = 2112;
              v39 = v24;
              v40 = 2048;
              v41 = v25;
              v42 = 2048;
              v43 = v27;
              _os_log_debug_impl(&dword_26C384000, v22, OS_LOG_TYPE_DEBUG, "Using plist value for (%{private}@) in %@: timestamp %f is later than current timestamp %f", buf, 0x2Au);
            }
          }

          else
          {
            v22 = SYDGetMigrationLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_5();
            }
          }

          v28 = [SYDKeyValue recordNameForUnencryptedKey:v7];
          [v14 setRecordName:v28];

          v29 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v35];
          [v14 setValue:v10 withModificationDate:v29];

          v31 = a1[4];
          v30 = a1[5];
          v32 = *(a1[6] + 8);
          v33 = *(v32 + 40);
          LOBYTE(v29) = [v30 saveKeyValue:v14 inStoreWithIdentifier:v31 excludeFromChangeTracking:1 enforceQuota:0 error:&v33];
          objc_storeStrong((v32 + 40), v33);
          if (v29)
          {
LABEL_17:

            goto LABEL_18;
          }

          v15 = SYDGetMigrationLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_6();
          }
        }

        *a4 = 1;
        goto LABEL_17;
      }

      v14 = SYDGetMigrationLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v16 = "No timestamp in plist storage";
    }

    else
    {
      v14 = SYDGetMigrationLog();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v16 = "No plist value from plist storage";
    }

    _os_log_impl(&dword_26C384000, v14, OS_LOG_TYPE_INFO, v16, buf, 2u);
    goto LABEL_17;
  }

  v10 = SYDGetMigrationLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_2(v8, v10);
  }

LABEL_18:
}

+ (id)keyValueStorePlistFromURL:(id)l error:(id *)error
{
  lCopy = l;
  v6 = [MEMORY[0x277CBEAE0] inputStreamWithURL:lCopy];
  [v6 open];
  v19 = 0;
  v7 = [MEMORY[0x277CCAC58] propertyListWithStream:v6 options:0 format:0 error:&v19];
  v8 = v19;
  [v6 close];
  if (v8)
  {
    domain = [v8 domain];
    if ([domain isEqualToString:*MEMORY[0x277CCA050]])
    {
      code = [v8 code];

      if (code != 3842)
      {
        goto LABEL_9;
      }

      userInfo = [v8 userInfo];
      domain = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      v9Domain = [domain domain];
      if ([v9Domain isEqualToString:*MEMORY[0x277CCA5B8]])
      {
        code2 = [domain code];

        if (code2 == 2)
        {

          v8 = 0;
LABEL_11:

          goto LABEL_12;
        }
      }

      else
      {
      }
    }

LABEL_9:
    domain = SYDGetMigrationLog();
    if (os_log_type_enabled(domain, OS_LOG_TYPE_ERROR))
    {
      __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_1();
    }

    goto LABEL_11;
  }

LABEL_12:
  if (v7)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = SYDGetMigrationLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        +[SYDPlistToCoreDataMigrator keyValueStorePlistFromURL:error:];
      }

      v7 = 0;
    }

    v15 = [v7 objectForKeyedSubscript:@"values"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v16 = SYDGetMigrationLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        +[SYDPlistToCoreDataMigrator keyValueStorePlistFromURL:error:];
      }

      v7 = 0;
    }
  }

  if (error)
  {
    v17 = v8;
    *error = v8;
  }

  return v7;
}

+ (BOOL)shouldStopMigrationAfterError:(id)error
{
  errorCopy = error;
  v4 = errorCopy;
  if (errorCopy)
  {
    if (SYDIsFileProtectionError(errorCopy))
    {
      v5 = 1;
    }

    else
    {
      v5 = SYDIsDiskFullError(v4);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)shouldIncrementFailureCountForError:(id)error
{
  errorCopy = error;
  if (SYDIsFileProtectionError(errorCopy))
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = SYDIsDiskFullError(errorCopy) ^ 1;
  }

  return v4;
}

+ (BOOL)shouldUseTransactionForPlistAtURL:(id)l
{
  v21 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v14 = 0;
  v4 = *MEMORY[0x277CBE838];
  v13 = 0;
  v5 = [lCopy getResourceValue:&v14 forKey:v4 error:&v13];
  v6 = v14;
  v7 = v13;
  if (v5)
  {
    unsignedLongValue = [v6 unsignedLongValue];
    v9 = unsignedLongValue < 0x500000;
    v10 = SYDGetMigrationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      lastPathComponent = [lCopy lastPathComponent];
      *buf = 138412802;
      v16 = lastPathComponent;
      v17 = 1024;
      v18 = unsignedLongValue < 0x500000;
      v19 = 2048;
      v20 = unsignedLongValue;
      _os_log_debug_impl(&dword_26C384000, v10, OS_LOG_TYPE_DEBUG, "Plist %@: useTransaction=%d size=%ld KB", buf, 0x1Cu);
    }
  }

  else
  {
    v10 = SYDGetMigrationLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[SYDPlistToCoreDataMigrator shouldUseTransactionForPlistAtURL:];
    }

    v9 = 0;
  }

  return v9;
}

+ (BOOL)isSharedIPad
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  isSharedIPad = [mEMORY[0x277D77BF8] isSharedIPad];

  return isSharedIPad;
}

+ (id)allPossibleStorePlistURLsWithLibraryDirectoryURL:(id)l
{
  v29 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = SYDGetMigrationLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    +[SYDPlistToCoreDataMigrator allPossibleStorePlistURLsWithLibraryDirectoryURL:];
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [lCopy URLByAppendingPathComponent:@"SyncedPreferences" isDirectory:1];
  v8 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [self addPlistURLsAndStoreIdentifiersForBundleRecord:*(*(&v23 + 1) + 8 * i) toDictionary:v6 uncontainerizedSyncedPreferencesDirectoryURL:v7];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v13 = [MEMORY[0x277CC1E50] enumeratorWithOptions:0];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [self addPlistURLsAndStoreIdentifiersForBundleRecord:*(*(&v19 + 1) + 8 * j) toDictionary:v6 uncontainerizedSyncedPreferencesDirectoryURL:v7];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  [self addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary:v6 uncontainerizedSyncedPreferencesDirectoryURL:v7];

  return v6;
}

+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(id)record toDictionary:(id)dictionary uncontainerizedSyncedPreferencesDirectoryURL:(id)l
{
  recordCopy = record;
  dictionaryCopy = dictionary;
  lCopy = l;
  v11 = SYDGetMigrationLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SYDPlistToCoreDataMigrator addPlistURLsAndStoreIdentifiersForBundleRecord:recordCopy toDictionary:? uncontainerizedSyncedPreferencesDirectoryURL:?];
  }

  v12 = [objc_alloc(MEMORY[0x277D6B878]) initWithBundleRecord:recordCopy];
  storeIdentifier = [v12 storeIdentifier];
  additionalStoreIdentifiers = [v12 additionalStoreIdentifiers];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    bundleIdentifier = [recordCopy bundleIdentifier];
  }

  else
  {
    bundleIdentifier = [recordCopy effectiveBundleIdentifier];
  }

  v16 = bundleIdentifier;
  if (storeIdentifier || [additionalStoreIdentifiers count])
  {
    if (v16)
    {
      dataContainerURL = [recordCopy dataContainerURL];
      v18 = dataContainerURL;
      if (dataContainerURL)
      {
        [dataContainerURL URLByAppendingPathComponent:@"Library" isDirectory:1];
        v27 = v12;
        v19 = storeIdentifier;
        v20 = additionalStoreIdentifiers;
        v21 = dictionaryCopy;
        v22 = lCopy;
        v24 = v23 = self;
        v25 = [v24 URLByAppendingPathComponent:@"SyncedPreferences" isDirectory:1];

        self = v23;
        lCopy = v22;
        dictionaryCopy = v21;
        additionalStoreIdentifiers = v20;
        storeIdentifier = v19;
        v12 = v27;
      }

      else
      {
        v26 = SYDGetMigrationLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          [SYDPlistToCoreDataMigrator addPlistURLsAndStoreIdentifiersForBundleRecord:recordCopy toDictionary:? uncontainerizedSyncedPreferencesDirectoryURL:?];
        }

        v25 = lCopy;
      }

      [self addPlistURLsForBundleIdentifier:v16 defaultStoreIdentifier:storeIdentifier additionalStoreIdentifiers:additionalStoreIdentifiers toDictionary:dictionaryCopy syncedPreferencesDirectoryURL:v25];
    }

    else
    {
      v25 = SYDGetMigrationLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        [SYDPlistToCoreDataMigrator addPlistURLsAndStoreIdentifiersForBundleRecord:recordCopy toDictionary:v25 uncontainerizedSyncedPreferencesDirectoryURL:?];
      }
    }
  }

  else
  {
    v25 = SYDGetMigrationLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [SYDPlistToCoreDataMigrator addPlistURLsAndStoreIdentifiersForBundleRecord:recordCopy toDictionary:? uncontainerizedSyncedPreferencesDirectoryURL:?];
    }
  }
}

+ (void)addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary:(id)dictionary uncontainerizedSyncedPreferencesDirectoryURL:(id)l
{
  dictionaryCopy = dictionary;
  lCopy = l;
  v8 = SYDGetMigrationLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[SYDPlistToCoreDataMigrator addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary:uncontainerizedSyncedPreferencesDirectoryURL:];
  }

  knownDaemons = [self knownDaemons];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __134__SYDPlistToCoreDataMigrator_addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary_uncontainerizedSyncedPreferencesDirectoryURL___block_invoke;
  v12[3] = &unk_279D30090;
  v14 = lCopy;
  selfCopy = self;
  v13 = dictionaryCopy;
  v10 = lCopy;
  v11 = dictionaryCopy;
  [knownDaemons enumerateKeysAndObjectsUsingBlock:v12];
}

void __134__SYDPlistToCoreDataMigrator_addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary_uncontainerizedSyncedPreferencesDirectoryURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = [v5 objectForKeyedSubscript:@"StoreIdentifier"];
  v7 = [v5 objectForKeyedSubscript:@"AdditionalStoreIdentifiers"];

  [*(a1 + 48) addPlistURLsForBundleIdentifier:v6 defaultStoreIdentifier:v8 additionalStoreIdentifiers:v7 toDictionary:*(a1 + 32) syncedPreferencesDirectoryURL:*(a1 + 40)];
}

+ (void)addPlistURLsForBundleIdentifier:(id)identifier defaultStoreIdentifier:(id)storeIdentifier additionalStoreIdentifiers:(id)identifiers toDictionary:(id)dictionary syncedPreferencesDirectoryURL:(id)l
{
  v46 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  storeIdentifierCopy = storeIdentifier;
  identifiersCopy = identifiers;
  dictionaryCopy = dictionary;
  lCopy = l;
  v13 = SYDGetMigrationLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v29 = [identifiersCopy componentsJoinedByString:{@", "}];
    *buf = 138412802;
    v41 = identifierCopy;
    v42 = 2112;
    v43 = storeIdentifierCopy;
    v44 = 2112;
    v45 = v29;
    _os_log_debug_impl(&dword_26C384000, v13, OS_LOG_TYPE_DEBUG, "Adding plist URLs for bundle identifier %@ with defaultStoreIdentifier=(%@) additionalStoreIdentifiers=[%@]", buf, 0x20u);
  }

  if (storeIdentifierCopy)
  {
    v14 = [lCopy URLByAppendingPathComponent:identifierCopy];
    v15 = [v14 URLByAppendingPathExtension:@"plist"];

    [dictionaryCopy setObject:storeIdentifierCopy forKeyedSubscript:v15];
  }

  v16 = [identifiersCopy count];
  if (storeIdentifierCopy)
  {
    v17 = v16 + 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = [MEMORY[0x277CBEB58] setWithCapacity:v17];
  v19 = v18;
  if (storeIdentifierCopy)
  {
    [v18 addObject:storeIdentifierCopy];
  }

  v31 = storeIdentifierCopy;
  if (identifiersCopy)
  {
    [v19 addObjectsFromArray:identifiersCopy];
  }

  v30 = identifiersCopy;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = v19;
  v21 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v36;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v35 + 1) + 8 * i);
        v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", identifierCopy, v25];
        v27 = [v26 stringByAppendingPathExtension:@"plist"];

        v28 = [lCopy URLByAppendingPathComponent:v27];
        [dictionaryCopy setObject:v25 forKeyedSubscript:v28];
      }

      v22 = [v20 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v22);
  }
}

+ (id)knownDaemons
{
  v5[21] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.sbd";
  v4[1] = @"com.apple.security.cloudkeychainproxy3";
  v5[0] = &unk_287CF2568;
  v5[1] = &unk_287CF2590;
  v4[2] = @"accountsd";
  v4[3] = @"com.apple.finder";
  v5[2] = &unk_287CF25B8;
  v5[3] = &unk_287CF25E0;
  v4[4] = @"com.apple.accessibility.AccessibilityUIServer";
  v4[5] = @"com.apple.VoiceOverTouch";
  v5[4] = &unk_287CF2608;
  v5[5] = &unk_287CF2630;
  v4[6] = @"com.apple.TextInput.kbd";
  v4[7] = @"com.apple.nanoweatherprefsd";
  v5[6] = &unk_287CF2658;
  v5[7] = &unk_287CF2680;
  v4[8] = @"com.apple.springboard";
  v4[9] = @"com.apple.backboardd";
  v5[8] = &unk_287CF26A8;
  v5[9] = &unk_287CF26D0;
  v4[10] = @"com.apple.datamigrator";
  v4[11] = @"com.apple.CoreSuggestions";
  v5[10] = &unk_287CF26F8;
  v5[11] = &unk_287CF2720;
  v4[12] = @"com.apple.cmfsyncagent";
  v4[13] = @"com.apple.accessibility.heard";
  v5[12] = &unk_287CF2748;
  v5[13] = &unk_287CF2770;
  v4[14] = @"com.apple.wifid";
  v4[15] = @"com.apple.coretelephony";
  v5[14] = &unk_287CF2798;
  v5[15] = &unk_287CF27C0;
  v4[16] = @"com.apple.cloudrecents.CloudRecentsAgent";
  v4[17] = @"com.apple.mediaaccessibilityd";
  v5[16] = &unk_287CF27E8;
  v5[17] = &unk_287CF2810;
  v4[18] = @"com.apple.email.maild";
  v4[19] = @"com.apple.tipsd";
  v5[18] = &unk_287CF2838;
  v5[19] = &unk_287CF2860;
  v4[20] = @"com.apple.touristd";
  v5[20] = &unk_287CF2888;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:21];

  return v2;
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.10()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.12()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.13()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsIfNecessaryToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.14()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)migrateAllPlistsToCoreDataStore:deleteMigratedPlists:libraryDirectoryURL:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)migrateAllPlistsToCoreDataStore:(os_log_t)log deleteMigratedPlists:libraryDirectoryURL:error:.cold.2(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134217984;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_26C384000, log, OS_LOG_TYPE_DEBUG, "About to migrate %lu possible plists", buf, 0xCu);
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x16u);
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __109__SYDPlistToCoreDataMigrator_migrateAllPlistsToCoreDataStore_deleteMigratedPlists_libraryDirectoryURL_error___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)migratePlist:forStoreWithIdentifier:toCoreDataStore:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)migratePlist:(uint64_t)a1 forStoreWithIdentifier:(uint8_t *)buf toCoreDataStore:(os_log_t)log error:(double)a4 .cold.2(uint64_t a1, uint8_t *buf, os_log_t log, double a4)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a4 * -1000.0;
  _os_log_debug_impl(&dword_26C384000, log, OS_LOG_TYPE_DEBUG, "Migrating plist for %@ took %.0f milliseconds", buf, 0x16u);
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  OUTLINED_FUNCTION_0_1();
  v7 = a1;
  _os_log_fault_impl(&dword_26C384000, a2, OS_LOG_TYPE_FAULT, "Found value in plist that wasn't a dictionary (%@): %@", v6, 0x16u);
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  LODWORD(v7) = 138412290;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error fetching key value while migrating plist: %@", v3, v4, v5, v6, v7, DWORD2(v7));
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

void __88__SYDPlistToCoreDataMigrator_migratePlist_forStoreWithIdentifier_toCoreDataStore_error___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_5_0(*MEMORY[0x277D85DE8]);
  LODWORD(v7) = 138412290;
  *(&v7 + 4) = v0;
  OUTLINED_FUNCTION_4(&dword_26C384000, v1, v2, "Error saving key value while migrating plist: %@", v3, v4, v5, v6, v7, DWORD2(v7));
}

+ (void)keyValueStorePlistFromURL:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)keyValueStorePlistFromURL:error:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

+ (void)allPossibleStorePlistURLsWithLibraryDirectoryURL:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(void *)a1 toDictionary:uncontainerizedSyncedPreferencesDirectoryURL:.cold.1(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_1(&dword_26C384000, v2, v3, "Checking for plist URLs from bundle: %@", v4, v5, v6, v7);
}

+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(void *)a1 toDictionary:uncontainerizedSyncedPreferencesDirectoryURL:.cold.2(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_1(&dword_26C384000, v2, v3, "Using uncontainerized Library directory for %@", v4, v5, v6, v7);
}

+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(void *)a1 toDictionary:(NSObject *)a2 uncontainerizedSyncedPreferencesDirectoryURL:.cold.3(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_26C384000, a2, OS_LOG_TYPE_FAULT, "No bundle identifier for bundle %@", v4, 0xCu);
}

+ (void)addPlistURLsAndStoreIdentifiersForBundleRecord:(void *)a1 toDictionary:uncontainerizedSyncedPreferencesDirectoryURL:.cold.4(void *a1)
{
  v1 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_1(&dword_26C384000, v2, v3, "No KVS entitlements for bundle %@", v4, v5, v6, v7);
}

+ (void)addPlistURLsAndStoreIdentifiersForKnownDaemonsToDictionary:uncontainerizedSyncedPreferencesDirectoryURL:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end