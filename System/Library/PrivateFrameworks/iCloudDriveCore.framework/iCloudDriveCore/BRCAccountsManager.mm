@interface BRCAccountsManager
+ (id)sharedManager;
- (BOOL)_cleanupAccountSupportDataWithPersona:(id)persona;
- (BOOL)_isDeviceUnlocked;
- (BOOL)_maintainExistingFileProviderDomainsWithAccounts:(id)accounts withError:(id *)error;
- (BOOL)_readkeepDataLocalOnSignOutForCurrentPersona;
- (BOOL)_waitUntilFileProviderIsReady:(id *)ready;
- (BOOL)cleanupAccountDataForLoggedOutAccountWithPersona:(id)persona;
- (BOOL)destroySessionWithACAccountID:(id)d;
- (BOOL)retrySyncBubbleLaterIfNeededWithError:(id)error;
- (BOOL)waitForAccountLoadingSynchronouslyIfPossible:(id)possible;
- (BOOL)waitForInitialAccountLoadingSynchronouslyIfPossible;
- (BRCAccountsManager)init;
- (id)_createAccountHandlerForAccountID:(id)d;
- (id)_keepDataLocalOnSignOutDefaultsKeyForCurrentPersona;
- (id)accountForCurrentPersona;
- (id)accountForPersona:(id)persona;
- (id)accountHandlerForACAccountID:(id)d;
- (id)accountHandlerForCurrentPersona;
- (id)getOrCreateAccountHandlerForACAccount:(id)account;
- (id)personaIdentifierForACAccountID:(id)d;
- (void)_createSyncBubbleTasksIfNecessary;
- (void)_maintainExistingFileProviderDomainsIfNeededWithAccounts:(id)accounts;
- (void)_scheduleExistingFileProviderDomainsMaintenanceWithAccounts:(id)accounts;
- (void)createAndLoadSessionWithACAccountID:(id)d createBlock:(id)block;
- (void)createSessionWithACAccountID:(id)d dsid:(id)dsid completionHandler:(id)handler;
- (void)enumerateAccountHandlerIfFinishedLoading:(id)loading;
- (void)enumerateAccountHandlers:(id)handlers;
- (void)keepDataLocalOnSignOutForCurrentPersona:(BOOL)persona;
- (void)loadAccounts;
- (void)updateAccountDisplayName:(id)name completionHandler:(id)handler;
- (void)uploadContent;
- (void)waitUntilDeviceIsUnlocked;
- (void)willSwitchUser;
@end

@implementation BRCAccountsManager

+ (id)sharedManager
{
  if (sharedManager_once_0 != -1)
  {
    +[BRCAccountsManager sharedManager];
  }

  v3 = sharedManager_instance;

  return v3;
}

- (BOOL)_isDeviceUnlocked
{
  v2 = MKBDeviceUnlockedSinceBoot();
  if (v2 < 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountsManager _isDeviceUnlocked];
    }

    return 0;
  }

  else
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountsManager _isDeviceUnlocked];
    }

    return v2 == 1;
  }
}

- (id)accountHandlerForCurrentPersona
{
  v33 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentPersona = [mEMORY[0x277D77BF8] currentPersona];

  v5 = [(BRCAccountsManager *)self accountForPersona:currentPersona];
  v22 = v5;
  if (v5)
  {
    identifier = [v5 identifier];
    v7 = [(BRCAccountsManager *)self accountHandlerForACAccountID:identifier];
  }

  else
  {
    v21 = self->_accountHandlersByACAccountID;
    objc_sync_enter(v21);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    objectEnumerator = [(NSMutableDictionary *)self->_accountHandlersByACAccountID objectEnumerator];
    v9 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v32 count:16];
    obj = objectEnumerator;
    if (v9)
    {
      v10 = *v25;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          session = [v12 session];
          if (([session isDataSeparated] & 1) == 0 && (objc_msgSend(currentPersona, "isDataSeparatedPersona") & 1) == 0)
          {

LABEL_15:
            v18 = brc_bread_crumbs();
            v19 = brc_default_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v29 = v12;
              v30 = 2112;
              v31 = v18;
              _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Found account handler %@ by persona match%@", buf, 0x16u);
            }

            v7 = v12;
            goto LABEL_18;
          }

          session2 = [v12 session];
          personaIdentifier = [session2 personaIdentifier];
          br_personaID = [currentPersona br_personaID];
          v17 = [personaIdentifier isEqualToString:br_personaID];

          if (v17)
          {
            goto LABEL_15;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
LABEL_18:

    objc_sync_exit(v21);
  }

  return v7;
}

- (id)accountForCurrentPersona
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  br_accountForCurrentPersona = [defaultStore br_accountForCurrentPersona];

  return br_accountForCurrentPersona;
}

- (BOOL)waitForInitialAccountLoadingSynchronouslyIfPossible
{
  v11 = *MEMORY[0x277D85DE8];
  if (!self->_finishedLoadingAccounts)
  {
    if (self->_loadAccountsRequested)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __73__BRCAccountsManager_waitForInitialAccountLoadingSynchronouslyIfPossible__block_invoke;
      block[3] = &unk_2784FF450;
      block[4] = self;
      dispatch_sync(queue, block);
    }

    else
    {
      v4 = brc_bread_crumbs();
      v5 = brc_default_log();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v10 = v4;
        _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[WARNING] Not waiting for initial account loading synchronously since we did not yet kick loadAccounts request%@", buf, 0xCu);
      }

      v6 = +[BRCBuddyFlowObserver sharedBuddyFlowObserver];
      [v6 logStatus];
    }
  }

  return self->_finishedLoadingAccounts;
}

uint64_t __35__BRCAccountsManager_sharedManager__block_invoke()
{
  sharedManager_instance = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BRCAccountsManager)init
{
  v16.receiver = self;
  v16.super_class = BRCAccountsManager;
  v2 = [(BRCAccountsManager *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(v3, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("account-queue", v4);

    queue = v2->_queue;
    v2->_queue = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("maintain-fp-domains", v8);

    maintainFPDomainsQueue = v2->_maintainFPDomainsQueue;
    v2->_maintainFPDomainsQueue = v9;

    v11 = objc_opt_new();
    accountHandlersByACAccountID = v2->_accountHandlersByACAccountID;
    v2->_accountHandlersByACAccountID = v11;

    v13 = [[BRCBarrier alloc] initWithName:@"accountsLoading"];
    accountsLoadingBarrier = v2->_accountsLoadingBarrier;
    v2->_accountsLoadingBarrier = v13;
  }

  return v2;
}

- (id)_keepDataLocalOnSignOutDefaultsKeyForCurrentPersona
{
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  br_accountForCurrentPersona = [defaultStore br_accountForCurrentPersona];

  br_dsid = [br_accountForCurrentPersona br_dsid];
  v5 = [@"com.apple.bird.keepDataLocalOnSignOutSetAtTime." stringByAppendingString:br_dsid];

  return v5;
}

- (BOOL)_readkeepDataLocalOnSignOutForCurrentPersona
{
  v15 = *MEMORY[0x277D85DE8];
  _keepDataLocalOnSignOutDefaultsKeyForCurrentPersona = [(BRCAccountsManager *)self _keepDataLocalOnSignOutDefaultsKeyForCurrentPersona];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:_keepDataLocalOnSignOutDefaultsKeyForCurrentPersona];
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412802;
    v10 = _keepDataLocalOnSignOutDefaultsKeyForCurrentPersona;
    v11 = 2112;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] Value of %@ user default is: %@%@", &v9, 0x20u);
  }

  v7 = time(0);
  LOBYTE(v7) = [v4 longValue] > v7 - 60;

  return v7;
}

