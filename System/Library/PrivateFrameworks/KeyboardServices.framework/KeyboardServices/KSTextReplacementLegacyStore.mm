@interface KSTextReplacementLegacyStore
@end

@implementation KSTextReplacementLegacyStore

void __49___KSTextReplacementLegacyStore_initWithBaseURL___block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.keyboardServices.legacyStore.workQueue", v2);
  v4 = initWithBaseURL__cdWorkQueueShared;
  initWithBaseURL__cdWorkQueueShared = v3;

  v5 = objc_alloc(MEMORY[0x277CBE450]);
  v6 = [*(a1 + 32) managedObjectModelURL];
  v9 = [v5 initWithContentsOfURL:v6];

  v7 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v9];
  v8 = initWithBaseURL__pscShared;
  initWithBaseURL__pscShared = v7;
}

void __55___KSTextReplacementLegacyStore_minimumUptimeRemaining__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) persistentStoreDidLoadTime];
  [v3 timeIntervalSinceReferenceDate];
  *(*(*(a1 + 40) + 8) + 24) = 180.0 - fabs(v2);
}

void __40___KSTextReplacementLegacyStore_cleanup__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40___KSTextReplacementLegacyStore_cleanup__block_invoke_2;
  v7[3] = &unk_2797F6310;
  v3 = v2;
  v8 = v3;
  [v3 performBlockAndWait:v7];
  [*(a1 + 32) endMinimumUptime];
  [*(a1 + 32) unloadPersistentStore];
  v4 = [*(a1 + 32) persistentStore];

  if (!v4)
  {
    v6 = KSCategory(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[_KSTextReplacementLegacyStore cleanup]_block_invoke";
      _os_log_impl(&dword_2557E2000, v6, OS_LOG_TYPE_INFO, "%s  Invalidaitng bird connection", buf, 0xCu);
    }

    softLinkBRDaemonConnectionInvalidate();
  }
}

void __40___KSTextReplacementLegacyStore_cleanup__block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v3 = 0;
    [v2 save:&v3];
  }
}

uint64_t __65___KSTextReplacementLegacyStore_importSampleShortcutsIfNecessary__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = KSCategory(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[_KSTextReplacementLegacyStore importSampleShortcutsIfNecessary]_block_invoke";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  >>> finished importing sample shortcut", &v7, 0xCu);
  }

  v3 = objc_loadWeakRetained((a1 + 48));
  v4 = [v3 managedObjectContext];
  [v3 detectAndCleanDuplicatesWithContext:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPendingSampleShortcutImport:0];

  return [*(a1 + 32) setValue:*(a1 + 40) forKey:@"kDidInsertSampleShortcutForPeer"];
}

intptr_t __52___KSTextReplacementLegacyStore_prepareForMigration__block_invoke(uint64_t a1)
{
  [*(a1 + 32) loadPersistentStoreIfNecessary];
  [*(a1 + 32) runMaintenanceIncludeLocalVariations:1];
  v2 = *(a1 + 40);

  return dispatch_semaphore_signal(v2);
}

