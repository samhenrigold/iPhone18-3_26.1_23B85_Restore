@interface ESDAgentManager
+ (id)sharedManager;
- (BOOL)_clearOrphanedStoresInCalendarDatabase:(CalDatabase *)database eventAccountIds:(id)ids toDoAccountIds:(id)accountIds;
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
- (BOOL)updateContentsOfAllFoldersForAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (BOOL)updateContentsOfFolders:(id)folders forAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
- (BOOL)updateFolderListForAccountID:(id)d andDataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested;
- (ESDAgentManager)init;
- (NSArray)activeAgents;
- (id)_accountInfoPath;
- (id)_configFileForAgent:(id)agent;
- (id)_phoneVersion;
- (id)accountWithAccountID:(id)d;
- (id)accountWithAccountID:(id)d andClassName:(id)name;
- (id)accountsProviderWithDBHelper:(id)helper;
- (id)activeAccountBundleIDs;
- (id)agentWithAccountID:(id)d;
- (id)changeHistoryClerkWithDBHelper:(id)helper;
- (id)currentPolicyKeyForAccount:(id)account;
- (id)stateString;
- (unint64_t)disableMonitoringAgents;
- (void)_addAccountAggdEntries;
- (void)_calDaysToSyncDidChange;
- (void)_clearOrphanedStores;
- (void)_deviceDidWake;
- (void)_deviceWillSleep;
- (void)_handleCellularDataUsageChangedNotification;
- (void)_loadAndStartExchangeMonitoringAgents;
- (void)_registerForCTDataUsageNotificaiton;
- (void)_resetMonitoringRequestsAndLoadAgents;
- (void)_stopMonitoringAndSaveAgents;
- (void)cleanupLaunchdSemaphore;
- (void)dealloc;
- (void)disableActiveSync;
- (void)disableDaemon;
- (void)enableActiveSync;
- (void)enableDaemon;
- (void)enableMonitoringAgentsWithToken:(unint64_t)token;
- (void)getStatusReportDictsWithCompletionBlock:(id)block;
- (void)loadAgents;
- (void)loadExchangeAgents;
- (void)processMeetingRequestDatas:(id)datas deliveryIdsToClear:(id)clear deliveryIdsToSoftClear:(id)softClear inFolderWithId:(id)id forAccountWithId:(id)withId callback:(id)callback;
- (void)registerForBuddy;
- (void)removePendingAccountSetup;
- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD;
- (void)requestPolicyUpdateForAccount:(id)account;
- (void)saveAndReleaseAgents;
@end

@implementation ESDAgentManager

+ (id)sharedManager
{
  if (sharedManager_dispatchToken != -1)
  {
    +[ESDAgentManager sharedManager];
  }

  v3 = sharedManager_sSharedESDAgentManager;

  return v3;
}

uint64_t __32__ESDAgentManager_sharedManager__block_invoke()
{
  sharedManager_sSharedESDAgentManager = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (ESDAgentManager)init
{
  v19.receiver = self;
  v19.super_class = ESDAgentManager;
  v2 = [(ESDAgentManager *)&v19 init];
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
          *v18 = 0;
          v9 = "Registered for wake notification";
LABEL_10:
          _os_log_impl(&dword_24A184000, v7, v8, v9, v18, 2u);
        }
      }

      else
      {
        v7 = DALoggingwithCategory();
        v8 = *(MEMORY[0x277D03988] + 4);
        if (os_log_type_enabled(v7, v8))
        {
          *v18 = 0;
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
        *v18 = 0;
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
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D28B28], 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v7, self, @"com.apple.purplebuddy.setupdone", 0);
  v8.receiver = self;
  v8.super_class = ESDAgentManager;
  [(ESDAgentManager *)&v8 dealloc];
}

- (NSArray)activeAgents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  activeAgentsQueue = self->_activeAgentsQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__ESDAgentManager_activeAgents__block_invoke;
  v5[3] = &unk_278FCE128;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(activeAgentsQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __31__ESDAgentManager_activeAgents__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [*(*(*(a1 + 40) + 8) + 40) count];
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9[0] = 67109378;
    v9[1] = v7;
    v10 = 2112;
    v11 = v8;
    _os_log_impl(&dword_24A184000, v5, v6, "ESDAgentManager: Fetching active agents. count = %d, agents = %@", v9, 0x12u);
  }
}

- (id)accountsProviderWithDBHelper:(id)helper
{
  helperCopy = helper;
  useContacts = [helperCopy useContacts];
  v5 = MEMORY[0x277D03770];
  if (useContacts)
  {
    contactStore = [helperCopy contactStore];

    v7 = [v5 providerWithContactStore:contactStore];
  }

  else
  {
    abDB = [helperCopy abDB];

    v7 = [v5 providerWithAddressBook:abDB];
  }

  return v7;
}

- (id)changeHistoryClerkWithDBHelper:(id)helper
{
  helperCopy = helper;
  if ([helperCopy useContacts])
  {
    contactStore = [helperCopy contactStore];

    v5 = [DAChangeHistoryClerk clerkWithContactStore:contactStore];
  }

  else
  {
    abDB = [helperCopy abDB];

    v5 = [DAChangeHistoryClerk clerkWithAddressBook:abDB];
  }

  return v5;
}

- (id)agentWithAccountID:(id)d
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  activeAgents = [(ESDAgentManager *)self activeAgents];
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
  activeAgents = [(ESDAgentManager *)self activeAgents];
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
  activeAgents = [(ESDAgentManager *)self activeAgents];
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

- (id)_accountInfoPath
{
  v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v3 = [v2 objectAtIndexedSubscript:0];

  v4 = [v3 stringByAppendingPathComponent:@"DataAccess"];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:0];

  v6 = [v4 stringByAppendingPathComponent:@"AccountInformation.plist"];

  return v6;
}

- (id)_phoneVersion
{
  v2 = _phoneVersion___phoneVersion;
  if (!_phoneVersion___phoneVersion)
  {
    v3 = _CFCopyServerVersionDictionary();
    if (!v3)
    {
      v3 = _CFCopySystemVersionDictionary();
    }

    v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CBEC70]];
    v5 = _phoneVersion___phoneVersion;
    _phoneVersion___phoneVersion = v4;

    v2 = _phoneVersion___phoneVersion;
  }

  return v2;
}

- (void)loadAgents
{
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v2, v3))
  {
    *v4 = 0;
    _os_log_impl(&dword_24A184000, v2, v3, "loadAgents should not be called", v4, 2u);
  }
}

