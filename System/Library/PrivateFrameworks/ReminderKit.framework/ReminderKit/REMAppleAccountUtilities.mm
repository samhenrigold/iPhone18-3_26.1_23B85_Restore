@interface REMAppleAccountUtilities
+ (id)sharedInstance;
+ (void)sharedInstance;
- (ACAccount)unsafeUntilSystemReady_primaryICloudACAccount;
- (BOOL)isCurrentPersonaDataSeparated;
- (NSArray)unsafeUntilSystemReady_allICloudACAccounts;
- (id)_cachedDisplayICloudACAccountWithIdentifier:(id)identifier;
- (id)accessQueue;
- (id)currentPersonaUserPersonaUniqueString;
- (id)initForObservingAccountStoreChanges:(BOOL)changes;
- (id)unsafeUntilSystemReady_allCloudKitRemindersEnabledICloudACAccounts;
- (id)unsafeUntilSystemReady_displayedHostnameOfICloudACAccountWithAccountIdentifier:(id)identifier;
- (id)unsafeUntilSystemReady_iCloudAccountCalDavServiceWithAccountID:(id)d;
- (id)unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier:(id)identifier;
- (void)_invalidateCachedICloudACAccounts;
- (void)_updateCachedICloudACAccounts;
- (void)dealloc;
- (void)performBlockInPersonaContextForAccountIdentifier:(id)identifier block:(id)block;
- (void)saveDidChooseToMigrate:(BOOL)migrate didFinishMigration:(BOOL)migration toACAccount:(id)account inStore:(id)store completionHandler:(id)handler;
@end

@implementation REMAppleAccountUtilities

+ (id)sharedInstance
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__REMAppleAccountUtilities_sharedInstance__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = self;
  if (sharedInstance_once != -1)
  {
    dispatch_once(&sharedInstance_once, v4);
  }

  v2 = sharedInstance_sharedInstance;
  if (!sharedInstance_sharedInstance)
  {
    +[(REMAppleAccountUtilities *)&v5];
    v2 = v5;
  }

  return v2;
}

uint64_t __42__REMAppleAccountUtilities_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (id)initForObservingAccountStoreChanges:(BOOL)changes
{
  changesCopy = changes;
  v9.receiver = self;
  v9.super_class = REMAppleAccountUtilities;
  v4 = [(REMAppleAccountUtilities *)&v9 init];
  if (v4)
  {
    defaultStore = [MEMORY[0x1E6959A48] defaultStore];
    accountStore = v4->_accountStore;
    v4->_accountStore = defaultStore;

    if (changesCopy)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v4 selector:sel_accountStoreDidChange_ name:*MEMORY[0x1E69597D8] object:v4->_accountStore];
    }
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = REMAppleAccountUtilities;
  [(REMAppleAccountUtilities *)&v4 dealloc];
}

