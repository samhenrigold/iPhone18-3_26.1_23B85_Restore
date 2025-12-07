@interface DADAgentManager
+ (BOOL)_shouldAccount:(id)account syncWhenSyncingParentAccountWithID:(id)d;
+ (BOOL)wirelessPolicy:(id)policy isMorePermissiveThanPolicy:(id)thanPolicy;
+ (id)sharedManager;
- (BOOL)_clearOrphanedStoresInCalendarDatabase:(CalDatabase *)database eventAccountIds:(id)ids;
- (BOOL)_clearOrphanedSubscribedCalendars:(void *)calendars eventAccountIds:(id)ids;
- (BOOL)_hasDataclassWeCareAbout:(id)about;
- (BOOL)_systemMayNowBeReady;
- (BOOL)addPersistMonitoringAccountID:(id)d folderIDs:(id)ds clientID:(id)iD;
- (BOOL)clearPersistMonitoringAccountID:(id)d clientID:(id)iD;
- (BOOL)hasActiveAccounts;
- (BOOL)hasEASAccountConfigured;
- (BOOL)processFolderChange:(id)change forAccountWithID:(id)d completionBlock:(id)block;
- (BOOL)removePersistMonitoringAccountID:(id)d folderIDs:(id)ds clientID:(id)iD;
- (BOOL)resetCertWarningsForAccountWithId:(id)id andDataclasses:(int64_t)dataclasses;
- (BOOL)resumeMonitoringAccountID:(id)d folderIDs:(id)ds;
- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag forAccountID:(id)d;
- (BOOL)startMonitoringAccountID:(id)d folderIDs:(id)ds;
- (BOOL)stopMonitoringAccountID:(id)d folderIDs:(id)ds;
- (BOOL)suspendMonitoringAccountID:(id)d folderIDs:(id)ds;
- (BOOL)updateContentsOfFolders:(id)folders forAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (BOOL)updateFolderListForAccountID:(id)d andDataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested;
- (DADAgentManager)init;
- (NSArray)activeAgents;
- (id)_configFileForAgent:(id)agent;
- (id)accountWithAccountID:(id)d;
- (id)accountWithAccountID:(id)d andClassName:(id)name;
- (id)accountsProviderWithDBHelper:(id)helper;
- (id)activeAccountBundleIDs;
- (id)agentWithAccountID:(id)d;
- (id)agentsToSyncForAccountID:(id)d;
- (id)appleAccountsMatchingClass:(id)class errror:(id *)errror;
- (id)changeHistoryClerkWithDBHelper:(id)helper;
- (id)containerProviderWithDBHelper:(id)helper;
- (id)currentPolicyKeyForAccount:(id)account;
- (id)stateString;
- (unint64_t)disableMonitoringAgents;
- (void)_calDaysToSyncDidChange;
- (void)_cleanOrphanedTrafficLogFilesWithCurrentEventAccountIdentifiers:(id)identifiers;
- (void)_cleanUpOrphanedLogIfNeeded:(id)needed;
- (void)_clearOrphanedStoresAndTrafficLogFiles;
- (void)_deviceDidWake;
- (void)_deviceWillSleep;
- (void)_handleCellularDataUsageChangedNotification;
- (void)_loadAndStartMonitoringAgents;
- (void)_registerForCTDataUsageNotificaiton;
- (void)_resetMonitoringRequestsAndLoadAgents;
- (void)_sendAccountAnalytics;
- (void)_stopMonitoringAndSaveAgents;
- (void)dealloc;
- (void)disableActiveSync;
- (void)enableActiveSync;
- (void)enableMonitoringAgentsWithToken:(unint64_t)token;
- (void)getStatusReportDictsWithCompletionBlock:(id)block;
- (void)handleURLString:(id)string;
- (void)loadAgents;
- (void)processMeetingRequestDatas:(id)datas deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId callback:(id)callback;
- (void)registerForBuddy;
- (void)releaseAgents;
- (void)removePendingAccountSetup;
- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD;
- (void)requestPolicyUpdateForAccount:(id)account;
- (void)scheduleAgentStartOrStopBlock:(id)block;
@end

@implementation DADAgentManager

+ (id)sharedManager
{
  if (sharedManager_dispatchToken != -1)
  {
    +[DADAgentManager sharedManager];
  }

  v3 = sharedManager_sSharedDADAgentManager;

  return v3;
}

uint64_t __32__DADAgentManager_sharedManager__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedManager_sSharedDADAgentManager;
  sharedManager_sSharedDADAgentManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (DADAgentManager)init
{
  v21.receiver = self;
  v21.super_class = DADAgentManager;
  v2 = [(DADAgentManager *)&v21 init];
  v3 = v2;
  if (v2)
  {
    __RootDomainConnect = IORegisterForSystemPower(0, &v2->_pmPort, _devicePowerChanged, &v2->_pmNotifier);
    if (__RootDomainConnect)
    {
      RunLoopSource = IONotificationPortGetRunLoopSource(v3->_pmPort);
      v3->_pmRunLoopSource = RunLoopSource;
      if (RunLoopSource)
      {
        mEMORY[0x277D037D0] = [MEMORY[0x277D037D0] sharedRunLoop];
        getCFRunLoop = [mEMORY[0x277D037D0] getCFRunLoop];
        CFRunLoopAddSource(getCFRunLoop, v3->_pmRunLoopSource, *MEMORY[0x277CBF048]);

        v7 = DALoggingwithCategory();
        v8 = *(MEMORY[0x277D03988] + 6);
        if (os_log_type_enabled(v7, v8))
        {
          *v20 = 0;
          v9 = "Registered for wake notification";
LABEL_10:
          _os_log_impl(&dword_248524000, v7, v8, v9, v20, 2u);
        }
      }

      else
      {
        v7 = DALoggingwithCategory();
        v8 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v7, v8))
        {
          *v20 = 0;
          v9 = "IONotificationPortGetRunLoopSource returned NULL, can't register for wake notification";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 4);
      if (os_log_type_enabled(v7, v8))
      {
        *v20 = 0;
        v9 = "IORegisterForSystemPower returned MACH_PORT_NULL, can't register for wake notification";
        goto LABEL_10;
      }
    }

    v10 = objc_opt_new();
    watchedIDs = v3->_watchedIDs;
    v3->_watchedIDs = v10;

    v12 = objc_opt_new();
    disableMonitoringAgentsTokens = v3->_disableMonitoringAgentsTokens;
    v3->_disableMonitoringAgentsTokens = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("activeAgentsQueue", v14);
    activeAgentsQueue = v3->_activeAgentsQueue;
    v3->_activeAgentsQueue = v15;

    v17 = [[DADAgentStopStartController alloc] initWithDelegate:v3];
    startStopController = v3->_startStopController;
    v3->_startStopController = v17;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_pmRunLoopSource)
  {
    mEMORY[0x277D037D0] = [MEMORY[0x277D037D0] sharedRunLoop];
    getCFRunLoop = [mEMORY[0x277D037D0] getCFRunLoop];
    CFRunLoopRemoveSource(getCFRunLoop, self->_pmRunLoopSource, *MEMORY[0x277CBF048]);

    CFRunLoopSourceInvalidate(self->_pmRunLoopSource);
  }

  pmPort = self->_pmPort;
  if (pmPort)
  {
    IONotificationPortDestroy(pmPort);
  }

  IODeregisterForSystemPower(&self->_pmNotifier);
  IOServiceClose(__RootDomainConnect);
  ctServerConnection = self->_ctServerConnection;
  if (ctServerConnection)
  {
    CFRelease(ctServerConnection);
    self->_ctServerConnection = 0;
  }

  v7.receiver = self;
  v7.super_class = DADAgentManager;
  [(DADAgentManager *)&v7 dealloc];
}

- (NSArray)activeAgents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  activeAgentsQueue = self->_activeAgentsQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__DADAgentManager_activeAgents__block_invoke;
  v5[3] = &unk_278F1CD70;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(activeAgentsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __31__DADAgentManager_activeAgents__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)accountsProviderWithDBHelper:(id)helper
{
  v3 = MEMORY[0x277D03910];
  helperCopy = helper;
  useContactsFramework = [v3 useContactsFramework];
  v6 = MEMORY[0x277D03770];
  if (useContactsFramework)
  {
    contactStore = [helperCopy contactStore];

    v8 = [v6 providerWithContactStore:contactStore];
  }

  else
  {
    abDB = [helperCopy abDB];

    v8 = [v6 providerWithAddressBook:abDB];
  }

  return v8;
}

- (id)containerProviderWithDBHelper:(id)helper
{
  v3 = MEMORY[0x277D03910];
  helperCopy = helper;
  useContactsFramework = [v3 useContactsFramework];
  v6 = MEMORY[0x277D03778];
  if (useContactsFramework)
  {
    contactStore = [helperCopy contactStore];

    v8 = [v6 providerWithContactStore:contactStore];
  }

  else
  {
    abDB = [helperCopy abDB];

    v8 = [v6 providerWithAddressBook:abDB];
  }

  return v8;
}

- (id)changeHistoryClerkWithDBHelper:(id)helper
{
  v3 = MEMORY[0x277D03910];
  helperCopy = helper;
  if ([v3 useContactsFramework])
  {
    contactStore = [helperCopy contactStore];

    v6 = [DAChangeHistoryClerk clerkWithContactStore:contactStore];
  }

  else
  {
    abDB = [helperCopy abDB];

    v6 = [DAChangeHistoryClerk clerkWithAddressBook:abDB];
  }

  return v6;
}