- (void)loadExchangeAgents
{
  v129 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  type = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, type))
  {
    _phoneVersion = [(ESDAgentManager *)self _phoneVersion];
    *buf = 138412290;
    v121 = _phoneVersion;
    _os_log_impl(&dword_24A184000, v3, type, "iPhone Version %@", buf, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v81 = objc_opt_new();
  v87 = objc_opt_new();
  v85 = objc_opt_new();
  array = [MEMORY[0x277CBEB18] array];
  v86 = sharedDAAccountStore();
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  _leafExchangeAccountTypes = [MEMORY[0x277D079E8] _leafExchangeAccountTypes];
  v6 = [_leafExchangeAccountTypes countByEnumeratingWithState:&v114 objects:v128 count:16];
  obj = _leafExchangeAccountTypes;
  if (v6)
  {
    v80 = 0;
    v82 = *v115;
    v83 = v6;
    v7 = *(MEMORY[0x277D03988] + 3);
    v77 = *MEMORY[0x277CB8C00];
    v76 = *MEMORY[0x277CB8C50];
    do
    {
      v88 = 0;
      do
      {
        if (*v115 != v82)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v114 + 1) + 8 * v88);
        v9 = [v86 accountTypeWithAccountTypeIdentifier:v8];
        if (v9)
        {
          v10 = [v86 accountsWithAccountType:v9];
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v110 objects:v127 count:16];
          v84 = v9;
          if (v12)
          {
            v79 = v8;
            v13 = 0;
            v14 = *v111;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v111 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v110 + 1) + 8 * i);
                mEMORY[0x277D079F0] = [MEMORY[0x277D079F0] sharedInstance];
                v18 = [mEMORY[0x277D079F0] daemonAppropriateAccountClassForACAccount:v16];

                v19 = [[v18 alloc] initWithBackingAccountInfo:v16];
                if (v19)
                {
                  v20 = DALoggingwithCategory();
                  if (os_log_type_enabled(v20, type))
                  {
                    v21 = NSStringFromClass(v18);
                    *buf = 138412546;
                    v121 = v16;
                    v122 = 2114;
                    v123 = v21;
                    _os_log_impl(&dword_24A184000, v20, type, "Creating an agent for account info %@ (%{public}@)", buf, 0x16u);
                  }

                  [array addObject:v19];
                  v13 = 1;
                }

                else
                {
                  v22 = DALoggingwithCategory();
                  if (os_log_type_enabled(v22, v7))
                  {
                    v23 = NSStringFromClass(v18);
                    *buf = 138412546;
                    v121 = v16;
                    v122 = 2114;
                    v123 = v23;
                    _os_log_impl(&dword_24A184000, v22, v7, "Not creating an agent for account info %@ (%{public}@), it refused to init itself", buf, 0x16u);
                  }
                }
              }

              v12 = [v11 countByEnumeratingWithState:&v110 objects:v127 count:16];
            }

            while (v12);

            v9 = v84;
            if (!v80 && (v13 & 1) != 0)
            {
              v80 = ([v79 isEqualToString:v77] & 1) != 0 || objc_msgSend(v79, "isEqualToString:", v76);
            }
          }

          else
          {
          }
        }

        ++v88;
      }

      while (v88 != v83);
      v24 = [obj countByEnumeratingWithState:&v114 objects:v128 count:16];
      v83 = v24;
    }

    while (v24);
  }

  else
  {
    v80 = 0;
  }

  mEMORY[0x277D03788] = [MEMORY[0x277D03788] sharedKeychain];
  [mEMORY[0x277D03788] removePersistentCredentials];

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v26 = array;
  v27 = [v26 countByEnumeratingWithState:&v106 objects:v126 count:16];
  if (v27)
  {
    v91 = *v107;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v107 != v91)
        {
          objc_enumerationMutation(v26);
        }

        v29 = *(*(&v106 + 1) + 8 * j);
        accountID = [v29 accountID];
        if (accountID)
        {
          [v85 addObject:accountID];
        }

        if ([v29 isDisabled])
        {
          v31 = DALoggingwithCategory();
          if (os_log_type_enabled(v31, type))
          {
            accountDescription = [v29 accountDescription];
            accountID2 = [v29 accountID];
            v34 = objc_opt_class();
            v35 = NSStringFromClass(v34);
            *buf = 138543874;
            v121 = accountDescription;
            v122 = 2112;
            v123 = accountID2;
            v124 = 2114;
            v125 = v35;
            _os_log_impl(&dword_24A184000, v31, type, "Not loading an agent for account %{public}@ (%@) (%{public}@), because it is disabled", buf, 0x20u);
          }
        }

        else
        {
          mEMORY[0x277D079F0]2 = [MEMORY[0x277D079F0] sharedInstance];
          backingAccountInfo = [v29 backingAccountInfo];
          v38 = [mEMORY[0x277D079F0]2 agentClassForACAccount:backingAccountInfo];

          if (v38)
          {
            v39 = DALoggingwithCategory();
            if (os_log_type_enabled(v39, type))
            {
              accountDescription2 = [v29 accountDescription];
              accountID3 = [v29 accountID];
              v42 = objc_opt_class();
              v43 = NSStringFromClass(v42);
              *buf = 138543874;
              v121 = accountDescription2;
              v122 = 2112;
              v123 = accountID3;
              v124 = 2114;
              v125 = v43;
              _os_log_impl(&dword_24A184000, v39, type, "Loading up agent for account %{public}@ (%@) (%{public}@)", buf, 0x20u);
            }

            accountID4 = [v29 accountID];
            [v87 addObject:accountID4];

            v31 = [[v38 alloc] initWithAccount:v29];
            [v81 addObject:v31];
          }

          else
          {
            v31 = DALoggingwithCategory();
            if (os_log_type_enabled(v31, type))
            {
              accountDescription3 = [v29 accountDescription];
              accountID5 = [v29 accountID];
              v47 = objc_opt_class();
              v48 = NSStringFromClass(v47);
              *buf = 138543874;
              v121 = accountDescription3;
              v122 = 2112;
              v123 = accountID5;
              v124 = 2114;
              v125 = v48;
              _os_log_impl(&dword_24A184000, v31, type, "Not loading an agent for account %{public}@ (%@) (%{public}@), because agentClass is nil", buf, 0x20u);
            }
          }
        }
      }

      v27 = [v26 countByEnumeratingWithState:&v106 objects:v126 count:16];
    }

    while (v27);
  }

  if ([v81 count])
  {
    activeAgentsQueue = selfCopy->_activeAgentsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__ESDAgentManager_loadExchangeAgents__block_invoke;
    block[3] = &unk_278FCDB98;
    block[4] = selfCopy;
    v105 = v81;
    dispatch_sync(activeAgentsQueue, block);
    [(ESDAgentManager *)selfCopy enableDaemon];
  }

  if (v80)
  {
    v50 = DALoggingwithCategory();
    if (os_log_type_enabled(v50, type))
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v50, type, "Enable active sync", buf, 2u);
    }

    [(ESDAgentManager *)selfCopy enableActiveSync];
  }

  else
  {
    v51 = DALoggingwithCategory();
    if (os_log_type_enabled(v51, type))
    {
      *buf = 0;
      _os_log_impl(&dword_24A184000, v51, type, "Disable active sync", buf, 2u);
    }

    [(ESDAgentManager *)selfCopy disableActiveSync];
  }

  objc_sync_exit(selfCopy);
  v89 = objc_opt_new();
  v52 = objc_alloc(MEMORY[0x277CBEA60]);
  _accountInfoPath = [(ESDAgentManager *)selfCopy _accountInfoPath];
  v54 = [v52 initWithContentsOfFile:_accountInfoPath];

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  typea = v54;
  v55 = [typea countByEnumeratingWithState:&v100 objects:v119 count:16];
  if (v55)
  {
    v56 = *v101;
    v57 = *MEMORY[0x277D03828];
    do
    {
      for (k = 0; k != v55; ++k)
      {
        if (*v101 != v56)
        {
          objc_enumerationMutation(typea);
        }

        v59 = *(*(&v100 + 1) + 8 * k);
        v60 = [v59 objectForKeyedSubscript:@"Identifier"];
        if (v60 && ([v87 containsObject:v60] & 1) == 0)
        {
          v61 = [v59 objectForKeyedSubscript:@"DAAgentClass"];
          v62 = v61;
          if (v61)
          {
            v63 = NSClassFromString(v61);
            if (v63)
            {
              if (objc_opt_respondsToSelector())
              {
                [(objc_class *)v63 cleanUpFilesForAccountWithId:v60];
              }
            }
          }

          v64 = [v59 objectForKeyedSubscript:v57];
          if (v64)
          {
            [v89 addObject:v64];
          }
        }
      }

      v55 = [typea countByEnumeratingWithState:&v100 objects:v119 count:16];
    }

    while (v55);
  }

  if ([v89 count])
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v92 = v89;
    v66 = [v92 countByEnumeratingWithState:&v96 objects:v118 count:16];
    if (v66)
    {
      v67 = *v97;
      v68 = *(MEMORY[0x277D03988] + 3);
      do
      {
        for (m = 0; m != v66; ++m)
        {
          if (*v97 != v67)
          {
            objc_enumerationMutation(v92);
          }

          v70 = *(*(&v96 + 1) + 8 * m);
          v95 = 0;
          v71 = [mEMORY[0x277D262A0] applyRestrictionDictionary:0 clientType:@"com.apple.eas.account" clientUUID:v70 localizedClientDescription:0 localizedWarningMessage:0 outRestrictionChanged:0 outEffectiveSettingsChanged:0 outError:&v95];
          v72 = v95;
          if ((v71 & 1) == 0)
          {
            v73 = DALoggingwithCategory();
            if (os_log_type_enabled(v73, v68))
            {
              *buf = 138412546;
              v121 = v70;
              v122 = 2112;
              v123 = v72;
              _os_log_impl(&dword_24A184000, v73, v68, "Error when cleaning up client restrictions for persistentUUID %@.  Error %@", buf, 0x16u);
            }
          }
        }

        v66 = [v92 countByEnumeratingWithState:&v96 objects:v118 count:16];
      }

      while (v66);
    }
  }

  mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0]2 removeOrphanedClientRestrictionsWithCompletion:0];

  [MEMORY[0x277D03758] startDailyAggDReporter];
}