void __80___KSTextReplacementLegacyStore_addEntries_removeEntries_withCompletionHandler___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = [WeakRetained managedObjectContext];

  if (v3)
  {
    v5 = objc_loadWeakRetained((a1 + 64));
    [v5 loadPersistentStoreIfNecessary];

    v32 = [MEMORY[0x277CBEB18] array];
    v6 = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = *(a1 + 32);
    v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [_KSTextReplacementHelper transactionFromTextReplacementEntry:*(*(&v37 + 1) + 8 * i) forDelete:0];
          v13 = *(a1 + 48);
          v14 = [v12 valueToInsert];
          [v13 insertEntryWithValue:v14];
        }

        v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v9);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v15 = *(a1 + 40);
    v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v34;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v34 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v33 + 1) + 8 * j);
          v21 = [_KSTextReplacementHelper transactionFromTextReplacementEntry:v20 forDelete:1];
          v22 = [*(a1 + 48) _deleteTransaction:v21];
          if (v22)
          {
            v23 = [_KSTextReplacementHelper errorWithCode:-2 forEntry:v20];
            [v6 addObject:v23];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v17);
    }

    v24 = objc_loadWeakRetained((a1 + 64));
    [v24 setShouldUpdateTheCache:1];

    v25 = objc_loadWeakRetained((a1 + 64));
    v26 = [v25 save];

    if (v26)
    {
      v27 = v32;
      v28 = [_KSTextReplacementHelper multipleAddErrors:v32 removeErrors:v6];
    }

    else
    {
      v28 = [_KSTextReplacementHelper errorWithCode:-2 failedAdds:*(a1 + 32) failedDeletes:*(a1 + 40)];
      v30 = KSCategory(v28);
      v27 = v32;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v44 = "[_KSTextReplacementLegacyStore addEntries:removeEntries:withCompletionHandler:]_block_invoke";
        _os_log_impl(&dword_2557E2000, v30, OS_LOG_TYPE_INFO, "%s  Failed to save to coredata store", buf, 0xCu);
      }
    }
  }

  else
  {
    v29 = KSCategory(v4);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v44 = "[_KSTextReplacementLegacyStore addEntries:removeEntries:withCompletionHandler:]_block_invoke";
      v45 = 1024;
      v46 = -2;
      _os_log_impl(&dword_2557E2000, v29, OS_LOG_TYPE_INFO, "%s  Replying with error = %i", buf, 0x12u);
    }

    v28 = [_KSTextReplacementHelper errorWithCode:-2 failedAdds:*(a1 + 32) failedDeletes:*(a1 + 40)];
  }

  v31 = [MEMORY[0x277CCAB98] defaultCenter];
  [v31 postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];

  (*(*(a1 + 56) + 16))();
}

uint64_t __65___KSTextReplacementLegacyStore_requestSync_withCompletionBlock___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 48) | 4) == 4)
  {
    v2 = KSCategory(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[_KSTextReplacementLegacyStore requestSync:withCompletionBlock:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  sync request due to maintainence / client, loading ubiquity", &v4, 0xCu);
    }

    [*(a1 + 32) loadPersistentStoreIfNecessary];
    if (*(a1 + 48) == 4)
    {
      [*(a1 + 32) runLegacyMigration];
      [*(a1 + 32) runMaintenanceIncludeLocalVariations:0];
      [*(a1 + 32) setShouldUpdateTheCache:1];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void __49___KSTextReplacementLegacyStore_removeAllEntries__block_invoke(uint64_t a1)
{
  [*(a1 + 32) loadPersistentStoreIfNecessary];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"TRUEPREDICATE"];
  v4 = [v2 removeEntriesWithPredicate:v3];

  v5 = [*(a1 + 32) managedObjectContext];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49___KSTextReplacementLegacyStore_removeAllEntries__block_invoke_2;
  v7[3] = &unk_2797F6310;
  v8 = v5;
  v6 = v5;
  [v6 performBlockAndWait:v7];
  [*(a1 + 32) setShouldUpdateTheCache:1];
}

void __60___KSTextReplacementLegacyStore_removeEntriesWithPredicate___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) deleteObject:*(*(&v14 + 1) + 8 * v6++)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 48);
  v7 = a1 + 48;
  v9 = *(v7 - 8);
  v10 = *(v8 + 8);
  obj = *(v10 + 40);
  [v9 save:&obj];
  objc_storeStrong((v10 + 40), obj);
  if (*(*(*v7 + 8) + 40))
  {
    v12 = KSCategory(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __60___KSTextReplacementLegacyStore_removeEntriesWithPredicate___block_invoke_cold_1(v7, v12);
    }
  }
}

