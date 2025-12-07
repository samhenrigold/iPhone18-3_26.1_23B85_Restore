@interface ATXAppLaunchSequenceManager
@end

@implementation ATXAppLaunchSequenceManager

void __46___ATXAppLaunchSequenceManager_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc_init(_ATXAppLaunchSequenceManager);
  v2 = sharedInstance__pasExprOnceResult_27;
  sharedInstance__pasExprOnceResult_27 = v1;

  objc_autoreleasePoolPop(v0);
}

void __50___ATXAppLaunchSequenceManager_initWithDataStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained deleteAllLaunchesForBundles:v3];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 deleteAllLaunchesForAppActions:v3];
}

void __56___ATXAppLaunchSequenceManager_launchSequenceForBundle___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [[_ATXAppLaunchSequence alloc] initWithPreviousLaunch:a1[5] dataStore:*(a1[4] + 8)];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[5];
    v9 = *(a1[4] + 16);
    v10 = *(*(a1[6] + 8) + 40);

    [v9 setObject:v10 forKey:v8];
  }
}

void __59___ATXAppLaunchSequenceManager_launchSequenceForAppAction___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(a1[6] + 8) + 40))
  {
    v5 = [[_ATXAppLaunchSequence alloc] initWithPreviousAppActionLaunch:a1[5] dataStore:*(a1[4] + 8)];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = a1[5];
    v9 = *(a1[4] + 24);
    v10 = *(*(a1[6] + 8) + 40);

    [v9 setObject:v10 forKey:v8];
  }
}

void __74___ATXAppLaunchSequenceManager_decayAllLaunchSequencesWithHalfLifeInDays___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __74___ATXAppLaunchSequenceManager_decayAllLaunchSequencesWithHalfLifeInDays___block_invoke_2;
  v17[3] = &unk_27859C988;
  v5 = v3;
  v18 = v5;
  [v4 enumerateAppInfoBundlesExecutingBlock:v17];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [*(*(a1 + 32) + 16) objectForKey:{v11, v13}];
        if (!v12)
        {
          v12 = [[_ATXAppLaunchSequence alloc] initWithPreviousLaunch:v11 dataStore:*(*(a1 + 32) + 8)];
        }

        [(_ATXAppLaunchSequence *)v12 decayWithHalfLifeInDays:*(a1 + 40)];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v2);
}

void __83___ATXAppLaunchSequenceManager_decayAllAppActionLaunchSequencesWithHalfLifeInDays___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 8);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __83___ATXAppLaunchSequenceManager_decayAllAppActionLaunchSequencesWithHalfLifeInDays___block_invoke_2;
  v17[3] = &unk_27859C988;
  v5 = v3;
  v18 = v5;
  [v4 enumerateAppInfoAppActionsExecutingBlock:v17];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        v12 = [*(*(a1 + 32) + 24) objectForKey:{v11, v13}];
        if (!v12)
        {
          v12 = [[_ATXAppLaunchSequence alloc] initWithPreviousAppActionLaunch:v11 dataStore:*(*(a1 + 32) + 8)];
        }

        [(_ATXAppLaunchSequence *)v12 decayWithHalfLifeInDays:*(a1 + 40)];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(v2);
}

void __60___ATXAppLaunchSequenceManager_deleteAllLaunchesForBundles___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 8);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __60___ATXAppLaunchSequenceManager_deleteAllLaunchesForBundles___block_invoke_2;
  v29[3] = &unk_27859E020;
  v30 = *(a1 + 40);
  v5 = v3;
  v31 = v5;
  [v4 enumerateAppInfoBundlesExecutingBlock:v29];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [*(*(a1 + 32) + 16) objectForKey:v11];
        if (!v12)
        {
          v12 = [[_ATXAppLaunchSequence alloc] initWithPreviousLaunch:v11 dataStore:*(*(a1 + 32) + 8)];
        }

        [(_ATXAppLaunchSequence *)v12 deleteDataForLaunches:*(a1 + 40)];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = *(a1 + 40);
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        v19 = [*(*(a1 + 32) + 16) objectForKey:{v18, v21}];
        v20 = v19;
        if (v19)
        {
          [v19 deleteAllInformation];
          [*(*(a1 + 32) + 16) removeObjectForKey:v18];
        }

        else
        {
          [*(*(a1 + 32) + 8) deleteLaunchesFollowingBundle:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v15);
  }

  objc_autoreleasePoolPop(v2);
}

void __60___ATXAppLaunchSequenceManager_deleteAllLaunchesForBundles___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

void __63___ATXAppLaunchSequenceManager_deleteAllLaunchesForAppActions___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v4 = *(*(a1 + 32) + 8);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __63___ATXAppLaunchSequenceManager_deleteAllLaunchesForAppActions___block_invoke_2;
  v29[3] = &unk_27859E020;
  v30 = *(a1 + 40);
  v5 = v3;
  v31 = v5;
  [v4 enumerateAppInfoAppActionsExecutingBlock:v29];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v12 = [*(*(a1 + 32) + 24) objectForKey:v11];
        if (!v12)
        {
          v12 = [[_ATXAppLaunchSequence alloc] initWithPreviousAppActionLaunch:v11 dataStore:*(*(a1 + 32) + 8)];
        }

        [(_ATXAppLaunchSequence *)v12 deleteDataForLaunches:*(a1 + 40)];
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = *(a1 + 40);
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * j);
        v19 = [*(*(a1 + 32) + 24) objectForKey:{v18, v21}];
        v20 = v19;
        if (v19)
        {
          [v19 deleteAllInformation];
          [*(*(a1 + 32) + 24) removeObjectForKey:v18];
        }

        else
        {
          [*(*(a1 + 32) + 8) deleteLaunchesFollowingAppAction:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v32 count:16];
    }

    while (v15);
  }

  objc_autoreleasePoolPop(v2);
}

void __63___ATXAppLaunchSequenceManager_deleteAllLaunchesForAppActions___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:?] & 1) == 0)
  {
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t __46___ATXAppLaunchSequenceManager_launchSequence__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) appLaunchSequence];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

@end