void __37__ESDAgentManager_loadExchangeAgents__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = [*(a1 + 40) count];
    v8 = *(a1 + 40);
    v9[0] = 67109378;
    v9[1] = v7;
    v10 = 2112;
    v11 = v8;
    _os_log_impl(&dword_24A184000, v5, v6, "ESDAgentManager: Settings active agents. count = %d, agents = %@", v9, 0x12u);
  }
}

- (void)saveAndReleaseAgents
{
  v34 = *MEMORY[0x277D85DE8];
  v23 = objc_opt_new();
  [(ESDAgentManager *)self activeAgents];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v3 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v3)
  {
    v4 = v3;
    v22 = *v28;
    v5 = *MEMORY[0x277D03828];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v27 + 1) + 8 * i);
        account = [v7 account];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        accountID = [account accountID];
        persistentUUID = [account persistentUUID];
        v13 = persistentUUID;
        v31[0] = @"DAAgentClass";
        v31[1] = @"Identifier";
        if (accountID)
        {
          v14 = accountID;
        }

        else
        {
          v14 = &stru_285D58A48;
        }

        v32[0] = v10;
        v32[1] = v14;
        v31[2] = v5;
        if (persistentUUID)
        {
          v15 = persistentUUID;
        }

        else
        {
          v15 = &stru_285D58A48;
        }

        v32[2] = v15;
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
        [v23 addObject:v16];
        [v7 shutdown];
      }

      v4 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v4);
  }

  _accountInfoPath = [(ESDAgentManager *)self _accountInfoPath];
  [v23 writeToFile:_accountInfoPath atomically:1];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  [mEMORY[0x277D262A0] removeOrphanedClientRestrictionsWithCompletion:0];

  activeAgentsQueue = self->_activeAgentsQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__ESDAgentManager_saveAndReleaseAgents__block_invoke;
  block[3] = &unk_278FCDB98;
  v25 = obj;
  selfCopy = self;
  v20 = obj;
  dispatch_sync(activeAgentsQueue, block);
}

void __39__ESDAgentManager_saveAndReleaseAgents__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = [*(a1 + 32) count];
    v5 = *(a1 + 32);
    v8[0] = 67109378;
    v8[1] = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_24A184000, v2, v3, "ESDAgentManager: Clearing active agents. previous count = %d, previous agents = %@", v8, 0x12u);
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;
}

- (void)_deviceWillSleep
{
  v18 = *MEMORY[0x277D85DE8];
  activeAgents = [(ESDAgentManager *)self activeAgents];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [activeAgents countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(activeAgents);
        }

        account = [*(*(&v13 + 1) + 8 * i) account];
        [account deviceWillSleep];
      }

      v4 = [activeAgents countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v8, v9))
  {
    *v12 = 0;
    _os_log_impl(&dword_24A184000, v8, v9, "Tearing down connection cache", v12, 2u);
  }

  CFURLConnectionInvalidateConnectionCache();
  mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  [mEMORY[0x277CCAD30] flushWithCompletionHandler:&__block_literal_global_56];
  v11 = DALoggingwithCategory();
  if (os_log_type_enabled(v11, v9))
  {
    *v12 = 0;
    _os_log_impl(&dword_24A184000, v11, v9, "Tore down connection cache", v12, 2u);
  }
}

- (void)_deviceDidWake
{
  v13 = *MEMORY[0x277D85DE8];
  activeAgents = [(ESDAgentManager *)self activeAgents];
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
  v21 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  [(ESDAgentManager *)self activeAgents];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  currentPolicyKey = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (currentPolicyKey)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != currentPolicyKey; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        account = [v9 account];
        accountID = [account accountID];
        v12 = [accountID isEqualToString:accountCopy];

        if (v12)
        {
          account2 = [v9 account];
          policyManager = [account2 policyManager];
          currentPolicyKey = [policyManager currentPolicyKey];

          goto LABEL_11;
        }
      }

      currentPolicyKey = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (currentPolicyKey)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return currentPolicyKey;
}

- (void)requestPolicyUpdateForAccount:(id)account
{
  v28 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  [(ESDAgentManager *)self activeAgents];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        account = [v10 account];
        accountID = [account accountID];
        v13 = [accountID isEqualToString:accountCopy];

        if (v13)
        {
          v16 = DALoggingwithCategory();
          v17 = *(MEMORY[0x277D03988] + 4);
          if (os_log_type_enabled(v16, v17))
          {
            *buf = 138412290;
            v26 = accountCopy;
            _os_log_impl(&dword_24A184000, v16, v17, "Received policy update request through XPC for account with ID %@. Setting this as user initiated.", buf, 0xCu);
          }

          account2 = [v10 account];
          [account2 setWasUserInitiated:1];

          account3 = [v10 account];
          policyManager = [account3 policyManager];
          [policyManager requestPolicyUpdate];

          v14 = v5;
          goto LABEL_14;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138412290;
    v26 = accountCopy;
    _os_log_impl(&dword_24A184000, v14, v15, "problem handling policy update request: no known account with ID %@", buf, 0xCu);
  }

LABEL_14:
}

- (BOOL)startMonitoringAccountID:(id)d folderIDs:(id)ds
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  [(ESDAgentManager *)self activeAgents];
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
        _os_log_impl(&dword_24A184000, v22, v23, v21, buf, v24);
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
  activeAgents = [(ESDAgentManager *)self activeAgents];
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
      _os_log_impl(&dword_24A184000, v19, v20, "Did not stop monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
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
  activeAgents = [(ESDAgentManager *)self activeAgents];
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
      _os_log_impl(&dword_24A184000, v19, v20, "Did not suspend monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
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
  activeAgents = [(ESDAgentManager *)self activeAgents];
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
      _os_log_impl(&dword_24A184000, v19, v20, "Did not resume monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
    }

    v18 = 0;
  }

  return v18;
}

- (BOOL)addPersistMonitoringAccountID:(id)d folderIDs:(id)ds clientID:(id)iD
{
  v44 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  [(ESDAgentManager *)self activeAgents];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v36 = 0u;
  v9 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  if (!v9)
  {
    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = *v34;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v34 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v33 + 1) + 8 * i);
      account = [v15 account];
      accountID = [account accountID];
      v18 = [accountID isEqualToString:dCopy];

      if (v18)
      {
        account2 = [v15 account];
        v20 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
        v12 = [account2 setFolderIdsForPersistentPushAdded:v20 deleted:0 clientID:iDCopy];

        v11 = 1;
      }
    }

    v10 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  }

  while (v10);
  if ((v12 & 1) == 0)
  {
    if (v11)
    {
      v22 = DALoggingwithCategory();
      v23 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v22, v23))
      {
        *buf = 138412290;
        v38 = dsCopy;
        v24 = "Did not add persistent monitoring folder ids %@, because the agent said nope";
        v25 = v22;
        v26 = v23;
        v27 = 12;
LABEL_17:
        _os_log_impl(&dword_24A184000, v25, v26, v24, buf, v27);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

LABEL_15:
    v22 = DALoggingwithCategory();
    v28 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v22, v28))
    {
      *buf = 138412802;
      v38 = dsCopy;
      v39 = 2112;
      v40 = dCopy;
      v41 = 2112;
      v42 = obj;
      v24 = "Did not add persistent monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@";
      v25 = v22;
      v26 = v28;
      v27 = 32;
      goto LABEL_17;
    }

LABEL_18:

    v21 = 0;
    goto LABEL_19;
  }

  v21 = 1;
LABEL_19:

  return v21;
}

