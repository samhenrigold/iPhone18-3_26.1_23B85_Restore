@interface FBApplicationDataStoreRepositoryManager
+ (id)sharedInstance;
- (BOOL)migrateFromApplicationStore:(id)store toApplicationStore:(id)applicationStore error:(id *)error;
- (BOOL)migrateFromPlistStoreAtURL:(id)l toSqliteStoreAtURL:(id)rL error:(id *)error;
- (BOOL)removeStoreAtURL:(id)l error:(id *)error;
- (id)_initWithDataStore:(id)store lsEnumerator:(id)enumerator;
- (id)_safeObjectForKey:(id)key forApplication:(id)application ofType:(Class)type;
- (id)urlByAppendingString:(id)string toURL:(id)l;
- (void)_handleApplicationInstalled:(id)installed;
- (void)clearExpiredUninstalledApplicationsFromStoreIfNecessary;
- (void)dealloc;
- (void)migrateApplicationStorePathIfNecessary;
- (void)objectChangedForKeys:(id)keys application:(id)application;
- (void)storeInvalidatedForIdentifier:(id)identifier;
@end

@implementation FBApplicationDataStoreRepositoryManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__FBApplicationDataStoreRepositoryManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_6 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_6, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

void __57__FBApplicationDataStoreRepositoryManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

- (id)_initWithDataStore:(id)store lsEnumerator:(id)enumerator
{
  storeCopy = store;
  enumeratorCopy = enumerator;
  v22.receiver = self;
  v22.super_class = FBApplicationDataStoreRepositoryManager;
  v8 = [(FBApplicationDataStoreRepositoryManager *)&v22 init];
  if (v8)
  {
    v9 = MEMORY[0x1E695DFF8];
    stringByExpandingTildeInPath = [@"~/Library/FrontBoard/applicationState.db" stringByExpandingTildeInPath];
    v11 = [v9 fileURLWithPath:stringByExpandingTildeInPath];
    dataStoreURL = v8->_dataStoreURL;
    v8->_dataStoreURL = v11;

    objc_storeStrong(&v8->_lsEnumerator, enumerator);
    DistributedCenter = CFNotificationCenterGetDistributedCenter();
    CFNotificationCenterAddObserver(DistributedCenter, v8, _handleApplicationsRegisteredNotification, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(FBApplicationDataStoreRepositoryManager *)v8 migrateApplicationStorePathIfNecessary];
    if (storeCopy)
    {
      v14 = storeCopy;
    }

    else
    {
      v14 = [[FBSqliteApplicationDataStoreRepository alloc] initWithStorePath:v8->_dataStoreURL];
    }

    dataStore = v8->_dataStore;
    v8->_dataStore = v14;

    [(FBApplicationDataStoreRepository *)v8->_dataStore setDelegate:v8];
    Serial = BSDispatchQueueCreateSerial();
    deferredWorkQueue = v8->_deferredWorkQueue;
    v8->_deferredWorkQueue = Serial;

    v18 = v8->_deferredWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__FBApplicationDataStoreRepositoryManager__initWithDataStore_lsEnumerator___block_invoke;
    block[3] = &unk_1E783B580;
    v21 = v8;
    dispatch_async(v18, block);
  }

  return v8;
}

- (void)dealloc
{
  [(FBApplicationDataStoreRepository *)self->_dataStore flushSynchronously];
  [(FBApplicationDataStoreRepository *)self->_dataStore close];
  v3.receiver = self;
  v3.super_class = FBApplicationDataStoreRepositoryManager;
  [(FBApplicationDataStoreRepositoryManager *)&v3 dealloc];
}

- (id)urlByAppendingString:(id)string toURL:(id)l
{
  lCopy = l;
  stringCopy = string;
  lastPathComponent = [lCopy lastPathComponent];
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];

  v9 = [lastPathComponent stringByAppendingString:stringCopy];

  v10 = [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v9];

  return v10;
}