- (id)agentWithAccountID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  activeAgents = [(DADAgentManager *)self activeAgents];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [activeAgents countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(activeAgents);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        account = [v11 account];
        accountID = [account accountID];
        v14 = [accountID isEqualToString:dCopy];

        if (v14)
        {
          v15 = v11;

          v8 = v15;
        }
      }

      v7 = [activeAgents countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)accountWithAccountID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  activeAgents = [(DADAgentManager *)self activeAgents];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [activeAgents countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    account = 0;
    v9 = 0;
    v10 = *v19;
    do
    {
      v11 = 0;
      v12 = account;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(activeAgents);
        }

        account = [*(*(&v18 + 1) + 8 * v11) account];

        accountID = [account accountID];
        v14 = [accountID isEqualToString:dCopy];

        if (v14)
        {
          v15 = account;

          v9 = v15;
        }

        ++v11;
        v12 = account;
      }

      while (v7 != v11);
      v7 = [activeAgents countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  else
  {
    account = 0;
    v9 = 0;
  }

  v16 = v9;

  return v9;
}

- (id)accountWithAccountID:(id)d andClassName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  NSClassFromString(nameCopy);
  activeAgents = [(DADAgentManager *)self activeAgents];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [activeAgents countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    account = 0;
    v11 = 0;
    v12 = *v21;
    while (1)
    {
      v13 = 0;
      v14 = account;
      do
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(activeAgents);
        }

        account = [*(*(&v20 + 1) + 8 * v13) account];

        accountID = [account accountID];
        if ([accountID isEqualToString:dCopy])
        {
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_10;
          }

          accountID = v11;
          v11 = account;
        }

LABEL_10:
        ++v13;
        v14 = account;
      }

      while (v9 != v13);
      v9 = [activeAgents countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (!v9)
      {
        goto LABEL_14;
      }
    }
  }

  account = 0;
  v11 = 0;
LABEL_14:
  v17 = v11;

  return v11;
}

- (id)_configFileForAgent:(id)agent
{
  agentCopy = agent;
  v4 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v5 = [v4 objectAtIndexedSubscript:0];

  v6 = [v5 stringByAppendingPathComponent:@"DataAccess"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:0];

  account = [agentCopy account];

  accountID = [account accountID];
  v10 = [v6 stringByAppendingPathComponent:accountID];

  return v10;
}

- (void)loadAgents
{
  v76 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = MEMORY[0x277D03988];
  type = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v3, type))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, type, "Triggering calendar migration if needed", buf, 2u);
  }

  if ((CalDatabaseMigrateIfNeededOutOfProcess() & 1) == 0)
  {
    v5 = DALoggingwithCategory();
    v6 = *(v4 + 3);
    if (os_log_type_enabled(v5, v6))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v5, v6, "Trigger calendar migration failed for some reason. Hope for the best?", buf, 2u);
    }
  }

  v7 = DALoggingwithCategory();
  if (os_log_type_enabled(v7, type))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v7, type, "Loading agents", buf, 2u);
  }

  if (loadAgents_onceToken != -1)
  {
    [DADAgentManager loadAgents];
  }

  [MEMORY[0x277D28490] reloadAccounts];
  v8 = MEMORY[0x277CF77E0];
  v9 = sharedDAAccountStore();
  [v8 ensureHolidayAccountExistsWithAccountStore:v9];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v44 = objc_opt_new();
  array = [MEMORY[0x277CBEB18] array];
  v48 = sharedDAAccountStore();
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [MEMORY[0x277D03970] leafAccountTypes];
  v46 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v46)
  {
    v45 = *v64;
    v10 = *(v4 + 6);
    v50 = *(v4 + 3);
    do
    {
      for (i = 0; i != v46; ++i)
      {
        if (*v64 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [v48 accountTypeWithAccountTypeIdentifier:*(*(&v63 + 1) + 8 * i)];
        if (v11)
        {
          v47 = v11;
          v12 = [v48 accountsWithAccountType:?];
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v59 objects:v74 count:16];
          if (v14)
          {
            v15 = *v60;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v60 != v15)
                {
                  objc_enumerationMutation(v13);
                }

                v17 = *(*(&v59 + 1) + 8 * j);
                mEMORY[0x277D03738] = [MEMORY[0x277D03738] sharedInstance];
                v19 = [mEMORY[0x277D03738] daemonAppropriateAccountClassForACAccount:v17];

                if ([(objc_class *)v19 shouldCreateAccountForBackingAccountInfo:v17])
                {
                  v20 = [[v19 alloc] initWithBackingAccountInfo:v17];
                  if (v20)
                  {
                    v21 = DALoggingwithCategory();
                    if (os_log_type_enabled(v21, type))
                    {
                      v22 = NSStringFromClass(v19);
                      *buf = 138412546;
                      v68 = v17;
                      v69 = 2114;
                      v70 = v22;
                      _os_log_impl(&dword_248524000, v21, type, "Creating an agent for account info %@ (%{public}@)", buf, 0x16u);
                    }

                    [array addObject:v20];
                  }

                  else
                  {
                    v24 = DALoggingwithCategory();
                    if (os_log_type_enabled(v24, v50))
                    {
                      v25 = NSStringFromClass(v19);
                      *buf = 138412546;
                      v68 = v17;
                      v69 = 2114;
                      v70 = v25;
                      _os_log_impl(&dword_248524000, v24, v50, "Not creating an agent for account info %@ (%{public}@), it refused to init itself", buf, 0x16u);
                    }
                  }
                }

                else
                {
                  v20 = DALoggingwithCategory();
                  if (os_log_type_enabled(v20, v10))
                  {
                    v23 = NSStringFromClass(v19);
                    *buf = 138412546;
                    v68 = v17;
                    v69 = 2114;
                    v70 = v23;
                    _os_log_impl(&dword_248524000, v20, v10, "Not creating an agent for account info %@ (%{public}@) because it should not be created", buf, 0x16u);
                  }
                }
              }

              v14 = [v13 countByEnumeratingWithState:&v59 objects:v74 count:16];
            }

            while (v14);
          }

          v11 = v47;
        }
      }

      v46 = [obj countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v46);
  }

  mEMORY[0x277D03788] = [MEMORY[0x277D03788] sharedKeychain];
  [mEMORY[0x277D03788] removePersistentCredentials];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v27 = array;
  v28 = [v27 countByEnumeratingWithState:&v55 objects:v73 count:16];
  if (v28)
  {
    v29 = *v56;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v56 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = *(*(&v55 + 1) + 8 * k);
        if ([v31 isDisabled])
        {
          v32 = DALoggingwithCategory();
          if (os_log_type_enabled(v32, type))
          {
            accountDescription = [v31 accountDescription];
            publicDescription = [v31 publicDescription];
            *buf = 138412546;
            v68 = accountDescription;
            v69 = 2114;
            v70 = publicDescription;
            _os_log_impl(&dword_248524000, v32, type, "Not loading an agent for account %@ (%{public}@), because it is disabled", buf, 0x16u);
          }
        }

        else
        {
          agentClass = [v31 agentClass];
          if (agentClass)
          {
            v32 = [[agentClass alloc] initWithAccount:v31];
            [v44 addObject:v32];
            v36 = DALoggingwithCategory();
            if (os_log_type_enabled(v36, type))
            {
              accountDescription2 = [v31 accountDescription];
              publicDescription2 = [v31 publicDescription];
              *buf = 138412802;
              v68 = v32;
              v69 = 2112;
              v70 = accountDescription2;
              v71 = 2114;
              v72 = publicDescription2;
              _os_log_impl(&dword_248524000, v36, type, "Loading up agent %@ for account %@ (%{public}@)", buf, 0x20u);
            }
          }

          else
          {
            v32 = DALoggingwithCategory();
            if (os_log_type_enabled(v32, type))
            {
              accountDescription3 = [v31 accountDescription];
              publicDescription3 = [v31 publicDescription];
              *buf = 138412546;
              v68 = accountDescription3;
              v69 = 2114;
              v70 = publicDescription3;
              _os_log_impl(&dword_248524000, v32, type, "Not loading an agent for account %@ (%{public}@), because agentClass is nil", buf, 0x16u);
            }
          }
        }
      }

      v28 = [v27 countByEnumeratingWithState:&v55 objects:v73 count:16];
    }

    while (v28);
  }

  if ([v44 count])
  {
    activeAgentsQueue = selfCopy->_activeAgentsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __29__DADAgentManager_loadAgents__block_invoke_36;
    block[3] = &unk_278F1CD98;
    block[4] = selfCopy;
    v54 = v44;
    dispatch_sync(activeAgentsQueue, block);
  }

  objc_sync_exit(selfCopy);
  [MEMORY[0x277D03760] startDailyAnalyticsReporter];
}

uint64_t __29__DADAgentManager_loadAgents__block_invoke_36(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)releaseAgents
{
  v15 = *MEMORY[0x277D85DE8];
  activeAgents = [(DADAgentManager *)self activeAgents];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [activeAgents countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(activeAgents);
        }

        [*(*(&v10 + 1) + 8 * v7++) shutdown];
      }

      while (v5 != v7);
      v5 = [activeAgents countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  activeAgentsQueue = self->_activeAgentsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__DADAgentManager_releaseAgents__block_invoke;
  block[3] = &unk_278F1CDC0;
  block[4] = self;
  dispatch_sync(activeAgentsQueue, block);
}

void __32__DADAgentManager_releaseAgents__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)_deviceWillSleep
{
  v17 = *MEMORY[0x277D85DE8];
  activeAgents = [(DADAgentManager *)self activeAgents];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [activeAgents countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(activeAgents);
        }

        account = [*(*(&v12 + 1) + 8 * i) account];
        [account deviceWillSleep];
      }

      v4 = [activeAgents countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v8, v9))
  {
    *v11 = 0;
    _os_log_impl(&dword_248524000, v8, v9, "Tearing down connection cache", v11, 2u);
  }

  CFURLConnectionInvalidateConnectionCache();
  v10 = DALoggingwithCategory();
  if (os_log_type_enabled(v10, v9))
  {
    *v11 = 0;
    _os_log_impl(&dword_248524000, v10, v9, "Tore down connection cache", v11, 2u);
  }
}

