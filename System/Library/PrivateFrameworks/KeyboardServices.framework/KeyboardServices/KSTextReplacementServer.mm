@interface KSTextReplacementServer
@end

@implementation KSTextReplacementServer

void __49___KSTextReplacementServer_textReplacementServer__block_invoke()
{
  v0 = objc_alloc_init(_KSTextReplacementServer);
  v1 = textReplacementServer_sharedInstance;
  textReplacementServer_sharedInstance = v0;
}

uint64_t __58___KSTextReplacementServer_initWithDatabaseDirectoryPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) registerForPushNotifications];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  if (DarwinNotifyCenter)
  {
    v3 = DarwinNotifyCenter;
    v4 = *(a1 + 32);
    v5 = getBYSetupAssistantExitedDarwinNotification();
    CFNotificationCenterAddObserver(v3, v4, bySetupAssistantExited, v5, 0, CFNotificationSuspensionBehaviorDrop);
  }

  v6 = *(a1 + 32);

  return [v6 scheduleSyncTask];
}

void __44___KSTextReplacementServer_scheduleSyncTask__block_invoke(uint64_t a1)
{
  v2 = [_KSSystemTask alloc];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_2;
  v5[3] = &unk_2797F7510;
  v5[4] = *(a1 + 32);
  v3 = [(_KSSystemTask *)v2 initWithName:@"com.apple.KeyboardServices.TextReplacementCKSyncTask" isPeriodic:1 period:86400 handler:v5];
  [(_KSSystemTask *)v3 setMaxRunTime:60.0];
  v4 = +[_KSTaskScheduler sharedInstance];
  [v4 registerTask:v3];
}

void __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_3;
  v7[3] = &unk_2797F66D8;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_4;
  v2[3] = &unk_2797F74E8;
  v2[4] = v1;
  v3 = *(a1 + 40);
  [v1 requestSync:4 withCompletionBlock:v2];
}

void __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = KSCategory(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v9 = "[_KSTextReplacementServer scheduleSyncTask]_block_invoke_4";
    _os_log_impl(&dword_2557E2000, v2, OS_LOG_TYPE_INFO, "%s  completed periodic sync task", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_43;
  v6[3] = &unk_2797F66D8;
  v6[4] = v4;
  v7 = v3;
  dispatch_async(v5, v6);
}

uint64_t __44___KSTextReplacementServer_scheduleSyncTask__block_invoke_43(uint64_t a1)
{
  v2 = [*(a1 + 32) textReplacementManager];
  [v2 recordSyncStatus];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __35___KSTextReplacementServer_cleanup__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) textReplacementManager];
  [v2 minimumUptimeRemaining];
  v4 = v3;

  if (v4 <= 0.0)
  {
    v11 = *(a1 + 32);

    [v11 _performCleanup];
  }

  else
  {
    v6 = KSCategory(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
      *buf = 136315394;
      v14 = "[_KSTextReplacementServer cleanup]_block_invoke";
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_2557E2000, v6, OS_LOG_TYPE_INFO, "%s  not cleanin up, waiting remaining minimum uptime: %@", buf, 0x16u);
    }

    v8 = dispatch_time(0, (v4 * 1000000000.0));
    v9 = *(a1 + 32);
    v10 = *(v9 + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35___KSTextReplacementServer_cleanup__block_invoke_49;
    block[3] = &unk_2797F6310;
    block[4] = v9;
    dispatch_after(v8, v10, block);
  }
}