- (BOOL)removeStoreAtURL:(id)l error:(id *)error
{
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if ([defaultManager removeItemAtURL:self->_dataStoreURL error:error])
  {
    v8 = [(FBApplicationDataStoreRepositoryManager *)self urlByAppendingString:@"-shm" toURL:lCopy];
    path = [v8 path];
    v10 = [defaultManager fileExistsAtPath:path];

    if (v10 && ![defaultManager removeItemAtURL:v8 error:error])
    {
      v14 = 0;
    }

    else
    {
      v11 = [(FBApplicationDataStoreRepositoryManager *)self urlByAppendingString:@"-wal" toURL:lCopy];
      path2 = [v11 path];
      v13 = [defaultManager fileExistsAtPath:path2];

      v14 = !v13 || [defaultManager removeItemAtURL:v11 error:error];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)migrateApplicationStorePathIfNecessary
{
  v66[3] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AC08]);
  path = [(NSURL *)self->_dataStoreURL path];
  v5 = [v3 fileExistsAtPath:path];

  v47 = v5;
  if ((v5 & 1) == 0)
  {
    uRLByDeletingLastPathComponent = [(NSURL *)self->_dataStoreURL URLByDeletingLastPathComponent];
    [v3 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];
  }

  v7 = MEMORY[0x1E695DFF8];
  stringByExpandingTildeInPath = [@"~/Library/FrontBoard/applicationState.plist" stringByExpandingTildeInPath];
  v9 = [v7 fileURLWithPath:stringByExpandingTildeInPath];
  v66[0] = v9;
  v10 = MEMORY[0x1E695DFF8];
  stringByExpandingTildeInPath2 = [@"~/Library/BackBoard/applicationState.plist" stringByExpandingTildeInPath];
  v12 = [v10 fileURLWithPath:stringByExpandingTildeInPath2];
  v66[1] = v12;
  v13 = MEMORY[0x1E695DFF8];
  stringByExpandingTildeInPath3 = [@"~/Library/SpringBoard/applicationstate.plist" stringByExpandingTildeInPath];
  v15 = [v13 fileURLWithPath:stringByExpandingTildeInPath3];
  v66[2] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v18)
  {
    v20 = v18;
    v21 = *v55;
    *&v19 = 138543874;
    v46 = v19;
    while (2)
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v55 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v54 + 1) + 8 * i);
        path2 = [v23 path];
        v25 = [v3 fileExistsAtPath:path2];

        if (v25)
        {
          if (v47)
          {
            dataStoreURL = self->_dataStoreURL;
            v53 = 0;
            v27 = [(FBApplicationDataStoreRepositoryManager *)self removeStoreAtURL:dataStoreURL error:&v53];
            v28 = v53;
            if (!v27)
            {
              v29 = FBLogAppDataStore();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                v35 = self->_dataStoreURL;
                *buf = v46;
                v60 = v23;
                v61 = 2114;
                v62 = v35;
                v63 = 2114;
                v64 = v28;
                _os_log_error_impl(&dword_1A89DD000, v29, OS_LOG_TYPE_ERROR, "Unable to migrate application state store from %{public}@ to %{public}@ due to error: %{public}@", buf, 0x20u);
              }
            }
          }

          else
          {
            v28 = 0;
          }

          v30 = self->_dataStoreURL;
          v52 = v28;
          v31 = [(FBApplicationDataStoreRepositoryManager *)self migrateFromPlistStoreAtURL:v23 toSqliteStoreAtURL:v30 error:&v52];
          v32 = v52;

          if (v31)
          {
            v36 = FBLogAppDataStore();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v37 = self->_dataStoreURL;
              *buf = 138543618;
              v60 = v23;
              v61 = 2114;
              v62 = v37;
              _os_log_impl(&dword_1A89DD000, v36, OS_LOG_TYPE_INFO, "Successfully migrated application state store from %{public}@ to %{public}@.", buf, 0x16u);
            }

            goto LABEL_27;
          }

          if (v32)
          {
            v33 = FBLogAppDataStore();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v34 = self->_dataStoreURL;
              *buf = v46;
              v60 = v23;
              v61 = 2114;
              v62 = v34;
              v63 = 2114;
              v64 = v32;
              _os_log_error_impl(&dword_1A89DD000, v33, OS_LOG_TYPE_ERROR, "Unable to migrate application state store from %{public}@ to %{public}@ due to error: %{public}@", buf, 0x20u);
            }
          }
        }
      }

      v20 = [v17 countByEnumeratingWithState:&v54 objects:v65 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  v38 = [MEMORY[0x1E695DFA8] setWithArray:v17];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v39 = [v38 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v49;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v49 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = *(*(&v48 + 1) + 8 * j);
        path3 = [v43 path];
        v45 = [v3 fileExistsAtPath:path3];

        if (v45)
        {
          [v3 removeItemAtURL:v43 error:0];
        }
      }

      v40 = [v38 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v40);
  }
}