- (BOOL)removePersistMonitoringAccountID:(id)d folderIDs:(id)ds clientID:(id)iD
{
  v38 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dsCopy = ds;
  iDCopy = iD;
  activeAgents = [(ESDAgentManager *)self activeAgents];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [activeAgents countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v28;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v28 != v13)
      {
        objc_enumerationMutation(activeAgents);
      }

      v15 = *(*(&v27 + 1) + 8 * i);
      account = [v15 account];
      accountID = [account accountID];
      v18 = [accountID isEqualToString:dCopy];

      if (v18)
      {
        account2 = [v15 account];
        v20 = [MEMORY[0x277CBEB98] setWithArray:dsCopy];
        [account2 setFolderIdsForPersistentPushAdded:0 deleted:v20 clientID:iDCopy];

        v12 = 1;
      }
    }

    v11 = [activeAgents countByEnumeratingWithState:&v27 objects:v37 count:16];
  }

  while (v11);
  if (v12)
  {
    v21 = 1;
  }

  else
  {
LABEL_12:
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v22, v23))
    {
      *buf = 138412802;
      v32 = dsCopy;
      v33 = 2112;
      v34 = dCopy;
      v35 = 2112;
      v36 = activeAgents;
      _os_log_impl(&dword_24A184000, v22, v23, "Did not remove persistent monitoring folder ids %@, because I have no agent containing account id %@.  Agents: %@", buf, 0x20u);
    }

    v21 = 0;
  }

  return v21;
}

- (BOOL)clearPersistMonitoringAccountID:(id)d clientID:(id)iD
{
  v32 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  activeAgents = [(ESDAgentManager *)self activeAgents];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [activeAgents countByEnumeratingWithState:&v23 objects:v31 count:16];
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
        [account2 clearFolderIdsForPersistentPushWithClientID:iDCopy];

        v10 = 1;
      }
    }

    v9 = [activeAgents countByEnumeratingWithState:&v23 objects:v31 count:16];
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
      *buf = 138412546;
      v28 = dCopy;
      v29 = 2112;
      v30 = activeAgents;
      _os_log_impl(&dword_24A184000, v19, v20, "Did not clear persistent monitoring folders, because I have no agent containing account id %@.  Agents: %@", buf, 0x16u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)_clearOrphanedStores
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ESDAgentManager.m" lineNumber:702 description:{@"When clearing orphaned stores, we have an account with no accountID.  That's bad.  account: %@", a3}];
}

- (BOOL)_clearOrphanedStoresInCalendarDatabase:(CalDatabase *)database eventAccountIds:(id)ids toDoAccountIds:(id)accountIds
{
  v48 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  accountIdsCopy = accountIds;
  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277D03988];
  v8 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    *buf = 138412290;
    v45 = idsCopy;
    _os_log_impl(&dword_24A184000, v6, v8, "ClearOrphanStores : Current DA CalDAV (events) Account IDs : %@", buf, 0xCu);
  }

  v9 = CalDatabaseCopyOfAllStores();
  v11 = 0;
  if ([v9 count])
  {
    type = *(v7 + 7);
    v12 = *(v7 + 3);
    v13 = 0;
    v14 = *MEMORY[0x277D07AE0];
    *&v10 = 134218240;
    v32 = v10;
    v33 = v9;
    do
    {
      [v9 objectAtIndexedSubscript:{v13, v32}];

      v15 = CalStoreGetType();
      v16 = DALoggingwithCategory();
      if (os_log_type_enabled(v16, type))
      {
        *buf = v32;
        v45 = v13;
        v46 = 1024;
        *v47 = v15;
        _os_log_impl(&dword_24A184000, v16, type, "ClearOrphanStores : curStore %lu has store type %d", buf, 0x12u);
      }

      if (v15 == 1)
      {
        v17 = CalStoreCopyExternalID();
        if (v17 && ([idsCopy containsObject:v17] & 1) == 0 && (objc_msgSend(accountIdsCopy, "containsObject:", v17) & 1) == 0)
        {
          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, v12))
          {
            *buf = 138412802;
            v45 = v17;
            v46 = 2112;
            *v47 = idsCopy;
            *&v47[8] = 2112;
            *&v47[10] = accountIdsCopy;
            _os_log_impl(&dword_24A184000, v18, v12, "ClearOrphanStores : ACCOUNTDCOERROR Removing calendar store, as its account id %@ isn't one of the account ids I know about: %@ | %@", buf, 0x20u);
          }

          CalRemoveStore();
          v11 = 1;
        }

        v34 = v13;
        v35 = v17;
        v19 = CalDatabaseCopyRegisteredClientIdentifiersForPersistentChangeTrackingInStore();
        v20 = DALoggingwithCategory();
        if (os_log_type_enabled(v20, type))
        {
          UID = CalStoreGetUID();
          *buf = 138412802;
          v45 = v35;
          v46 = 1024;
          *v47 = UID;
          *&v47[4] = 2112;
          *&v47[6] = v19;
          _os_log_impl(&dword_24A184000, v20, type, "ClearOrphanStores : account id %@ store id %d has change tracking ids %@", buf, 0x1Cu);
        }

        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v22 = v19;
        v23 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v40;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v40 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v27 = *(*(&v39 + 1) + 8 * i);
              if ([v27 hasPrefix:v14])
              {
                v28 = [v27 length];
                if (v28 > [v14 length])
                {
                  v29 = [v27 substringFromIndex:{objc_msgSend(v14, "length")}];
                  if (v29 && (([idsCopy containsObject:v29] & 1) != 0 || objc_msgSend(accountIdsCopy, "containsObject:", v29)))
                  {

                    continue;
                  }
                }

                v30 = DALoggingwithCategory();
                if (os_log_type_enabled(v30, v12))
                {
                  *buf = 138412802;
                  v45 = v27;
                  v46 = 2112;
                  *v47 = idsCopy;
                  *&v47[8] = 2112;
                  *&v47[10] = accountIdsCopy;
                  _os_log_impl(&dword_24A184000, v30, v12, "ClearOrphanStores : Removing Calendar change tracking client, as its change tracking identifier %@ isn't one of the account ids I know about: %@ | %@", buf, 0x20u);
                }

                CalRemoveClientForPersistentChangeTracking();
                v11 = 1;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v39 objects:v43 count:16];
          }

          while (v24);
        }

        v9 = v33;
        v13 = v34;
      }

      ++v13;
    }

    while (v13 < [v9 count]);
  }

  return v11 & 1;
}

- (BOOL)_systemMayNowBeReady
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = MEMORY[0x277D03988];
  if (!selfCopy->_startAgentsWhenSystemReadyBlock)
  {
    startAgentsWhenSystemReadyBlock = DALoggingwithCategory();
    v11 = v3[3];
    if (os_log_type_enabled(startAgentsWhenSystemReadyBlock, v11))
    {
      LOWORD(v21[0]) = 0;
      v12 = "ESAgentManager: NO startAgentWhenSystemReadyBlock defined. This will not load any agents";
      goto LABEL_14;
    }

LABEL_15:
    v13 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v4 = MKBDeviceUnlockedSinceBoot();
  v5 = BYSetupAssistantNeedsToRun();
  v6 = DALoggingwithCategory();
  v7 = v3[6];
  if (os_log_type_enabled(v6, v7))
  {
    v21[0] = 67109376;
    v21[1] = v4 == 1;
    v22 = 1024;
    v23 = v5 ^ 1;
    _os_log_impl(&dword_24A184000, v6, v7, "ESAgentManager: Device is Unlocked %d and PastBuddy is %d", v21, 0xEu);
  }

  if (!(v5 & 1 | (v4 != 1)))
  {
    v13 = MEMORY[0x24C212500](selfCopy->_startAgentsWhenSystemReadyBlock);
    startAgentsWhenSystemReadyBlock = selfCopy->_startAgentsWhenSystemReadyBlock;
    selfCopy->_startAgentsWhenSystemReadyBlock = 0;
    goto LABEL_17;
  }

  if (v4 != 1)
  {
    v8 = DALoggingwithCategory();
    v9 = v3[5];
    if (os_log_type_enabled(v8, v9))
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&dword_24A184000, v8, v9, "Can't start yet, device is still locked", v21, 2u);
    }
  }

  if (v5)
  {
    startAgentsWhenSystemReadyBlock = DALoggingwithCategory();
    v11 = v3[5];
    if (os_log_type_enabled(startAgentsWhenSystemReadyBlock, v11))
    {
      LOWORD(v21[0]) = 0;
      v12 = "Can't start yet, device is still in buddy";
LABEL_14:
      _os_log_impl(&dword_24A184000, startAgentsWhenSystemReadyBlock, v11, v12, v21, 2u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v13 = 0;
LABEL_18:
  objc_sync_exit(selfCopy);

  if (v13)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, selfCopy, *MEMORY[0x277D28B28], 0);
    v15 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v15, selfCopy, @"com.apple.purplebuddy.setupdone", 0);
    v16 = DALoggingwithCategory();
    v17 = v3[6];
    if (os_log_type_enabled(v16, v17))
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&dword_24A184000, v16, v17, "ESAgentManager: System Ready Calling Load Agents Block", v21, 2u);
    }

    v13[2](v13);
  }

  else
  {
    v18 = DALoggingwithCategory();
    v19 = v3[6];
    if (os_log_type_enabled(v18, v19))
    {
      LOWORD(v21[0]) = 0;
      _os_log_impl(&dword_24A184000, v18, v19, "ESAgentManager: System Not Yet Ready. We are Not Loading Agents", v21, 2u);
    }
  }

  return v13 != 0;
}