- (void)_deviceDidWake
{
  v13 = *MEMORY[0x277D85DE8];
  activeAgents = [(DADAgentManager *)self activeAgents];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [activeAgents countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(activeAgents);
        }

        account = [*(*(&v8 + 1) + 8 * v6) account];
        [account deviceDidWake];

        ++v6;
      }

      while (v4 != v6);
      v4 = [activeAgents countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)currentPolicyKeyForAccount:(id)account
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 2);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_248524000, v3, v4, "The dataaccessd does not support currentPolicyKeyForAccount method, which is for Exchange accounts", v6, 2u);
  }

  return 0;
}

- (void)requestPolicyUpdateForAccount:(id)account
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 2);
  if (os_log_type_enabled(v3, v4))
  {
    *v5 = 0;
    _os_log_impl(&dword_248524000, v3, v4, "The dataaccessd does not support requestPolicyUpdateForAccount method, which is for Exchange accounts", v5, 2u);
  }
}

- (BOOL)startMonitoringAccountID:(id)d folderIDs:(id)ds
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  [(DADAgentManager *)self activeAgents];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v32 = 0u;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  v9 = 0;
  v10 = 0;
  v11 = *v30;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v30 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v29 + 1) + 8 * i);
      account = [v13 account];
      accountID = [account accountID];
      v16 = [accountID isEqualToString:dCopy];

      if (v16)
      {
        account2 = [v13 account];
        v10 = [account2 monitorFoldersWithIDs:dsCopy];

        v9 = 1;
      }
    }

    v8 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  }

  while (v8);
  if ((v10 & 1) == 0)
  {
    if (v9)
    {
      v19 = DALoggingwithCategory();
      v20 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v19, v20))
      {
        *buf = 138412290;
        v34 = dsCopy;
        v21 = "Did not start monitoring folder ids %@, because the agent said nope";
        v22 = v19;
        v23 = v20;
        v24 = 12;
LABEL_17:
        _os_log_impl(&dword_248524000, v22, v23, v21, buf, v24);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

LABEL_15:
    v19 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v25))
    {
      *buf = 138412802;
      v34 = dsCopy;
      v35 = 2112;
      v36 = dCopy;
      v37 = 2112;
      v38 = obj;
      v21 = "Did not start monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@";
      v22 = v19;
      v23 = v25;
      v24 = 32;
      goto LABEL_17;
    }

LABEL_18:

    v18 = 0;
    goto LABEL_19;
  }

  v18 = 1;
LABEL_19:

  return v18;
}

- (BOOL)stopMonitoringAccountID:(id)d folderIDs:(id)ds
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  activeAgents = [(DADAgentManager *)self activeAgents];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [activeAgents countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v24;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(activeAgents);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      account = [v13 account];
      accountID = [account accountID];
      v16 = [accountID isEqualToString:dCopy];

      if (v16)
      {
        account2 = [v13 account];
        [account2 stopMonitoringFoldersWithIDs:dsCopy];

        v10 = 1;
      }
    }

    v9 = [activeAgents countByEnumeratingWithState:&v23 objects:v33 count:16];
  }

  while (v9);
  if (v10)
  {
    v18 = 1;
  }

  else
  {
LABEL_12:
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138412802;
      v28 = dsCopy;
      v29 = 2112;
      v30 = dCopy;
      v31 = 2112;
      v32 = activeAgents;
      _os_log_impl(&dword_248524000, v19, v20, "Did not stop monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)suspendMonitoringAccountID:(id)d folderIDs:(id)ds
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  activeAgents = [(DADAgentManager *)self activeAgents];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [activeAgents countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v24;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(activeAgents);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      account = [v13 account];
      accountID = [account accountID];
      v16 = [accountID isEqualToString:dCopy];

      if (v16)
      {
        account2 = [v13 account];
        [account2 suspendMonitoringFoldersWithIDs:dsCopy];

        v10 = 1;
      }
    }

    v9 = [activeAgents countByEnumeratingWithState:&v23 objects:v33 count:16];
  }

  while (v9);
  if (v10)
  {
    v18 = 1;
  }

  else
  {
LABEL_12:
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138412802;
      v28 = dsCopy;
      v29 = 2112;
      v30 = dCopy;
      v31 = 2112;
      v32 = activeAgents;
      _os_log_impl(&dword_248524000, v19, v20, "Did not suspend monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)resumeMonitoringAccountID:(id)d folderIDs:(id)ds
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  activeAgents = [(DADAgentManager *)self activeAgents];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [activeAgents countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (!v8)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v24;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v24 != v11)
      {
        objc_enumerationMutation(activeAgents);
      }

      v13 = *(*(&v23 + 1) + 8 * i);
      account = [v13 account];
      accountID = [account accountID];
      v16 = [accountID isEqualToString:dCopy];

      if (v16)
      {
        account2 = [v13 account];
        [account2 resumeMonitoringFoldersWithIDs:dsCopy];

        v10 = 1;
      }
    }

    v9 = [activeAgents countByEnumeratingWithState:&v23 objects:v33 count:16];
  }

  while (v9);
  if (v10)
  {
    v18 = 1;
  }

  else
  {
LABEL_12:
    v19 = DALoggingwithCategory();
    v20 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v19, v20))
    {
      *buf = 138412802;
      v28 = dsCopy;
      v29 = 2112;
      v30 = dCopy;
      v31 = 2112;
      v32 = activeAgents;
      _os_log_impl(&dword_248524000, v19, v20, "Did not resume monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)addPersistMonitoringAccountID:(id)d folderIDs:(id)ds clientID:(id)iD
{
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 2);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_248524000, v5, v6, "The dataaccessd does not support addPersistMonitoringAccountID method, which is for Exchange accounts", v8, 2u);
  }

  return 0;
}

- (BOOL)removePersistMonitoringAccountID:(id)d folderIDs:(id)ds clientID:(id)iD
{
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 2);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_248524000, v5, v6, "The dataaccessd does not support removePersistMonitoringAccountID method, which is for Exchange accounts", v8, 2u);
  }

  return 0;
}

- (BOOL)clearPersistMonitoringAccountID:(id)d clientID:(id)iD
{
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 2);
  if (os_log_type_enabled(v4, v5))
  {
    *v7 = 0;
    _os_log_impl(&dword_248524000, v4, v5, "The dataaccessd does not support clearPersistMonitoringAccountID method, which is for Exchange accounts", v7, 2u);
  }

  return 0;
}

- (BOOL)_clearOrphanedStoresInCalendarDatabase:(CalDatabase *)database eventAccountIds:(id)ids
{
  v52 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277D03988];
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v7))
  {
    *buf = 138543362;
    v49 = idsCopy;
    _os_log_impl(&dword_248524000, v5, v7, "ClearOrphanStores : Current DA CalDAV (events) Account IDs : %{public}@", buf, 0xCu);
  }

  v8 = CalDatabaseCopyOfAllStores();
  v42 = idsCopy;
  v40 = [idsCopy mutableCopy];
  v10 = 0;
  if ([v8 count])
  {
    v11 = 0;
    v12 = *(v6 + 3);
    *&v9 = 138543362;
    v37 = v9;
    v39 = v8;
    v13 = v40;
    while (1)
    {
      v14 = [v8 objectAtIndexedSubscript:{v11, v37}];

      Type = CalStoreGetType();
      if (Type != 1)
      {
        break;
      }

LABEL_35:
      if (++v11 >= [v8 count])
      {
        goto LABEL_38;
      }
    }

    v41 = v11;
    if (Type == 4)
    {
      v10 |= [(DADAgentManager *)self _clearOrphanedSubscribedCalendars:v14 eventAccountIds:v42];
    }

    else if (Type == 2)
    {
      v16 = CalStoreCopyExternalID();
      if (!v16)
      {
LABEL_19:

        goto LABEL_20;
      }

      if ([v13 containsObject:v16])
      {
        [v13 removeObject:v16];
        goto LABEL_19;
      }

      v17 = [v42 containsObject:v16];
      v18 = DALoggingwithCategory();
      v19 = os_log_type_enabled(v18, v12);
      if (v17)
      {
        if (v19)
        {
          *buf = v37;
          v49 = v16;
          v20 = v18;
          v21 = v12;
          v22 = "ClearOrphanStores : ACCOUNTDCOERROR Removing calendar store, as its account id %{public}@ is a duplicate";
          v23 = 12;
LABEL_17:
          _os_log_impl(&dword_248524000, v20, v21, v22, buf, v23);
        }
      }

      else if (v19)
      {
        *buf = 138543618;
        v49 = v16;
        v50 = 2114;
        v51 = v42;
        v20 = v18;
        v21 = v12;
        v22 = "ClearOrphanStores : ACCOUNTDCOERROR Removing calendar store, as its account id %{public}@ isn't one of the account ids I know about: %{public}@";
        v23 = 22;
        goto LABEL_17;
      }

      CalRemoveStore();
      v10 = 1;
      goto LABEL_19;
    }

LABEL_20:
    v24 = CalDatabaseCopyRegisteredClientIdentifiersForPersistentChangeTrackingInStore();
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v44;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v43 + 1) + 8 * i);
          if ([v30 hasPrefix:@"com.apple.dataaccessd"])
          {
            v31 = [v30 length];
            if (v31 <= [@"com.apple.dataaccessd" length] + 1 || (objc_msgSend(v30, "substringFromIndex:", objc_msgSend(@"com.apple.dataaccessd", "length") + 1), (v32 = objc_claimAutoreleasedReturnValue()) == 0) || (v33 = v32, v34 = objc_msgSend(v42, "containsObject:", v32), v33, (v34 & 1) == 0))
            {
              v35 = DALoggingwithCategory();
              if (os_log_type_enabled(v35, v12))
              {
                *buf = 138543618;
                v49 = v30;
                v50 = 2114;
                v51 = v42;
                _os_log_impl(&dword_248524000, v35, v12, "ClearOrphanStores : Removing Calendar change tracking client, as its change tracking identifier %{public}@ isn't one of the account ids I know about: %{public}@", buf, 0x16u);
              }

              CalRemoveClientForPersistentChangeTracking();
              v10 = 1;
            }
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v43 objects:v47 count:16];
      }

      while (v27);
    }

    v8 = v39;
    v13 = v40;
    v11 = v41;
    goto LABEL_35;
  }

  v13 = v40;