- (BOOL)migrateFromApplicationStore:(id)store toApplicationStore:(id)applicationStore error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  applicationStoreCopy = applicationStore;
  [applicationStoreCopy beginBatchedUpdate];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  applicationIdentifiersWithState = [applicationStoreCopy applicationIdentifiersWithState];
  v9 = [applicationIdentifiersWithState countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v35;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(applicationIdentifiersWithState);
        }

        [applicationStoreCopy removeAllObjectsForApplication:*(*(&v34 + 1) + 8 * i)];
      }

      v10 = [applicationIdentifiersWithState countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v10);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [storeCopy applicationIdentifiersWithState];
  v25 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v25)
  {
    v24 = *v31;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v30 + 1) + 8 * j);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v15 = [storeCopy keysForApplication:v14];
        v16 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v27;
          do
          {
            for (k = 0; k != v17; ++k)
            {
              if (*v27 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v26 + 1) + 8 * k);
              v21 = [storeCopy objectForKey:v20 forApplication:v14];
              if (v21)
              {
                [applicationStoreCopy setObject:v21 forKey:v20 forApplication:v14];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v26 objects:v38 count:16];
          }

          while (v17);
        }
      }

      v25 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v25);
  }

  [applicationStoreCopy endBatchedUpdate];
  [applicationStoreCopy flushSynchronously];

  return 1;
}

- (BOOL)migrateFromPlistStoreAtURL:(id)l toSqliteStoreAtURL:(id)rL error:(id *)error
{
  rLCopy = rL;
  lCopy = l;
  v10 = [[FBPlistApplicationDataStoreRepository alloc] initWithStorePath:lCopy];

  v11 = [[FBSqliteApplicationDataStoreRepository alloc] initWithStorePath:rLCopy];
  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = !v12 && [(FBApplicationDataStoreRepositoryManager *)self migrateFromApplicationStore:v10 toApplicationStore:v11 error:error];

  return v13;
}