- (void)keepDataLocalOnSignOutForCurrentPersona:(BOOL)persona
{
  personaCopy = persona;
  _keepDataLocalOnSignOutDefaultsKeyForCurrentPersona = [(BRCAccountsManager *)self _keepDataLocalOnSignOutDefaultsKeyForCurrentPersona];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = standardUserDefaults;
  if (personaCopy)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithLong:time(0)];
    [v5 setObject:v6 forKey:_keepDataLocalOnSignOutDefaultsKeyForCurrentPersona];
  }

  else
  {
    [standardUserDefaults removeObjectForKey:_keepDataLocalOnSignOutDefaultsKeyForCurrentPersona];
  }
}

- (BOOL)_cleanupAccountSupportDataWithPersona:(id)persona
{
  personaCopy = persona;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v4 = MEMORY[0x277CFAE80];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__BRCAccountsManager__cleanupAccountSupportDataWithPersona___block_invoke;
  v7[3] = &unk_278500DA0;
  v5 = personaCopy;
  v8 = v5;
  v9 = &v10;
  [v4 performWithPersonaID:v5 block:v7];
  LOBYTE(v4) = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v4;
}

void __60__BRCAccountsManager__cleanupAccountSupportDataWithPersona___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __60__BRCAccountsManager__cleanupAccountSupportDataWithPersona___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCACA8] br_currentSupportDir];
    v2 = [v5 stringByAppendingPathComponent:*MEMORY[0x277CFACE8]];

    v3 = [v2 stringByAppendingPathComponent:@"db"];
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 fileExistsAtPath:v3];

    if (v7)
    {
      v8 = brc_bread_crumbs();
      v9 = brc_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = 138412802;
        v12 = v10;
        v13 = 2112;
        v14 = v2;
        v15 = 2112;
        v16 = v8;
        _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] Found existing session directory on startup for account with no account handler (persona %@). Removing it %@%@", &v11, 0x20u);
      }

      *(*(*(a1 + 40) + 8) + 24) = [BRCFileSystemWrapper recursiveRemove:v2]== 0;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (BOOL)cleanupAccountDataForLoggedOutAccountWithPersona:(id)persona
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  personaCopy = persona;
  BRPerformWithPersonaAndError();
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_1();
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    BRPostAccountTokenChangedNotification();
    goto LABEL_25;
  }

  v6 = [MEMORY[0x277D77C08] currentPersona];
  v7 = [v6 isDataSeparatedPersona];

  v8 = [*(a1 + 32) accountHandlerForCurrentPersona];
  v9 = [v8 session];
  v10 = [v9 fpDomain];
  v11 = [MEMORY[0x277CC64A8] br_getProviderManagerForDataSeparated:v7];
  if (v10)
  {
    v12 = 0;
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
  }

  else
  {
    if (v9)
    {
      __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_2();
    }

    v13 = [MEMORY[0x277CB8F48] defaultStore];
    v14 = [v13 br_accountForCurrentPersona];

    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_3();
    }

    v41 = 0;
    v10 = [v11 br_getFPDomainForAccount:v14 withError:&v41];
    v12 = v41;

    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    if (!v10)
    {
      if (v12)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, 0x90u))
        {
          __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_4();
        }

        v19 = 0;
      }

      else
      {
        v28 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = [0 identifier];
          __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_5(v30, v28, buf);
        }

        v12 = 0;
        v19 = 0;
        *(v38 + 24) = 1;
      }

      goto LABEL_15;
    }
  }

  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v33 = [v10 identifier];
    v31 = [v10 displayName];
    *buf = 138412802;
    v44 = v33;
    v45 = 2112;
    v46 = v31;
    v47 = 2112;
    v48 = v17;
    v32 = v31;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Removing domain: %@, display name: %@%@", buf, 0x20u);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_23;
  v34[3] = &unk_278500DA0;
  v19 = v10;
  v35 = v19;
  v36 = &v37;
  [v11 br_removeDomain:v19 sync:1 completionHandler:v34];

LABEL_15:
  if (v9)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v8 destroySessionSynchronously];
    if ((v38[3] & 1) == 0)
    {
      abc_report_panic_with_signature();
      [MEMORY[0x277CCACA8] stringWithFormat:@"Domain removal failed and we have an account session. Crashing to prevent inconsistent state"];
      objc_claimAutoreleasedReturnValue();
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = brc_append_system_info_to_message();
        __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_6(v22, v20, v42);
      }

      brc_append_system_info_to_message();
      v23 = [objc_claimAutoreleasedReturnValue() UTF8String];
      __assert_rtn("[BRCAccountsManager cleanupAccountDataForLoggedOutAccountWithPersona:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/account/BRCAccountsManager.m", 306, v23);
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _cleanupAccountSupportDataWithPersona:*(a1 + 40)];
  }

  v24 = *(*(a1 + 48) + 8);
  if (*(v24 + 24) == 1)
  {
    v25 = *(v38 + 24);
  }

  else
  {
    v25 = 0;
  }

  *(v24 + 24) = v25 & 1;
  _Block_object_dispose(&v37, 8);

LABEL_25:
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_23(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v8 = [*(a1 + 32) identifier];
      v9 = 138412802;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Failed to remove domain %@ - %@%@", &v9, 0x20u);
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_23_cold_1(a1, v6, v7);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (void)loadAccounts
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  if ([mEMORY[0x277D77BF8] isMultiUser])
  {
    [mEMORY[0x277D77BF8] registerUserSyncStakeholder:self withMachServiceName:@"com.apple.bird.usermanager.sync"];
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [BRCAccountsManager loadAccounts];
    }

    v6 = [MEMORY[0x277D77C28] taskWithName:@"com.apple.bird.login" reason:@"waiting to be notified of user switch to check if we need to upload in the bubble"];
    checkNeedsBubbleTask = self->_checkNeedsBubbleTask;
    self->_checkNeedsBubbleTask = v6;

    [(UMUserSyncTask *)self->_checkNeedsBubbleTask begin];
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__BRCAccountsManager_loadAccounts__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  v9 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(queue, v9);

  self->_loadAccountsRequested = 1;
}