void __55___KSTextReplacementLegacyStore_textReplacementEntries__block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1 selector:sel_compare_];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 entriesUsingSortDescriptors:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __77___KSTextReplacementLegacyStore_queryTextReplacementsWithPredicate_callback___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) ubiquityStoreLoaded] & 1) != 0 || (objc_msgSend(*(a1 + 32), "shouldUpdateTheCache"))
  {
    goto LABEL_8;
  }

  v2 = [*(a1 + 40) predicateFormat];
  if (([v2 isEqualToString:@"TRUEPREDICATE"] & 1) == 0)
  {
    goto LABEL_7;
  }

  v3 = [*(a1 + 32) shouldDisableCaching];

  if (v3)
  {
LABEL_8:
    [*(a1 + 32) loadPersistentStoreIfNecessary];
    v7 = objc_opt_class();
    v8 = [*(a1 + 32) entriesMatchingPredicate:*(a1 + 40) sortDescriptors:*(a1 + 48)];
    v2 = [v7 textReplacementEntriesFromManagedObjects:v8];

    v10 = KSCategory(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[_KSTextReplacementLegacyStore queryTextReplacementsWithPredicate:callback:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v10, OS_LOG_TYPE_INFO, "%s  read entries from ubiquity store", buf, 0xCu);
    }

    if ([*(a1 + 32) shouldUpdateTheCache])
    {
      [*(a1 + 32) scheduleCacheUpdate:v2];
    }

    goto LABEL_12;
  }

  v4 = *(a1 + 32);
  v13 = 0;
  v2 = [v4 entriesFromCache:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = v5;
    [*(a1 + 32) setShouldUpdateTheCache:1];

LABEL_7:
    goto LABEL_8;
  }

  v11 = KSCategory(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
    *buf = 136315394;
    v15 = "[_KSTextReplacementLegacyStore queryTextReplacementsWithPredicate:callback:]_block_invoke";
    v16 = 2112;
    v17 = v12;
    _os_log_impl(&dword_2557E2000, v11, OS_LOG_TYPE_INFO, "%s  read entries from cache: \n %@", buf, 0x16u);
  }

LABEL_12:
  (*(*(a1 + 56) + 16))();
}

void *__53___KSTextReplacementLegacyStore_scheduleCacheUpdate___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) writeEntriesToCache:*(a1 + 40)];
  if (result)
  {
    [*(a1 + 32) setShouldUpdateTheCache:0];
    [*(a1 + 32) setDidScheduleCacheUpdate:0];
    [*(a1 + 32) save];
    v3 = *(a1 + 32);

    return [v3 unloadPersistentStore];
  }

  return result;
}

void __56___KSTextReplacementLegacyStore_iCloudAccountDidChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = KSCategory(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[_KSTextReplacementLegacyStore iCloudAccountDidChange:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  received icloud account change notif", buf, 0xCu);
  }

  v3 = CFPreferencesCopyAppValue(@"UserDictionaryUbiquityIdentityTokenCurrent", @"com.apple.Preferences");
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 ubiquityIdentityToken];

  if (v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = v3 == 0;
  }

  if (!v7)
  {
    v8 = KSCategory(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[_KSTextReplacementLegacyStore iCloudAccountDidChange:]_block_invoke";
      _os_log_impl(&dword_2557E2000, v8, OS_LOG_TYPE_INFO, "%s  detected account change, invalidating cache", buf, 0xCu);
    }

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [*(a1 + 32) cacheFilePath];
    v12 = 0;
    [v9 removeItemAtPath:v10 error:&v12];
    v11 = v12;
  }
}

void __54___KSTextReplacementLegacyStore_insertEntryWithValue___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:@"UserDictionaryEntry" inManagedObjectContext:*(a1 + 32)];
  v2 = [*(a1 + 40) phrase];
  [v7 setValue:v2 forKey:@"phrase"];

  v3 = [*(a1 + 40) shortcut];
  [v7 setValue:v3 forKey:@"shortcut"];

  v4 = MEMORY[0x277CCABB0];
  v5 = [*(a1 + 40) timestamp];
  [v5 timeIntervalSinceReferenceDate];
  v6 = [v4 numberWithDouble:?];

  [v7 setValue:v6 forKey:@"timestamp"];
}

void __37___KSTextReplacementLegacyStore_save__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) hasChanges])
  {
    v2 = *(a1 + 32);
    v6 = 0;
    v3 = [v2 save:&v6];
    v4 = v6;
    v5 = v4;
    *(*(*(a1 + 40) + 8) + 24) = v3;
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      [*(a1 + 32) reset];
    }

    else
    {
      NSLog(&cfstr_ErrorWritingTo.isa, v4);
      [*(a1 + 32) rollback];
    }
  }
}