- (void)clearExpiredUninstalledApplicationsFromStoreIfNecessary
{
  v83 = *MEMORY[0x1E69E9840];
  [(FBApplicationDataStoreRepository *)self->_dataStore beginBatchedUpdate];
  lsEnumerator = self->_lsEnumerator;
  if (lsEnumerator)
  {
    v4 = lsEnumerator;
  }

  else
  {
    v4 = [MEMORY[0x1E69635F8] enumeratorWithOptions:0];
  }

  v5 = v4;
  v6 = self->_lsEnumerator;
  self->_lsEnumerator = 0;

  allObjects = [(LSEnumerator *)v5 allObjects];
  if ([allObjects count])
  {
    v52 = v5;
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v51 = allObjects;
    v9 = allObjects;
    v10 = [v9 countByEnumeratingWithState:&v72 objects:v82 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v73;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v73 != v12)
          {
            objc_enumerationMutation(v9);
          }

          bundleIdentifier = [*(*(&v72 + 1) + 8 * i) bundleIdentifier];
          if (bundleIdentifier)
          {
            [v8 addObject:bundleIdentifier];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v72 objects:v82 count:16];
      }

      while (v11);
    }

    applicationIdentifiersWithState = [(FBApplicationDataStoreRepository *)self->_dataStore applicationIdentifiersWithState];
    v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"_SBUninstalledDate", @"__SBUninstalledDate", 0}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = applicationIdentifiersWithState;
    v54 = v16;
    v55 = v8;
    v58 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v58)
    {
      v17 = *v69;
      v56 = *v69;
      do
      {
        v18 = 0;
        do
        {
          if (*v69 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v68 + 1) + 8 * v18);
          fbs_bundleIDFromAppID = [v19 fbs_bundleIDFromAppID];
          v21 = [v8 containsObject:fbs_bundleIDFromAppID];

          v22 = [(FBApplicationDataStoreRepositoryManager *)self _safeObjectForKey:@"__UninstallDate" forApplication:v19 ofType:objc_opt_class()];
          v23 = v22;
          if (!v22)
          {
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v24 = v16;
            v25 = [v24 countByEnumeratingWithState:&v64 objects:v80 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v65;
              while (2)
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v65 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = [(FBApplicationDataStoreRepositoryManager *)self _safeObjectForKey:*(*(&v64 + 1) + 8 * j) forApplication:v19 ofType:objc_opt_class()];
                  if (v29)
                  {
                    v23 = v29;
                    goto LABEL_30;
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v64 objects:v80 count:16];
                if (v26)
                {
                  continue;
                }

                break;
              }

              v23 = 0;
LABEL_30:
              v16 = v54;
              v8 = v55;
            }

            else
            {
              v23 = 0;
            }

            v17 = v56;
          }

          [(FBApplicationDataStoreRepository *)self->_dataStore removeObjectsForKeys:v16 forApplication:v19];
          v30 = v21 ^ 1;
          if (!v23)
          {
            v30 = 1;
          }

          if ((v30 & 1) == 0)
          {
            v31 = FBLogAppDataStore();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v79 = v19;
              _os_log_impl(&dword_1A89DD000, v31, OS_LOG_TYPE_DEFAULT, "Application has been re-installed: %{public}@", buf, 0xCu);
            }

LABEL_39:
            [(FBApplicationDataStoreRepository *)self->_dataStore removeObjectForKey:@"__UninstallDate" forApplication:v19];
            goto LABEL_53;
          }

          if (v23)
          {
            v32 = 1;
          }

          else
          {
            v32 = v21;
          }

          if (v32)
          {
            if (v23)
            {
              v33 = v21 == 1;
            }

            else
            {
              v33 = 1;
            }

            if (v33)
            {
              goto LABEL_39;
            }

            [v23 timeIntervalSinceNow];
            if (v34 >= -86400.0)
            {
              if (!v22)
              {
                [(FBApplicationDataStoreRepository *)self->_dataStore setObject:v23 forKey:@"__UninstallDate" forApplication:v19];
              }
            }

            else
            {
              [v53 addObject:v19];
            }
          }

          else
          {
            v35 = FBLogAppDataStore();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v79 = v19;
              _os_log_impl(&dword_1A89DD000, v35, OS_LOG_TYPE_DEFAULT, "Flagging application as uninstalled: %{public}@", buf, 0xCu);
            }

            dataStore = self->_dataStore;
            date = [MEMORY[0x1E695DF00] date];
            [(FBApplicationDataStoreRepository *)dataStore setObject:date forKey:@"__UninstallDate" forApplication:v19];
          }