void __34__BRCAccountsManager_loadAccounts__block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) waitUntilDeviceIsUnlocked];
  *MEMORY[0x277CFB010] = _BRBlockRememberPersona;
  v48 = [BRCUserDefaults defaultsForMangledID:0];
  v50 = [MEMORY[0x277CB8F48] defaultStore];
  v70 = 0;
  v51 = [v50 br_allEnabledAppleAccountsIncludingDataSeparated:1 withError:&v70];
  v49 = v70;
  memset(v69, 0, sizeof(v69));
  __brc_create_section(0, "[BRCAccountsManager loadAccounts]_block_invoke", 350, 0, v69);
  v1 = brc_bread_crumbs();
  v2 = brc_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v44 = v69[0];
    v45 = [v51 count];
    *buf = 134218754;
    v75 = v44;
    v76 = 2048;
    v77 = v45;
    v78 = 2112;
    v79 = v49;
    v80 = 2112;
    v81 = v1;
    _os_log_debug_impl(&dword_223E7A000, v2, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Loaded %lu system icloud accounts with error: %@%@", buf, 0x2Au);
  }

  if (!v51 || v49)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, 0x90u))
    {
      __34__BRCAccountsManager_loadAccounts__block_invoke_cold_2();
    }

    [MEMORY[0x277CFAE88] exitProcess:0];
  }

  else
  {
    +[BRCUserDefaults loadCachedServerConfiguration];
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v3 = v51;
    v4 = [v3 countByEnumeratingWithState:&v65 objects:v73 count:16];
    if (v4)
    {
      v5 = *v66;
      v6 = 1;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v66 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v65 + 1) + 8 * i);
          v9 = [v8 isDataSeparatedAccount];
          v10 = MEMORY[0x277CFAE80];
          v11 = [v8 br_personaIdentifier];
          v63[0] = MEMORY[0x277D85DD0];
          v63[1] = 3221225472;
          v63[2] = __34__BRCAccountsManager_loadAccounts__block_invoke_40;
          v63[3] = &unk_278502620;
          v12 = *(a1 + 32);
          v63[4] = v8;
          v63[5] = v12;
          v13 = v3;
          v64 = v13;
          [v10 performWithPersonaID:v11 block:v63];

          v6 &= v9;
        }

        v4 = [v13 countByEnumeratingWithState:&v65 objects:v73 count:16];
      }

      while (v4);
    }

    else
    {
      v6 = 1;
    }

    [*(*(a1 + 32) + 48) signalBarrier];
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v16 = v3;
    v17 = [v16 countByEnumeratingWithState:&v59 objects:v72 count:16];
    if (v17)
    {
      v18 = *v60;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v60 != v18)
          {
            objc_enumerationMutation(v16);
          }

          v20 = *(*(&v59 + 1) + 8 * j);
          v21 = [v20 identifier];
          v22 = *(a1 + 32);
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __34__BRCAccountsManager_loadAccounts__block_invoke_41;
          v58[3] = &unk_278505AE8;
          v58[4] = v22;
          v58[5] = v20;
          [v22 createAndLoadSessionWithACAccountID:v21 createBlock:v58];
        }

        v17 = [v16 countByEnumeratingWithState:&v59 objects:v72 count:16];
      }

      while (v17);
    }

    if (v6)
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v75 = v23;
        _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[WARNING] Cleaning up leftover primary account application support if exists%@", buf, 0xCu);
      }

      [*(a1 + 32) _cleanupAccountSupportDataWithPersona:@"__defaultPersonaID__"];
    }

    v25 = [v50 br_allEligibleAppleAccounts];
    v26 = v25;
    if (v25)
    {
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v27 = v25;
      v28 = [v27 countByEnumeratingWithState:&v54 objects:v71 count:16];
      if (v28)
      {
        v29 = *v55;
        do
        {
          for (k = 0; k != v28; ++k)
          {
            if (*v55 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v31 = *(*(&v54 + 1) + 8 * k);
            if ([v31 isDataSeparatedAccount] && (objc_msgSend(v31, "br_isEnabledForCloudDocs") & 1) == 0)
            {
              v32 = brc_bread_crumbs();
              v33 = brc_default_log();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v75 = v31;
                v76 = 2112;
                v77 = v32;
                _os_log_impl(&dword_223E7A000, v33, OS_LOG_TYPE_DEFAULT, "[WARNING] Cleaning up leftover enterprise account %@ application support if exists%@", buf, 0x16u);
              }

              v34 = *(a1 + 32);
              v35 = [v31 br_personaIdentifier];
              [v34 _cleanupAccountSupportDataWithPersona:v35];
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v54 objects:v71 count:16];
        }

        while (v28);
      }
    }

    *(*(a1 + 32) + 33) = 1;
    if ([*(a1 + 32) isInSyncBubble])
    {
      v36 = *(a1 + 32);
      if (!v36[5])
      {
        v46 = brc_bread_crumbs();
        v47 = brc_default_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
        {
          __34__BRCAccountsManager_loadAccounts__block_invoke_cold_1();
        }

        v36 = *(a1 + 32);
      }

      [v36 _createSyncBubbleTasksIfNecessary];
      [*(*(a1 + 32) + 40) end];
      v37 = *(a1 + 32);
      v38 = *(v37 + 40);
      *(v37 + 40) = 0;
    }

    v39 = [v48 serverConfigurationURL];
    v40 = [MEMORY[0x277CBEBC0] URLWithString:v39];
    v41 = v40;
    if (v40)
    {
      v42 = v40;
    }

    else
    {
      v42 = [MEMORY[0x277CBEBC0] fileURLWithPath:v39];
    }

    v43 = v42;

    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __34__BRCAccountsManager_loadAccounts__block_invoke_48;
    v53[3] = &unk_2784FF450;
    v53[4] = *(a1 + 32);
    [BRCUserDefaults setServerConfigurationURL:v43 whenLoaded:v53];
    *(*(a1 + 32) + 32) = 0;
    [*(a1 + 32) _scheduleExistingFileProviderDomainsMaintenanceWithAccounts:v16];
  }

  __brc_leave_section(v69);
}

void __34__BRCAccountsManager_loadAccounts__block_invoke_40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __34__BRCAccountsManager_loadAccounts__block_invoke_40_cold_1();
    }
  }

  else
  {
    [*(a1 + 40) _maintainExistingFileProviderDomainsIfNeededWithAccounts:*(a1 + 48)];
    v5 = [*(a1 + 40) getOrCreateAccountHandlerForACAccount:*(a1 + 32)];
  }
}

id __34__BRCAccountsManager_loadAccounts__block_invoke_41(uint64_t a1)
{
  v2 = [*(a1 + 32) getOrCreateAccountHandlerForACAccount:*(a1 + 40)];
  [v2 startAndLoadAccountSynchronously:*(a1 + 40)];

  return v2;
}

void __34__BRCAccountsManager_loadAccounts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 session];
  [v2 userDefaultsChanged];
}