- (void)_resetMonitoringRequestsAndLoadAgents
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    *v6 = 0;
    _os_log_impl(&dword_24A184000, v3, v4, "ESAgentManager: Clearing disableMonitoringAgentsTokens and Loading Agents", v6, 2u);
  }

  disableMonitoringAgentsTokens = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
  [disableMonitoringAgentsTokens removeAllObjects];

  [(ESDAgentManager *)self _loadAndStartExchangeMonitoringAgents];
}

- (void)_calDaysToSyncDidChange
{
  v26 = *MEMORY[0x277D85DE8];
  activeAgents = [(ESDAgentManager *)self activeAgents];
  v3 = objc_opt_new();
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    transactionId = [v3 transactionId];
    *buf = 138412290;
    v25 = transactionId;
    _os_log_impl(&dword_24A184000, v4, v5, "DATransaction starting, ID: %@", buf, 0xCu);
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
          v16[2] = __42__ESDAgentManager__calDaysToSyncDidChange__block_invoke;
          v16[3] = &unk_278FCDB98;
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
  v20 = *MEMORY[0x277D85DE8];
  v3 = dispatch_queue_create("com.apple.dataaccess.ctdatapolicychangeq", 0);
  CTCellularUsagePolicyNotificationQ = self->_CTCellularUsagePolicyNotificationQ;
  self->_CTCellularUsagePolicyNotificationQ = v3;

  v5 = _CTServerConnectionCreateOnTargetQueue();
  self->_ctServerConnection = v5;
  if (v5)
  {
    v6 = _CTServerConnectionRegisterForNotification();
    if (!v6)
    {
      return;
    }

    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v8))
    {
      v14 = 138412802;
      v15 = @"kCTPerAppNetworkDataAccessPolicyChangedNotification";
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = HIDWORD(v6);
      v9 = "Failed to register CT server notification %@ (domain: %d error: %d).";
      v10 = v7;
      v11 = v8;
      v12 = 24;
LABEL_7:
      _os_log_impl(&dword_24A184000, v10, v11, v9, &v14, v12);
    }
  }

  else
  {
    v7 = DALoggingwithCategory();
    v13 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v7, v13))
    {
      LOWORD(v14) = 0;
      v9 = "Failed to create CT server connection";
      v10 = v7;
      v11 = v13;
      v12 = 2;
      goto LABEL_7;
    }
  }
}

void __54__ESDAgentManager__registerForCTDataUsageNotificaiton__block_invoke(int a1, CFStringRef theString1)
{
  if (CFStringCompare(theString1, *MEMORY[0x277CC3B50], 0) == kCFCompareEqualTo)
  {
    v2 = +[ESDMain sharedMain];
    [v2 addToOperationsQueueDisabledCheckAndGoBlock:0 wrappedBlock:&__block_literal_global_80];
  }
}

void __54__ESDAgentManager__registerForCTDataUsageNotificaiton__block_invoke_2()
{
  v0 = +[ESDAgentManager sharedManager];
  [v0 _handleCellularDataUsageChangedNotification];
}

- (void)_handleCellularDataUsageChangedNotification
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = [(ESDAgentManager *)self activeAgents];
  v2 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v12;
    *&v3 = 138543362;
    v9 = v3;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(obj);
        }

        account = [*(*(&v11 + 1) + 8 * i) account];
        onBehalfOfBundleIdentifier = [account onBehalfOfBundleIdentifier];
        _CTServerConnectionCopyCellularUsagePolicy();
      }

      v4 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }
}

- (void)_loadAndStartExchangeMonitoringAgents
{
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__ESDAgentManager__loadAndStartExchangeMonitoringAgents__block_invoke;
  v12[3] = &unk_278FCE170;
  objc_copyWeak(&v13, &location);
  v3 = MEMORY[0x24C212500](v12);
  startAgentsWhenSystemReadyBlock = self->_startAgentsWhenSystemReadyBlock;
  self->_startAgentsWhenSystemReadyBlock = v3;

  if ([(ESDAgentManager *)self _systemMayNowBeReady])
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      *v11 = 0;
      _os_log_impl(&dword_24A184000, v5, v6, "ESAgentManager: NO startAgentWhenSystemReadyBlock defined. This will not load any agents", v11, 2u);
    }
  }

  else
  {
    v7 = DALoggingwithCategory();
    v8 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v7, v8))
    {
      *v11 = 0;
      _os_log_impl(&dword_24A184000, v7, v8, "ESAgentManager: System Not Yet Ready. We will Register for BuddyFinished and KeyBagLock status Notification", v11, 2u);
    }

    [(ESDAgentManager *)self enableDaemon];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _systemReadyCheckFired, *MEMORY[0x277D28B28], 0, CFNotificationSuspensionBehaviorDrop);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v10, self, _systemReadyCheckFired, @"com.apple.purplebuddy.setupdone", 0, CFNotificationSuspensionBehaviorDrop);
    [(ESDAgentManager *)self _systemMayNowBeReady];
  }

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __56__ESDAgentManager__loadAndStartExchangeMonitoringAgents__block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = DALoggingwithCategory();
  v3 = MEMORY[0x277D03988];
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v2, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v2, v4, "Loading Exchange agents", buf, 2u);
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
      _os_log_impl(&dword_24A184000, v7, v8, "Removing CFURLCache entries", buf, 2u);
    }

    CFURLCacheRemoveAllCachedResponses();
    CFRelease(v6);
  }

  [MEMORY[0x277D037D8] resetSyncStatusIfNecessaryForStoresOfType:2];
  [WeakRetained loadExchangeAgents];
  [WeakRetained _clearOrphanedStores];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v9 = [WeakRetained activeAgents];
  v10 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [v14 account];
        if ([v15 keychainAccessibilityType] == 2)
        {
          v16 = [v15 password];
        }

        [v14 startMonitoring];
      }

      v11 = [v9 countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v11);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, *MEMORY[0x277D038C0], WeakRetained, 0, 1uLL);
  v18 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(v18, *MEMORY[0x277D03718], WeakRetained, 0, 1uLL);
  v19 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v19, WeakRetained, _pcPreferencesDidChange, @"PCPreferencesDidChangeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v20 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v20, WeakRetained, _calDaysToSyncDidChange, *MEMORY[0x277CF7120], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v21 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v21, WeakRetained, _calDaysToSyncDidChange, *MEMORY[0x277CF7128], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v22 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v22, WeakRetained, _calDatabaseDidChange, @"_CalDatabaseChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v23 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v23, WeakRetained, _abDataBaseDidChangeByOtherProcess, @"__ABDataBaseChangedByOtherProcessNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v24 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v24, WeakRetained, _noteContextDidChange, @"NoteContextDarwinNotificationWithLoggedChanges", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  [WeakRetained _registerForCTDataUsageNotificaiton];
  v25 = DALoggingwithCategory();
  if (os_log_type_enabled(v25, v4))
  {
    v26 = WeakRetained[1];
    *buf = 138412290;
    v32 = v26;
    _os_log_impl(&dword_24A184000, v25, v4, "Agents loaded and monitoring.  They are %@", buf, 0xCu);
  }
}