LABEL_53:

          ++v18;
        }

        while (v18 != v58);
        v38 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
        v58 = v38;
      }

      while (v38);
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v39 = v53;
    v40 = [v39 countByEnumeratingWithState:&v60 objects:v77 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v61;
      do
      {
        for (k = 0; k != v41; ++k)
        {
          if (*v61 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v60 + 1) + 8 * k);
          v45 = FBLogAppDataStore();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v79 = v44;
            _os_log_impl(&dword_1A89DD000, v45, OS_LOG_TYPE_DEFAULT, "Purging application state of expired identifier: %{public}@", buf, 0xCu);
          }

          [(FBApplicationDataStoreRepository *)self->_dataStore removeAllObjectsForApplication:v44];
        }

        v41 = [v39 countByEnumeratingWithState:&v60 objects:v77 count:16];
      }

      while (v41);
    }

    [(FBApplicationDataStoreRepository *)self->_dataStore endBatchedUpdate];
    v46 = dispatch_time(0, 86400000000000);
    deferredWorkQueue = self->_deferredWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __98__FBApplicationDataStoreRepositoryManager_clearExpiredUninstalledApplicationsFromStoreIfNecessary__block_invoke_57;
    block[3] = &unk_1E783B580;
    block[4] = self;
    dispatch_after(v46, deferredWorkQueue, block);

    allObjects = v51;
    v5 = v52;
  }

  else
  {
    v48 = FBLogAppDataStore();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      [(FBApplicationDataStoreRepositoryManager *)v48 clearExpiredUninstalledApplicationsFromStoreIfNecessary];
    }

    v49 = dispatch_time(0, 10000000000);
    v50 = self->_deferredWorkQueue;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __98__FBApplicationDataStoreRepositoryManager_clearExpiredUninstalledApplicationsFromStoreIfNecessary__block_invoke;
    v76[3] = &unk_1E783B580;
    v76[4] = self;
    dispatch_after(v49, v50, v76);
  }
}

- (id)_safeObjectForKey:(id)key forApplication:(id)application ofType:(Class)type
{
  v5 = [(FBApplicationDataStoreRepository *)self->_dataStore objectForKey:key forApplication:application];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_handleApplicationInstalled:(id)installed
{
  v26 = *MEMORY[0x1E69E9840];
  installedCopy = installed;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [installedCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(installedCopy);
        }

        [(FBApplicationDataStoreRepository *)self->_dataStore removeObjectForKey:@"__UninstallDate" forApplication:*(*(&v20 + 1) + 8 * i)];
      }

      v6 = [installedCopy countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  applicationIdentifiersWithState = [(FBApplicationDataStoreRepository *)self->_dataStore applicationIdentifiersWithState];
  v10 = [applicationIdentifiersWithState countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(applicationIdentifiersWithState);
        }

        v14 = *(*(&v16 + 1) + 8 * j);
        fbs_bundleIDFromAppID = [v14 fbs_bundleIDFromAppID];
        if ([installedCopy containsObject:fbs_bundleIDFromAppID])
        {
          [(FBApplicationDataStoreRepository *)self->_dataStore removeObjectForKey:@"__UninstallDate" forApplication:v14];
        }
      }

      v11 = [applicationIdentifiersWithState countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v11);
  }
}

- (void)objectChangedForKeys:(id)keys application:(id)application
{
  v27 = *MEMORY[0x1E69E9840];
  keysCopy = keys;
  applicationCopy = application;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = keysCopy;
  v10 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = [(FBApplicationDataStoreRepository *)self->_dataStore objectForKey:v14 forApplication:applicationCopy];
        v24[0] = @"FBApplicationStoreRepositoryChangeKey";
        v24[1] = @"FBApplicationStoreRepositoryChangeApp";
        v25[0] = v14;
        v25[1] = applicationCopy;
        v17 = v16;
        v24[2] = @"FBApplicationStoreRepositoryChangeValue";
        if (!v16)
        {
          null = [MEMORY[0x1E695DFB0] null];
          v17 = null;
        }

        v25[2] = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
        [defaultCenter postNotificationName:@"FBApplicationStoreRepositoryChangeNotification" object:0 userInfo:v18];

        if (!v16)
        {
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v11);
  }
}

- (void)storeInvalidatedForIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD88];
  identifierCopy = identifier;
  defaultCenter = [v3 defaultCenter];
  v7 = @"FBApplicationStoreRepositoryChangeApp";
  v8[0] = identifierCopy;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  [defaultCenter postNotificationName:@"FBApplicationStoreRepositoryInvalidatedNotification" object:0 userInfo:v6];
}

@end