- (ACAccount)unsafeUntilSystemReady_primaryICloudACAccount
{
  [(REMAppleAccountUtilities *)self _updateCachedICloudACAccounts];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  v12 = 0;
  accessQueue = [(REMAppleAccountUtilities *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __73__REMAppleAccountUtilities_unsafeUntilSystemReady_primaryICloudACAccount__block_invoke;
  v6[3] = &unk_1E7508420;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSArray)unsafeUntilSystemReady_allICloudACAccounts
{
  [(REMAppleAccountUtilities *)self _updateCachedICloudACAccounts];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__9;
  v11 = __Block_byref_object_dispose__9;
  array = [MEMORY[0x1E695DF70] array];
  accessQueue = [(REMAppleAccountUtilities *)self accessQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__REMAppleAccountUtilities_unsafeUntilSystemReady_allICloudACAccounts__block_invoke;
  v6[3] = &unk_1E7508318;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(accessQueue, v6);
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void *__70__REMAppleAccountUtilities_unsafeUntilSystemReady_allICloudACAccounts__block_invoke(void *result)
{
  if (*(result[4] + 24))
  {
    return [*(*(result[5] + 8) + 40) addObjectsFromArray:?];
  }

  return result;
}

- (id)unsafeUntilSystemReady_allCloudKitRemindersEnabledICloudACAccounts
{
  unsafeUntilSystemReady_allICloudACAccounts = [(REMAppleAccountUtilities *)self unsafeUntilSystemReady_allICloudACAccounts];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__9;
  v10 = __Block_byref_object_dispose__9;
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(unsafeUntilSystemReady_allICloudACAccounts, "count")}];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__REMAppleAccountUtilities_unsafeUntilSystemReady_allCloudKitRemindersEnabledICloudACAccounts__block_invoke;
  v5[3] = &unk_1E7509328;
  v5[4] = &v6;
  [unsafeUntilSystemReady_allICloudACAccounts enumerateObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __94__REMAppleAccountUtilities_unsafeUntilSystemReady_allCloudKitRemindersEnabledICloudACAccounts__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 rem_isEligibleForCloudKitReminders])
  {
    v4 = [v3 enabledDataclasses];
    v5 = [v4 containsObject:*MEMORY[0x1E6959B48]];

    if (v5)
    {
      v6 = [v3 identifier];

      if (v6)
      {
        [*(*(*(a1 + 32) + 8) + 40) addObject:v3];
      }

      else
      {
        v7 = +[REMLog utility];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          __94__REMAppleAccountUtilities_unsafeUntilSystemReady_allCloudKitRemindersEnabledICloudACAccounts__block_invoke_cold_1();
        }
      }
    }
  }
}

- (id)unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  unsafeUntilSystemReady_allICloudACAccounts = [(REMAppleAccountUtilities *)self unsafeUntilSystemReady_allICloudACAccounts];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __92__REMAppleAccountUtilities_unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier___block_invoke;
  v14 = &unk_1E7509350;
  v6 = identifierCopy;
  v15 = v6;
  v16 = &v17;
  [unsafeUntilSystemReady_allICloudACAccounts enumerateObjectsUsingBlock:&v11];
  v7 = v18[5];
  if (!v7)
  {
    v8 = [REMLog utility:v11];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [REMAppleAccountUtilities unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier:];
    }

    v7 = v18[5];
  }

  v9 = v7;

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __92__REMAppleAccountUtilities_unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)unsafeUntilSystemReady_iCloudAccountCalDavServiceWithAccountID:(id)d
{
  dCopy = d;
  unsafeUntilSystemReady_allICloudACAccounts = [(REMAppleAccountUtilities *)self unsafeUntilSystemReady_allICloudACAccounts];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__9;
  v29 = __Block_byref_object_dispose__9;
  v30 = 0;
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __91__REMAppleAccountUtilities_unsafeUntilSystemReady_iCloudAccountCalDavServiceWithAccountID___block_invoke;
  v22 = &unk_1E7509350;
  v6 = dCopy;
  v23 = v6;
  v24 = &v25;
  [unsafeUntilSystemReady_allICloudACAccounts enumerateObjectsUsingBlock:&v19];
  if (!v26[5])
  {
    v7 = [REMLog utility:v19];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [REMAppleAccountUtilities unsafeUntilSystemReady_iCloudAccountCalDavServiceWithAccountID:];
    }
  }

  dataclassProperties = [v26[5] dataclassProperties];
  v9 = [dataclassProperties count];

  if (v9)
  {
    v10 = objc_opt_class();
    dataclassProperties2 = [v26[5] dataclassProperties];
    v12 = [dataclassProperties2 objectForKeyedSubscript:*MEMORY[0x1E6959AE0]];
    v13 = REMDynamicCast(v10, v12);

    if (v13)
    {
      v14 = objc_opt_class();
      v15 = [v13 objectForKeyedSubscript:@"url"];
      v16 = REMDynamicCast(v14, v15);

      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v17 = @"https://p01-caldav.icloud.com:443";
      }
    }

    else
    {
      v17 = @"https://p01-caldav.icloud.com:443";
    }
  }

  else
  {
    v17 = @"https://p01-caldav.icloud.com:443";
  }

  _Block_object_dispose(&v25, 8);

  return v17;
}