- (void)registerForBuddy
{
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 7);
  if (os_log_type_enabled(v3, v4))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v3, v4, "REGISTER FOR BUDDY", buf, 2u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _systemReadyCheckFired, @"com.apple.purplebuddy.setupdone", 0, CFNotificationSuspensionBehaviorDrop);
  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v4))
  {
    *v7 = 0;
    _os_log_impl(&dword_24A184000, v6, v4, "EXITING REGISTER FOR BUDDY", v7, 2u);
  }
}

- (void)_stopMonitoringAndSaveAgents
{
  v45 = *MEMORY[0x277D85DE8];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"PCPreferencesDidChangeNotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, *MEMORY[0x277CF7120], 0);
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v5, self, *MEMORY[0x277CF7128], 0);
  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v6, self, @"_CalDatabaseChangedNotification", 0);
  v7 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v7, self, @"__ABDataBaseChangedByOtherProcessNotification", 0);
  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v8, self, @"NoteContextDarwinNotificationWithLoggedChanges", 0);
  if (self->_startAgentsWhenSystemReadyBlock)
  {
    v9 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v9, self, *MEMORY[0x277D28B28], 0);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v10, self, @"com.apple.purplebuddy.setupdone", 0);
    startAgentsWhenSystemReadyBlock = self->_startAgentsWhenSystemReadyBlock;
    if (startAgentsWhenSystemReadyBlock)
    {
      self->_startAgentsWhenSystemReadyBlock = 0;
    }
  }

  dispatch_suspend(gDADOperationQueue);
  activeAgents = [(ESDAgentManager *)self activeAgents];
  v13 = [activeAgents mutableCopy];
  v14 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v14, v15))
  {
    *buf = 138412290;
    v41 = v13;
    _os_log_impl(&dword_24A184000, v14, v15, "Agents awaiting shut down are %@", buf, 0xCu);
  }

  v16 = DALoggingwithCategory();
  if (os_log_type_enabled(v16, v15))
  {
    *buf = 138412290;
    v41 = activeAgents;
    _os_log_impl(&dword_24A184000, v16, v15, "Stopping our agents (which are %@)", buf, 0xCu);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = activeAgents;
  v17 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v36 + 1) + 8 * i);
        v22 = DALoggingwithCategory();
        if (os_log_type_enabled(v22, v15))
        {
          *buf = 138412290;
          v41 = v21;
          _os_log_impl(&dword_24A184000, v22, v15, "Stopping agent %@", buf, 0xCu);
        }

        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __47__ESDAgentManager__stopMonitoringAndSaveAgents__block_invoke;
        v34[3] = &unk_278FCE198;
        v35 = v13;
        [v21 requestAgentStopMonitoringWithCompletionBlock:v34];
      }

      v18 = [obj countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v18);
  }

  if ([v13 count])
  {
    v23 = objc_autoreleasePoolPush();
    if ([v13 count])
    {
      v24 = *MEMORY[0x277CBF058];
      do
      {
        v25 = objc_autoreleasePoolPush();
        v26 = DALoggingwithCategory();
        if (os_log_type_enabled(v26, v15))
        {
          v27 = [v13 count];
          *buf = 134218242;
          v41 = v27;
          v42 = 2112;
          v43 = v13;
          _os_log_impl(&dword_24A184000, v26, v15, "Still waiting for %lu agents to shut down.  Spinning a run loop. Outstanding agents are %@", buf, 0x16u);
        }

        v28 = CFRunLoopRunInMode(v24, 1.0, 1u);
        objc_autoreleasePoolPop(v25);
      }

      while ([v13 count] && (v28 - 3) < 0xFFFFFFFE);
    }

    objc_autoreleasePoolPop(v23);
    v29 = DALoggingwithCategory();
    if (os_log_type_enabled(v29, v15))
    {
      v30 = [v13 count];
      *buf = 134217984;
      v41 = v30;
      _os_log_impl(&dword_24A184000, v29, v15, "Run Loop finished.  Active Agent count is now %ld.", buf, 0xCu);
    }
  }

  [(ESDAgentManager *)self saveAndReleaseAgents];
  v31 = DALoggingwithCategory();
  if (os_log_type_enabled(v31, v15))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v31, v15, "Agents stopped and saved", buf, 2u);
  }

  dispatch_resume(gDADOperationQueue);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"ESDAgentsStoppedNotification" object:0];
}

void __47__ESDAgentManager__stopMonitoringAndSaveAgents__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v4, v5))
  {
    v8 = 138412290;
    v9 = v3;
    _os_log_impl(&dword_24A184000, v4, v5, "Agent %@ has stopped monitoring", &v8, 0xCu);
  }

  [*(a1 + 32) removeObject:v3];
  v6 = DALoggingwithCategory();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = [*(a1 + 32) count];
    v8 = 134217984;
    v9 = v7;
    _os_log_impl(&dword_24A184000, v6, v5, "agentsAwaitingShutdown count is now %lu", &v8, 0xCu);
  }
}

- (void)_addAccountAggdEntries
{
  v38 = *MEMORY[0x277D85DE8];
  activeAgents = [(ESDAgentManager *)self activeAgents];
  [activeAgents count];
  ADClientSetValueForScalarKey();
  if ([activeAgents count])
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v3 = activeAgents;
    v4 = [v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v4)
    {
      v26 = activeAgents;
      v27 = 0;
      v31 = 0;
      v32 = 0;
      v29 = 0;
      v30 = 0;
      v28 = 0;
      v5 = 0;
      v6 = 0;
      v7 = *v34;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(v3);
          }

          account = [*(*(&v33 + 1) + 8 * i) account];
          accountTypeIdentifier = [account accountTypeIdentifier];
          v11 = [accountTypeIdentifier isEqualToString:@"com.apple.account.SubscribedCalendar"];

          if (v11)
          {
            ++v6;
          }

          else
          {
            accountTypeIdentifier2 = [account accountTypeIdentifier];
            v13 = [accountTypeIdentifier2 isEqualToString:@"com.apple.account.CalDAV"];

            if (v13)
            {
              ++v5;
            }

            else
            {
              accountTypeIdentifier3 = [account accountTypeIdentifier];
              v15 = [accountTypeIdentifier3 isEqualToString:@"com.apple.account.CardDAV"];

              if (v15)
              {
                ++v32;
              }

              else
              {
                accountTypeIdentifier4 = [account accountTypeIdentifier];
                v17 = [accountTypeIdentifier4 isEqualToString:@"com.apple.account.BookmarkDAV"];

                if (v17)
                {
                  ++v31;
                }

                else
                {
                  accountTypeIdentifier5 = [account accountTypeIdentifier];
                  v19 = [accountTypeIdentifier5 isEqualToString:@"com.apple.account.Exchange"];

                  if (v19)
                  {
                    ++v30;
                  }

                  else
                  {
                    accountTypeIdentifier6 = [account accountTypeIdentifier];
                    v21 = [accountTypeIdentifier6 isEqualToString:@"com.apple.account.Hotmail"];

                    if (v21)
                    {
                      ++v29;
                    }

                    else
                    {
                      accountTypeIdentifier7 = [account accountTypeIdentifier];
                      v23 = [accountTypeIdentifier7 isEqualToString:@"com.apple.account.LDAP"];

                      if (v23)
                      {
                        ++v27;
                      }

                      else
                      {
                        accountTypeIdentifier8 = [account accountTypeIdentifier];
                        v25 = [accountTypeIdentifier8 isEqualToString:@"com.apple.account.IMAPNotes"];

                        v28 += v25;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v4);
      activeAgents = v26;
    }
  }

  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
  ADClientSetValueForScalarKey();
}

- (void)enableMonitoringAgentsWithToken:(unint64_t)token
{
  v18 = *MEMORY[0x277D85DE8];
  disableMonitoringAgentsTokens = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
  v6 = [disableMonitoringAgentsTokens count];

  disableMonitoringAgentsTokens2 = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:token];
  [disableMonitoringAgentsTokens2 removeObjectForKey:v8];

  disableMonitoringAgentsTokens3 = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
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
      _os_log_impl(&dword_24A184000, v12, v13, "Ignoring call to enableMonitoringAgentsWithToken: with unrecognized token %d", &v16, 8u);
    }
  }

  else
  {
    v14 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v11, v14))
    {
      v16 = 67109120;
      tokenCopy = v10;
      _os_log_impl(&dword_24A184000, v12, v14, "ESDAgentManager asked to enableMonitoringAgents. New count = %d", &v16, 8u);
    }

    if (!v10)
    {
      v15 = DALoggingwithCategory();
      if (os_log_type_enabled(v15, v14))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_24A184000, v15, v14, "ESDAgentManager disableMonitoringAgents reached 0. Start Loading Agents..", &v16, 2u);
      }

      [(ESDAgentManager *)self _loadAndStartExchangeMonitoringAgents];
      [(ESDAgentManager *)self _addAccountAggdEntries];
    }
  }
}