- (BOOL)_maintainExistingFileProviderDomainsWithAccounts:(id)accounts withError:(id *)error
{
  v135 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  selfCopy = self;
  if ([(BRCAccountsManager *)self isInSyncBubble])
  {
    v5 = 1;
    goto LABEL_115;
  }

  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:];
  }

  _getEnterpriseProviderManager = [(BRCAccountsManager *)selfCopy _getEnterpriseProviderManager];
  v118 = 0;
  v119 = &v118;
  v120 = 0x3032000000;
  v121 = __Block_byref_object_copy__42;
  v122 = __Block_byref_object_dispose__42;
  v123 = 0;
  obj = 0;
  v8 = [_getEnterpriseProviderManager br_getFPDomainsWithError:&obj];
  objc_storeStrong(&v123, obj);
  if (v119[5])
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, 0x90u))
    {
      [BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:];
    }

    v11 = v119[5];
    v5 = v11 == 0;
    v12 = v11;
    if (v11)
    {
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, 0x90u))
      {
        v88 = "(passed to caller)";
        *buf = 136315906;
        v128 = "[BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:]";
        v129 = 2080;
        if (!error)
        {
          v88 = "(ignored by caller)";
        }

        v130 = v88;
        v131 = 2112;
        v132 = v12;
        v133 = 2112;
        v134 = v13;
        _os_log_error_impl(&dword_223E7A000, v14, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v15 = v12;
      *error = v12;
    }

    goto LABEL_114;
  }

  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v16 = v8;
  v17 = [v16 countByEnumeratingWithState:&v113 objects:v126 count:16];
  v98 = v16;
  if (!v17)
  {
    goto LABEL_81;
  }

  v19 = *v114;
  v20 = "(ignored by caller)";
  if (error)
  {
    v20 = "(passed to caller)";
  }

  v92 = v20;
  v93 = *MEMORY[0x277CCA5B8];
  *&v18 = 138412802;
  v91 = v18;
  do
  {
    v21 = 0;
    do
    {
      if (*v114 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v113 + 1) + 8 * v21);
      if (BRIsDefaultDomain())
      {
        goto LABEL_69;
      }

      v112 = 0;
      v23 = [MEMORY[0x277CFAE00] matchDomainWithAccountAndStampDomainIfNeeded:v22 withAccounts:accountsCopy persistDomain:&v112];
      v24 = v23 == 0;

      if (!v24)
      {
        v16 = v98;
        if (v112 == 1)
        {
          personaIdentifier = [v22 personaIdentifier];
          v107[1] = MEMORY[0x277D85DD0];
          v107[2] = 3221225472;
          v107[3] = __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_60;
          v107[4] = &unk_2784FFFA8;
          v107[5] = v22;
          v108 = _getEnterpriseProviderManager;
          BRPerformWithPersonaAndError();

          v16 = v98;
        }

        goto LABEL_69;
      }

      personaIdentifier2 = [v22 personaIdentifier];
      if ([personaIdentifier2 isEqualToString:@"__defaultPersonaID__"])
      {
      }

      else
      {
        personaIdentifier3 = [v22 personaIdentifier];

        if (personaIdentifier3)
        {
          v27 = 0;
          goto LABEL_31;
        }
      }

      if (_maintainExistingFileProviderDomainsWithAccounts_withError____personaOnceToken != -1)
      {
        [BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:];
      }

      personaIdentifier3 = _maintainExistingFileProviderDomainsWithAccounts_withError____personalPersona;
      v27 = 1;
LABEL_31:
      mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
      currentPersona = [mEMORY[0x277D77BF8] currentPersona];

      v111 = 0;
      userPersonaUniqueString = [currentPersona userPersonaUniqueString];
      v30 = userPersonaUniqueString;
      if (userPersonaUniqueString == personaIdentifier3 || ([userPersonaUniqueString isEqualToString:?] & 1) != 0)
      {
        v31 = 0;
        goto LABEL_34;
      }

      if (voucher_process_can_use_arbitrary_personas())
      {
        v110 = 0;
        v47 = [currentPersona copyCurrentPersonaContextWithError:&v110];
        v48 = v110;
        v49 = v111;
        v111 = v47;

        if (v48)
        {
          v50 = brc_bread_crumbs();
          v51 = brc_default_log();
          if (os_log_type_enabled(v51, 0x90u))
          {
            *buf = 138412546;
            v128 = v48;
            v129 = 2112;
            v130 = v50;
            _os_log_error_impl(&dword_223E7A000, v51, 0x90u, "[ERROR] won't restore persona: %@%@", buf, 0x16u);
          }
        }

        v31 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

        if (v31)
        {
          v52 = brc_bread_crumbs();
          v53 = brc_default_log();
          if (os_log_type_enabled(v53, 0x90u))
          {
            personaIdentifier4 = [v22 personaIdentifier];
            *buf = v91;
            v128 = personaIdentifier4;
            v129 = 2112;
            v130 = v31;
            v131 = 2112;
            v132 = v52;
            _os_log_error_impl(&dword_223E7A000, v53, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
          }

LABEL_79:
        }
      }

      else
      {
        if (v27 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
        {
          v52 = brc_bread_crumbs();
          v53 = brc_default_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v128 = v52;
            _os_log_debug_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona but data-separatedness matches%@", buf, 0xCu);
          }

          v31 = 0;
          goto LABEL_79;
        }

        v61 = brc_bread_crumbs();
        v62 = brc_default_log();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v128 = v61;
          _os_log_debug_impl(&dword_223E7A000, v62, OS_LOG_TYPE_DEBUG, "[DEBUG] Not allowed to adopt persona - should fallback persona%@", buf, 0xCu);
        }

        v31 = [MEMORY[0x277CCA9B8] errorWithDomain:v93 code:22 userInfo:0];
      }

LABEL_34:
      v32 = brc_bread_crumbs();
      v33 = brc_default_log();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v128 = v22;
        v129 = 2112;
        v130 = v32;
        _os_log_impl(&dword_223E7A000, v33, OS_LOG_TYPE_INFO, "[INFO] Removing domain %@ since it doesn't have a backing AC account%@", buf, 0x16u);
      }

      v125[1] = 0;
      v125[0] = 0;
      identifier = [v22 identifier];
      v35 = _br_parseUUIDString();

      if ((v35 & 1) == 0)
      {
        if ([v22 br_isCiconiaDomain])
        {
          br_currentSupportDir = brc_bread_crumbs();
          v45 = brc_default_log();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [v22 identifier];
            *buf = 138412546;
            v128 = identifier2;
            v129 = 2112;
            v130 = br_currentSupportDir;
            _os_log_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEFAULT, "[WARNING] We are removing the ciconia domain %@, not removing account data%@", buf, 0x16u);
          }
        }

        else
        {
          br_currentSupportDir = brc_bread_crumbs();
          v45 = brc_default_log();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
          {
            identifier3 = [v22 identifier];
            *buf = 138412546;
            v128 = identifier3;
            v129 = 2112;
            v130 = br_currentSupportDir;
            _os_log_fault_impl(&dword_223E7A000, v45, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: domain identifier %@ isn't a UUID so not removing account data%@", buf, 0x16u);
          }
        }

        goto LABEL_57;
      }

      mEMORY[0x277D77BF8]2 = [MEMORY[0x277D77BF8] sharedManager];
      br_currentPersonaID = [mEMORY[0x277D77BF8]2 br_currentPersonaID];
      personaIdentifier5 = [v22 personaIdentifier];
      v39 = [br_currentPersonaID isEqualToString:personaIdentifier5];

      if (v39)
      {
        v40 = brc_bread_crumbs();
        v41 = brc_default_log();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v128 = v40;
          _os_log_debug_impl(&dword_223E7A000, v41, OS_LOG_TYPE_DEBUG, "[DEBUG] domain's persona still exists, removing account path%@", buf, 0xCu);
        }

        br_currentSupportDir = [MEMORY[0x277CCACA8] br_currentSupportDir];
        if (br_currentSupportDir)
        {
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v44 = [defaultManager fileExistsAtPath:br_currentSupportDir];

          if (v44)
          {
            BRCRecursiveRemove(br_currentSupportDir);
          }
        }

LABEL_57:
      }

      if ([v22 isDataSeparatedDomain] & 1) != 0 || (objc_msgSend(v22, "isEnterpriseDomain"))
      {
        br_isCiconiaDomain = 1;
      }

      else
      {
        br_isCiconiaDomain = [v22 br_isCiconiaDomain];
      }

      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_59;
      v109[3] = &unk_278500DA0;
      v109[4] = v22;
      v109[5] = &v118;
      [_getEnterpriseProviderManager br_removeDomain:v22 sync:br_isCiconiaDomain ^ 1u completionHandler:v109];
      v56 = v119[5];
      if (v56)
      {
        v57 = v56;
        v58 = brc_bread_crumbs();
        v59 = brc_default_log();
        if (os_log_type_enabled(v59, 0x90u))
        {
          *buf = 136315906;
          v128 = "[BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:]";
          v129 = 2080;
          v130 = v92;
          v131 = 2112;
          v132 = v57;
          v133 = 2112;
          v134 = v58;
          _os_log_error_impl(&dword_223E7A000, v59, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
        }

        if (error)
        {
          v60 = v57;
          *error = v57;
        }
      }

      _BRRestorePersona();
      v16 = v98;
      if (v56)
      {
        v5 = 0;
        v12 = v98;
        v8 = v98;
        goto LABEL_114;
      }

LABEL_69:
      ++v21;
    }

    while (v17 != v21);
    v64 = [v16 countByEnumeratingWithState:&v113 objects:v126 count:16];
    v17 = v64;
  }

  while (v64);