void __91__REMAppleAccountUtilities_unsafeUntilSystemReady_iCloudAccountCalDavServiceWithAccountID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = [v11 identifier];
  v8 = [*(a1 + 32) uuid];
  v9 = [v8 UUIDString];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)unsafeUntilSystemReady_displayedHostnameOfICloudACAccountWithAccountIdentifier:(id)identifier
{
  v3 = [(REMAppleAccountUtilities *)self unsafeUntilSystemReady_icloudACAccountMatchingAccountIdentifier:identifier];
  aa_regionInfo = [v3 aa_regionInfo];
  displayedHostname = [aa_regionInfo displayedHostname];
  lowercaseString = [displayedHostname lowercaseString];

  return lowercaseString;
}

- (void)saveDidChooseToMigrate:(BOOL)migrate didFinishMigration:(BOOL)migration toACAccount:(id)account inStore:(id)store completionHandler:(id)handler
{
  migrationCopy = migration;
  migrateCopy = migrate;
  v35 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  storeCopy = store;
  handlerCopy = handler;
  v14 = +[REMLog utility];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    identifier = [accountCopy identifier];
    *buf = 67109634;
    v30 = migrateCopy;
    v31 = 1024;
    v32 = migrationCopy;
    v33 = 2112;
    v34 = identifier;
    _os_log_debug_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEBUG, "Trying to set didChooseToMigrate=%d didFinishMigration=%d on ACAccount (%@)", buf, 0x18u);
  }

  v15 = [accountCopy objectForKeyedSubscript:@"remindersIsUsingCloudKit"];
  v16 = [accountCopy objectForKeyedSubscript:@"remindersDidFinishMigrationToCloudKit"];
  bOOLValue = [v15 BOOLValue];
  bOOLValue2 = [v16 BOOLValue];
  if (!v15 || !v16 || bOOLValue != migrateCopy || bOOLValue2 != migrationCopy)
  {
    v19 = +[REMLog utility];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      identifier2 = [accountCopy identifier];
      *buf = 67109634;
      v30 = migrateCopy;
      v31 = 1024;
      v32 = migrationCopy;
      v33 = 2112;
      v34 = identifier2;
      _os_log_debug_impl(&dword_19A0DB000, v19, OS_LOG_TYPE_DEBUG, "Actually setting didChooseToMigrate=%d didFinishMigration=%d on ACAccount (%@)", buf, 0x18u);
    }

    v20 = [MEMORY[0x1E696AD98] numberWithBool:migrateCopy];
    [accountCopy setObject:v20 forKeyedSubscript:@"remindersIsUsingCloudKit"];

    v21 = [MEMORY[0x1E696AD98] numberWithBool:migrationCopy];
    [accountCopy setObject:v21 forKeyedSubscript:@"remindersDidFinishMigrationToCloudKit"];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __108__REMAppleAccountUtilities_saveDidChooseToMigrate_didFinishMigration_toACAccount_inStore_completionHandler___block_invoke;
    v24[3] = &unk_1E7509378;
    v27 = migrateCopy;
    v28 = migrationCopy;
    v25 = accountCopy;
    v26 = handlerCopy;
    [storeCopy saveAccount:v25 withCompletionHandler:v24];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }
}

void __108__REMAppleAccountUtilities_saveDidChooseToMigrate_didFinishMigration_toACAccount_inStore_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[REMLog utility];
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __108__REMAppleAccountUtilities_saveDidChooseToMigrate_didFinishMigration_toACAccount_inStore_completionHandler___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 49);
    v10 = [*(a1 + 32) identifier];
    v12[0] = 67109634;
    v12[1] = v8;
    v13 = 1024;
    v14 = v9;
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_19A0DB000, v7, OS_LOG_TYPE_DEFAULT, "Saved didChooseToMigrate=%d didFinishMigration=%d on ACAccount (%{public}@)", v12, 0x18u);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, a2, v5);
  }
}