void __85___KSTextReplacementServer_addEntries_removeEntries_forClient_withCompletionHandler___block_invoke(id *a1)
{
  v86 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = [[ArraySlicer alloc] initWithArray:a1[4] sliceSize:100];
  v4 = [[ArraySlicer alloc] initWithArray:a1[5] sliceSize:100];
  v5 = [MEMORY[0x277CBEB18] array];
  v60 = [MEMORY[0x277CBEB18] array];
  v59 = [MEMORY[0x277CBEB38] dictionary];
  v63 = v3;
  v6 = [(ArraySlicer *)v3 nextSlice];
  v62 = v4;
  v7 = [(ArraySlicer *)v4 nextSlice];
  if (v6 | v7)
  {
    v8 = v7;
    v58 = v2;
    v61 = a1;
    while (1)
    {
      v65 = [MEMORY[0x277CBEB18] array];
      v9 = [MEMORY[0x277CBEB38] dictionary];
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v74 objects:v85 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v75;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v75 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v74 + 1) + 8 * i);
            v16 = [v15 cloudID];
            [v9 setObject:v15 forKeyedSubscript:v16];
          }

          v12 = [v10 countByEnumeratingWithState:&v74 objects:v85 count:16];
        }

        while (v12);
      }

      v64 = v10;

      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v6;
      v17 = [obj countByEnumeratingWithState:&v70 objects:v84 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v71;
        v67 = v9;
        do
        {
          for (j = 0; j != v18; ++j)
          {
            if (*v71 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v70 + 1) + 8 * j);
            v22 = [v21 priorValue];
            v23 = [v22 isEquivalentTo:v21];

            if (v23)
            {
              v24 = [v21 priorValue];
              v25 = [v24 cloudID];
              [v9 removeObjectForKey:v25];
            }

            else
            {
              v26 = [_KSTextReplacementHelper validateTextReplacement:v21];
              if (v26)
              {
                v27 = v26;
                v28 = [v21 priorValue];

                if (v28)
                {
                  v30 = KSCategory(v29);
                  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                  {
                    [v21 priorValue];
                    v32 = v31 = v5;
                    v33 = [v32 cloudID];
                    v34 = [v67 objectForKeyedSubscript:v33];
                    *buf = 136315394;
                    v79 = "[_KSTextReplacementServer addEntries:removeEntries:forClient:withCompletionHandler:]_block_invoke";
                    v80 = 2112;
                    v81 = v34;
                    _os_log_impl(&dword_2557E2000, v30, OS_LOG_TYPE_INFO, "%s  >>> Not removing entry: %@, as the replacement entry is not valid", buf, 0x16u);

                    v9 = v67;
                    v5 = v31;
                  }

                  v35 = [v21 priorValue];
                  v36 = [v35 cloudID];
                  [v9 removeObjectForKey:v36];
                }

                v37 = [_KSTextReplacementHelper errorWithCode:v27 forEntry:v21];
                [v5 addObject:v37];
              }

              else
              {
                [v65 addObject:v21];
              }

              v38 = [v21 cloudID];
              v39 = [v21 priorValue];
              v40 = [v39 cloudID];
              v41 = [v38 isEqualToString:v40];

              if (v41)
              {
                v43 = KSCategory(v42);
                if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  *buf = 136315138;
                  v79 = "[_KSTextReplacementServer addEntries:removeEntries:forClient:withCompletionHandler:]_block_invoke";
                  _os_log_impl(&dword_2557E2000, v43, OS_LOG_TYPE_INFO, "%s  >>> the modified entry's unique ID should not be the same as prior, changing", buf, 0xCu);
                }

                v44 = [v21 uniqueID];
                [v21 setCloudID:v44];
              }

              [_KSTextReplacementHelper extractAggdMetricsForTextReplacement:v21];
              v9 = v67;
            }
          }

          v18 = [obj countByEnumeratingWithState:&v70 objects:v84 count:16];
        }

        while (v18);
      }

      a1 = v61;
      if ([v61[6] generation] != v61[9])
      {
        break;
      }

      v45 = [v61[7] textReplacementManager];

      if (!v45)
      {
        break;
      }

      v47 = KSCategory(v46);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v48 = [v9 allValues];
        *buf = 136315650;
        v79 = "[_KSTextReplacementServer addEntries:removeEntries:forClient:withCompletionHandler:]_block_invoke";
        v80 = 2112;
        v81 = v65;
        v82 = 2112;
        v83 = v48;
        _os_log_impl(&dword_2557E2000, v47, OS_LOG_TYPE_INFO, "%s  >>> adding entries: %@, removing entries %@", buf, 0x20u);
      }

      v49 = [v61[7] textReplacementManager];
      v50 = [v9 allValues];
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __85___KSTextReplacementServer_addEntries_removeEntries_forClient_withCompletionHandler___block_invoke_54;
      v68[3] = &unk_2797F69A8;
      v69 = v5;
      [v49 addEntries:v65 removeEntries:v50 withCompletionHandler:v68];

      v6 = [(ArraySlicer *)v63 nextSlice];

      v8 = [(ArraySlicer *)v62 nextSlice];

      if (!(v6 | v8))
      {
        v51 = 0;
        v2 = v58;
        goto LABEL_38;
      }
    }

    v53 = [(ArraySlicer *)v63 unconsumed];
    v54 = [(ArraySlicer *)v62 unconsumed];
    v52 = v59;
    if ([v53 count])
    {
      [v59 setObject:v53 forKeyedSubscript:@"_KSTextReplacementUpdateDidFailEntriesKey"];
    }

    if ([v54 count])
    {
      [v59 setObject:v54 forKeyedSubscript:@"_KSTextReplacementDeleteDidFailEntriesKey"];
    }

    v51 = 11;
    v2 = v58;
  }

  else
  {
    v51 = 0;
LABEL_38:
    v52 = v59;
  }

  if ([v5 count] || objc_msgSend(v60, "count"))
  {
    [v52 setObject:v5 forKeyedSubscript:@"_KSTextReplacementUpdateDidFailErrorsKey"];
    [v52 setObject:v60 forKeyedSubscript:@"_KSTextReplacementDeleteDidFailErrorsKey"];
    v51 = 11;
  }

  v55 = [MEMORY[0x277CCA9B8] errorWithDomain:@"KSTextReplacementErrorDomain" code:v51 userInfo:v52];
  (*(a1[8] + 2))();
  [a1[7] textReplacementManager];
  v57 = v56 = v52;
  [v57 requestSync:0 withCompletionBlock:&__block_literal_global_58];

  objc_autoreleasePoolPop(v2);
}