- (unint64_t)disableMonitoringAgents
{
  v14 = *MEMORY[0x277D85DE8];
  nextDisableMonitoringAgentsToken = [(ESDAgentManager *)self nextDisableMonitoringAgentsToken];
  [(ESDAgentManager *)self setNextDisableMonitoringAgentsToken:nextDisableMonitoringAgentsToken + 1];
  v4 = [objc_alloc(MEMORY[0x277D037F0]) initWithLabel:@"disableMonitoringAgents"];
  disableMonitoringAgentsTokens = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:nextDisableMonitoringAgentsToken + 1];
  [disableMonitoringAgentsTokens setObject:v4 forKeyedSubscript:v6];

  disableMonitoringAgentsTokens2 = [(ESDAgentManager *)self disableMonitoringAgentsTokens];
  v8 = [disableMonitoringAgentsTokens2 count];

  v9 = DALoggingwithCategory();
  v10 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v9, v10))
  {
    v13[0] = 67109120;
    v13[1] = v8;
    _os_log_impl(&dword_24A184000, v9, v10, "ESDAgentManager asked to disableMonitoringAgents. New count = %d", v13, 8u);
  }

  if (v8 == 1)
  {
    v11 = DALoggingwithCategory();
    if (os_log_type_enabled(v11, v10))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&dword_24A184000, v11, v10, "ESDAgentManager disableMonitoringAgents reached 1. Stop Loading Agents..", v13, 2u);
    }

    [(ESDAgentManager *)self _stopMonitoringAndSaveAgents];
  }

  return nextDisableMonitoringAgentsToken + 1;
}

- (BOOL)updateFolderListForAccountID:(id)d andDataclasses:(int64_t)dataclasses requireChangedFolders:(BOOL)folders isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  foldersCopy = folders;
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(ESDAgentManager *)self activeAgents];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v27 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v22 = foldersCopy;
    v23 = requestedCopy;
    v14 = *v25;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        account = [v16 account];
        accountID = [account accountID];
        v19 = [accountID isEqualToString:dCopy];

        if (v19)
        {
          if ([account enabledForAnyDADataclasses:dataclasses])
          {
            [v16 refreshFolderListRequireChangedFolders:v22 isUserRequested:v23];
          }

          v20 = 1;
          goto LABEL_13;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v20 = 0;
LABEL_13:

  return v20;
}

- (BOOL)updateContentsOfFolders:(id)folders forAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v39 = *MEMORY[0x277D85DE8];
  foldersCopy = folders;
  dCopy = d;
  v10 = [dCopy isEqualToString:*MEMORY[0x277D03880]];
  [(ESDAgentManager *)self activeAgents];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v11 = v37 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    dataclassesCopy = dataclasses;
    v32 = 0;
    v14 = *v35;
    while (2)
    {
      v15 = 0;
      v33 = v13;
      do
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v34 + 1) + 8 * v15);
        account = [v16 account];
        v18 = account;
        if (v10)
        {
          if ([account isSubscribedCalendarAccount])
          {
            [v18 backingAccountInfo];
            v19 = v14;
            v20 = v10;
            v21 = v11;
            v23 = v22 = dCopy;
            parentAccountIdentifier = [v23 parentAccountIdentifier];
            v25 = [parentAccountIdentifier length];

            dCopy = v22;
            v11 = v21;
            v10 = v20;
            v14 = v19;
            v13 = v33;
            if (!v25)
            {
              if ([v18 enabledForAnyDADataclasses:dataclassesCopy])
              {
                [v16 syncFolderIDs:foldersCopy forDataclasses:dataclassesCopy isUserRequested:requestedCopy];
              }

              v32 = 1;
            }
          }
        }

        else
        {
          accountID = [account accountID];
          v27 = [accountID isEqualToString:dCopy];

          if (v27)
          {
            if ([v18 enabledForAnyDADataclasses:dataclassesCopy])
            {
              [v16 syncFolderIDs:foldersCopy forDataclasses:dataclassesCopy isUserRequested:requestedCopy];
            }

            v32 = 1;
            goto LABEL_20;
          }
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v32 = 0;
  }

LABEL_20:

  return v32 & 1;
}

- (BOOL)updateContentsOfAllFoldersForAccountID:(id)d andDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  v36 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v8 = [dCopy isEqualToString:*MEMORY[0x277D03880]];
  [(ESDAgentManager *)self activeAgents];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v9 = v34 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v10)
  {
    v11 = v10;
    v28 = 0;
    v12 = *v32;
    dataclassesCopy = dataclasses;
    v30 = *v32;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v31 + 1) + 8 * v13);
        account = [v14 account];
        v16 = account;
        if (v8)
        {
          if ([account isSubscribedCalendarAccount])
          {
            v17 = v8;
            v18 = v9;
            v19 = dCopy;
            backingAccountInfo = [v16 backingAccountInfo];
            parentAccountIdentifier = [backingAccountInfo parentAccountIdentifier];
            v22 = [parentAccountIdentifier length];

            if (v22)
            {
              dCopy = v19;
              v9 = v18;
              v8 = v17;
              v12 = v30;
            }

            else
            {
              dCopy = v19;
              v9 = v18;
              v8 = v17;
              v12 = v30;
              if ([v16 enabledForAnyDADataclasses:dataclassesCopy])
              {
                [v14 syncFolderIDs:0 forDataclasses:dataclassesCopy isUserRequested:requestedCopy];
                v28 = 1;
              }
            }
          }
        }

        else
        {
          accountID = [account accountID];
          v24 = [accountID isEqualToString:dCopy];

          if (v24)
          {
            if ([v16 enabledForAnyDADataclasses:dataclassesCopy])
            {
              [v14 syncFolderIDs:0 forDataclasses:dataclassesCopy isUserRequested:requestedCopy];
            }

            v28 = 1;
            goto LABEL_21;
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v25 = [v9 countByEnumeratingWithState:&v31 objects:v35 count:16];
      v11 = v25;
      if (v25)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v28 = 0;
  }

LABEL_21:

  return v28 & 1;
}

- (id)activeAccountBundleIDs
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB58]);
  activeAgents = [(ESDAgentManager *)self activeAgents];
  v5 = [v3 initWithCapacity:{objc_msgSend(activeAgents, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  activeAgents2 = [(ESDAgentManager *)self activeAgents];
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
  [(ESDAgentManager *)self activeAgents];
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
            _os_log_impl(&dword_24A184000, v14, v15, "Found an EAS Account %@", buf, 0xCu);
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
  v41 = *MEMORY[0x277D85DE8];
  datasCopy = datas;
  clearCopy = clear;
  softClearCopy = softClear;
  idCopy = id;
  withIdCopy = withId;
  callbackCopy = callback;
  [(ESDAgentManager *)self activeAgents];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = v39 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v37;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v36 + 1) + 8 * i);
        account = [v21 account];
        accountID = [account accountID];
        v24 = [accountID isEqualToString:withIdCopy];

        if (v24)
        {
          v28 = clearCopy;
          v27 = datasCopy;
          v30 = idCopy;
          v29 = softClearCopy;
          [v21 processMeetingRequestDatas:datasCopy deliveryIdsToClear:clearCopy deliveryIdsToSoftClear:softClearCopy inFolderWithId:idCopy callback:callbackCopy];

          goto LABEL_13;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v25 = DALoggingwithCategory();
  v26 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v25, v26))
  {
    *buf = 0;
    _os_log_impl(&dword_24A184000, v25, v26, "ProcessMeetingRequests: account agent not found", buf, 2u);
  }

  callbackCopy[2](callbackCopy, 0);
  v28 = clearCopy;
  v27 = datasCopy;
  v30 = idCopy;
  v29 = softClearCopy;