- (id)accessQueue
{
  if (accessQueue_onceToken != -1)
  {
    [REMAppleAccountUtilities accessQueue];
  }

  v3 = accessQueue_accessQueue;

  return v3;
}

void __39__REMAppleAccountUtilities_accessQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.reminders.apple-account-utilities", v2);
  v1 = accessQueue_accessQueue;
  accessQueue_accessQueue = v0;
}

- (void)_updateCachedICloudACAccounts
{
  accessQueue = [(REMAppleAccountUtilities *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__REMAppleAccountUtilities__updateCachedICloudACAccounts__block_invoke;
  block[3] = &unk_1E7508028;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __57__REMAppleAccountUtilities__updateCachedICloudACAccounts__block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) cachedICloudACAccountsAreValid] & 1) == 0)
  {
    v34 = objc_autoreleasePoolPush();
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = [*(a1 + 32) _debug_primaryICloudACAccount];
    v4 = *(a1 + 32);
    if (v3)
    {
      objc_storeStrong(v4 + 2, v3);
      [v2 addObject:v3];
    }

    else
    {
      v5 = [v4 accountStore];
      v6 = [v5 aa_primaryAppleAccount];
      v7 = *(a1 + 32);
      v8 = *(v7 + 16);
      *(v7 + 16) = v6;
    }

    v9 = [*(a1 + 32) _debug_fullICloudACAccount];
    if (v9)
    {
      [v2 addObject:v9];
    }

    if (![v2 count])
    {
      v10 = [*(a1 + 32) accountStore];
      v11 = [v10 aa_appleAccounts];
      [v2 addObjectsFromArray:v11];
    }

    if ([v2 count] >= 4 && +[REMSystemUtilities isInternalInstall](REMSystemUtilities, "isInternalInstall"))
    {
      v12 = +[REMLog utility];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        __57__REMAppleAccountUtilities__updateCachedICloudACAccounts__block_invoke_cold_1(v2, v12);
      }
    }

    v31 = v9;
    v32 = v3;
    objc_storeStrong((*(a1 + 32) + 24), v2);
    v33 = a1;
    v13 = *(*(a1 + 32) + 32);
    if (!v13)
    {
      v13 = [MEMORY[0x1E695DF90] dictionary];
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v2;
    v37 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v37)
    {
      v36 = *v46;
      v14 = *MEMORY[0x1E6959B48];
      do
      {
        v15 = 0;
        do
        {
          if (*v46 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v40 = v15;
          v16 = *(*(&v45 + 1) + 8 * v15);
          context = objc_autoreleasePoolPush();
          v17 = [v16 displayAccount];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v38 = v17;
          v18 = [v17 childAccounts];
          v19 = [v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v42;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v42 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = *(*(&v41 + 1) + 8 * i);
                v24 = [v23 enabledDataclasses];
                v25 = [v24 containsObject:v14];

                if (v25)
                {
                  v26 = [v16 identifier];
                  v27 = [v23 identifier];
                  [v13 setObject:v26 forKeyedSubscript:v27];
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v41 objects:v49 count:16];
            }

            while (v20);
          }

          objc_autoreleasePoolPop(context);
          v15 = v40 + 1;
        }

        while (v40 + 1 != v37);
        v37 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v37);
    }

    v28 = *(v33 + 32);
    v29 = *(v28 + 32);
    *(v28 + 32) = v13;
    v30 = v13;

    [*(v33 + 32) setCachedICloudACAccountsAreValid:1];
    objc_autoreleasePoolPop(v34);
  }
}

- (void)_invalidateCachedICloudACAccounts
{
  accessQueue = [(REMAppleAccountUtilities *)self accessQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__REMAppleAccountUtilities__invalidateCachedICloudACAccounts__block_invoke;
  block[3] = &unk_1E7508028;
  block[4] = self;
  dispatch_sync(accessQueue, block);
}

void __61__REMAppleAccountUtilities__invalidateCachedICloudACAccounts__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCachedICloudACAccountsAreValid:0];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = 0;
}

- (id)_cachedDisplayICloudACAccountWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  if ([identifierCopy length])
  {
    accessQueue = [(REMAppleAccountUtilities *)self accessQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__REMAppleAccountUtilities__cachedDisplayICloudACAccountWithIdentifier___block_invoke;
    block[3] = &unk_1E7508780;
    block[4] = self;
    v9 = identifierCopy;
    v10 = &v11;
    dispatch_sync(accessQueue, block);
    displayAccount = [v12[5] displayAccount];
  }

  else
  {
    displayAccount = v12[5];
  }

  _Block_object_dispose(&v11, 8);

  return displayAccount;
}

void __72__REMAppleAccountUtilities__cachedDisplayICloudACAccountWithIdentifier___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) cachedICloudACAccountsAreValid])
  {
    v2 = *(*(a1 + 32) + 16);
    v3 = v2;
    v4 = [v3 identifier];
    v5 = [v4 isEqualToString:*(a1 + 40)];

    if (v5)
    {
      objc_storeStrong((*(*(a1 + 48) + 8) + 40), v2);
    }

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v6 = *(*(a1 + 32) + 24);
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v29;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v29 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v28 + 1) + 8 * i);
            v13 = [v12 identifier];
            v14 = [v13 isEqualToString:*(a1 + 40)];

            if (v14)
            {
              objc_storeStrong((*(*(a1 + 48) + 8) + 40), v12);
              goto LABEL_17;
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      if (!*(*(*(a1 + 48) + 8) + 40))
      {
        v15 = [*(*(a1 + 32) + 32) objectForKeyedSubscript:*(a1 + 40)];
        if (v15)
        {
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          obj = v7;
          v16 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v25;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v25 != v18)
                {
                  objc_enumerationMutation(obj);
                }

                v20 = *(*(&v24 + 1) + 8 * j);
                v21 = [v20 identifier];
                v22 = [v21 isEqualToString:v15];

                if (v22)
                {
                  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v20);
                  goto LABEL_29;
                }
              }

              v17 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_29:
        }
      }
    }
  }

  else
  {
    v3 = +[REMLog utility];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __72__REMAppleAccountUtilities__cachedDisplayICloudACAccountWithIdentifier___block_invoke_cold_1(a1, v3);
    }
  }
}