LABEL_38:

  return v10 & 1;
}

- (BOOL)_clearOrphanedSubscribedCalendars:(void *)calendars eventAccountIds:(id)ids
{
  v52 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  calendarsCopy = calendars;
  v6 = CalStoreCopyCalendars();
  v7 = objc_opt_new();
  v32 = [v6 count];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (!v8)
  {
    v38 = 0;
    v10 = 0;
    goto LABEL_27;
  }

  v9 = v8;
  v38 = 0;
  v10 = 0;
  v11 = *v40;
  v12 = *(MEMORY[0x277D03988] + 6);
  type = *(MEMORY[0x277D03988] + 3);
  v33 = *(MEMORY[0x277D03988] + 4);
  v37 = v7;
  do
  {
    v13 = 0;
    v34 = v9;
    do
    {
      if (*v40 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v39 + 1) + 8 * v13);
      v15 = CalCalendarCopySubCalAccountID();
      if (v15 && ([idsCopy containsObject:v15] & 1) != 0)
      {
        goto LABEL_12;
      }

      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, v12))
      {
        *buf = 138543618;
        v44 = v15;
        v45 = 2114;
        v46 = idsCopy;
        _os_log_impl(&dword_248524000, v16, v12, "Removing subscribed calendar, as it's account id %{public}@ isn't one of the account ids I know about: %{public}@", buf, 0x16u);
      }

      CalRemoveCalendar();
      ++v38;
      if (v15)
      {
        v10 = 1;
LABEL_12:
        v17 = [v7 objectForKeyedSubscript:{v15, calendarsCopy}];

        if (v17)
        {
          v18 = v12;
          v19 = v11;
          v20 = idsCopy;
          UID = CalCalendarGetUID();
          if (UID >= CalCalendarGetUID())
          {
            v22 = v14;
          }

          else
          {
            v22 = v17;
          }

          v23 = CalCalendarCopyTitle();
          v24 = DALoggingwithCategory();
          if (os_log_type_enabled(v24, type))
          {
            v25 = CalCalendarGetUID();
            v26 = CalCalendarGetUID();
            *buf = 138413058;
            v44 = v23;
            v45 = 2114;
            v46 = v15;
            v47 = 1024;
            v48 = v25;
            v49 = 1024;
            v50 = v26;
            _os_log_impl(&dword_248524000, v24, type, "Removing subscribed calendar %@, as there are two calendars with the same UID for account ID %{public}@. Keeping %i, removing %i", buf, 0x22u);
          }

          CalRemoveCalendar();
          v7 = v37;
          ++v38;
          [v37 setObject:v22 forKeyedSubscript:v15];

          v10 = 1;
          idsCopy = v20;
          v11 = v19;
          v12 = v18;
          v9 = v34;
        }

        else
        {
          [v7 setObject:v14 forKeyedSubscript:v15];
        }

        goto LABEL_23;
      }

      v27 = CalCalendarCopyTitle();
      v28 = CalCalendarCopyTitle();
      v29 = DALoggingwithCategory();
      if (os_log_type_enabled(v29, v33))
      {
        *buf = 138412546;
        v44 = v27;
        v45 = 2112;
        v46 = v28;
        _os_log_impl(&dword_248524000, v29, v33, "Ignoring calendar in subscribed calendar store without an account ID, %@ (external_id=%@)", buf, 0x16u);
      }

      v10 = 1;
      v7 = v37;
LABEL_23:

      ++v13;
    }

    while (v9 != v13);
    v9 = [obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  }

  while (v9);
LABEL_27:

  if (v32 == v38)
  {
    CalRemoveStore();
    v10 = 1;
  }

  return v10 & 1;
}

- (id)appleAccountsMatchingClass:(id)class errror:(id *)errror
{
  v28 = *MEMORY[0x277D85DE8];
  classCopy = class;
  v6 = sharedDAAccountStore();
  v24 = 0;
  v7 = [v6 aa_appleAccountsWithError:&v24];
  v8 = v24;

  if (v7 || !v8)
  {
    array = [MEMORY[0x277CBEB18] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v12 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          if ([v16 aa_isAccountClass:{classCopy, v20}])
          {
            [array addObject:v16];
          }
        }

        v13 = [v9 countByEnumeratingWithState:&v20 objects:v27 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v9 = DALoggingwithCategory();
    v10 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v10))
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_248524000, v9, v10, "AppleAccounts returned an error while trying fetch accounts: %@", buf, 0xCu);
    }

    array = 0;
  }

  if (errror)
  {
    v17 = v8;
    *errror = v8;
  }

  v18 = [array copy];

  return v18;
}

- (void)_clearOrphanedStoresAndTrafficLogFiles
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"DADAgentManager.m" lineNumber:886 description:{@"When clearing orphaned stores, we have an account with no accountID.  That's bad.  account: %@", a3}];
}

- (void)_cleanOrphanedTrafficLogFilesWithCurrentEventAccountIdentifiers:(id)identifiers
{
  v41[1] = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v3 = DACustomLogDirectory();
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  v41[0] = *MEMORY[0x277CBE7B0];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:1];
  v37 = 0;
  v7 = [defaultManager contentsOfDirectoryAtURL:v5 includingPropertiesForKeys:v6 options:0 error:&v37];
  v8 = v37;

  if (v7)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v26 = v8;
      v27 = v7;
      v28 = defaultManager;
      v29 = v3;
      v12 = @"CalDAVHTTPTraffic.com.apple.remindd.";
      v13 = *v34;
      v14 = @"-latest";
      v31 = v9;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          v16 = v14;
          if (*v34 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          path = [v17 path];
          lastPathComponent = [path lastPathComponent];

          v14 = v16;
          if ([lastPathComponent hasPrefix:@"CalDAVHTTPTraffic."] && (objc_msgSend(lastPathComponent, "hasPrefix:", v12) & 1) == 0)
          {
            if ([lastPathComponent hasPrefix:@"CalDAVHTTPTraffic.com.apple.dataaccess.dataaccessd."])
            {
              [(DADAgentManager *)self _cleanUpOrphanedLogIfNeeded:v17];
            }

            else
            {
              v20 = v12;
              v21 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"._"];
              v22 = [lastPathComponent componentsSeparatedByCharactersInSet:v21];

              if ([v22 count] >= 2)
              {
                v23 = [v22 objectAtIndexedSubscript:1];
                if ([v23 hasSuffix:v16])
                {
                  v24 = [v23 substringToIndex:{objc_msgSend(v23, "length") - -[__CFString length](v16, "length")}];

                  v23 = v24;
                }

                if (([identifiersCopy containsObject:v23] & 1) == 0)
                {
                  [(DADAgentManager *)self _cleanUpOrphanedLogIfNeeded:v17];
                }
              }

              v12 = v20;
              v9 = v31;
              v14 = v16;
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v11);
      defaultManager = v28;
      v3 = v29;
      v8 = v26;
      v7 = v27;
    }
  }

  else
  {
    v9 = DALoggingwithCategory();
    v25 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v9, v25))
    {
      *buf = 138412290;
      v40 = v8;
      _os_log_impl(&dword_248524000, v9, v25, "Failed to list log directory when trying to clean up oprhaned logs: %@", buf, 0xCu);
    }
  }
}

- (void)_cleanUpOrphanedLogIfNeeded:(id)needed
{
  v25 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [neededCopy path];
  lastPathComponent = [path lastPathComponent];

  v20 = 0;
  v7 = *MEMORY[0x277CBE7B0];
  v19 = 0;
  v8 = [neededCopy getResourceValue:&v20 forKey:v7 error:&v19];
  v9 = v20;
  v10 = v19;
  if ((v8 & 1) == 0)
  {
    date = DALoggingwithCategory();
    v17 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(date, v17))
    {
      *buf = 138543618;
      v22 = lastPathComponent;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_248524000, date, v17, "Failed to get last modified date for traffic log file %{public}@: %@", buf, 0x16u);
    }

    goto LABEL_9;
  }

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:v9];
  if (fabs(v12) <= 604800.0)
  {
LABEL_9:
    v14 = v10;
    goto LABEL_10;
  }

  v18 = v10;
  v13 = [defaultManager removeItemAtURL:neededCopy error:&v18];
  v14 = v18;

  if ((v13 & 1) == 0)
  {
    v15 = DALoggingwithCategory();
    v16 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v15, v16))
    {
      *buf = 138543618;
      v22 = lastPathComponent;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_248524000, v15, v16, "Failed to remove orphaned log file %{public}@: %@", buf, 0x16u);
    }
  }

LABEL_10:
}

- (BOOL)_systemMayNowBeReady
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_startAgentsWhenSystemReadyBlock)
  {
    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v12, v13))
    {
      *v25 = 0;
      v14 = "DAAgentManager: NO startAgentWhenSystemReadyBlock defined. This will not load any agents";
      v15 = v25;
      goto LABEL_19;
    }