LABEL_81:

  _getPrimaryProviderManager = [(BRCAccountsManager *)selfCopy _getPrimaryProviderManager];

  v66 = v119 + 5;
  v107[0] = v119[5];
  v8 = [_getPrimaryProviderManager br_getFPDomainsWithError:v107];
  objc_storeStrong(v66, v107[0]);

  if (v119[5])
  {
    v67 = brc_bread_crumbs();
    v68 = brc_default_log();
    if (os_log_type_enabled(v68, 0x90u))
    {
      [BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:];
    }

    v69 = v119[5];
    v5 = v69 == 0;
    v12 = v69;
    if (v69)
    {
      v70 = brc_bread_crumbs();
      v71 = brc_default_log();
      if (os_log_type_enabled(v71, 0x90u))
      {
        v89 = "(passed to caller)";
        *buf = 136315906;
        v128 = "[BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:]";
        v129 = 2080;
        if (!error)
        {
          v89 = "(ignored by caller)";
        }

        v130 = v89;
        v131 = 2112;
        v132 = v12;
        v133 = 2112;
        v134 = v70;
        _os_log_error_impl(&dword_223E7A000, v71, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      v72 = v12;
      *error = v12;
    }
  }

  else
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v73 = v8;
    v74 = [v73 countByEnumeratingWithState:&v103 objects:v124 count:16];
    if (v74)
    {
      v75 = *v104;
      while (2)
      {
        for (i = 0; i != v74; ++i)
        {
          if (*v104 != v75)
          {
            objc_enumerationMutation(v73);
          }

          v77 = *(*(&v103 + 1) + 8 * i);
          if ([v77 isReplicated])
          {
            LOBYTE(v125[0]) = 0;
            v78 = [MEMORY[0x277CFAE00] matchDomainWithAccountAndStampDomainIfNeeded:v77 withAccounts:accountsCopy persistDomain:v125];
            v79 = v78 == 0;

            if (v79)
            {
              if ([v77 isDataSeparatedDomain] & 1) != 0 || (objc_msgSend(v77, "isEnterpriseDomain"))
              {
                br_isCiconiaDomain2 = 1;
              }

              else
              {
                br_isCiconiaDomain2 = [v77 br_isCiconiaDomain];
              }

              v102[0] = MEMORY[0x277D85DD0];
              v102[1] = 3221225472;
              v102[2] = __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_62;
              v102[3] = &unk_278500DA0;
              v102[4] = v77;
              v102[5] = &v118;
              [_getPrimaryProviderManager br_removeDomain:v77 sync:br_isCiconiaDomain2 ^ 1u completionHandler:v102];
              v82 = v119[5];
              if (v82)
              {
                v83 = v82;
                v84 = brc_bread_crumbs();
                v85 = brc_default_log();
                if (os_log_type_enabled(v85, 0x90u))
                {
                  v90 = "(passed to caller)";
                  *buf = 136315906;
                  v128 = "[BRCAccountsManager _maintainExistingFileProviderDomainsWithAccounts:withError:]";
                  v129 = 2080;
                  if (!error)
                  {
                    v90 = "(ignored by caller)";
                  }

                  v130 = v90;
                  v131 = 2112;
                  v132 = v83;
                  v133 = 2112;
                  v134 = v84;
                  _os_log_error_impl(&dword_223E7A000, v85, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
                }

                if (error)
                {
                  v86 = v83;
                  *error = v83;
                }

                v5 = 0;
                goto LABEL_112;
              }
            }

            else if (LOBYTE(v125[0]) == 1)
            {
              personaIdentifier6 = [v77 personaIdentifier];
              v101 = _getPrimaryProviderManager;
              BRPerformWithPersonaAndError();
            }
          }
        }

        v74 = [v73 countByEnumeratingWithState:&v103 objects:v124 count:16];
        v5 = 1;
        if (v74)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v5 = 1;
    }

LABEL_112:
    v12 = v73;
    v8 = v73;
  }

  _getEnterpriseProviderManager = _getPrimaryProviderManager;
LABEL_114:

  _Block_object_dispose(&v118, 8);
LABEL_115:

  return v5;
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = _maintainExistingFileProviderDomainsWithAccounts_withError____personalPersona;
  _maintainExistingFileProviderDomainsWithAccounts_withError____personalPersona = v0;
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_59(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Garbage Collected domain %@ with error - %@%@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_60(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v8 = *(a1 + 32);
      *buf = 138412802;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Failed persisting the domain %@: %@%@", buf, 0x20u);
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_60_cold_1();
    }

    [*(a1 + 40) br_addDomain:? completionHandler:?];
  }
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_61(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Failed persisting the domain %@: %@%@", &v7, 0x20u);
    }
  }
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_62(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] Garbage Collected domain %@ with error - %@%@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_63(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v8 = *(a1 + 32);
      *buf = 138412802;
      v10 = v8;
      v11 = 2112;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Failed persisting the domain %@: %@%@", buf, 0x20u);
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_60_cold_1();
    }

    [*(a1 + 40) br_addDomain:? completionHandler:?];
  }
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_64(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      v6 = *(a1 + 32);
      v7 = 138412802;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      v11 = 2112;
      v12 = v4;
      _os_log_error_impl(&dword_223E7A000, v5, 0x90u, "[ERROR] Failed persisting the domain %@: %@%@", &v7, 0x20u);
    }
  }
}

- (void)_maintainExistingFileProviderDomainsIfNeededWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  maintainedExistingFPDomains = selfCopy->_maintainedExistingFPDomains;
  selfCopy->_maintainedExistingFPDomains = 1;
  objc_sync_exit(selfCopy);

  if (!maintainedExistingFPDomains)
  {
    v11 = 0;
    v7 = [(BRCAccountsManager *)selfCopy _maintainExistingFileProviderDomainsWithAccounts:accountsCopy withError:&v11];
    v8 = v11;
    if (!v7)
    {
      v9 = brc_bread_crumbs();
      v10 = brc_default_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountsManager _maintainExistingFileProviderDomainsIfNeededWithAccounts:];
      }
    }
  }
}

- (void)_scheduleExistingFileProviderDomainsMaintenanceWithAccounts:(id)accounts
{
  accountsCopy = accounts;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  maintainedExistingFPDomains = selfCopy->_maintainedExistingFPDomains;
  objc_sync_exit(selfCopy);

  if (!maintainedExistingFPDomains)
  {
    maintainFPDomainsQueue = selfCopy->_maintainFPDomainsQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __82__BRCAccountsManager__scheduleExistingFileProviderDomainsMaintenanceWithAccounts___block_invoke;
    v8[3] = &unk_2784FF478;
    v8[4] = selfCopy;
    v9 = accountsCopy;
    dispatch_async(maintainFPDomainsQueue, v8);
  }
}

void __82__BRCAccountsManager__scheduleExistingFileProviderDomainsMaintenanceWithAccounts___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v12 = 0;
  v3 = [v2 _waitUntilFileProviderIsReady:&v12];
  v4 = v12;
  if (v3)
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(v6 + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__BRCAccountsManager__scheduleExistingFileProviderDomainsMaintenanceWithAccounts___block_invoke_65;
    block[3] = &unk_2784FF478;
    block[4] = v6;
    v11 = v5;
    dispatch_sync(v7, block);
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      __82__BRCAccountsManager__scheduleExistingFileProviderDomainsMaintenanceWithAccounts___block_invoke_cold_1();
    }
  }
}