- (void)performBlockInPersonaContextForAccountIdentifier:(id)identifier block:(id)block
{
  v43[3] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  blockCopy = block;
  v8 = [(REMAppleAccountUtilities *)self _cachedDisplayICloudACAccountWithIdentifier:identifierCopy];
  v9 = objc_opt_class();
  v10 = [v8 accountPropertyForKey:*MEMORY[0x1E69597A0]];
  v11 = REMDynamicCast(v9, v10);

  sharedManager = [getUMUserManagerClass() sharedManager];
  currentPersona = [sharedManager currentPersona];
  v14 = +[REMLog utility];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    identifier = [v8 identifier];
    v16 = [v8 description];
    *buf = 138544130;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = identifierCopy;
    *&buf[22] = 2114;
    v42 = identifier;
    LOWORD(v43[0]) = 2112;
    *(v43 + 2) = v16;
    _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_INFO, "performBlockInPersonaContext: Looked up account persona {personaIdentifier: %{public}@, accountIdentifier: %{public}@, displayAccountIdentifier: %{public}@, desc: %@}", buf, 0x2Au);
  }

  if ([v11 length] || !v11)
  {
    v23 = +[REMLog utility];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = identifierCopy;
      _os_log_impl(&dword_19A0DB000, v23, OS_LOG_TYPE_INFO, "performBlockInPersonaContext: Adopting persona {personaIdentifier: %{public}@, accountIdentifier: %{public}@}", buf, 0x16u);
    }

    v36 = 0;
    v24 = [currentPersona copyCurrentPersonaContextWithError:&v36];
    v25 = v36;
    if (v25)
    {
      v26 = +[REMLog utility];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [REMAppleAccountUtilities(DataSeparation) performBlockInPersonaContextForAccountIdentifier:block:];
      }

      blockCopy[2](blockCopy, v11, v25);
    }

    else
    {
      v27 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:v11];
      blockCopy[2](blockCopy, v11, 0);
      v28 = [currentPersona restorePersonaWithSavedPersonaContext:v24];
    }
  }

  else
  {
    v17 = [currentPersona isProxy];
    v18 = +[REMLog utility];
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v17)
    {
      if (v19)
      {
        *buf = 138543362;
        *&buf[4] = identifierCopy;
        _os_log_impl(&dword_19A0DB000, v18, OS_LOG_TYPE_INFO, "performBlockInPersonaContext: Adopting personal persona (isProxy) {accountIdentifier: %{public}@}", buf, 0xCu);
      }

      v35 = 0;
      v20 = [currentPersona copyCurrentPersonaContextWithError:&v35];
      v21 = v35;
      if (v21)
      {
        v22 = +[REMLog utility];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [REMAppleAccountUtilities(DataSeparation) performBlockInPersonaContextForAccountIdentifier:block:];
        }

        blockCopy[2](blockCopy, v11, v21);
      }

      else
      {
        v37 = 0;
        v38 = &v37;
        v39 = 0x2050000000;
        v29 = getUMUserPersonaAttributesClass_softClass;
        v40 = getUMUserPersonaAttributesClass_softClass;
        if (!getUMUserPersonaAttributesClass_softClass)
        {
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = __getUMUserPersonaAttributesClass_block_invoke;
          v42 = &unk_1E75093A0;
          v43[0] = &v37;
          __getUMUserPersonaAttributesClass_block_invoke(buf);
          v29 = v38[3];
        }

        v30 = v29;
        _Block_object_dispose(&v37, 8);
        v31 = [v29 personaAttributesForPersonaType:0];
        userPersonaUniqueString = [v31 userPersonaUniqueString];
        v33 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:userPersonaUniqueString];

        blockCopy[2](blockCopy, v11, 0);
        v34 = [currentPersona restorePersonaWithSavedPersonaContext:v20];
      }
    }

    else
    {
      if (v19)
      {
        *buf = 138543362;
        *&buf[4] = identifierCopy;
        _os_log_impl(&dword_19A0DB000, v18, OS_LOG_TYPE_INFO, "performBlockInPersonaContext: Using default persona {accountIdentifier: %{public}@}", buf, 0xCu);
      }

      blockCopy[2](blockCopy, 0, 0);
    }
  }
}

- (BOOL)isCurrentPersonaDataSeparated
{
  sharedManager = [getUMUserManagerClass() sharedManager];
  currentPersona = [sharedManager currentPersona];
  isDataSeparatedPersona = [currentPersona isDataSeparatedPersona];

  return isDataSeparatedPersona;
}

- (id)currentPersonaUserPersonaUniqueString
{
  sharedManager = [getUMUserManagerClass() sharedManager];
  currentPersona = [sharedManager currentPersona];
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];

  return userPersonaUniqueString;
}

+ (void)sharedInstance
{
  v2 = +[REMLog utility];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v3 = 0;
    _os_log_fault_impl(&dword_19A0DB000, v2, OS_LOG_TYPE_FAULT, "rem_log_fault_if (!sharedInstance) -- Failed to create REMAppleAccountUtilities shared instance", v3, 2u);
  }

  *self = sharedInstance_sharedInstance;
}

void __57__REMAppleAccountUtilities__updateCachedICloudACAccounts__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  [a1 count];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "REMAppleAccountUtilities found more than 3 AAAccount, revisit this for performance {count: %ld}", v3, 0xCu);
}

void __72__REMAppleAccountUtilities__cachedDisplayICloudACAccountWithIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = [MEMORY[0x1E696AF00] callStackSymbols];
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Querying -_cachedDisplayICloudACAccountWithIdentifier: when the internal cache is invalid {identifier: %{public}@, callstack: %{public}@}", &v5, 0x16u);
}

@end