LABEL_13:
}

- (BOOL)resetCertWarningsForAccountWithId:(id)id andDataclasses:(int64_t)dataclasses
{
  v23 = *MEMORY[0x277D85DE8];
  idCopy = id;
  [(ESDAgentManager *)self activeAgents];
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
  v35 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  deletedCopy = deleted;
  tagCopy = tag;
  dCopy = d;
  [(ESDAgentManager *)self activeAgents];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v33 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v15)
  {
    v16 = v15;
    v28 = tagCopy;
    v29 = addedCopy;
    v17 = *v31;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * i);
        account = [v19 account];
        accountID = [account accountID];
        v22 = [accountID isEqualToString:dCopy];

        if (v22)
        {
          addedCopy = v29;
          if (v29)
          {
            v24 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v29];
          }

          else
          {
            v24 = 0;
          }

          tagCopy = v28;
          if (deletedCopy)
          {
            v25 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:deletedCopy];
          }

          else
          {
            v25 = 0;
          }

          account2 = [v19 account];
          v23 = [account2 setFolderIdsThatExternalClientsCareAboutAdded:v24 deleted:v25 foldersTag:v28];

          goto LABEL_18;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

    v23 = 0;
    tagCopy = v28;
    addedCopy = v29;
  }

  else
  {
    v23 = 0;
  }

LABEL_18:

  return v23;
}

- (void)reportFolderItemsSyncSuccess:(BOOL)success forFolderWithID:(id)d withItemsCount:(unint64_t)count andAccountWithID:(id)iD
{
  countCopy = count;
  successCopy = success;
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  activeAgents = [(ESDAgentManager *)self activeAgents];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = [activeAgents countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(activeAgents);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        account = [v15 account];
        accountID = [account accountID];
        v18 = [accountID isEqualToString:iDCopy];

        if (v18)
        {
          account2 = [v15 account];
          v20 = account2;
          if (successCopy)
          {
            [account2 removeFolderIDFromPingBlacklist:dCopy];
            if (countCopy)
            {
              [v20 removeFromAllPingHistoryBlacklistForFolderID:dCopy];
            }
          }

          else
          {
            [account2 addFolderIDToPingBlacklist:dCopy];
          }
        }
      }

      v12 = [activeAgents countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }
}

- (id)stateString
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ESDAgentManager *)selfCopy activeAgents];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v3 = v20 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v20;
    v7 = &stru_285D58A48;
    do
    {
      v8 = 0;
      v9 = v5;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v5 = *(*(&v19 + 1) + 8 * v8);

        stateString = [v5 stateString];
        v11 = [(__CFString *)v7 stringByAppendingString:stateString];

        v7 = [v11 stringByAppendingString:@"=======\n\n"];

        ++v8;
        v9 = v5;
      }

      while (v4 != v8);
      v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }

  else
  {
    v7 = &stru_285D58A48;
  }

  mEMORY[0x277D03790] = [MEMORY[0x277D03790] sharedGateKeeper];
  stateString2 = [mEMORY[0x277D03790] stateString];

  if (stateString2)
  {
    v14 = [(__CFString *)v7 stringByAppendingString:stateString2];

    v7 = v14;
  }

  mEMORY[0x277D037B0] = [MEMORY[0x277D037B0] sharedPowerAssertionManager];
  stateString3 = [mEMORY[0x277D037B0] stateString];

  if (stateString3)
  {
    v17 = [(__CFString *)v7 stringByAppendingString:stateString3];

    v7 = v17;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (BOOL)processFolderChange:(id)change forAccountWithID:(id)d completionBlock:(id)block
{
  v26 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  dCopy = d;
  blockCopy = block;
  [(ESDAgentManager *)self activeAgents];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = v24 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v20 = changeCopy;
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        account = [v15 account];
        accountID = [account accountID];
        v18 = [accountID isEqualToString:dCopy];

        if (v18)
        {
          changeCopy = v20;
          [v15 processDAFolderChange:v20 withCompletionBlock:blockCopy];
          LOBYTE(v12) = 1;
          goto LABEL_11;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    changeCopy = v20;
  }

LABEL_11:

  return v12;
}

- (void)getStatusReportDictsWithCompletionBlock:(id)block
{
  v40 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  array = [MEMORY[0x277CBEB18] array];
  mEMORY[0x277D03768] = [MEMORY[0x277D03768] sharedBabysitter];
  [(ESDAgentManager *)self activeAgents];
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
    [ESDAgentManager _hasDataclassWeCareAbout:];
  }

  v5 = [aboutCopy intersectsSet:_hasDataclassWeCareAbout__dataclassesWeCareAbout];

  return v5;
}

uint64_t __44__ESDAgentManager__hasDataclassWeCareAbout___block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  _hasDataclassWeCareAbout__dataclassesWeCareAbout = [v0 initWithObjects:{*MEMORY[0x277CB9108], *MEMORY[0x277CB9110], *MEMORY[0x277CB90F0], *MEMORY[0x277CB9190], *MEMORY[0x277CB90D0], *MEMORY[0x277CB9150], *MEMORY[0x277CB9178], 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)removePendingAccountSetup
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"ESDAgentManager.m" lineNumber:1507 description:@"Somebody isn't maintaining their account setup correctly"];

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
  _leafExchangeAccountTypes = [MEMORY[0x277D079E8] _leafExchangeAccountTypes];
  v5 = [_leafExchangeAccountTypes countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    v22 = _leafExchangeAccountTypes;
    v20 = *v28;
    do
    {
      v8 = 0;
      v21 = v6;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(_leafExchangeAccountTypes);
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
                v17 = [(ESDAgentManager *)self _hasDataclassWeCareAbout:enabledDataclasses];

                if (v17)
                {

                  v18 = 1;
                  _leafExchangeAccountTypes = v22;
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
          _leafExchangeAccountTypes = v22;
          v7 = v20;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [_leafExchangeAccountTypes countByEnumeratingWithState:&v27 objects:v32 count:16];
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

- (void)enableDaemon
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = launchdSemaphorePath();
  v3 = open(v2, 512, 256);
  if (v3 == -1)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *__error();
      *buf = 67109120;
      v8 = v6;
      _os_log_impl(&dword_24A184000, v4, v5, "unable to signal launchd to start dataaccessd: errno %d", buf, 8u);
    }
  }

  else
  {

    close(v3);
  }
}

- (void)disableDaemon
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = launchdSemaphorePath();
  v3 = unlink(v2);
  if (!v3 || v3 == -1 && *__error() == 2)
  {
    v4 = *MEMORY[0x277D07AE8];

    notify_post(v4);
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *__error();
      v8[0] = 67109120;
      v8[1] = v7;
      _os_log_impl(&dword_24A184000, v5, v6, "unable to signal launchd to stop dataaccessd: errno %d", v8, 8u);
    }
  }
}

- (void)cleanupLaunchdSemaphore
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = launchdSemaphorePath();
  v3 = unlink(v2);
  if (v3 && (v3 != -1 || *__error() != 2))
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = *__error();
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_24A184000, v4, v5, "unable to cleanup launchd semaphore: errno %d", v7, 8u);
    }
  }
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
      _os_log_impl(&dword_24A184000, v4, v5, "unable to signal launchd to keep dataaccessd alive: errno %d", buf, 8u);
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
      _os_log_impl(&dword_24A184000, v4, v5, "unable to cleanup launchd semaphore so that dataaccessd can be pressured exit: errno %d", v7, 8u);
    }
  }
}

@end