LABEL_20:

LABEL_21:
    v16 = 0;
    goto LABEL_23;
  }

  v3 = MKBDeviceUnlockedSinceBoot();
  v4 = BYSetupAssistantNeedsToRun();
  isRunningAsSetupUser = [MEMORY[0x277CF7850] isRunningAsSetupUser];
  v6 = isRunningAsSetupUser;
  if (v3 == 1)
  {
    v7 = isRunningAsSetupUser;
  }

  else
  {
    v7 = 1;
  }

  if ((v7 | v4))
  {
    if (v3 != 1)
    {
      v8 = DALoggingwithCategory();
      v9 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 0;
        _os_log_impl(&dword_248524000, v8, v9, "Can't start yet, device is still locked", buf, 2u);
      }
    }

    if (v4)
    {
      v10 = DALoggingwithCategory();
      v11 = *(MEMORY[0x277D03988] + 5);
      if (os_log_type_enabled(v10, v11))
      {
        *v27 = 0;
        _os_log_impl(&dword_248524000, v10, v11, "Can't start yet, device is still in buddy", v27, 2u);
      }
    }

    if (!v6)
    {
      goto LABEL_21;
    }

    v12 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v12, v13))
    {
      v26 = 0;
      v14 = "Refusing to load agents because we are running as the setup user";
      v15 = &v26;
LABEL_19:
      _os_log_impl(&dword_248524000, v12, v13, v14, v15, 2u);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v16 = MEMORY[0x24C1D1770](selfCopy->_startAgentsWhenSystemReadyBlock);
  startAgentsWhenSystemReadyBlock = selfCopy->_startAgentsWhenSystemReadyBlock;
  selfCopy->_startAgentsWhenSystemReadyBlock = 0;

LABEL_23:
  objc_sync_exit(selfCopy);

  if (v16)
  {
    [MEMORY[0x277CF77C0] removeObserver:selfCopy name:*MEMORY[0x277D28B28]];
    selfCopy->_registeredForBuddy = 0;
    [MEMORY[0x277CF77C0] removeObserver:selfCopy name:@"com.apple.purplebuddy.setupdone"];
    v18 = DALoggingwithCategory();
    v19 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v18, v19))
    {
      *v24 = 0;
      _os_log_impl(&dword_248524000, v18, v19, "DAAgentManager: System Ready Calling Load Agents Block", v24, 2u);
    }

    v16[2](v16);
  }

  else
  {
    v20 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v20, v21))
    {
      *v23 = 0;
      _os_log_impl(&dword_248524000, v20, v21, "DAAgentManager: System Not Yet Ready. We are Not Loading Agents", v23, 2u);
    }
  }

  return v16 != 0;
}

- (void)_resetMonitoringRequestsAndLoadAgents
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_248524000, v3, v4, "DAAgentManager: Clearing disableMonitoringAgentsTokens and Loading Agents", v6, 2u);
  }

  [(DADAgentManager *)self disableMonitoringAgents];
  disableMonitoringAgentsTokens = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  [disableMonitoringAgentsTokens removeAllObjects];

  [(DADAgentStopStartController *)self->_startStopController reset];
  [(DADAgentManager *)self _loadAndStartMonitoringAgents];
}

- (void)_calDaysToSyncDidChange
{
  v26 = *MEMORY[0x277D85DE8];
  activeAgents = [(DADAgentManager *)self activeAgents];
  v3 = objc_opt_new();
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    transactionId = [v3 transactionId];
    *buf = 138543362;
    v25 = transactionId;
    _os_log_impl(&dword_248524000, v4, v5, "DATransaction starting, ID: %{public}@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = activeAgents;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v13 = v12;
          v14 = dataaccess_get_global_queue();
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __42__DADAgentManager__calDaysToSyncDidChange__block_invoke;
          v16[3] = &unk_278F1CD98;
          v17 = v13;
          v18 = v3;
          v15 = v13;
          dispatch_async(v14, v16);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)_registerForCTDataUsageNotificaiton
{
  v17 = *MEMORY[0x277D85DE8];
  if (!self->_CTCellularUsagePolicyNotificationQ)
  {
    v3 = dispatch_queue_create("com.apple.dataaccess.ctdatapolicychangeq", 0);
    CTCellularUsagePolicyNotificationQ = self->_CTCellularUsagePolicyNotificationQ;
    self->_CTCellularUsagePolicyNotificationQ = v3;
  }

  if (!self->_ctServerConnection)
  {
    v5 = _CTServerConnectionCreateOnTargetQueue();
    self->_ctServerConnection = v5;
    if (v5)
    {
      v6 = _CTServerConnectionRegisterForNotification();
      if (v6)
      {
        v7 = DALoggingwithCategory();
        v8 = *(MEMORY[0x277D03988] + 3);
        if (os_log_type_enabled(v7, v8))
        {
          v11 = 138412802;
          v12 = @"kCTPerAppNetworkDataAccessPolicyChangedNotification";
          v13 = 1024;
          v14 = v6;
          v15 = 1024;
          v16 = HIDWORD(v6);
          _os_log_impl(&dword_248524000, v7, v8, "Failed to register CT server notification %@ (domain: %d error: %d).", &v11, 0x18u);
        }

        CFRelease(self->_ctServerConnection);
        self->_ctServerConnection = 0;
      }
    }

    else
    {
      v9 = DALoggingwithCategory();
      v10 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v9, v10))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_248524000, v9, v10, "Failed to create CT server connection", &v11, 2u);
      }
    }
  }
}

void __54__DADAgentManager__registerForCTDataUsageNotificaiton__block_invoke(int a1, CFStringRef theString1)
{
  if (CFStringCompare(theString1, *MEMORY[0x277CC3B50], 0) == kCFCompareEqualTo)
  {
    v2 = +[DADMain sharedMain];
    [v2 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:&__block_literal_global_84];
  }
}

void __54__DADAgentManager__registerForCTDataUsageNotificaiton__block_invoke_2()
{
  v0 = +[DADAgentManager sharedManager];
  [v0 _handleCellularDataUsageChangedNotification];
}

- (void)_handleCellularDataUsageChangedNotification
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, v4, "Received cellular data usage changed notification. Checking if a refresh is required.", buf, 2u);
  }

  v5 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  activeAgents = [(DADAgentManager *)self activeAgents];
  v7 = [activeAgents countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v48;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v48 != v9)
        {
          objc_enumerationMutation(activeAgents);
        }

        account = [*(*(&v47 + 1) + 8 * i) account];
        onBehalfOfBundleIdentifier = [account onBehalfOfBundleIdentifier];
        [v5 addObject:onBehalfOfBundleIdentifier];
      }

      v8 = [activeAgents countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v8);
  }

  v36 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v37 = objc_opt_new();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v5;
  v13 = [obj countByEnumeratingWithState:&v43 objects:v56 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v44;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v42 = 0;
        _CTServerConnectionCopyCellularUsagePolicy();
      }

      v14 = [obj countByEnumeratingWithState:&v43 objects:v56 count:16];
    }

    while (v14);
  }

  objc_storeStrong(&self->_wirelessPolicies, v36);
  if ([v37 count])
  {
    [DAReachability recordError:0 forHost:0];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    activeAgents2 = [(DADAgentManager *)self activeAgents];
    v18 = [activeAgents2 countByEnumeratingWithState:&v38 objects:v55 count:16];
    if (v18)
    {
      v20 = v18;
      v21 = *v39;
      type = *(MEMORY[0x277D03988] + 5);
      *&v19 = 138543618;
      v33 = v19;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(activeAgents2);
          }

          v23 = *(*(&v38 + 1) + 8 * k);
          account2 = [v23 account];
          onBehalfOfBundleIdentifier2 = [account2 onBehalfOfBundleIdentifier];

          if ([v37 containsObject:onBehalfOfBundleIdentifier2])
          {
            v26 = activeAgents2;
            v27 = DALoggingwithCategory();
            if (os_log_type_enabled(v27, type))
            {
              account3 = [v23 account];
              accountID = [account3 accountID];
              *buf = v33;
              v52 = accountID;
              v53 = 2114;
              v54 = onBehalfOfBundleIdentifier2;
              _os_log_impl(&dword_248524000, v27, type, "Refreshing account %{public}@ because wireless data use is now allowed for %{public}@ and might not have been before.", buf, 0x16u);
            }

            account4 = [v23 account];
            accountID2 = [account4 accountID];
            account5 = [v23 account];
            -[DADAgentManager updateContentsOfAllFoldersForAccountID:andDataclasses:isUserRequested:](self, "updateContentsOfAllFoldersForAccountID:andDataclasses:isUserRequested:", accountID2, [account5 enabledDataclassesBitmask], 0);

            activeAgents2 = v26;
          }
        }

        v20 = [activeAgents2 countByEnumeratingWithState:&v38 objects:v55 count:16];
      }

      while (v20);
    }
  }

  else
  {
    activeAgents2 = DALoggingwithCategory();
    if (os_log_type_enabled(activeAgents2, v4))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, activeAgents2, v4, "Wireless data usage policy changes do not affect any existing agents; no refreshes will be done.", buf, 2u);
    }
  }
}