- (void)enumerateAccountHandlers:(id)handlers
{
  v27 = *MEMORY[0x277D85DE8];
  handlersCopy = handlers;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__42;
  v24 = __Block_byref_object_dispose__42;
  v25 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__BRCAccountsManager_enumerateAccountHandlers___block_invoke;
  block[3] = &unk_278502208;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(queue, block);
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = v21[5];
  v7 = [obj countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(obj);
        }

        acAccountID = [*(*(&v15 + 1) + 8 * i) acAccountID];
        v11 = [defaultStore accountWithIdentifier:acAccountID];

        br_personaIdentifier = [v11 br_personaIdentifier];
        v14 = handlersCopy;
        BRPerformWithPersonaAndError();
      }

      v7 = [obj countByEnumeratingWithState:&v15 objects:v26 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(&v20, 8);
}

void __47__BRCAccountsManager_enumerateAccountHandlers___block_invoke(uint64_t a1)
{
  obj = *(*(a1 + 32) + 8);
  objc_sync_enter(obj);
  v2 = [*(*(a1 + 32) + 8) allValues];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  objc_sync_exit(obj);
}

void __47__BRCAccountsManager_enumerateAccountHandlers___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __47__BRCAccountsManager_enumerateAccountHandlers___block_invoke_2_cold_1();
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(*(a1 + 40) + 16);
    v7 = *(a1 + 40);

    v6(v7, v5);
  }
}

- (void)enumerateAccountHandlerIfFinishedLoading:(id)loading
{
  if (self->_finishedLoadingAccounts)
  {
    [(BRCAccountsManager *)self enumerateAccountHandlers:loading];
  }
}

- (BOOL)_waitUntilFileProviderIsReady:(id *)ready
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = +[BRCFileProviderDaemonUtils sharedInstance];
  v14 = 0;
  [v4 waitForFPToBeReadyToAcceptXPCWithError:&v14];
  v5 = v14;
  v6 = [v5 br_isCloudDocsErrorCode:114];
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    if (!v5)
    {
      v7 = 0;
      v6 = 1;
      if (!ready)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (([v5 br_isPOSIXErrorCode:4] & 1) == 0)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        [BRCAccountsManager _waitUntilFileProviderIsReady:];
      }

      exit(1);
    }

    v7 = v5;
    v5 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, 0x90u))
    {
      v11 = "(passed to caller)";
      *buf = 136315906;
      v16 = "[BRCAccountsManager _waitUntilFileProviderIsReady:]";
      v17 = 2080;
      if (!ready)
      {
        v11 = "(ignored by caller)";
      }

      v18 = v11;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v5;
      _os_log_error_impl(&dword_223E7A000, v8, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
    }
  }

  if (ready)
  {
LABEL_8:
    v9 = v7;
    *ready = v7;
  }

LABEL_9:

  return v6;
}

- (void)createAndLoadSessionWithACAccountID:(id)d createBlock:(id)block
{
  dCopy = d;
  blockCopy = block;
  dispatch_assert_queue_V2(self->_queue);
  if (!dCopy)
  {
    [BRCAccountsManager createAndLoadSessionWithACAccountID:createBlock:];
  }

  v8 = +[BRCFileProviderDaemonUtils sharedInstance];
  [v8 enableFileProviderBoosting];

  v27 = 0;
  v9 = [(BRCAccountsManager *)self _waitUntilFileProviderIsReady:&v27];
  v10 = v27;
  if (v9)
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__42;
    v25 = __Block_byref_object_dispose__42;
    v26 = 0;
    defaultStore = [MEMORY[0x277CB8F48] defaultStore];
    v12 = [defaultStore accountWithIdentifier:dCopy];

    v13 = MEMORY[0x277CFAE80];
    br_personaIdentifier = [v12 br_personaIdentifier];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__BRCAccountsManager_createAndLoadSessionWithACAccountID_createBlock___block_invoke;
    v18[3] = &unk_278505B10;
    v20 = &v21;
    v19 = blockCopy;
    [v13 performWithPersonaID:br_personaIdentifier block:v18];

    v15 = self->_accountHandlersByACAccountID;
    objc_sync_enter(v15);
    [(NSMutableDictionary *)self->_accountHandlersByACAccountID setObject:v22[5] forKeyedSubscript:dCopy];
    objc_sync_exit(v15);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, 0x90u))
    {
      __82__BRCAccountsManager__scheduleExistingFileProviderDomainsMaintenanceWithAccounts___block_invoke_cold_1();
    }
  }
}

void __70__BRCAccountsManager_createAndLoadSessionWithACAccountID_createBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = brc_bread_crumbs();
    v3 = brc_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __70__BRCAccountsManager_createAndLoadSessionWithACAccountID_createBlock___block_invoke_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 40) = (*(*(a1 + 32) + 16))();

    MEMORY[0x2821F96F8]();
  }
}

void __73__BRCAccountsManager_waitForInitialAccountLoadingSynchronouslyIfPossible__block_invoke(uint64_t result, uint64_t a2)
{
  if ((*(*(result + 32) + 33) & 1) == 0)
  {
    __73__BRCAccountsManager_waitForInitialAccountLoadingSynchronouslyIfPossible__block_invoke_cold_1();
  }
}

- (BOOL)waitForAccountLoadingSynchronouslyIfPossible:(id)possible
{
  v21 = *MEMORY[0x277D85DE8];
  possibleCopy = possible;
  dispatch_assert_queue_not_V2(self->_queue);
  if (self->_finishedLoadingAccounts || self->_loadAccountsRequested)
  {
    goto LABEL_3;
  }

  v9 = +[BRCFileProviderDaemonUtils sharedInstance];
  boostFileProvider = [v9 boostFileProvider];

  if ((boostFileProvider & 1) == 0)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      v13 = "[WARNING] We were unsuccessful in boosting FP during the startup flow%@";
      goto LABEL_13;
    }

LABEL_14:

    v7 = 0;
    goto LABEL_15;
  }

  if (!self->_finishedLoadingAccounts && !self->_loadAccountsRequested)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v11;
      v13 = "[WARNING] We still aren't in a state where load accounts was requested%@";
LABEL_13:
      _os_log_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEFAULT, v13, &buf, 0xCu);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

LABEL_3:
  v5 = [(BRCAccountsManager *)self accountHandlerForACAccountID:possibleCopy];
  finishedLoading = [v5 finishedLoading];

  if (finishedLoading)
  {
    v7 = 1;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v19 = 0x2020000000;
    v20 = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__BRCAccountsManager_waitForAccountLoadingSynchronouslyIfPossible___block_invoke;
    block[3] = &unk_278500D08;
    p_buf = &buf;
    block[4] = self;
    v16 = possibleCopy;
    dispatch_sync(queue, block);
    v7 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

LABEL_15:

  return v7 & 1;
}

void __67__BRCAccountsManager_waitForAccountLoadingSynchronouslyIfPossible___block_invoke(uint64_t a1)
{
  v1 = a1 + 40;
  v2 = [*(a1 + 32) accountHandlerForACAccountID:*(a1 + 40)];
  *(*(*(v1 + 8) + 8) + 24) = [v2 finishedLoading];

  if ((*(*(*(v1 + 8) + 8) + 24) & 1) == 0)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __67__BRCAccountsManager_waitForAccountLoadingSynchronouslyIfPossible___block_invoke_cold_1();
    }
  }
}

- (id)accountHandlerForACAccountID:(id)d
{
  dCopy = d;
  v5 = self->_accountHandlersByACAccountID;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)self->_accountHandlersByACAccountID objectForKeyedSubscript:dCopy];
  objc_sync_exit(v5);

  return v6;
}

- (id)accountForPersona:(id)persona
{
  v3 = MEMORY[0x277CB8F48];
  personaCopy = persona;
  defaultStore = [v3 defaultStore];
  v6 = [defaultStore br_accountForPersona:personaCopy];

  return v6;
}