void __74___KSTextReplacementLegacyStore_entriesMatchingPredicate_sortDescriptors___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBE428]);
  v3 = [*(a1 + 32) entityDescription];
  v4 = [v3 name];
  v5 = [v2 initWithEntityName:v4];

  [v5 setFetchLimit:10000];
  [v5 setFetchBatchSize:1000];
  if (*(a1 + 40))
  {
    [v5 setPredicate:?];
  }

  if (*(a1 + 48))
  {
    [v5 setSortDescriptors:?];
  }

  v6 = *(a1 + 56);
  v11 = 0;
  v7 = [v6 executeFetchRequest:v5 error:&v11];
  v8 = v11;
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
}

void __82___KSTextReplacementLegacyStore_persistentStoreDidImportUbiquitousContentChanges___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) persistentStore];

  if (v2)
  {
    NSLog(&cfstr_PersistentStor.isa);
    v3 = [*(a1 + 40) userInfo];
    v4 = [v3 objectForKey:*MEMORY[0x277CBE188]];

    if ([v4 count])
    {
      [*(a1 + 32) setImportedSinceMaintenance:{objc_msgSend(*(a1 + 32), "importedSinceMaintenance") + objc_msgSend(v4, "count")}];
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(a1 + 32), "importedSinceMaintenance")}];
      CFPreferencesSetAppValue(@"UserDictionaryImportedSinceMaintenance", v5, @"com.apple.Preferences");

      CFPreferencesAppSynchronize(@"com.apple.Preferences");
    }

    v6 = [*(a1 + 32) managedObjectContext];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __82___KSTextReplacementLegacyStore_persistentStoreDidImportUbiquitousContentChanges___block_invoke_2;
    v15[3] = &unk_2797F6310;
    v7 = v6;
    v16 = v7;
    [v7 performBlockAndWait:v15];
    [*(a1 + 32) performMaintenanceIfNecessary];
    v8 = KSCategory([*(a1 + 32) setShouldUpdateTheCache:1]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = MEMORY[0x277CCABB0];
      v10 = [*(a1 + 32) ubiquityStoreLoadStartTime];
      [v10 timeIntervalSinceNow];
      v12 = [v9 numberWithDouble:-v11];
      *buf = 136315394;
      v18 = "[_KSTextReplacementLegacyStore persistentStoreDidImportUbiquitousContentChanges:]_block_invoke";
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_2557E2000, v8, OS_LOG_TYPE_INFO, "%s  time to import changes since PS load request: %@", buf, 0x16u);
    }

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 postNotificationName:@"_KSTRLegacyStoreDidImportUbiquitousChanges" object:0];
  }
}

void __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_2(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = *(*(*(a1 + 48) + 8) + 40);
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = *v22;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v22 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v21 + 1) + 8 * i);
        v6 = [v5 objectForKey:@"shortcut"];
        v7 = [v5 objectForKey:@"phrase"];
        v8 = *(a1 + 32);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_3;
        v14[3] = &unk_2797F7440;
        objc_copyWeak(&v20, (a1 + 64));
        v9 = v6;
        v15 = v9;
        v10 = v7;
        v16 = v10;
        v17 = *(a1 + 32);
        v11 = *(a1 + 40);
        v12 = *(a1 + 56);
        v18 = v11;
        v19 = v12;
        [v8 performBlockAndWait:v14];

        objc_destroyWeak(&v20);
      }

      v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v2);
  }
}

void __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v3 = [WeakRetained _shouldMergeShortcut:*(a1 + 32) phrase:*(a1 + 40) intoContext:*(a1 + 48)];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 72));
    v5 = [v4 _mergeShortcut:*(a1 + 32) phrase:*(a1 + 40) fromContext:*(a1 + 56)];

    if (v5)
    {
      ++*(*(*(a1 + 64) + 8) + 24);
    }
  }
}

uint64_t __59___KSTextReplacementLegacyStore_mergeShortcutsFromContext___block_invoke_4(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24))
  {
    v2 = *(a1 + 32);
    v3 = *(*(a1 + 56) + 8);
    obj = *(v3 + 40);
    v4 = [v2 save:&obj];
    objc_storeStrong((v3 + 40), obj);
  }

  else
  {
    v4 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = v4;
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    return [*(a1 + 32) reset];
  }

  NSLog(&cfstr_ErrorSavingAft.isa, *(*(*(a1 + 56) + 8) + 40));
  return [*(a1 + 32) rollback];
}