+ (BOOL)wirelessPolicy:(id)policy isMorePermissiveThanPolicy:(id)thanPolicy
{
  policyCopy = policy;
  thanPolicyCopy = thanPolicy;
  v7 = thanPolicyCopy;
  if (policyCopy)
  {
    if (thanPolicyCopy)
    {
      v8 = *MEMORY[0x277CC3988];
      v9 = [thanPolicyCopy objectForKeyedSubscript:*MEMORY[0x277CC3988]];
      v10 = *MEMORY[0x277CC4368];
      v11 = [v7 objectForKeyedSubscript:*MEMORY[0x277CC4368]];
    }

    else
    {
      v11 = *MEMORY[0x277CC3998];
      v9 = v11;
      v8 = *MEMORY[0x277CC3988];
      v10 = *MEMORY[0x277CC4368];
    }

    v13 = v11;
    v14 = [policyCopy objectForKeyedSubscript:v8];
    v15 = [policyCopy objectForKeyedSubscript:v10];
    v16 = *MEMORY[0x277CC3990];
    if ([v14 isEqualToString:*MEMORY[0x277CC3990]])
    {
      v17 = [v9 isEqualToString:v16] ^ 1;
    }

    else
    {
      LOBYTE(v17) = 0;
    }

    if ([v15 isEqualToString:v16])
    {
      v18 = [v13 isEqualToString:v16] ^ 1;
    }

    else
    {
      LOBYTE(v18) = 0;
    }

    v12 = v17 | v18;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (void)_loadAndStartMonitoringAgents
{
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__DADAgentManager__loadAndStartMonitoringAgents__block_invoke;
  v10[3] = &unk_278F1CE28;
  objc_copyWeak(&v11, &location);
  v3 = MEMORY[0x24C1D1770](v10);
  startAgentsWhenSystemReadyBlock = self->_startAgentsWhenSystemReadyBlock;
  self->_startAgentsWhenSystemReadyBlock = v3;

  if ([(DADAgentManager *)self _systemMayNowBeReady])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      *v9 = 0;
      _os_log_impl(&dword_248524000, v5, v6, "DAAgentManager: NO startAgentWhenSystemReadyBlock defined. This will not load any agents", v9, 2u);
    }
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      *v9 = 0;
      _os_log_impl(&dword_248524000, v7, v8, "DAAgentManager: System Not Yet Ready. We will Register for BuddyFinished and KeyBagLock status Notification", v9, 2u);
    }

    [MEMORY[0x277CF77C0] addObserver:self selector:sel__systemMayNowBeReady name:*MEMORY[0x277D28B28]];
    [(DADAgentManager *)self registerForBuddy];
    [(DADAgentManager *)self _systemMayNowBeReady];
  }

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __48__DADAgentManager__loadAndStartMonitoringAgents__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DALoggingwithCategory();
  v3 = MEMORY[0x277D03988];
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v2, v4, "Loading our agents", buf, 2u);
  }

  v5 = CFURLCacheCopySharedURLCache();
  if (v5)
  {
    v6 = v5;
    v7 = DALoggingwithCategory();
    v8 = *(v3 + 7);
    if (os_log_type_enabled(v7, v8))
    {
      *buf = 0;
      _os_log_impl(&dword_248524000, v7, v8, "Removing CFURLCache entries", buf, 2u);
    }

    CFURLCacheRemoveAllCachedResponses();
    CFRelease(v6);
  }

  [MEMORY[0x277D037D8] resetSyncStatusIfNecessaryForStoresOfType:-3];
  [WeakRetained loadAgents];
  [WeakRetained _clearOrphanedStoresAndTrafficLogFiles];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [WeakRetained activeAgents];
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = [v14 account];
        if ([v15 keychainAccessibilityType] == 2)
        {
          v16 = [v15 password];
        }

        [v14 startMonitoring];
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v11);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, *MEMORY[0x277D038C0], WeakRetained, 0, 1uLL);
  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(v18, *MEMORY[0x277D03718], WeakRetained, 0, 1uLL);
  v19 = dataaccess_get_global_queue();
  xpc_set_event_stream_handler("com.apple.notifyd.matching", v19, &__block_literal_global_94);

  v20 = +[DARefreshManager sharedManager];
  [v20 establishAllApsConnections];

  [WeakRetained _registerForCTDataUsageNotificaiton];
  v21 = DALoggingwithCategory();
  if (os_log_type_enabled(v21, v4))
  {
    v22 = [WeakRetained activeAgents];
    *buf = 138412290;
    v29 = v22;
    _os_log_impl(&dword_248524000, v21, v4, "Agents loaded and monitoring.  They are %@", buf, 0xCu);
  }

  v23 = [MEMORY[0x277CCAB98] defaultCenter];
  [v23 postNotificationName:@"DADAgentsStartedNotification" object:0];
}

void __48__DADAgentManager__loadAndStartMonitoringAgents__block_invoke_91(int a1, xpc_object_t xdict)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430])}];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v10 = 138543362;
    v11 = v2;
    _os_log_impl(&dword_248524000, v3, v4, "XPC: Received darwin notification: %{public}@", &v10, 0xCu);
  }

  if ([v2 isEqualToString:@"PCPreferencesDidChangeNotification"])
  {
    v5 = DALoggingwithCategory();
    if (os_log_type_enabled(v5, v4))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_248524000, v5, v4, "XPC: Received PCPreferencesDidChangeNotification due to user change", &v10, 2u);
    }

    v6 = +[DARefreshManager sharedManager];
    [v6 pushPreferenceDidChange];
  }

  else if ([v2 isEqualToString:*MEMORY[0x277CF7120]])
  {
    v7 = DALoggingwithCategory();
    if (os_log_type_enabled(v7, v4))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_248524000, v7, v4, "XPC: Received CDBPreferences_Notification_kCalPreferredDaysToSyncKey", &v10, 2u);
    }

    v6 = +[DADAgentManager sharedManager];
    [v6 _calDaysToSyncDidChange];
  }

  else if ([v2 isEqualToString:@"com.apple.dataaccess.checkHolidayCalendarAccount"])
  {
    v8 = DALoggingwithCategory();
    if (os_log_type_enabled(v8, v4))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_248524000, v8, v4, "XPC: Received com.apple.dataaccess.checkHolidayCalendarAccount", &v10, 2u);
    }

    v9 = MEMORY[0x277CF77E0];
    v6 = sharedDAAccountStore();
    [v9 ensureHolidayAccountExistsWithAccountStore:v6];
  }

  else
  {
    v6 = [MEMORY[0x277D037A0] sharedDBWatcher];
    [v6 didReceiveDarwinNotification:v2];
  }
}

- (void)registerForBuddy
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v3, v4, "REGISTER FOR BUDDY", buf, 2u);
  }

  if (!self->_registeredForBuddy)
  {
    self->_registeredForBuddy = 1;
    [MEMORY[0x277CF77C0] addObserver:self selector:sel__resetMonitoringRequestsAndLoadAgents name:@"com.apple.purplebuddy.setupdone"];
  }

  v5 = +[DADMain sharedMain];
  [v5 boostConnectedActivityPriority];

  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v4))
  {
    *v7 = 0;
    _os_log_impl(&dword_248524000, v6, v4, "EXITING REGISTER FOR BUDDY", v7, 2u);
  }
}

- (void)_stopMonitoringAndSaveAgents
{
  v37 = *MEMORY[0x277D85DE8];
  if (self->_startAgentsWhenSystemReadyBlock)
  {
    [MEMORY[0x277CF77C0] removeObserver:self name:*MEMORY[0x277D28B28]];
    self->_registeredForBuddy = 0;
    [MEMORY[0x277CF77C0] removeObserver:self name:@"com.apple.purplebuddy.setupdone"];
    startAgentsWhenSystemReadyBlock = self->_startAgentsWhenSystemReadyBlock;
    if (startAgentsWhenSystemReadyBlock)
    {
      self->_startAgentsWhenSystemReadyBlock = 0;
    }
  }

  dispatch_suspend(gDADOperationQueue);
  activeAgents = [(DADAgentManager *)self activeAgents];
  v5 = [activeAgents mutableCopy];
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v7))
  {
    *buf = 138412290;
    v33 = v5;
    _os_log_impl(&dword_248524000, v6, v7, "Agents awaiting shut down are %@", buf, 0xCu);
  }

  v8 = DALoggingwithCategory();
  if (os_log_type_enabled(v8, v7))
  {
    *buf = 138412290;
    v33 = activeAgents;
    _os_log_impl(&dword_248524000, v8, v7, "Stopping our agents (which are %@)", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = activeAgents;
  v9 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = DALoggingwithCategory();
        if (os_log_type_enabled(v14, v7))
        {
          *buf = 138412290;
          v33 = v13;
          _os_log_impl(&dword_248524000, v14, v7, "Stopping agent %@", buf, 0xCu);
        }

        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __47__DADAgentManager__stopMonitoringAndSaveAgents__block_invoke;
        v26[3] = &unk_278F1CE50;
        v27 = v5;
        [v13 requestAgentStopMonitoringWithCompletionBlock:v26];
      }

      v10 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v10);
  }

  if ([v5 count])
  {
    v15 = objc_autoreleasePoolPush();
    if ([v5 count])
    {
      v16 = *MEMORY[0x277CBF058];
      do
      {
        v17 = objc_autoreleasePoolPush();
        v18 = DALoggingwithCategory();
        if (os_log_type_enabled(v18, v7))
        {
          v19 = [v5 count];
          *buf = 134218242;
          v33 = v19;
          v34 = 2112;
          v35 = v5;
          _os_log_impl(&dword_248524000, v18, v7, "Still waiting for %lu agents to shut down.  Spinning a run loop. Outstanding agents are %@", buf, 0x16u);
        }

        v20 = CFRunLoopRunInMode(v16, 1.0, 1u);
        objc_autoreleasePoolPop(v17);
      }

      while ([v5 count] && (v20 - 3) < 0xFFFFFFFE);
    }

    objc_autoreleasePoolPop(v15);
    v21 = DALoggingwithCategory();
    if (os_log_type_enabled(v21, v7))
    {
      v22 = [v5 count];
      *buf = 134217984;
      v33 = v22;
      _os_log_impl(&dword_248524000, v21, v7, "Run Loop finished.  Active Agent count is now %ld.", buf, 0xCu);
    }
  }

  [(DADAgentManager *)self releaseAgents];
  v23 = DALoggingwithCategory();
  if (os_log_type_enabled(v23, v7))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v23, v7, "Agents stopped and saved", buf, 2u);
  }

  dispatch_resume(gDADOperationQueue);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"DADAgentsStoppedNotification" object:0];
}