- (id)personaIdentifierForACAccountID:(id)d
{
  v3 = MEMORY[0x277CB8F48];
  dCopy = d;
  defaultStore = [v3 defaultStore];
  v6 = [defaultStore accountWithIdentifier:dCopy];

  br_personaIdentifier = [v6 br_personaIdentifier];

  return br_personaIdentifier;
}

- (id)_createAccountHandlerForAccountID:(id)d
{
  dCopy = d;
  v4 = [[BRCAccountHandler alloc] initWithACAccountID:dCopy];

  return v4;
}

- (id)getOrCreateAccountHandlerForACAccount:(id)account
{
  accountCopy = account;
  identifier = [accountCopy identifier];
  if (identifier)
  {
    v6 = MEMORY[0x277CFAE80];
    br_personaIdentifier = [accountCopy br_personaIdentifier];
    LOBYTE(v6) = [v6 currentPersonaMatchesID:br_personaIdentifier];

    if (v6)
    {
      v8 = self->_accountHandlersByACAccountID;
      objc_sync_enter(v8);
      v9 = [(NSMutableDictionary *)self->_accountHandlersByACAccountID objectForKeyedSubscript:identifier];

      if (v9)
      {
        v10 = [(NSMutableDictionary *)self->_accountHandlersByACAccountID objectForKeyedSubscript:identifier];
      }

      else
      {
        v10 = [(BRCAccountsManager *)self _createAccountHandlerForAccountID:identifier];
        [(NSMutableDictionary *)self->_accountHandlersByACAccountID setObject:v10 forKeyedSubscript:identifier];
      }

      objc_sync_exit(v8);

      goto LABEL_11;
    }

    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [BRCAccountsManager getOrCreateAccountHandlerForACAccount:];
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)createSessionWithACAccountID:(id)d dsid:(id)dsid completionHandler:(id)handler
{
  dCopy = d;
  dsidCopy = dsid;
  handlerCopy = handler;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  v12 = [defaultStore accountWithIdentifier:dCopy];

  maintainFPDomainsQueue = self->_maintainFPDomainsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke;
  block[3] = &unk_278502FF8;
  block[4] = self;
  v20 = dCopy;
  v21 = v12;
  v22 = dsidCopy;
  v23 = handlerCopy;
  v14 = handlerCopy;
  v15 = dsidCopy;
  v16 = v12;
  v17 = dCopy;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(maintainFPDomainsQueue, v18);
}

void __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  v8 = *(a1 + 32);
  v2 = *(v8 + 16);
  block[2] = __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke_2;
  block[3] = &unk_278502FF8;
  v3 = *(&v8 + 1);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v10 = v8;
  v11 = v6;
  v12 = *(a1 + 64);
  v7 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v2, v7);
}

void __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke_2(uint64_t a1)
{
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__42;
  v11[4] = __Block_byref_object_dispose__42;
  v12 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke_3;
  v4[3] = &unk_278505B38;
  v4[4] = v2;
  v5 = *(a1 + 48);
  v7 = v9;
  v6 = *(a1 + 56);
  v8 = v11;
  [v2 createAndLoadSessionWithACAccountID:v3 createBlock:v4];
  (*(*(a1 + 64) + 16))();

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
}

id __74__BRCAccountsManager_createSessionWithACAccountID_dsid_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) getOrCreateAccountHandlerForACAccount:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v2 createAccountSessionWithDSID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v5;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    [v2 startAndLoadAccountSynchronously:*(a1 + 40)];
  }

  return v2;
}

- (void)updateAccountDisplayName:(id)name completionHandler:(id)handler
{
  nameCopy = name;
  handlerCopy = handler;
  if (!nameCopy)
  {
    [BRCAccountsManager updateAccountDisplayName:completionHandler:];
  }

  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  [defaultStore invalidateAccountForPersonaCache];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BRCAccountsManager_updateAccountDisplayName_completionHandler___block_invoke;
  block[3] = &unk_2784FF5B8;
  v13 = nameCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = nameCopy;
  dispatch_sync(queue, block);
}

void __65__BRCAccountsManager_updateAccountDisplayName_completionHandler___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = a1[4];
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] Updating account %@%@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v17 = __Block_byref_object_copy__42;
  v18 = __Block_byref_object_dispose__42;
  v19 = 0;
  v5 = *(a1[5] + 8);
  objc_sync_enter(v5);
  v6 = [*(a1[5] + 8) objectForKeyedSubscript:a1[4]];
  objc_sync_exit(v5);

  v7 = [v6 session];
  v8 = [v7 isDataSeparated];

  if (v8)
  {
    v9 = [v6 session];
    v10 = [v9 personaIdentifier];
    v15 = v6;
    BRPerformWithPersonaAndError();

    v11 = v15;
  }

  else
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __65__BRCAccountsManager_updateAccountDisplayName_completionHandler___block_invoke_cold_1();
    }
  }

  (*(a1[6] + 16))(a1[6], *(*&buf[8] + 40), v13, v14);
  _Block_object_dispose(buf, 8);
}

void __65__BRCAccountsManager_updateAccountDisplayName_completionHandler___block_invoke_69(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v4 = [*(a1 + 32) session];
    [v4 fixFileProviderDomainDecorations];

    BRPostAccountTokenChangedNotification();
  }
}

- (BOOL)destroySessionWithACAccountID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [BRCAccountsManager destroySessionWithACAccountID:];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = dispatch_group_create();
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__BRCAccountsManager_destroySessionWithACAccountID___block_invoke;
  block[3] = &unk_278502B88;
  v11 = dCopy;
  selfCopy = self;
  v13 = &v14;
  v7 = dCopy;
  dispatch_sync(queue, block);
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  v8 = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __52__BRCAccountsManager_destroySessionWithACAccountID___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v14 = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_INFO, "[INFO] Logging out account %@%@", &v14, 0x16u);
  }

  v5 = *(*(a1 + 40) + 8);
  objc_sync_enter(v5);
  v6 = [*(*(a1 + 40) + 8) objectForKeyedSubscript:*(a1 + 32)];
  objc_sync_exit(v5);

  v7 = [v6 session];

  if (v7)
  {
    v8 = [v6 session];
    v9 = [v8 personaIdentifier];
  }

  else
  {
    v8 = [MEMORY[0x277CB8F48] defaultStore];
    v10 = [v8 accountWithIdentifier:*(a1 + 32)];
    v9 = [v10 br_personaIdentifier];
  }

  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) cleanupAccountDataForLoggedOutAccountWithPersona:v9];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v11 = *(*(a1 + 40) + 8);
    objc_sync_enter(v11);
    [*(*(a1 + 40) + 8) removeObjectForKey:*(a1 + 32)];
    objc_sync_exit(v11);

    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __52__BRCAccountsManager_destroySessionWithACAccountID___block_invoke_cold_2();
    }
  }

  else
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, 0x90u))
    {
      __52__BRCAccountsManager_destroySessionWithACAccountID___block_invoke_cold_1();
    }
  }
}