id *__85___KSTextReplacementServer_addEntries_removeEntries_forClient_withCompletionHandler___block_invoke_54(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

void __44___KSTextReplacementServer_removeAllEntries__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) textReplacementManager];
  [v3 removeAllEntries];

  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = [*(a1 + 32) textReplacementManager];
  [v6 requestSync:0 withCompletionBlock:&__block_literal_global_61];

  objc_autoreleasePoolPop(v2);
}

void __44___KSTextReplacementServer_removeAllEntries__block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = KSCategory(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[_KSTextReplacementServer removeAllEntries]_block_invoke_2";
    _os_log_impl(&dword_2557E2000, v1, OS_LOG_TYPE_INFO, "%s  >>> completed remove all TR entries", &v2, 0xCu);
  }
}

void __60___KSTextReplacementServer_requestSync_withCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textReplacementManager];
  [v2 requestSync:*(a1 + 48) withCompletionBlock:*(a1 + 40)];
}

void __60___KSTextReplacementServer_textReplacementEntriesForClient___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) textReplacementManager];
  v3 = [v2 textReplacementEntries];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (![_KSTextReplacementHelper validateTextReplacement:v9, v10])
        {
          [*(a1 + 40) addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void __62___KSTextReplacementServer_queryTextReplacementsWithCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textReplacementManager];

  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [*(a1 + 32) textReplacementManager];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62___KSTextReplacementServer_queryTextReplacementsWithCallback___block_invoke_2;
    v7[3] = &unk_2797F6470;
    v8 = v3;
    v9 = *(a1 + 40);
    v5 = v3;
    [v4 queryTextReplacementsWithCallback:v7];
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void __62___KSTextReplacementServer_queryTextReplacementsWithCallback___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (![_KSTextReplacementHelper validateTextReplacement:v10, v17])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v7);
  }

  v11 = [*(a1 + 32) timeIntervalSinceNow];
  v13 = v12;
  v14 = KSCategory(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:-v13];
    *buf = 136315650;
    v22 = "[_KSTextReplacementServer queryTextReplacementsWithCallback:]_block_invoke_2";
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_2557E2000, v14, OS_LOG_TYPE_INFO, "%s  time spent reading %@ entries is %@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __72___KSTextReplacementServer_queryTextReplacementsWithPredicate_callback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) textReplacementManager];

  if (v2)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    v4 = [*(a1 + 32) textReplacementManager];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72___KSTextReplacementServer_queryTextReplacementsWithPredicate_callback___block_invoke_2;
    v8[3] = &unk_2797F6470;
    v9 = v3;
    v5 = *(a1 + 40);
    v10 = *(a1 + 48);
    v6 = v3;
    [v4 queryTextReplacementsWithPredicate:v5 callback:v8];
  }

  else
  {
    v7 = *(*(a1 + 48) + 16);

    v7();
  }
}

void __72___KSTextReplacementServer_queryTextReplacementsWithPredicate_callback___block_invoke_2(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        if (![_KSTextReplacementHelper validateTextReplacement:v10, v17])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v7);
  }

  v11 = [*(a1 + 32) timeIntervalSinceNow];
  v13 = v12;
  v14 = KSCategory(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:-v13];
    *buf = 136315650;
    v22 = "[_KSTextReplacementServer queryTextReplacementsWithPredicate:callback:]_block_invoke_2";
    v23 = 2112;
    v24 = v15;
    v25 = 2112;
    v26 = v16;
    _os_log_impl(&dword_2557E2000, v14, OS_LOG_TYPE_INFO, "%s  time spent reading %@ entries is %@", buf, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void __63___KSTextReplacementServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setExportedObject:0];
}

void __65___KSTextReplacementServer_connection_didReceiveIncomingMessage___block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = KSCategory(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v2 = 136315138;
    v3 = "[_KSTextReplacementServer connection:didReceiveIncomingMessage:]_block_invoke";
    _os_log_impl(&dword_2557E2000, v1, OS_LOG_TYPE_INFO, "%s  >>> PUSH notif received, completed pulling TR entries", &v2, 0xCu);
  }
}

@end