void __47__DADAgentManager__stopMonitoringAndSaveAgents__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_248524000, v4, v5, "Agent %@ has stopped monitoring", &v8, 0xCu);
  }

  [*(a1 + 32) removeObject:v3];
  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = [*(a1 + 32) count];
    v8 = 134217984;
    v9 = v7;
    _os_log_impl(&dword_248524000, v6, v5, "agentsAwaitingShutdown count is now %lu", &v8, 0xCu);
  }
}

- (void)_sendAccountAnalytics
{
  v18 = *MEMORY[0x277D85DE8];
  if (AnalyticsIsEventUsed())
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    activeAgents = [(DADAgentManager *)self activeAgents];
    v4 = [activeAgents countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(activeAgents);
          }

          account = [*(*(&v11 + 1) + 8 * v7) account];
          v15 = @"type";
          accountTypeIdentifier = [account accountTypeIdentifier];
          v16 = accountTypeIdentifier;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];

          AnalyticsSendEvent();
          ++v7;
        }

        while (v5 != v7);
        v5 = [activeAgents countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v5);
    }
  }
}

- (void)enableMonitoringAgentsWithToken:(unint64_t)token
{
  v18 = *MEMORY[0x277D85DE8];
  disableMonitoringAgentsTokens = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v6 = [disableMonitoringAgentsTokens count];

  disableMonitoringAgentsTokens2 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:token];
  [disableMonitoringAgentsTokens2 removeObjectForKey:v8];

  disableMonitoringAgentsTokens3 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v10 = [disableMonitoringAgentsTokens3 count];

  v11 = DALoggingwithCategory();
  v12 = v11;
  if (v10 == v6)
  {
    v13 = *(MEMORY[0x277D03988] + 4);
    if (os_log_type_enabled(v11, v13))
    {
      v16 = 67109120;
      tokenCopy = token;
      _os_log_impl(&dword_248524000, v12, v13, "Ignoring call to enableMonitoringAgentsWithToken: with unrecognized token %d", &v16, 8u);
    }
  }

  else
  {
    v14 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v11, v14))
    {
      v16 = 67109120;
      tokenCopy = v10;
      _os_log_impl(&dword_248524000, v12, v14, "DADAgentManager asked to enableMonitoringAgents. New count = %d", &v16, 8u);
    }

    if (!v10)
    {
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v14))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_248524000, v15, v14, "DADAgentManager disableMonitoringAgents reached 0. Start Loading Agents..", &v16, 2u);
      }

      [(DADAgentManager *)self _loadAndStartMonitoringAgents];
      [(DADAgentManager *)self _sendAccountAnalytics];
    }
  }
}

- (unint64_t)disableMonitoringAgents
{
  v17 = *MEMORY[0x277D85DE8];
  nextDisableMonitoringAgentsToken = [(DADAgentManager *)self nextDisableMonitoringAgentsToken];
  [(DADAgentManager *)self setNextDisableMonitoringAgentsToken:nextDisableMonitoringAgentsToken + 1];
  v4 = [objc_alloc(MEMORY[0x277D037F0]) initWithLabel:@"disableMonitoringAgents"];
  v5 = DALoggingwithCategory();
  v6 = MEMORY[0x277D03988];
  v7 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v5, v7))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&dword_248524000, v5, v7, "DATransaction starting, ID: disableMonitoringAgents", v16, 2u);
  }

  disableMonitoringAgentsTokens = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:nextDisableMonitoringAgentsToken + 1];
  [disableMonitoringAgentsTokens setObject:v4 forKeyedSubscript:v9];

  disableMonitoringAgentsTokens2 = [(DADAgentManager *)self disableMonitoringAgentsTokens];
  v11 = [disableMonitoringAgentsTokens2 count];

  v12 = DALoggingwithCategory();
  v13 = *(v6 + 5);
  if (os_log_type_enabled(v12, v13))
  {
    v16[0] = 67109120;
    v16[1] = v11;
    _os_log_impl(&dword_248524000, v12, v13, "DADAgentManager asked to disableMonitoringAgents. New count = %d", v16, 8u);
  }

  if (v11 == 1)
  {
    v14 = DALoggingwithCategory();
    if (os_log_type_enabled(v14, v13))
    {
      LOWORD(v16[0]) = 0;
      _os_log_impl(&dword_248524000, v14, v13, "DADAgentManager disableMonitoringAgents reached 1. Stop Loading Agents..", v16, 2u);
    }

    [(DADAgentManager *)self _stopMonitoringAndSaveAgents];
  }

  return nextDisableMonitoringAgentsToken + 1;
}

- (void)scheduleAgentStartOrStopBlock:(id)block
{
  blockCopy = block;
  v4 = +[DADMain sharedMain];
  [v4 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:blockCopy];
}