void __69___KSTextReplacementLegacyStore_detectAndCleanDuplicatesWithContext___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 56) + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 objectForKey:@"count"];
        v15 = [v14 integerValue];

        if (v15 >= 2)
        {
          *(*(*(a1 + 64) + 8) + 24) = 1;
          v16 = [v13 objectForKey:@"shortcut"];
          v17 = [v13 objectForKey:@"phrase"];
          WeakRetained = objc_loadWeakRetained((a1 + 80));
          [WeakRetained _deleteDuplicatesOfShortcut:v16 phrase:v17 count:v15 withContext:*(a1 + 32)];

          ++*(*(*(a1 + 72) + 8) + 24);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v10);
  }

  NSLog(&cfstr_DeduplicationC.isa, *(*(*(a1 + 72) + 8) + 24));
}

void __55___KSTextReplacementLegacyStore_basePersistentStoreURL__block_invoke()
{
  v0 = MEMORY[0x277CBEBC0];
  v4 = +[_KSUtilities keyboardDirectory];
  v1 = [v4 stringByAppendingPathComponent:@"CloudUserDictionary.sqlite"];
  v2 = [v0 fileURLWithPath:v1];
  v3 = basePersistentStoreURL_baseURL;
  basePersistentStoreURL_baseURL = v2;
}

void __76___KSTextReplacementLegacyStore_persistentStoreCoordinatorStoresWillChange___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = KSCategory(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresWillChange:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  Suspending user dictionary due to impending account change.", buf, 0xCu);
  }

  v3 = [*(a1 + 32) managedObjectContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __76___KSTextReplacementLegacyStore_persistentStoreCoordinatorStoresWillChange___block_invoke_371;
  v6[3] = &unk_2797F6310;
  v7 = v3;
  v4 = v3;
  [v4 performBlockAndWait:v6];
  v5 = [*(a1 + 32) workQueue];
  dispatch_suspend(v5);
}

void __75___KSTextReplacementLegacyStore_persistentStoreCoordinatorStoresDidChange___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setForceMaintenance:1];
  v2 = [*(a1 + 32) persistentStore];
  v3 = [v2 URL];
  v4 = [v3 absoluteString];

  v5 = [*(a1 + 32) persistentStore];

  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = [v6 runMaintenanceIncludeLocalVariations:0];
  }

  else
  {
    v7 = [v6 loadPersistentStoreIfNecessary];
  }

  v8 = KSCategory(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v16 = 136315394;
    v17 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresDidChange:]_block_invoke";
    v18 = 2112;
    v19 = v4;
    _os_log_impl(&dword_2557E2000, v8, OS_LOG_TYPE_INFO, "%s  >>> current legacy store: %@", &v16, 0x16u);
  }

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"_KSTRLegacyStoreDidImportChangesNotification" object:0];

  v11 = KSCategory(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = MEMORY[0x277CCABB0];
    v13 = [*(a1 + 32) ubiquityStoreLoadStartTime];
    [v13 timeIntervalSinceNow];
    v15 = [v12 numberWithDouble:-v14];
    v16 = 136315394;
    v17 = "[_KSTextReplacementLegacyStore persistentStoreCoordinatorStoresDidChange:]_block_invoke";
    v18 = 2112;
    v19 = v15;
    _os_log_impl(&dword_2557E2000, v11, OS_LOG_TYPE_INFO, "%s  time since PS load request: %@", &v16, 0x16u);
  }
}

void __60___KSTextReplacementLegacyStore_removeEntriesWithPredicate___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(*(*a1 + 8) + 40);
  v3 = 136315394;
  v4 = "[_KSTextReplacementLegacyStore removeEntriesWithPredicate:]_block_invoke";
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&dword_2557E2000, a2, OS_LOG_TYPE_ERROR, "%s  ERROR!!! Failed to remove entrtries with error: %@", &v3, 0x16u);
}

@end