- (void)waitUntilDeviceIsUnlocked
{
  if (![(BRCAccountsManager *)self _isDeviceUnlocked])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v3 = dispatch_semaphore_create(0);
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.bird.wait-unlock", v5);

    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __47__BRCAccountsManager_waitUntilDeviceIsUnlocked__block_invoke;
    v27[3] = &unk_2784FF4A0;
    v7 = v6;
    v28 = v7;
    selfCopy = self;
    v8 = v3;
    v30 = v8;
    v9 = MEMORY[0x22AA4A310](v27);
    v10 = v32;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __47__BRCAccountsManager_waitUntilDeviceIsUnlocked__block_invoke_2;
    v24[3] = &unk_278505B60;
    v26 = &v31;
    v11 = v9;
    v25 = v11;
    v12 = v7;
    v13 = v24;
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    br_currentPersonaID = [mEMORY[0x277D77BF8] br_currentPersonaID];
    v16 = *MEMORY[0x277D28B30];

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __br_notify_register_dispatch_block_invoke_0;
    handler[3] = &unk_2784FF800;
    v17 = br_currentPersonaID;
    v36 = v17;
    v38 = v16;
    v18 = v13;
    v37 = v18;
    LODWORD(mEMORY[0x277D77BF8]) = notify_register_dispatch(v16, v10 + 6, v12, handler);

    if (mEMORY[0x277D77BF8])
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        [BRCAccountsManager waitUntilDeviceIsUnlocked];
      }
    }

    else
    {
      dispatch_async(v12, v11);
      dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        [BRCAccountsManager waitUntilDeviceIsUnlocked];
      }

      BRPostAccountTokenChangedNotification();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __47__BRCAccountsManager_waitUntilDeviceIsUnlocked__block_invoke_76;
      block[3] = &unk_278505B88;
      block[4] = &v31;
      dispatch_sync(v12, block);
    }

    _Block_object_dispose(&v31, 8);
  }
}

void __47__BRCAccountsManager_waitUntilDeviceIsUnlocked__block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(a1 + 32));
  if ([*(a1 + 40) _isDeviceUnlocked])
  {
    v2 = *(a1 + 48);

    dispatch_semaphore_signal(v2);
  }

  else
  {
    syslog(5, "Device is locked - waiting\n");
  }
}

uint64_t __47__BRCAccountsManager_waitUntilDeviceIsUnlocked__block_invoke_2(uint64_t result, int a2)
{
  if (*(*(*(result + 40) + 8) + 24) == a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __47__BRCAccountsManager_waitUntilDeviceIsUnlocked__block_invoke_76(uint64_t a1)
{
  result = notify_cancel(*(*(*(a1 + 32) + 8) + 24));
  *(*(*(a1 + 32) + 8) + 24) = 0;
  return result;
}

- (void)_createSyncBubbleTasksIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = self->_accountHandlersByACAccountID;
  objc_sync_enter(v3);
  allValues = [(NSMutableDictionary *)self->_accountHandlersByACAccountID allValues];
  objc_sync_exit(v3);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = allValues;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        session = [*(*(&v13 + 1) + 8 * v8) session];
        clientTruthWorkloop = [session clientTruthWorkloop];
        if (clientTruthWorkloop)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __55__BRCAccountsManager__createSyncBubbleTasksIfNecessary__block_invoke;
          block[3] = &unk_2784FF450;
          v12 = session;
          dispatch_async_and_wait(clientTruthWorkloop, block);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

void __55__BRCAccountsManager__createSyncBubbleTasksIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) enumeratePrivateClientZones:&__block_literal_global_79_0];
  [*(a1 + 32) enumerateSharedClientZones:&__block_literal_global_82];
  v2 = [*(a1 + 32) clientDB];
  [v2 flush];
}

- (void)uploadContent
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: [self isInSyncBubble]%@", v5, v6, v7, v8);
  }
}

- (void)willSwitchUser
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCAccountsManager willSwitchUser];
  }

  if (![(BRCAccountsManager *)self isInSyncBubble])
  {
    v5 = self->_accountHandlersByACAccountID;
    objc_sync_enter(v5);
    allValues = [(NSMutableDictionary *)self->_accountHandlersByACAccountID allValues];
    objc_sync_exit(v5);

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = allValues;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = *v14;
      do
      {
        v10 = 0;
        do
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v10++) jetsamCloudDocsApps];
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__BRCAccountsManager_willSwitchUser__block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_sync(queue, block);
  }
}

void __36__BRCAccountsManager_willSwitchUser__block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (*(v1 + 33) == 1)
  {
    if (!*(v1 + 40))
    {
      __36__BRCAccountsManager_willSwitchUser__block_invoke_cold_1(v2, &v4);
      v1 = v4;
    }

    [v1 _createSyncBubbleTasksIfNecessary];
    [*(*v2 + 40) end];
    v3 = *(*v2 + 40);
    *(*v2 + 40) = 0;
  }
}

- (BOOL)retrySyncBubbleLaterIfNeededWithError:(id)error
{
  errorCopy = error;
  if (-[BRCAccountsManager isInSyncBubble](self, "isInSyncBubble") && [errorCopy brc_shouldRetryLater])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __60__BRCAccountsManager_retrySyncBubbleLaterIfNeededWithError___block_invoke;
    v7[3] = &unk_2784FF478;
    v8 = errorCopy;
    selfCopy = self;
    if (retrySyncBubbleLaterIfNeededWithError__onceToken != -1)
    {
      dispatch_once(&retrySyncBubbleLaterIfNeededWithError__onceToken, v7);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __60__BRCAccountsManager_retrySyncBubbleLaterIfNeededWithError___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __60__BRCAccountsManager_retrySyncBubbleLaterIfNeededWithError___block_invoke_cold_1();
  }

  v4 = [MEMORY[0x277D77BF8] sharedManager];
  v5 = MEMORY[0x277CCACA8];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) domain];
  v8 = [v5 stringWithFormat:@"encountered error domain %@ code %ld", v7, objc_msgSend(*(a1 + 32), "code")];
  [v4 unregisterStakeHolder:v6 status:1 reason:v8];
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: !session%@", v5, v6, v7, v8);
  }
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_5(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] No domain to remove found for %@%@", v4, 0x16u);
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_cold_6(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_9_0(a1, a2, a3, 5.778e-34);
  _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] %@%@", v4, 0x16u);
}

void __71__BRCAccountsManager_cleanupAccountDataForLoggedOutAccountWithPersona___block_invoke_23_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) identifier];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_223E7A000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] Removed domain %@%@", v6, 0x16u);
}

void __34__BRCAccountsManager_loadAccounts__block_invoke_cold_2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] We got an error from account store, we can't continue our loading sequence%@", v1, 0xCu);
}

void __34__BRCAccountsManager_loadAccounts__block_invoke_40_cold_1()
{
  OUTLINED_FUNCTION_6_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __81__BRCAccountsManager__maintainExistingFileProviderDomainsWithAccounts_withError___block_invoke_60_cold_1()
{
  OUTLINED_FUNCTION_6_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Persisting domain %@%@");
}

- (void)_maintainExistingFileProviderDomainsIfNeededWithAccounts:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)createAndLoadSessionWithACAccountID:createBlock:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: acAccountID%@", v5, v6, v7, v8);
  }
}

void __73__BRCAccountsManager_waitForInitialAccountLoadingSynchronouslyIfPossible__block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: self->_finishedLoadingAccounts%@", v5, v6, v7, v8);
  }
}

- (void)updateAccountDisplayName:completionHandler:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: acAccountID%@", v5, v6, v7, v8);
  }
}

- (void)destroySessionWithACAccountID:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: acAccountID%@", v5, v6, v7, v8);
  }
}

void __52__BRCAccountsManager_destroySessionWithACAccountID___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Failed to destroy session during logout%@", v1, 0xCu);
}

void __36__BRCAccountsManager_willSwitchUser__block_invoke_cold_1(void *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_fault_impl(&dword_223E7A000, v5, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: self->_checkNeedsBubbleTask%@", &v6, 0xCu);
  }

  *a2 = *a1;
}

void __60__BRCAccountsManager_retrySyncBubbleLaterIfNeededWithError___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6_2(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Encountered an error forcing us to try to retry the sync bubble later - %@%@");
}

@end