- (BOOL)updateFolderListForAccountID:(id)d andDataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  foldersCopy = folders;
  v23 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [(DADAgentManager *)self agentsToSyncForAccountID:d, 0];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        account = [v15 account];
        if ([account enabledForAnyDADataclasses:dataclasses])
        {
          [v15 refreshFolderListRequireChangedFolders:foldersCopy isUserRequested:requestedCopy];
          v12 = 1;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

- (BOOL)updateContentsOfFolders:(id)folders forAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v25 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [(DADAgentManager *)self agentsToSyncForAccountID:d, 0];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        account = [v17 account];
        if ([account enabledForAnyDADataclasses:dataclasses])
        {
          [v17 syncFolderIDs:foldersCopy forDataclasses:dataclasses isUserRequested:requestedCopy];
          v14 = 1;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

- (id)agentsToSyncForAccountID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v25 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v5 = [dCopy isEqualToString:*MEMORY[0x277D03880]];
  activeAgents = [(DADAgentManager *)self activeAgents];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [activeAgents countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      v24 = v8;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(activeAgents);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        account = [v11 account];
        v13 = account;
        if (v5)
        {
          if ([account isSubscribedCalendarAccount])
          {
            backingAccountInfo = [v13 backingAccountInfo];
            [backingAccountInfo parentAccountIdentifier];
            v15 = v9;
            v16 = v5;
            v17 = dCopy;
            v19 = v18 = activeAgents;
            v20 = [v19 length];

            activeAgents = v18;
            dCopy = v17;
            v5 = v16;
            v9 = v15;
            v8 = v24;

            if (!v20)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          accountID = [account accountID];
          v22 = [accountID isEqualToString:dCopy];

          if ((v22 & 1) != 0 || [objc_opt_class() _shouldAccount:v13 syncWhenSyncingParentAccountWithID:dCopy])
          {
LABEL_12:
            [v25 addObject:v11];
          }
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [activeAgents countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  return v25;
}

+ (BOOL)_shouldAccount:(id)account syncWhenSyncingParentAccountWithID:(id)d
{
  accountCopy = account;
  dCopy = d;
  backingAccountInfo = [accountCopy backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];
  identifier = [parentAccount identifier];
  v10 = [identifier isEqualToString:dCopy];

  if (v10)
  {
    if ([accountCopy isDelegateAccount])
    {
      isSubscribedCalendarAccount = 1;
    }

    else
    {
      isSubscribedCalendarAccount = [accountCopy isSubscribedCalendarAccount];
    }
  }

  else
  {
    isSubscribedCalendarAccount = 0;
  }

  return isSubscribedCalendarAccount;
}

- (id)activeAccountBundleIDs
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  activeAgents = [(DADAgentManager *)self activeAgents];
  v5 = [v3 initWithCapacity:{objc_msgSend(activeAgents, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  activeAgents2 = [(DADAgentManager *)self activeAgents];
  v7 = [activeAgents2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(activeAgents2);
        }

        account = [*(*(&v14 + 1) + 8 * i) account];
        onBehalfOfBundleIdentifier = [account onBehalfOfBundleIdentifier];
        [v5 addObject:onBehalfOfBundleIdentifier];
      }

      v8 = [activeAgents2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)hasEASAccountConfigured
{
  v27 = *MEMORY[0x277D85DE8];
  [(DADAgentManager *)self activeAgents];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v2 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v2)
  {
    v3 = v2;
    v19 = *v21;
    v4 = *MEMORY[0x277CB8C50];
    v5 = *MEMORY[0x277CB8C00];
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        account = [v7 account];
        accountTypeIdentifier = [account accountTypeIdentifier];
        if ([accountTypeIdentifier isEqualToString:v4])
        {

LABEL_13:
          v14 = DALoggingwithCategory();
          v15 = *(MEMORY[0x277D03988] + 6);
          if (os_log_type_enabled(v14, v15))
          {
            account2 = [v7 account];
            *buf = 138412290;
            v25 = account2;
            _os_log_impl(&dword_248524000, v14, v15, "Found an EAS Account %@", buf, 0xCu);
          }

          v13 = 1;
          goto LABEL_16;
        }

        account3 = [v7 account];
        accountTypeIdentifier2 = [account3 accountTypeIdentifier];
        v12 = [accountTypeIdentifier2 isEqualToString:v5];

        if (v12)
        {
          goto LABEL_13;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
      v13 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_16:

  return v13;
}

- (void)processMeetingRequestDatas:(id)datas deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId callback:(id)callback
{
  v38 = *MEMORY[0x277D85DE8];
  datasCopy = datas;
  clearCopy = clear;
  softClearCopy = softClear;
  idCopy = id;
  withIdCopy = withId;
  callbackCopy = callback;
  [(DADAgentManager *)self activeAgents];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = v36 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        account = [v21 account];
        accountID = [account accountID];
        v24 = [accountID isEqualToString:withIdCopy];

        if (v24)
        {
          v26 = clearCopy;
          v25 = datasCopy;
          v28 = idCopy;
          v27 = softClearCopy;
          [v21 processMeetingRequestDatas:datasCopy deliveryIdsToClear:clearCopy deliveryIdsToSoftClear:softClearCopy inFolderWithId:idCopy callback:callbackCopy];

          goto LABEL_11;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  callbackCopy[2](callbackCopy, 0);
  v26 = clearCopy;
  v25 = datasCopy;
  v28 = idCopy;
  v27 = softClearCopy;
LABEL_11:
}

- (BOOL)resetCertWarningsForAccountWithId:(id)id andDataclasses:(int64_t)dataclasses
{
  v23 = *MEMORY[0x277D85DE8];
  idCopy = id;
  [(DADAgentManager *)self activeAgents];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v21 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    v11 = 1;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        account = [*(*(&v18 + 1) + 8 * i) account];
        v14 = account;
        if (idCopy)
        {
          accountID = [account accountID];
          v16 = [accountID isEqualToString:idCopy];

          if (v16)
          {
            if ([v14 enabledForAnyDADataclasses:dataclasses])
            {
              LOBYTE(v11) = v11 & [v14 resetCertWarnings];
            }

            goto LABEL_18;
          }
        }

        else if ([account enabledForAnyDADataclasses:dataclasses])
        {
          v11 &= [v14 resetCertWarnings];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v11) = 1;
  }

LABEL_18:

  return v11 & 1;
}

- (BOOL)setFolderIdsThatExternalClientsCareAboutAdded:(id)added deleted:(id)deleted foldersTag:(id)tag forAccountID:(id)d
{
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    *v9 = 0;
    _os_log_impl(&dword_248524000, v6, v7, "The dataaccessd does not support setFolderIdsThatExternalClientsCareAboutAdded method, which is for Exchange accounts", v9, 2u);
  }

  return 0;
}

- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD
{
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v6, v7))
  {
    *v8 = 0;
    _os_log_impl(&dword_248524000, v6, v7, "The dataaccessd does not support reportFolderItemsSyncSuccess method, which is for Exchange accounts", v8, 2u);
  }
}

- (id)stateString
{
  v30 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  [(DADAgentManager *)selfCopy activeAgents];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v3 = v26 = 0u;
  v4 = [(__CFString *)v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v4)
  {
    v13 = &stru_285AC0920;
    v8 = v3;
    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0;
  v7 = *v26;
  v8 = &stru_285AC0920;
  do
  {
    v9 = 0;
    v10 = v6;
    do
    {
      if (*v26 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v6 = *(*(&v25 + 1) + 8 * v9);

      stateString = [v6 stateString];
      if (stateString)
      {
        v12 = [(__CFString *)v8 stringByAppendingString:stateString];

        v8 = [v12 stringByAppendingString:@"=======\n\n"];
      }

      else
      {
        ++v5;
      }

      ++v9;
      v10 = v6;
    }

    while (v4 != v9);
    v4 = [(__CFString *)v3 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v4);

  if (v5)
  {
    v13 = [(__CFString *)v8 stringByAppendingFormat:@"(Skipped %lu agents without interesting state)\n\n", v5];
LABEL_14:

    goto LABEL_16;
  }

  v13 = v8;
LABEL_16:
  mEMORY[0x277D03790] = [MEMORY[0x277D03790] sharedGateKeeper];
  stateString2 = [mEMORY[0x277D03790] stateString];

  if (stateString2)
  {
    v16 = [(__CFString *)v13 stringByAppendingString:stateString2];

    v13 = v16;
  }

  mEMORY[0x277D037B0] = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
  stateString3 = [mEMORY[0x277D037B0] stateString];

  if (stateString3)
  {
    v19 = [(__CFString *)v13 stringByAppendingString:stateString3];

    v13 = v19;
  }

  disableMonitoringAgentsTokens = [(DADAgentManager *)obj disableMonitoringAgentsTokens];
  v21 = [disableMonitoringAgentsTokens count];

  if (v21)
  {
    v22 = [(__CFString *)v13 stringByAppendingFormat:@"Outstanding shutdown tokens: %lu\n\n", v21];

    v13 = v22;
  }

  objc_sync_exit(obj);

  return v13;
}

- (void)handleURLString:(id)string
{
  if (string)
  {
    v4 = MEMORY[0x277CBEBC0];
    stringCopy = string;
    v9 = [[v4 alloc] initWithString:stringCopy];

    if (v9)
    {
      v6 = objc_alloc(MEMORY[0x277CB8F58]);
      v7 = [v6 initWithIdentifier:*MEMORY[0x277CB8D10] description:0];
      mEMORY[0x277D03738] = [MEMORY[0x277D03738] sharedInstance];
      [mEMORY[0x277D03738] loadDaemonBundleForACAccountType:v7];

      [(DADAgentManager *)self handleWebcalURL:v9];
    }
  }
}

- (BOOL)processFolderChange:(id)change forAccountWithID:(id)d completionBlock:(id)block
{
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    *v8 = 0;
    _os_log_impl(&dword_248524000, v5, v6, "The dataaccessd does not support processFolderChange method, which is for Exchange accounts", v8, 2u);
  }

  return 0;
}

- (void)getStatusReportDictsWithCompletionBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  array = [MEMORY[0x277CBEB18] array];
  mEMORY[0x277D03768] = [MEMORY[0x277D03768] sharedBabysitter];
  [(DADAgentManager *)self activeAgents];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v37 = 0u;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        account = [v9 account];
        statusReport = [account statusReport];

        if (statusReport)
        {
          account2 = [v9 account];
          v13 = objc_opt_respondsToSelector();
          account3 = [v9 account];
          v15 = account3;
          if (v13)
          {
            [account3 waiterID];
          }

          else
          {
            [account3 accountID];
          }
          v16 = ;

          [statusReport setSyncingAllowed:{objc_msgSend(mEMORY[0x277D03768], "accountWithIDShouldContinue:", v16)}];
          account4 = [v9 account];
          protocolVersion = [account4 protocolVersion];
          [statusReport setProtocolVersion:protocolVersion];

          [array addObject:statusReport];
        }

        account5 = [v9 account];
        [account5 resetStatusReport];
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v6);
  }

  if ([array count])
  {
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(array, "count")}];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v21 = array;
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation];
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v20 = 0;
  }

  blockCopy[2](blockCopy, v20);
}

- (BOOL)_hasDataclassWeCareAbout:(id)about
{
  v3 = _hasDataclassWeCareAbout__onceToken;
  aboutCopy = about;
  if (v3 != -1)
  {
    [DADAgentManager _hasDataclassWeCareAbout:];
  }

  v5 = [aboutCopy intersectsSet:_hasDataclassWeCareAbout__dataclassesWeCareAbout];

  return v5;
}

uint64_t __44__DADAgentManager__hasDataclassWeCareAbout___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  v1 = [v0 initWithObjects:{*MEMORY[0x277CB9108], *MEMORY[0x277CB9110], *MEMORY[0x277CB90F0], *MEMORY[0x277CB9150], *MEMORY[0x277CB9178], 0}];
  v2 = _hasDataclassWeCareAbout__dataclassesWeCareAbout;
  _hasDataclassWeCareAbout__dataclassesWeCareAbout = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (void)removePendingAccountSetup
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"DADAgentManager.m" lineNumber:1930 description:@"Somebody isn't maintaining their account setup correctly"];

  *a4 = *a3;
}

- (BOOL)hasActiveAccounts
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = sharedDAAccountStore();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  leafAccountTypes = [MEMORY[0x277D03970] leafAccountTypes];
  v5 = [leafAccountTypes countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v22 = leafAccountTypes;
    v20 = *v28;
    do
    {
      v8 = 0;
      v21 = v6;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(leafAccountTypes);
        }

        v9 = [v3 accountTypeWithAccountTypeIdentifier:*(*(&v27 + 1) + 8 * v8)];
        if (v9)
        {
          v10 = [v3 accountsWithAccountType:v9];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v24;
            while (2)
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v24 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                enabledDataclasses = [*(*(&v23 + 1) + 8 * i) enabledDataclasses];
                v17 = [(DADAgentManager *)self _hasDataclassWeCareAbout:enabledDataclasses];

                if (v17)
                {

                  v18 = 1;
                  leafAccountTypes = v22;
                  goto LABEL_21;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v23 objects:v31 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v6 = v21;
          leafAccountTypes = v22;
          v7 = v20;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [leafAccountTypes countByEnumeratingWithState:&v27 objects:v32 count:16];
      v18 = 0;
    }

    while (v6);
  }

  else
  {
    v18 = 0;
  }

LABEL_21:

  return v18;
}

- (void)enableActiveSync
{
  v9 = *MEMORY[0x277D85DE8];
  active = launchdActiveSyncPath();
  v3 = open(active, 512, 256);
  if (v3 == -1)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *__error();
      *buf = 67109120;
      v8 = v6;
      _os_log_impl(&dword_248524000, v4, v5, "unable to signal launchd to keep dataaccessd alive: errno %d", buf, 8u);
    }
  }

  else
  {

    close(v3);
  }
}

- (void)disableActiveSync
{
  v8 = *MEMORY[0x277D85DE8];
  active = launchdActiveSyncPath();
  v3 = unlink(active);
  if (v3 && (v3 != -1 || *__error() != 2))
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *__error();
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_248524000, v4, v5, "unable to cleanup launchd semaphore so that dataaccessd can be pressured exit: errno %d", v7, 8u);
    }
  }
}

@end