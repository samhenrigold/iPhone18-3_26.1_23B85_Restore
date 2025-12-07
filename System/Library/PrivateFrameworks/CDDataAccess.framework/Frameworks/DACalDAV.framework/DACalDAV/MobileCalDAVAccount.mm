@interface MobileCalDAVAccount
- (BOOL)_reallySearchQueriesRunning;
- (BOOL)_rem_updateAccountProperties;
- (BOOL)_saveModifiedPrincipalsOnBackingAccount;
- (BOOL)_updateCalendarStoreNoDBOpen:(BOOL)open;
- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)info;
- (BOOL)addressIsAccountOwner:(id)owner;
- (BOOL)isEqualToAccount:(id)account;
- (BOOL)isWritable;
- (BOOL)retryDiscoveryTask:(id)task;
- (BOOL)shouldFilterEventSyncTimeRange;
- (BOOL)shouldFilterSyncTimeRangeForInbox;
- (BOOL)shouldUseCalendarHomeSyncReport;
- (BOOL)supportsEvents;
- (BOOL)supportsReminders;
- (BOOL)upgradeAccount;
- (BOOL)wasMigrated;
- (CalDAVServerVersion)serverVersion;
- (DACoreDAVTaskManager)taskManager;
- (MobileCalDAVAccount)init;
- (MobileCalDAVAccount)initWithBackingAccountInfo:(id)info;
- (NSArray)wellKnownPaths;
- (NSSet)calendars;
- (NSString)calendarHomeSyncToken;
- (NSTimeZone)viewedTimeZone;
- (NSURL)collectionSetURL;
- (NSURL)serverBaseURL;
- (id)_calendarConstraintsPath;
- (id)_calendarConstraintsResource;
- (id)emailAddresses;
- (id)host;
- (id)localizedIdenticalAccountFailureMessage;
- (id)localizedInvalidPasswordMessage;
- (id)principalPath;
- (id)spinnerIdentifiers;
- (id)username;
- (int)overriddenPort;
- (int64_t)coreDAVLogLevel;
- (void)_collectMoveActions;
- (void)_reallyCancelAllSearchQueries;
- (void)_reallyCancelSearchQuery:(id)query;
- (void)_reallyPerformSearchQuery:(id)query;
- (void)_rem_createAccountStore_whichReallyShouldNotHappen;
- (void)_setSpinning:(BOOL)spinning;
- (void)_syncEndedWithError:(id)error;
- (void)_syncStarted;
- (void)_updateCalendarStore:(BOOL)store;
- (void)addCalendar:(id)calendar;
- (void)addPrincipal:(id)principal;
- (void)addToCoreDAVLoggingDelegates;
- (void)cancelRefreshWithCompletion:(id)completion;
- (void)coreDAVLogDiagnosticMessage:(id)message atLevel:(int64_t)level;
- (void)coreDAVLogTransmittedDataPartial:(id)partial;
- (void)dealloc;
- (void)discoverInitialPropertiesWithConsumer:(id)consumer;
- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error;
- (void)dropPowerAssertions;
- (void)ingestBackingAccountInfoProperties;
- (void)noteHomeSetOnDifferentHost:(id)host;
- (void)performDiscoveryWithHostname:(id)hostname username:(id)username consumer:(id)consumer;
- (void)reattainPowerAssertions;
- (void)refreshActor:(id)actor didCompleteWithError:(id)error;
- (void)refreshWithContext:(id)context;
- (void)releasePowerAssertion;
- (void)reloadCalendars;
- (void)removeCalendar:(id)calendar;
- (void)removeCalendarWithURL:(id)l;
- (void)removeFromCoreDAVLoggingDelegates;
- (void)removePrincipal:(id)principal;
- (void)resetStatusReport;
- (void)retainPowerAssertion;
- (void)setAccountDescription:(id)description;
- (void)setCalendarHomeSyncToken:(id)token;
- (void)setCollectionSetURL:(id)l;
- (void)setIsWritable:(BOOL)writable;
- (void)setOverriddenPort:(int)port;
- (void)setOverriddenScheme:(id)scheme;
- (void)setOverriddenServer:(id)server;
- (void)setPrincipalPath:(id)path;
- (void)setPrincipalURL:(id)l;
- (void)setSearchPropertySet:(id)set;
- (void)setServerVersion:(id)version;
- (void)setWasMigrated:(BOOL)migrated;
- (void)task:(id)task didFinishWithError:(id)error;
- (void)updateDelegates;
@end

@implementation MobileCalDAVAccount

- (void)ingestBackingAccountInfoProperties
{
  v48 = *MEMORY[0x277D85DE8];
  [(MobileCalDAVAccount *)self setMPrincipals:0];
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];

  if (mainPrincipal)
  {
    [(MobileCalDAVAccount *)self setMainPrincipal:0];
  }

  v4 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMainPrincipalUID"];
  v5 = objc_opt_new();
  [(MobileCalDAVAccount *)self setMPrincipals:v5];

  [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVPrincipals"];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = v44 = 0u;
  obj = [v40 allKeys];
  v6 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * i);
        v11 = [v40 valueForKey:v10];
        v12 = [[MobileCalDAVPrincipal alloc] initWithConfiguration:v11 principalUID:v10 account:self];
        mPrincipals = [(MobileCalDAVAccount *)self mPrincipals];
        [mPrincipals setObject:v12 forKeyedSubscript:v10];

        if (v4 && ([v10 isEqualToString:v4] & 1) != 0)
        {
          [(MobileCalDAVAccount *)self setMainPrincipal:v12];
        }

        else
        {
          mainPrincipal2 = [(MobileCalDAVAccount *)self mainPrincipal];
          v15 = v4 | mainPrincipal2;

          if (!v15)
          {
            [(MobileCalDAVAccount *)self setMainPrincipal:v12];
            mainPrincipal3 = [(MobileCalDAVAccount *)self mainPrincipal];
            v17 = [mainPrincipal3 uid];
            backingAccountInfo = [(MobileCalDAVAccount *)self backingAccountInfo];
            [backingAccountInfo setObject:v17 forKeyedSubscript:@"CalDAVMainPrincipalUID"];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v7);
  }

  mainPrincipal4 = [(MobileCalDAVAccount *)self mainPrincipal];

  if (!mainPrincipal4)
  {
    v20 = DALoggingwithCategory();
    v21 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v20, v21))
    {
      accountDescription = [(MobileCalDAVAccount *)self accountDescription];
      *buf = 138412290;
      v46 = accountDescription;
      _os_log_impl(&dword_242490000, v20, v21, "No main principal found in the account properties for %@. Creating a new one.", buf, 0xCu);
    }

    v23 = [[MobileCalDAVPrincipal alloc] initWithConfiguration:0 principalUID:0 account:self];
    [(MobileCalDAVAccount *)self setMainPrincipal:v23];

    mainPrincipal5 = [(MobileCalDAVAccount *)self mainPrincipal];
    v25 = [mainPrincipal5 uid];
    backingAccountInfo2 = [(MobileCalDAVAccount *)self backingAccountInfo];
    [backingAccountInfo2 setObject:v25 forKeyedSubscript:@"CalDAVMainPrincipalUID"];

    mainPrincipal6 = [(MobileCalDAVAccount *)self mainPrincipal];
    [(MobileCalDAVAccount *)self addPrincipal:mainPrincipal6];
  }

  v28 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountSearchPropertySetKey_CoreDAV"];

  if (v28)
  {
    v29 = objc_alloc(MEMORY[0x277CF7018]);
    v30 = MEMORY[0x277CBEB98];
    v31 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountSearchPropertySetKey_CoreDAV"];
    v32 = [v30 setWithArray:v31];
    v33 = [v29 initWithStringProperties:v32];

    [(MobileCalDAVAccount *)self setSearchPropertySet:v33];
  }

  v34 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountIsWritable"];

  if (v34)
  {
    v35 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountIsWritable"];
    -[MobileCalDAVAccount setIsWritable:](self, "setIsWritable:", [v35 intValue] != 0);
  }

  else
  {
    [(MobileCalDAVAccount *)self setIsWritable:1];
  }

  v36 = MEMORY[0x277CF7040];
  v37 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountServerVersion"];
  v38 = [v36 versionWithPropertyValue:v37];
  [(MobileCalDAVAccount *)self setServerVersion:v38];

  [(MobileCalDAVAccount *)self setNeedsAccountPropertyRefresh:1];
  self->_wasMigrated = -1;
}

- (MobileCalDAVAccount)initWithBackingAccountInfo:(id)info
{
  v9.receiver = self;
  v9.super_class = MobileCalDAVAccount;
  v3 = [(MobileCalDAVAccount *)&v9 initWithBackingAccountInfo:info];
  if (v3)
  {
    if (initWithBackingAccountInfo__onceToken != -1)
    {
      [MobileCalDAVAccount initWithBackingAccountInfo:];
    }

    registerDefaultLoggerWithCoreDAV = [MEMORY[0x277CF3A98] registerDefaultLoggerWithCoreDAV];
    v5 = [MEMORY[0x277CF3AE8] filenameWithBasename:@"CalDAVHTTPTraffic"];
    v6 = [objc_alloc(MEMORY[0x277CF3A98]) initWithFilename:v5];
    [(MobileCalDAVAccount *)v3 setCoreDAVLogger:v6];

    v7 = objc_opt_new();
    [(MobileCalDAVAccount *)v3 setSearchTaskSet:v7];
  }

  return v3;
}

void __50__MobileCalDAVAccount_initWithBackingAccountInfo___block_invoke()
{
  v0 = [MEMORY[0x277CF3A40] sharedLogger];
  [v0 registerWithiCalendar];
}

- (MobileCalDAVAccount)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MobileCalDAVAccount.m" lineNumber:226 description:{@"Nothing to see here, buddy. Just turn around and leave quietly."}];

  return 0;
}

- (void)dealloc
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"MobileCalDAVAccount.m" lineNumber:231 description:@"Account was deallocated while still refreshing. Ouch"];
}

- (BOOL)upgradeAccount
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(MobileCalDAVAccount *)self accountIntPropertyForKey:@"CalDAVAccountVersion"];
  v4 = v3;
  if (v3 <= 11200)
  {
    if (v3 <= 1)
    {
      mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
      legacy_principalURL = [mainPrincipal legacy_principalURL];

      if (legacy_principalURL)
      {
        v7 = DALoggingwithCategory();
        v8 = *(MEMORY[0x277CF3AF0] + 6);
        if (os_log_type_enabled(v7, v8))
        {
          mainPrincipal2 = [(MobileCalDAVAccount *)self mainPrincipal];
          legacy_principalURL2 = [mainPrincipal2 legacy_principalURL];
          *buf = 138412290;
          v18 = legacy_principalURL2;
          _os_log_impl(&dword_242490000, v7, v8, "Upgrading principal URL from %@", buf, 0xCu);
        }

        mainPrincipal3 = [(MobileCalDAVAccount *)self mainPrincipal];
        legacy_principalURL3 = [mainPrincipal3 legacy_principalURL];
        [(MobileCalDAVAccount *)self setPrincipalURL:legacy_principalURL3];

        v13 = DALoggingwithCategory();
        if (os_log_type_enabled(v13, v8))
        {
          principalURL = [(MobileCalDAVAccount *)self principalURL];
          *buf = 138412290;
          v18 = principalURL;
          _os_log_impl(&dword_242490000, v13, v8, "New principal URL is %@", buf, 0xCu);
        }
      }
    }

    [(MobileCalDAVAccount *)self setAccountIntProperty:11201 forKey:@"CalDAVAccountVersion"];
    [(MobileCalDAVAccount *)self saveModifiedPropertiesOnBackingAccount];
  }

  v16.receiver = self;
  v16.super_class = MobileCalDAVAccount;
  return (v4 < 11201) | [(MobileCalDAVAccount *)&v16 upgradeAccount];
}

- (id)emailAddresses
{
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  calendarUserAddresses = [mainPrincipal calendarUserAddresses];
  allObjects = [calendarUserAddresses allObjects];
  v5 = [allObjects valueForKey:@"absoluteString"];

  return v5;
}

- (void)setOverriddenServer:(id)server
{
  serverCopy = server;
  overriddenServer = [(MobileCalDAVAccount *)self overriddenServer];
  if (overriddenServer != serverCopy && ([serverCopy isEqualToString:overriddenServer] & 1) == 0)
  {
    [(MobileCalDAVAccount *)self setObject:serverCopy forKeyedSubscript:@"CalDAVMobileAccountOverriddenServer"];
  }
}

- (void)setOverriddenPort:(int)port
{
  v3 = *&port;
  if ([(MobileCalDAVAccount *)self overriddenPort]!= port)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    [(MobileCalDAVAccount *)self setObject:v5 forKeyedSubscript:@"CalDAVMobileAccountOverriddenPort"];
  }
}

- (int)overriddenPort
{
  v2 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountOverriddenPort"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setOverriddenScheme:(id)scheme
{
  schemeCopy = scheme;
  overriddenScheme = [(MobileCalDAVAccount *)self overriddenScheme];
  if (overriddenScheme != schemeCopy && ([schemeCopy isEqualToString:overriddenScheme] & 1) == 0)
  {
    [(MobileCalDAVAccount *)self setObject:schemeCopy forKeyedSubscript:@"CalDAVMobileAccountOverriddenScheme"];
  }
}

- (id)principalPath
{
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  principalPath = [mainPrincipal principalPath];

  return principalPath;
}

- (void)setPrincipalPath:(id)path
{
  pathCopy = path;
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  [mainPrincipal setPrincipalPath:pathCopy];
}

- (void)setPrincipalURL:(id)l
{
  lCopy = l;
  absoluteString = [lCopy absoluteString];
  v6 = [absoluteString hasPrefix:@"/"];

  if (v6)
  {
    absoluteString2 = [lCopy absoluteString];

    [(MobileCalDAVAccount *)self setPrincipalPath:absoluteString2];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MobileCalDAVAccount;
    [(MobileCalDAVAccount *)&v8 setPrincipalURL:lCopy];
  }
}

- (NSURL)serverBaseURL
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = MEMORY[0x277CCACA8];
  scheme = [(MobileCalDAVAccount *)self scheme];
  host = [(MobileCalDAVAccount *)self host];
  v7 = [v4 stringWithFormat:@"%@://%@:%ld", scheme, host, -[MobileCalDAVAccount port](self, "port")];
  v8 = [v3 URLWithString:v7];

  return v8;
}

- (void)noteHomeSetOnDifferentHost:(id)host
{
  hostCopy = host;
  scheme = [hostCopy scheme];
  -[MobileCalDAVAccount setUseSSL:](self, "setUseSSL:", [scheme isEqualToString:@"http"] ^ 1);

  host = [hostCopy host];
  [(MobileCalDAVAccount *)self setHost:host];

  port = [hostCopy port];

  if (port)
  {
    port2 = [hostCopy port];
    -[MobileCalDAVAccount setPort:](self, "setPort:", [port2 integerValue]);
  }

  [(MobileCalDAVAccount *)self setShouldDoInitialAutodiscovery:1];
  [(MobileCalDAVAccount *)self saveAccountProperties];
}

- (void)setAccountDescription:(id)description
{
  v4.receiver = self;
  v4.super_class = MobileCalDAVAccount;
  [(MobileCalDAVAccount *)&v4 setAccountDescription:description];
  [(MobileCalDAVAccount *)self _updateCalendarStore:0];
}

- (NSURL)collectionSetURL
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountCollectionSetName"];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (void)setCollectionSetURL:(id)l
{
  absoluteString = [l absoluteString];
  [(MobileCalDAVAccount *)self setObject:absoluteString forKeyedSubscript:@"CalDAVMobileAccountCollectionSetName"];
}

- (void)setSearchPropertySet:(id)set
{
  setCopy = set;
  searchPropertySet = [(MobileCalDAVAccount *)self searchPropertySet];

  if (searchPropertySet != setCopy)
  {
    objc_storeStrong(&self->_searchPropertySet, set);
    searchPropertySet2 = [(MobileCalDAVAccount *)self searchPropertySet];
    stringProperties = [searchPropertySet2 stringProperties];
    allObjects = [stringProperties allObjects];
    v9 = [allObjects sortedArrayUsingSelector:sel_compare_];
    backingAccountInfo = [(MobileCalDAVAccount *)self backingAccountInfo];
    [backingAccountInfo setObject:v9 forKeyedSubscript:@"CalDAVMobileAccountSearchPropertySetKey_CoreDAV"];
  }
}

- (BOOL)isWritable
{
  v2 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountIsWritable"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIsWritable:(BOOL)writable
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:writable];
  [(MobileCalDAVAccount *)self setObject:v4 forKeyedSubscript:@"CalDAVMobileAccountIsWritable"];
}

- (BOOL)wasMigrated
{
  wasMigrated = self->_wasMigrated;
  if (wasMigrated == -1)
  {
    rem_account = [(DAAccount *)self rem_account];
    v5 = rem_account;
    if (rem_account)
    {
      self->_wasMigrated = [rem_account daWasMigrated];
    }

    wasMigrated = self->_wasMigrated;
  }

  return wasMigrated == 1;
}

- (void)setWasMigrated:(BOOL)migrated
{
  migratedCopy = migrated;
  v16 = *MEMORY[0x277D85DE8];
  rem_account = [(DAAccount *)self rem_account];
  v6 = rem_account;
  if (rem_account && [rem_account daWasMigrated] != migratedCopy)
  {
    rem_saveRequest = [(DAAccount *)self rem_saveRequest];
    v8 = [rem_saveRequest updateAccount:v6];
    [v8 setDaWasMigrated:migratedCopy];
    v13 = 0;
    v9 = [rem_saveRequest saveSynchronouslyWithError:&v13];
    v10 = v13;
    if ((v9 & 1) == 0)
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138412290;
        v15 = v10;
        _os_log_impl(&dword_242490000, v11, v12, "Error saving daWasMigrated: %@", buf, 0xCu);
      }
    }

    self->_wasMigrated = -1;
  }
}

- (void)addCalendar:(id)calendar
{
  v16 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    if ([calendarCopy isSubscribed])
    {
      v7 = @"subscribed ";
    }

    else
    {
      v7 = &stru_2854B8D68;
    }

    calendarURLString = [calendarCopy calendarURLString];
    v10 = 138412802;
    v11 = v7;
    v12 = 2048;
    v13 = calendarCopy;
    v14 = 2112;
    v15 = calendarURLString;
    _os_log_impl(&dword_242490000, v5, v6, "Adding %@calendar %p with url %@", &v10, 0x20u);
  }

  calendars = [(MobileCalDAVAccount *)self calendars];
  [calendars addObject:calendarCopy];
}

- (void)removeCalendar:(id)calendar
{
  v16 = *MEMORY[0x277D85DE8];
  calendarCopy = calendar;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    if ([calendarCopy isSubscribed])
    {
      v7 = @"subscribed ";
    }

    else
    {
      v7 = &stru_2854B8D68;
    }

    calendarURLString = [calendarCopy calendarURLString];
    v10 = 138412802;
    v11 = v7;
    v12 = 2048;
    v13 = calendarCopy;
    v14 = 2112;
    v15 = calendarURLString;
    _os_log_impl(&dword_242490000, v5, v6, "Removing %@calendar %p at url %@", &v10, 0x20u);
  }

  [calendarCopy deleteCalendar];
  calendars = [(MobileCalDAVAccount *)self calendars];
  [calendars removeObject:calendarCopy];
}

- (void)removeCalendarWithURL:(id)l
{
  v27 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v26 = lCopy;
    _os_log_impl(&dword_242490000, v5, v6, "Removing calendar with url %@", buf, 0xCu);
  }

  v19 = lCopy;
  absoluteString = [lCopy absoluteString];
  calendars = [(MobileCalDAVAccount *)self calendars];
  v9 = [calendars copy];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        calendarURL = [v15 calendarURL];
        absoluteString2 = [calendarURL absoluteString];
        v18 = [absoluteString2 isEqualToString:absoluteString];

        if (v18)
        {
          [(MobileCalDAVAccount *)self removeCalendar:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }
}

- (NSSet)calendars
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v25 = selfCopy;
  mCalendars = [(MobileCalDAVAccount *)selfCopy mCalendars];

  if (!mCalendars)
  {
    v27 = objc_opt_new();
    [(DAAccount *)selfCopy rem_account];
    v23 = v32 = 0;
    v24 = [v23 fetchListsIncludingSpecialContainersWithError:&v32];
    v22 = v32;
    if (v22)
    {
      v4 = DALoggingwithCategory();
      v5 = *(MEMORY[0x277CF3AF0] + 3);
      log = v4;
      if (os_log_type_enabled(v4, v5))
      {
        accountDescription = [(MobileCalDAVAccount *)selfCopy accountDescription];
        *buf = 138412290;
        v34 = accountDescription;
        _os_log_impl(&dword_242490000, log, v5, "MobileCalDAVAccount: Failed to fetch lists from account {%@}", buf, 0xCu);
      }
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      log = v24;
      v7 = [log countByEnumeratingWithState:&v28 objects:v41 count:16];
      if (v7)
      {
        v8 = *v29;
        v9 = *(MEMORY[0x277CF3AF0] + 7);
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(log);
            }

            v11 = *(*(&v28 + 1) + 8 * i);
            mainPrincipal = [(MobileCalDAVAccount *)selfCopy mainPrincipal];
            v13 = [MobileCalDAVCalendar calendarWithREMList:v11 principal:mainPrincipal];

            v14 = DALoggingwithCategory();
            if (os_log_type_enabled(v14, v9))
            {
              calendarURLString = [v13 calendarURLString];
              guid = [v13 guid];
              *buf = 138413058;
              v34 = v13;
              v35 = 2112;
              v36 = v11;
              v37 = 2112;
              v38 = calendarURLString;
              v39 = 2112;
              v40 = guid;
              _os_log_impl(&dword_242490000, v14, v9, "MobileCalDAVAccount: Created calendar %@ from REM %@ with url %@ guid %@", buf, 0x2Au);

              selfCopy = v25;
            }

            if (v13)
            {
              v17 = DALoggingwithCategory();
              if (os_log_type_enabled(v17, v9))
              {
                calendarURLString2 = [v13 calendarURLString];
                guid2 = [v13 guid];
                *buf = 134218498;
                v34 = v13;
                v35 = 2112;
                v36 = calendarURLString2;
                v37 = 2112;
                v38 = guid2;
                _os_log_impl(&dword_242490000, v17, v9, "MobileCalDAVAccount: Loaded calendar %p with URL %@ guid %@", buf, 0x20u);
              }

              [v27 addObject:v13];
            }
          }

          v7 = [log countByEnumeratingWithState:&v28 objects:v41 count:16];
        }

        while (v7);
      }
    }

    [(MobileCalDAVAccount *)selfCopy setMCalendars:v27];
  }

  objc_sync_exit(selfCopy);

  mCalendars2 = [(MobileCalDAVAccount *)selfCopy mCalendars];

  return mCalendars2;
}

- (void)reloadCalendars
{
  obj = self;
  objc_sync_enter(obj);
  [(MobileCalDAVAccount *)obj setMCalendars:0];
  objc_sync_exit(obj);
}

- (void)addPrincipal:(id)principal
{
  principalCopy = principal;
  mPrincipals = [(MobileCalDAVAccount *)self mPrincipals];
  v5 = [principalCopy uid];
  [mPrincipals setObject:principalCopy forKeyedSubscript:v5];

  [principalCopy setAccount:self];
  backingAccountInfo = [(MobileCalDAVAccount *)self backingAccountInfo];
  v7 = [backingAccountInfo objectForKeyedSubscript:@"CalDAVPrincipals"];
  v8 = [v7 mutableCopy];

  if (!v8)
  {
    v8 = objc_opt_new();
  }

  configuration = [principalCopy configuration];
  v10 = [principalCopy uid];
  [v8 setObject:configuration forKeyedSubscript:v10];

  backingAccountInfo2 = [(MobileCalDAVAccount *)self backingAccountInfo];
  [backingAccountInfo2 setObject:v8 forKeyedSubscript:@"CalDAVPrincipals"];
}

- (void)removePrincipal:(id)principal
{
  principalCopy = principal;
  backingAccountInfo = [(MobileCalDAVAccount *)self backingAccountInfo];
  v6 = [backingAccountInfo objectForKeyedSubscript:@"CalDAVPrincipals"];
  v11 = [v6 mutableCopy];

  if (!v11)
  {
    v11 = objc_opt_new();
  }

  v7 = [principalCopy uid];
  [v11 removeObjectForKey:v7];

  backingAccountInfo2 = [(MobileCalDAVAccount *)self backingAccountInfo];
  [backingAccountInfo2 setObject:v11 forKeyedSubscript:@"CalDAVPrincipals"];

  mPrincipals = [(MobileCalDAVAccount *)self mPrincipals];
  v10 = [principalCopy uid];

  [mPrincipals removeObjectForKey:v10];
}

- (CalDAVServerVersion)serverVersion
{
  serverVersion = self->_serverVersion;
  if (!serverVersion)
  {
    v4 = MEMORY[0x277CF7040];
    v5 = [(MobileCalDAVAccount *)self objectForKeyedSubscript:@"CalDAVMobileAccountServerVersion"];
    v6 = [v4 versionWithPropertyValue:v5];
    v7 = self->_serverVersion;
    self->_serverVersion = v6;

    serverVersion = self->_serverVersion;
  }

  return serverVersion;
}

- (void)setServerVersion:(id)version
{
  v17 = *MEMORY[0x277D85DE8];
  versionCopy = version;
  serverVersion = [(MobileCalDAVAccount *)self serverVersion];
  v7 = [versionCopy isEqual:serverVersion];

  if ((v7 & 1) == 0)
  {
    v8 = DALoggingwithCategory();
    v9 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v8, v9))
    {
      serverVersion2 = [(MobileCalDAVAccount *)self serverVersion];
      v13 = 138412546;
      v14 = versionCopy;
      v15 = 2112;
      v16 = serverVersion2;
      _os_log_impl(&dword_242490000, v8, v9, "Setting CalDAV server version to '%@' (currently '%@')", &v13, 0x16u);
    }

    objc_storeStrong(&self->_serverVersion, version);
    propertyValue = [versionCopy propertyValue];
    [(MobileCalDAVAccount *)self setObject:propertyValue forKeyedSubscript:@"CalDAVMobileAccountServerVersion"];

    v12 = DALoggingwithCategory();
    if (os_log_type_enabled(v12, v9))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_242490000, v12, v9, "Updating calendar store and saving account properties since CalDAV server version changed", &v13, 2u);
    }

    [(MobileCalDAVAccount *)self _updateCalendarStore:0];
  }
}

- (NSTimeZone)viewedTimeZone
{
  v2 = CalCopyDefaultTimeZone();

  return v2;
}

- (BOOL)shouldFilterEventSyncTimeRange
{
  serverVersion = [(MobileCalDAVAccount *)self serverVersion];
  if ([serverVersion supportsTimeRangeFilter])
  {
    v4 = [(MobileCalDAVAccount *)self preferredEventDaysToSync]> 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)shouldFilterSyncTimeRangeForInbox
{
  shouldFilterEventSyncTimeRange = [(MobileCalDAVAccount *)self shouldFilterEventSyncTimeRange];
  if (shouldFilterEventSyncTimeRange)
  {
    serverVersion = [(MobileCalDAVAccount *)self serverVersion];
    supportsTimeRangeFilterOnInbox = [serverVersion supportsTimeRangeFilterOnInbox];

    LOBYTE(shouldFilterEventSyncTimeRange) = supportsTimeRangeFilterOnInbox;
  }

  return shouldFilterEventSyncTimeRange;
}

- (BOOL)supportsReminders
{
  if ([MEMORY[0x277CF3AC8] calDAVRemindersForAll])
  {
    return 1;
  }

  serverVersion = [(MobileCalDAVAccount *)self serverVersion];
  type = [serverVersion type];
  v6 = [type isEqualToString:*MEMORY[0x277CF70A0]];

  if (v6)
  {
    return 0;
  }

  v7 = MEMORY[0x277CF7048];
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  supportedCalendarComponentSets = [mainPrincipal supportedCalendarComponentSets];
  LOBYTE(v7) = [v7 allowedCalendars:supportedCalendarComponentSets contains:@"VTODO"];

  return v7;
}

- (BOOL)supportsEvents
{
  v2 = MEMORY[0x277CF7048];
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  supportedCalendarComponentSets = [mainPrincipal supportedCalendarComponentSets];
  LOBYTE(v2) = [v2 allowedCalendars:supportedCalendarComponentSets contains:@"VEVENT"];

  return v2;
}

- (DACoreDAVTaskManager)taskManager
{
  v3 = *MEMORY[0x277CF3A48];
  v4 = *(&self->super.super.isa + v3);
  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CF3AA0]) initWithAccount:self];
    v6 = *(&self->super.super.isa + v3);
    *(&self->super.super.isa + v3) = v5;

    v4 = *(&self->super.super.isa + v3);
  }

  return v4;
}

- (BOOL)shouldUseCalendarHomeSyncReport
{
  serverVersion = [(MobileCalDAVAccount *)self serverVersion];
  if ([serverVersion supportsCalendarHomeSync])
  {
    alwaysUseCalendarHomeSync = 1;
  }

  else
  {
    alwaysUseCalendarHomeSync = [MEMORY[0x277CF3AC8] alwaysUseCalendarHomeSync];
  }

  return alwaysUseCalendarHomeSync;
}

- (id)host
{
  host = self->_hostForDiscovery;
  if (!host)
  {
    v5.receiver = self;
    v5.super_class = MobileCalDAVAccount;
    host = [(MobileCalDAVAccount *)&v5 host];
  }

  return host;
}

- (id)username
{
  username = self->_usernameForDiscovery;
  if (!username)
  {
    v5.receiver = self;
    v5.super_class = MobileCalDAVAccount;
    username = [(MobileCalDAVAccount *)&v5 username];
  }

  return username;
}

- (id)_calendarConstraintsResource
{
  serverVersion = [(MobileCalDAVAccount *)self serverVersion];
  if ([serverVersion supportsTimeRangeFilter] && (objc_msgSend(serverVersion, "supportsTimeRangeFilterWithoutEndDate") & 1) == 0)
  {
    supportsAutoSchedule = [serverVersion supportsAutoSchedule];
    supportsPrivateComments = [serverVersion supportsPrivateComments];
    v5 = @"FutureLimitedCalDAVCalendarConstraintsNoScheduleNoComments";
    v6 = supportsPrivateComments == 0;
    v7 = @"FutureLimitedCalDAVCalendarConstraintsNoComments";
    if (supportsPrivateComments)
    {
      v5 = @"FutureLimitedCalDAVCalendarConstraintsNoSchedule";
    }

    v8 = @"FutureLimitedCalDAVCalendarConstraints";
  }

  else
  {
    supportsAutoSchedule = [serverVersion supportsAutoSchedule];
    supportsPrivateComments2 = [serverVersion supportsPrivateComments];
    v5 = @"CalDAVCalendarConstraintsNoScheduleNoComments";
    v6 = supportsPrivateComments2 == 0;
    v7 = @"CalDAVCalendarConstraintsNoComments";
    if (supportsPrivateComments2)
    {
      v5 = @"CalDAVCalendarConstraintsNoSchedule";
    }

    v8 = @"CalDAVCalendarConstraints";
  }

  if (v6)
  {
    v8 = v7;
  }

  if (supportsAutoSchedule)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

- (id)_calendarConstraintsPath
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  _calendarConstraintsResource = [(MobileCalDAVAccount *)self _calendarConstraintsResource];
  v5 = [v3 pathForResource:_calendarConstraintsResource ofType:@"plist"];

  return v5;
}

- (NSString)calendarHomeSyncToken
{
  rem_account = [(DAAccount *)self rem_account];
  v3 = rem_account;
  if (rem_account)
  {
    externalModificationTag = [rem_account externalModificationTag];
  }

  else
  {
    externalModificationTag = 0;
  }

  return externalModificationTag;
}

- (void)setCalendarHomeSyncToken:(id)token
{
  v16 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  calendarHomeSyncToken = [(MobileCalDAVAccount *)self calendarHomeSyncToken];
  rem_account = [(DAAccount *)self rem_account];
  if (rem_account && calendarHomeSyncToken != tokenCopy && ([tokenCopy isEqualToString:calendarHomeSyncToken] & 1) == 0)
  {
    rem_saveRequest = [(DAAccount *)self rem_saveRequest];
    v8 = [rem_saveRequest updateAccount:rem_account];
    [v8 setExternalModificationTag:tokenCopy];
    v13 = 0;
    v9 = [rem_saveRequest saveSynchronouslyWithError:&v13];
    v10 = v13;
    if ((v9 & 1) == 0)
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 138543362;
        v15 = v10;
        _os_log_impl(&dword_242490000, v11, v12, "Error saving CalendarHomeSyncToken: %{public}@", buf, 0xCu);
      }
    }
  }
}

- (BOOL)_rem_updateAccountProperties
{
  v24 = *MEMORY[0x277D85DE8];
  rem_account = [(DAAccount *)self rem_account];
  if (rem_account)
  {
    rem_saveRequest = [(DAAccount *)self rem_saveRequest];
    v5 = [rem_saveRequest updateAccount:rem_account];
    accountDescription = [(MobileCalDAVAccount *)self accountDescription];
    [v5 setName:accountDescription];

    accountID = [(MobileCalDAVAccount *)self accountID];
    [v5 setExternalIdentifier:accountID];

    _calendarConstraintsPath = [(MobileCalDAVAccount *)self _calendarConstraintsPath];
    [v5 setDaConstraintsDescriptionPath:_calendarConstraintsPath];

    mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
    if ([mainPrincipal canCreateCalendars])
    {
      serverVersion = [(MobileCalDAVAccount *)self serverVersion];
      type = [serverVersion type];
      [v5 setDaAllowsCalendarAddDeleteModify:{objc_msgSend(type, "isEqualToString:", *MEMORY[0x277CF70A0]) ^ 1}];
    }

    else
    {
      [v5 setDaAllowsCalendarAddDeleteModify:0];
    }

    serverVersion2 = [(MobileCalDAVAccount *)self serverVersion];
    [v5 setDaSupportsSharedCalendars:{objc_msgSend(serverVersion2, "supportsSharing")}];

    changedKeys = [v5 changedKeys];
    v15 = [changedKeys count];

    v12 = v15 != 0;
    if (v15)
    {
      v21 = 0;
      v16 = [rem_saveRequest saveSynchronouslyWithError:&v21];
      v17 = v21;
      if ((v16 & 1) == 0)
      {
        v18 = DALoggingwithCategory();
        v19 = *(MEMORY[0x277CF3AF0] + 3);
        if (os_log_type_enabled(v18, v19))
        {
          *buf = 138543362;
          v23 = v17;
          _os_log_impl(&dword_242490000, v18, v19, "Error saving account properties: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_rem_createAccountStore_whichReallyShouldNotHappen
{
  rem_store = [(DAAccount *)self rem_store];
  accountID = [(MobileCalDAVAccount *)self accountID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__MobileCalDAVAccount__rem_createAccountStore_whichReallyShouldNotHappen__block_invoke;
  v5[3] = &unk_278D4F2F0;
  v5[4] = self;
  [rem_store updateAccountWithAccountID:accountID restartDA:0 completion:v5];
}

void __73__MobileCalDAVAccount__rem_createAccountStore_whichReallyShouldNotHappen__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = DALoggingwithCategory();
  v9 = v8;
  if (v7)
  {
    v10 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v8, v10))
    {
      v11 = [*(a1 + 32) accountID];
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_242490000, v9, v10, "MobileCalDAVAccount: _rem_createAccountStore: Error from updateAccountWithAccountID: %{public}@, error: %{public}@", &v16, 0x16u);
    }
  }

  else
  {
    v12 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(v8, v12))
    {
      v13 = [*(a1 + 32) accountID];
      v14 = [MEMORY[0x277CCABB0] numberWithBool:a2];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:a3];
      v16 = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v15;
      _os_log_impl(&dword_242490000, v9, v12, "MobileCalDAVAccount: Done updateAccountWithAccountID: %{public}@, didAdd: %{public}@, didUpdate: %{public}@", &v16, 0x20u);
    }
  }
}

- (BOOL)_updateCalendarStoreNoDBOpen:(BOOL)open
{
  openCopy = open;
  v22 = *MEMORY[0x277D85DE8];
  rem_account = [(DAAccount *)self rem_account];
  if (!rem_account)
  {
    v6 = DALoggingwithCategory();
    v7 = v6;
    v8 = 3;
    if (openCopy)
    {
      v8 = 0;
    }

    v9 = *(MEMORY[0x277CF3AF0] + v8);
    if (os_log_type_enabled(v6, v9))
    {
      accountID = [(MobileCalDAVAccount *)self accountID];
      v20 = 138543362;
      v21 = accountID;
      _os_log_impl(&dword_242490000, v7, v9, "MobileCalDAVAccount: Account missing. Calling _rem_createAccountStore now which is not quite a use case we expect for DA in remindd nowadays {accountID: %{public}@}", &v20, 0xCu);
    }

    if (openCopy)
    {
      [(MobileCalDAVAccount *)self _rem_createAccountStore_whichReallyShouldNotHappen];
    }
  }

  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  isDelegate = [mainPrincipal isDelegate];

  if (!rem_account)
  {
    v15 = DALoggingwithCategory();
    refreshContext = v15;
    v16 = 3;
    if (openCopy)
    {
      v16 = 0;
    }

    v17 = *(MEMORY[0x277CF3AF0] + v16);
    if (os_log_type_enabled(v15, v17))
    {
      accountID2 = [(MobileCalDAVAccount *)self accountID];
      v20 = 138543362;
      v21 = accountID2;
      _os_log_impl(&dword_242490000, refreshContext, v17, "Couldn't update ReminderKit account because one doesn't exist in the database {accountID: %{public}@}", &v20, 0xCu);
    }

    _rem_updateAccountProperties = 0;
    goto LABEL_16;
  }

  _rem_updateAccountProperties = [(MobileCalDAVAccount *)self _rem_updateAccountProperties];
  if (isDelegate)
  {
    refreshContext = [(MobileCalDAVAccount *)self refreshContext];
    [refreshContext setIsPrincipalOnly:1];
LABEL_16:
  }

  return _rem_updateAccountProperties;
}

- (void)_updateCalendarStore:(BOOL)store
{
  storeCopy = store;
  accountID = [(MobileCalDAVAccount *)self accountID];

  if (accountID)
  {

    [(MobileCalDAVAccount *)self _updateCalendarStoreNoDBOpen:storeCopy];
  }
}

- (id)spinnerIdentifiers
{
  v3 = spinnerIdentifiers_sSpinnerIdentifiers;
  if (spinnerIdentifiers_sSpinnerIdentifiers)
  {
  }

  else
  {
    spinnerIdentifiers_sSpinnerIdentifiers = &unk_2854BF720;

    v3 = &unk_2854BF720;
  }

  return v3;
}

- (void)_setSpinning:(BOOL)spinning
{
  spinningCopy = spinning;
  if (!spinning || ![(MobileCalDAVAccount *)self isSpinning])
  {

    [(MobileCalDAVAccount *)self setIsSpinning:spinningCopy];
  }
}

- (void)_syncStarted
{
  [(MobileCalDAVAccount *)self _setSpinning:1];
  sync = [MEMORY[0x277D447F0] sync];
  v4 = os_signpost_id_make_with_pointer(sync, self);
  v5 = sync;
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_242490000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "CalDAV.sync", &unk_2424C3675, v7, 2u);
  }
}

- (void)_syncEndedWithError:(id)error
{
  sync = [MEMORY[0x277D447F0] sync];
  v5 = os_signpost_id_make_with_pointer(sync, self);
  v6 = sync;
  v7 = v6;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_242490000, v7, OS_SIGNPOST_INTERVAL_END, v5, "CalDAV.sync", &unk_2424C3675, v8, 2u);
  }

  [(MobileCalDAVAccount *)self _setSpinning:0];
}

- (void)cancelRefreshWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    accountDescription = [(MobileCalDAVAccount *)self accountDescription];
    accountID = [(MobileCalDAVAccount *)self accountID];
    *buf = 138412546;
    v20 = accountDescription;
    v21 = 2114;
    v22 = accountID;
    _os_log_impl(&dword_242490000, v5, v6, "Canceling MobileCalDAVAccount refresh for account %@ (%{public}@)", buf, 0x16u);
  }

  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __51__MobileCalDAVAccount_cancelRefreshWithCompletion___block_invoke;
  v16 = &unk_278D4F318;
  selfCopy = self;
  v18 = completionCopy;
  v9 = completionCopy;
  v10 = MEMORY[0x245D0F810](&v13);
  v11 = [(MobileCalDAVAccount *)self actor:v13];

  if (v11)
  {
    actor = [(MobileCalDAVAccount *)self actor];
    [actor cancelWithCompletion:v10];
  }

  else
  {
    v10[2](v10);
  }
}

uint64_t __51__MobileCalDAVAccount_cancelRefreshWithCompletion___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + *MEMORY[0x277CF3A48]) shutdown];
  v2 = DALoggingwithCategory();
  v3 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v2, v3))
  {
    *v5 = 0;
    _os_log_impl(&dword_242490000, v2, v3, "CalDAV task manager has been shut down.", v5, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (BOOL)_saveModifiedPrincipalsOnBackingAccount
{
  v47 = *MEMORY[0x277D85DE8];
  backingAccountInfo = [(MobileCalDAVAccount *)self backingAccountInfo];
  v4 = [backingAccountInfo objectForKeyedSubscript:@"CalDAVPrincipals"];
  v5 = [v4 mutableCopy];

  if (!v5)
  {
    v5 = objc_opt_new();
  }

  allKeys = [v5 allKeys];
  v7 = [allKeys mutableCopy];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  principals = [(MobileCalDAVAccount *)self principals];
  allValues = [principals allValues];

  v10 = [allValues countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v40;
    v14 = *(MEMORY[0x277CF3AF0] + 6);
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(allValues);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        v17 = [v16 uid];
        [v7 removeObject:v17];

        if ([v16 isDirty])
        {
          v18 = DALoggingwithCategory();
          if (os_log_type_enabled(v18, v14))
          {
            v19 = [v16 uid];
            *buf = 138543362;
            v45 = v19;
            _os_log_impl(&dword_242490000, v18, v14, "Principal %{public}@ is dirty", buf, 0xCu);
          }

          configuration = [v16 configuration];
          v21 = [v16 uid];
          [v5 setObject:configuration forKeyedSubscript:v21];

          v12 = 1;
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v39 objects:v46 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v22 = v7;
  v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v36;
    v26 = *(MEMORY[0x277CF3AF0] + 6);
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v36 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v35 + 1) + 8 * j);
        v29 = DALoggingwithCategory();
        if (os_log_type_enabled(v29, v26))
        {
          *buf = 138543362;
          v45 = v28;
          _os_log_impl(&dword_242490000, v29, v26, "Principal %{public}@ was deleted.", buf, 0xCu);
        }

        [v5 removeObjectForKey:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v24);
    v12 = 1;
  }

  backingAccountInfo2 = [(MobileCalDAVAccount *)selfCopy backingAccountInfo];
  [backingAccountInfo2 setObject:v5 forKeyedSubscript:@"CalDAVPrincipals"];

  if (v12)
  {
    v31 = DALoggingwithCategory();
    v32 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v31, v32))
    {
      *buf = 0;
      _os_log_impl(&dword_242490000, v31, v32, "Principals changed", buf, 2u);
    }
  }

  return v12 & 1;
}

- (void)refreshActor:(id)actor didCompleteWithError:(id)error
{
  v112[3] = *MEMORY[0x277D85DE8];
  actorCopy = actor;
  errorCopy = error;
  if ([(MobileCalDAVAccount *)self isRefreshing])
  {
    if (actorCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [MobileCalDAVAccount refreshActor:a2 didCompleteWithError:self];
    if (actorCopy)
    {
      goto LABEL_3;
    }
  }

  [MobileCalDAVAccount refreshActor:a2 didCompleteWithError:self];
LABEL_3:
  [(MobileCalDAVAccount *)self _syncEndedWithError:errorCopy];
  [(MobileCalDAVAccount *)self releasePowerAssertion];
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  aPSTopic = [mainPrincipal APSTopic];
  if (![aPSTopic length])
  {

    goto LABEL_9;
  }

  mainPrincipal2 = [(MobileCalDAVAccount *)self mainPrincipal];
  supportsPush = [mainPrincipal2 supportsPush];

  if (supportsPush)
  {
LABEL_9:
    v19 = 0;
    goto LABEL_10;
  }

  v13 = DALoggingwithCategory();
  v14 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v13, v14))
  {
    *buf = 0;
    _os_log_impl(&dword_242490000, v13, v14, "Saving accounts to update push information from an upgrade", buf, 2u);
  }

  mainPrincipal3 = [(MobileCalDAVAccount *)self mainPrincipal];
  aPSTopic2 = [mainPrincipal3 APSTopic];
  v17 = [aPSTopic2 length] != 0;
  mainPrincipal4 = [(MobileCalDAVAccount *)self mainPrincipal];
  [mainPrincipal4 setSupportsPush:v17];

  v19 = 1;
LABEL_10:
  mainPrincipal5 = [(MobileCalDAVAccount *)self mainPrincipal];
  shouldUpdatePushDelegate = [mainPrincipal5 shouldUpdatePushDelegate];

  if (shouldUpdatePushDelegate)
  {
    v22 = DALoggingwithCategory();
    v23 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v22, v23))
    {
      *buf = 0;
      _os_log_impl(&dword_242490000, v22, v23, "Saving accounts to update push information", buf, 2u);
    }

    mainPrincipal6 = [(MobileCalDAVAccount *)self mainPrincipal];
    [mainPrincipal6 setShouldUpdatePushDelegate:0];

    mainPrincipal7 = [(MobileCalDAVAccount *)self mainPrincipal];
    aPSTopic3 = [mainPrincipal7 APSTopic];
    v27 = [aPSTopic3 length] != 0;
    mainPrincipal8 = [(MobileCalDAVAccount *)self mainPrincipal];
    [mainPrincipal8 setSupportsPush:v27];

    v19 = 1;
  }

  saveModifiedPropertiesOnBackingAccount = [(MobileCalDAVAccount *)self saveModifiedPropertiesOnBackingAccount];
  _saveModifiedSubscribedCalendarsOnBackingAccount = [(MobileCalDAVAccount *)self _saveModifiedSubscribedCalendarsOnBackingAccount];
  context = [actorCopy context];
  shouldSaveAccounts = [context shouldSaveAccounts];

  if (shouldSaveAccounts)
  {
    v33 = DALoggingwithCategory();
    v34 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v33, v34))
    {
      *buf = 0;
      _os_log_impl(&dword_242490000, v33, v34, "The refresh actor says we should save accounts", buf, 2u);
    }

    v35 = 1;
  }

  else
  {
    v35 = v19 | saveModifiedPropertiesOnBackingAccount | _saveModifiedSubscribedCalendarsOnBackingAccount;
  }

  v93 = v35;
  Current = CFAbsoluteTimeGetCurrent();
  refreshContext = [(MobileCalDAVAccount *)self refreshContext];
  [refreshContext startTime];
  v39 = Current - v38;

  if (errorCopy)
  {
    v92 = actorCopy;
    v109[0] = @"success";
    v40 = [MEMORY[0x277CCABB0] numberWithBool:0];
    v110[0] = v40;
    v109[1] = @"downloadedItemsCount";
    v41 = MEMORY[0x277CCABB0];
    refreshContext2 = [(MobileCalDAVAccount *)self refreshContext];
    v43 = [v41 numberWithUnsignedInteger:{objc_msgSend(refreshContext2, "numDownloadedElements")}];
    v110[1] = v43;
    v109[2] = @"duration";
    v44 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
    v110[2] = v44;
    v109[3] = @"errorCode";
    v45 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
    v110[3] = v45;
    v109[4] = @"errorDomain";
    domain = [errorCopy domain];
    v110[4] = domain;
    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:5];
    AnalyticsSendEvent();

    refreshContext5 = DALoggingwithCategory();
    v49 = *(MEMORY[0x277CF3AF0] + 4);
    if (os_log_type_enabled(refreshContext5, v49))
    {
      accountDescription = [(MobileCalDAVAccount *)self accountDescription];
      accountID = [(MobileCalDAVAccount *)self accountID];
      domain2 = [errorCopy domain];
      v53 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      *buf = 138413314;
      v100 = accountDescription;
      v101 = 2114;
      v102 = accountID;
      v103 = 2112;
      v54 = errorCopy;
      v104 = *&errorCopy;
      v105 = 2114;
      v106 = domain2;
      v107 = 2114;
      v108 = v53;
      _os_log_impl(&dword_242490000, refreshContext5, v49, "==== CalDAV refresh FAILED for %@ (%{public}@): %@. [Error Domain:%{public}@ Code:%{public}@]", buf, 0x34u);
    }

    else
    {
      v54 = errorCopy;
    }

    v71 = v92;
LABEL_34:

    goto LABEL_35;
  }

  v54 = 0;
  v55 = DALoggingwithCategory();
  v56 = *(MEMORY[0x277CF3AF0] + 5);
  if (os_log_type_enabled(v55, v56))
  {
    accountDescription2 = [(MobileCalDAVAccount *)self accountDescription];
    accountID2 = [(MobileCalDAVAccount *)self accountID];
    *buf = 138412546;
    v100 = accountDescription2;
    v101 = 2114;
    v102 = accountID2;
    _os_log_impl(&dword_242490000, v55, v56, "==== CalDAV refresh completed successfully for %@ (%{public}@)", buf, 0x16u);
  }

  v59 = actorCopy;

  v60 = DALoggingwithCategory();
  if (os_log_type_enabled(v60, v56))
  {
    accountDescription3 = [(MobileCalDAVAccount *)self accountDescription];
    accountID3 = [(MobileCalDAVAccount *)self accountID];
    refreshContext3 = [(MobileCalDAVAccount *)self refreshContext];
    numDownloadedElements = [refreshContext3 numDownloadedElements];
    *buf = 138413058;
    v100 = accountDescription3;
    v101 = 2114;
    v102 = accountID3;
    v103 = 2048;
    v104 = v39;
    v105 = 2048;
    v106 = numDownloadedElements;
    _os_log_impl(&dword_242490000, v60, v56, "CalDAV refresh finished for account %@ (%{public}@): Total sync time: %0.2f seconds. Number of downloaded items: %lu", buf, 0x2Au);
  }

  v111[0] = @"success";
  v65 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v112[0] = v65;
  v111[1] = @"downloadedItemsCount";
  v66 = MEMORY[0x277CCABB0];
  refreshContext4 = [(MobileCalDAVAccount *)self refreshContext];
  v68 = [v66 numberWithUnsignedInteger:{objc_msgSend(refreshContext4, "numDownloadedElements")}];
  v112[1] = v68;
  v111[2] = @"duration";
  v69 = [MEMORY[0x277CCABB0] numberWithDouble:v39];
  v112[2] = v69;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:3];
  AnalyticsSendEvent();

  v71 = v59;
  if ([(MobileCalDAVAccount *)self wasMigrated])
  {
    refreshContext5 = [(MobileCalDAVAccount *)self refreshContext];
    if (([refreshContext5 isPrincipalOnly]& 1) == 0)
    {
      refreshContext6 = [(MobileCalDAVAccount *)self refreshContext];
      isCalendarsOnly = [refreshContext6 isCalendarsOnly];

      if (isCalendarsOnly)
      {
        goto LABEL_35;
      }

      context2 = [v59 context];
      calendarFailedToSync = [context2 calendarFailedToSync];

      v76 = DALoggingwithCategory();
      refreshContext5 = v76;
      if (calendarFailedToSync)
      {
        v77 = *(MEMORY[0x277CF3AF0] + 4);
        if (os_log_type_enabled(v76, v77))
        {
          *buf = 0;
          _os_log_impl(&dword_242490000, refreshContext5, v77, "Some calendars failed to sync. Keeping the migration flag around so that we attempt a merge sync the next time", buf, 2u);
        }
      }

      else
      {
        if (os_log_type_enabled(v76, v56))
        {
          *buf = 0;
          _os_log_impl(&dword_242490000, refreshContext5, v56, "Clearing migrated flag on the calendar store", buf, 2u);
        }

        [(MobileCalDAVAccount *)self setWasMigrated:0];
        refreshContext5 = [v59 context];
        [refreshContext5 setShouldSave:1];
      }
    }

    goto LABEL_34;
  }

LABEL_35:
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  mCalendars = [(MobileCalDAVAccount *)self mCalendars];
  v79 = [mCalendars countByEnumeratingWithState:&v94 objects:v98 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v95;
    do
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v95 != v81)
        {
          objc_enumerationMutation(mCalendars);
        }

        [*(*(&v94 + 1) + 8 * i) flushCaches];
      }

      v80 = [mCalendars countByEnumeratingWithState:&v94 objects:v98 count:16];
    }

    while (v80);
  }

  if (v93)
  {
    if (v54 && [v54 code] == 6)
    {
      v83 = DALoggingwithCategory();
      v84 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v83, v84))
      {
        *buf = 0;
        _os_log_impl(&dword_242490000, v83, v84, "Not saving our account properties because the refresh was canceled.", buf, 2u);
      }
    }

    else
    {
      v85 = DALoggingwithCategory();
      v86 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v85, v86))
      {
        *buf = 0;
        _os_log_impl(&dword_242490000, v85, v86, "Saving our account properties", buf, 2u);
      }

      [(MobileCalDAVAccount *)self saveAccountProperties];
    }
  }

  mainPrincipal9 = [(MobileCalDAVAccount *)self mainPrincipal];
  [mainPrincipal9 setIsDirty:0];

  mainPrincipal10 = [(MobileCalDAVAccount *)self mainPrincipal];
  [mainPrincipal10 setCalendarsAreDirty:0];

  mItemIDsToMoveActions = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];
  [mItemIDsToMoveActions removeAllObjects];

  mMovedItemURLStrings = [(MobileCalDAVAccount *)self mMovedItemURLStrings];
  [mMovedItemURLStrings removeAllObjects];

  [(MobileCalDAVAccount *)self setRefreshContext:0];
  [(MobileCalDAVAccount *)self setIsRefreshing:0];
  [(MobileCalDAVAccount *)self setActor:0];
  [(MobileCalDAVAccount *)self setMCalendars:0];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"RDCalDAVMobileAccountRefreshDidCompleteNotificationName" object:self];
}

- (void)_collectMoveActions
{
  mItemIDsToMoveActions = [(MobileCalDAVAccount *)self mItemIDsToMoveActions];

  if (!mItemIDsToMoveActions)
  {
    v4 = objc_opt_new();
    [(MobileCalDAVAccount *)self setMItemIDsToMoveActions:v4];
  }

  mMovedItemURLStrings = [(MobileCalDAVAccount *)self mMovedItemURLStrings];

  if (!mMovedItemURLStrings)
  {
    v6 = objc_opt_new();
    [(MobileCalDAVAccount *)self setMMovedItemURLStrings:v6];
  }
}

- (void)refreshWithContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if ([(MobileCalDAVAccount *)self isRefreshing])
  {
    actor2 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(actor2, v6))
    {
      LOWORD(v25) = 0;
      v7 = "Ignoring refresh request because we're already in the middle of a refresh";
LABEL_7:
      _os_log_impl(&dword_242490000, actor2, v6, v7, &v25, 2u);
    }
  }

  else if ([(MobileCalDAVAccount *)self isRefreshing])
  {
    actor2 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(actor2, v6))
    {
      LOWORD(v25) = 0;
      v7 = "We're already refreshing or a refresh is pending, so we're going to ignore this refresh request.";
      goto LABEL_7;
    }
  }

  else
  {
    self->_wasMigrated = -1;
    [(MobileCalDAVAccount *)self setIsRefreshing:1];
    [(MobileCalDAVAccount *)self setRefreshContext:contextCopy];
    Current = CFAbsoluteTimeGetCurrent();
    refreshContext = [(MobileCalDAVAccount *)self refreshContext];
    [refreshContext setStartTime:Current];

    [(MobileCalDAVAccount *)self _updateCalendarStore:1];
    [(MobileCalDAVAccount *)self _collectMoveActions];
    if (-[MobileCalDAVAccount wasMigrated](self, "wasMigrated") && [contextCopy isCalendarsOnly])
    {
      [contextCopy setIsCalendarsOnly:0];
    }

    v10 = DALoggingwithCategory();
    v11 = MEMORY[0x277CF3AF0];
    v12 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v10, v12))
    {
      if ([(MobileCalDAVAccount *)self wasMigrated])
      {
        v13 = @"migration ";
      }

      else
      {
        v13 = &stru_2854B8D68;
      }

      if ([contextCopy isPrincipalOnly])
      {
        v14 = @" (principal only)";
      }

      else if ([contextCopy isCalendarsOnly])
      {
        v14 = @" (calendars only)";
      }

      else
      {
        v14 = &stru_2854B8D68;
      }

      accountDescription = [(MobileCalDAVAccount *)self accountDescription];
      accountID = [(MobileCalDAVAccount *)self accountID];
      v25 = 138413058;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = accountDescription;
      v31 = 2112;
      v32 = accountID;
      _os_log_impl(&dword_242490000, v10, v12, "==== Beginning %@refresh for CalDAV account%@ %@ (%@)", &v25, 0x2Au);
    }

    v17 = DALoggingwithCategory();
    v18 = *(v11 + 6);
    if (os_log_type_enabled(v17, v18))
    {
      refreshContext2 = [(MobileCalDAVAccount *)self refreshContext];
      localItems = [refreshContext2 localItems];
      v25 = 134217984;
      v26 = localItems;
      _os_log_impl(&dword_242490000, v17, v18, "Our store has %lu items in it.", &v25, 0xCu);
    }

    [(MobileCalDAVAccount *)self retainPowerAssertion];
    [(MobileCalDAVAccount *)self _syncStarted];
    actor = [(MobileCalDAVAccount *)self actor];
    [actor teardown];

    v22 = [MobileCalDAVAccountRefreshActor alloc];
    refreshContext3 = [(MobileCalDAVAccount *)self refreshContext];
    v24 = [(MobileCalDAVAccountRefreshActor *)v22 initWithAccount:self context:refreshContext3];
    [(MobileCalDAVAccount *)self setActor:v24];

    actor2 = [(MobileCalDAVAccount *)self actor];
    [actor2 refresh];
  }
}

- (void)updateDelegates
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v45 = [MEMORY[0x277CBEB58] set];
  v4 = objc_alloc_init(MEMORY[0x277CB8F48]);
  backingAccountInfo = [(MobileCalDAVAccount *)self backingAccountInfo];
  childAccounts = [backingAccountInfo childAccounts];

  v48 = objc_opt_new();
  v7 = objc_alloc(MEMORY[0x277CBEB98]);
  delegateUserInfos = [(MobileCalDAVAccount *)self delegateUserInfos];
  allKeys = [delegateUserInfos allKeys];
  v10 = [v7 initWithArray:allKeys];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  obj = childAccounts;
  v11 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v67;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v66 + 1) + 8 * i);
        v16 = [v15 accountPropertyForKey:@"CalDAVMobileAccountDelegatePrincipalPath"];
        [v48 addObject:v16];
        if (([v10 containsObject:v16] & 1) == 0)
        {
          identifier = [v15 identifier];
          [v45 addObject:identifier];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v12);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v18 = v10;
  v19 = [v18 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v63;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v63 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v62 + 1) + 8 * j);
        if (([v48 containsObject:v23] & 1) == 0)
        {
          [v3 addObject:v23];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v20);
  }

  v44 = v18;

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v46 = v3;
  v24 = [v46 countByEnumeratingWithState:&v58 objects:v71 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v59;
    v27 = *MEMORY[0x277CB8BC8];
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v59 != v26)
        {
          objc_enumerationMutation(v46);
        }

        v29 = *(*(&v58 + 1) + 8 * k);
        v30 = objc_alloc(MEMORY[0x277CB8F30]);
        v31 = [v4 accountTypeWithAccountTypeIdentifier:{v27, v44}];
        v32 = [v30 initWithAccountType:v31];

        backingAccountInfo2 = [(MobileCalDAVAccount *)self backingAccountInfo];
        [v32 setParentAccount:backingAccountInfo2];

        [v32 setAccountProperty:v29 forKey:@"CalDAVMobileAccountDelegatePrincipalPath"];
        [v32 setActive:1];
        [v32 setAuthenticationType:@"parent"];
        host = [(MobileCalDAVAccount *)self host];
        [v32 setAccountProperty:host forKey:@"DAAccountHost"];

        v54[0] = MEMORY[0x277D85DD0];
        v54[1] = 3221225472;
        v54[2] = __38__MobileCalDAVAccount_updateDelegates__block_invoke;
        v54[3] = &unk_278D4F368;
        v35 = v4;
        v55 = v35;
        v56 = v32;
        v57 = v29;
        v36 = v32;
        [v35 canSaveAccount:v36 withCompletionHandler:v54];
      }

      v25 = [v46 countByEnumeratingWithState:&v58 objects:v71 count:16];
    }

    while (v25);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v37 = v45;
  v38 = [v37 countByEnumeratingWithState:&v50 objects:v70 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v51;
    do
    {
      for (m = 0; m != v39; ++m)
      {
        if (*v51 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v50 + 1) + 8 * m);
        v43 = [v4 accountWithIdentifier:{v42, v44}];
        v49[0] = MEMORY[0x277D85DD0];
        v49[1] = 3221225472;
        v49[2] = __38__MobileCalDAVAccount_updateDelegates__block_invoke_204;
        v49[3] = &unk_278D4F340;
        v49[4] = v42;
        [v4 removeAccount:v43 withCompletionHandler:v49];
      }

      v39 = [v37 countByEnumeratingWithState:&v50 objects:v70 count:16];
    }

    while (v39);
  }
}

void __38__MobileCalDAVAccount_updateDelegates__block_invoke(void *a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = a1[4];
    v4 = a1[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__MobileCalDAVAccount_updateDelegates__block_invoke_2;
    v8[3] = &unk_278D4F340;
    v8[4] = a1[6];
    [v3 saveVerifiedAccount:v4 withCompletionHandler:v8];
  }

  else
  {
    v5 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = a1[6];
      *buf = 138412290;
      v10 = v7;
      _os_log_impl(&dword_242490000, v5, v6, "Delegate with principalPath %@ could not be saved.", buf, 0xCu);
    }
  }
}

void __38__MobileCalDAVAccount_updateDelegates__block_invoke_2(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (a2)
  {
    LOBYTE(v6) = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v4, v6))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      v8 = "Delegate with principalPath %@ was successfully added.";
LABEL_6:
      _os_log_impl(&dword_242490000, v5, v6, v8, &v10, 0xCu);
    }
  }

  else
  {
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v4, *(MEMORY[0x277CF3AF0] + 3)))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      v8 = "Delegate with principalPath %@ failed to add.";
      goto LABEL_6;
    }
  }
}

void __38__MobileCalDAVAccount_updateDelegates__block_invoke_204(uint64_t a1, int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = DALoggingwithCategory();
  v5 = v4;
  if (a2)
  {
    LOBYTE(v6) = *(MEMORY[0x277CF3AF0] + 7);
    if (os_log_type_enabled(v4, v6))
    {
      v7 = *(a1 + 32);
      v10 = 138412290;
      v11 = v7;
      v8 = "Delegate with account ID %@ was successfully removed";
LABEL_6:
      _os_log_impl(&dword_242490000, v5, v6, v8, &v10, 0xCu);
    }
  }

  else
  {
    v6 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v4, *(MEMORY[0x277CF3AF0] + 3)))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      v8 = "Delegate with account ID %@ failed to be removed";
      goto LABEL_6;
    }
  }
}

- (void)task:(id)task didFinishWithError:(id)error
{
  v37 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  errorCopy = error;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = taskCopy;
    searchContext = [v8 searchContext];
    v10 = [(MobileCalDAVAccount *)self consumerForTask:v8];
    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277CFDB18]])
    {
      code = [errorCopy code];

      if (code == 1)
      {
        array = DALoggingwithCategory();
        v14 = *(MEMORY[0x277CF3AF0] + 6);
        if (os_log_type_enabled(array, v14))
        {
          *buf = 134217984;
          v36 = v8;
          _os_log_impl(&dword_242490000, array, v14, "Search task %p was cancelled", buf, 0xCu);
        }

LABEL_23:

        [v10 searchQuery:searchContext finishedWithError:errorCopy];
        searchTaskSet = [(MobileCalDAVAccount *)self searchTaskSet];
        [searchTaskSet removeObject:v8];

        [(MobileCalDAVAccount *)self removeConsumerForTask:v8];
        goto LABEL_24;
      }
    }

    else
    {
    }

    v28 = searchContext;
    v29 = errorCopy;
    array = [MEMORY[0x277CBEB18] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    multiStatus = [v8 multiStatus];
    responses = [multiStatus responses];

    v18 = [responses countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(responses);
          }

          v22 = [CalDAVPrincipalResult resultFromResponse:*(*(&v30 + 1) + 8 * i)];
          convertToDAContactSearchResultElement = [v22 convertToDAContactSearchResultElement];
          if (convertToDAContactSearchResultElement)
          {
            [array addObject:convertToDAContactSearchResultElement];
          }
        }

        v19 = [responses countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    if ([array count])
    {
      v24 = DALoggingwithCategory();
      v25 = *(MEMORY[0x277CF3AF0] + 6);
      errorCopy = v29;
      searchContext = v28;
      if (os_log_type_enabled(v24, v25))
      {
        *buf = 134217984;
        v36 = v28;
        _os_log_impl(&dword_242490000, v24, v25, "CalDAV search query %p returning results", buf, 0xCu);
      }

      v10 = v27;
      [v27 searchQuery:v28 returnedResults:array];
    }

    else
    {
      errorCopy = v29;
      v10 = v27;
      searchContext = v28;
    }

    goto LABEL_23;
  }

  v8 = DALoggingwithCategory();
  v15 = *(MEMORY[0x277CF3AF0] + 4);
  if (os_log_type_enabled(v8, v15))
  {
    *buf = 138412290;
    v36 = taskCopy;
    _os_log_impl(&dword_242490000, v8, v15, "An unknown task just finished. What just happened? %@", buf, 0xCu);
  }

LABEL_24:
}

- (void)_reallyPerformSearchQuery:(id)query
{
  v32 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  searchPropertySet = [(MobileCalDAVAccount *)self searchPropertySet];
  if (![searchPropertySet supportsPropertySearch] || (objc_msgSend(searchPropertySet, "supportsWellKnownType:", 6) & 1) == 0)
  {
    v21 = DALoggingwithCategory();
    v22 = *(MEMORY[0x277CF3AF0] + 5);
    if (os_log_type_enabled(v21, v22))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_242490000, v21, v22, "Refusing to send out search query because the server doesn't support searching", &v28, 2u);
    }

    consumer = [queryCopy consumer];
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CF3AB0];
    v25 = 69;
    goto LABEL_10;
  }

  v6 = DALoggingwithCategory();
  v7 = MEMORY[0x277CF3AF0];
  v8 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v6, v8))
  {
    searchString = [queryCopy searchString];
    v28 = 138412546;
    v29 = searchString;
    v30 = 2048;
    v31 = queryCopy;
    _os_log_impl(&dword_242490000, v6, v8, "CalDAV search query %@ (%p) enqueuing", &v28, 0x16u);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = DALoggingwithCategory();
    v27 = *(v7 + 4);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = 138412290;
      v29 = queryCopy;
      _os_log_impl(&dword_242490000, v26, v27, "Dropping search query %@ because it is not the right type", &v28, 0xCu);
    }

    consumer = [queryCopy consumer];
    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CF3AB0];
    v25 = 65;
LABEL_10:
    searchTaskSet = [v23 errorWithDomain:v24 code:v25 userInfo:0];
    [consumer searchQuery:queryCopy finishedWithError:searchTaskSet];
    goto LABEL_11;
  }

  [(MobileCalDAVAccount *)self setShouldUseOpportunisticSockets:0];
  v10 = objc_alloc(MEMORY[0x277CF7010]);
  v11 = MEMORY[0x277CBEB98];
  searchString2 = [queryCopy searchString];
  v13 = [v11 setWithObject:searchString2];
  v14 = [MEMORY[0x277CBEB98] setWithObject:CalDAVPrincipalResultType_Person];
  collectionSetURL = [(MobileCalDAVAccount *)self collectionSetURL];
  consumer = [v10 initWithSearchStrings:v13 searchTypes:v14 serverSupportSet:searchPropertySet atURL:collectionSetURL];

  [consumer setDelegate:self];
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  [consumer setAccountInfoProvider:mainPrincipal];

  [consumer setSearchContext:queryCopy];
  taskManager = [(MobileCalDAVAccount *)self taskManager];
  [taskManager submitIndependentCoreDAVTask:consumer];

  consumer2 = [queryCopy consumer];
  [(MobileCalDAVAccount *)self setConsumer:consumer2 forTask:consumer];

  searchTaskSet = [(MobileCalDAVAccount *)self searchTaskSet];
  [searchTaskSet addObject:consumer];
LABEL_11:
}

- (void)_reallyCancelSearchQuery:(id)query
{
  v26 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v5, v6))
  {
    *buf = 138412290;
    v25 = queryCopy;
    _os_log_impl(&dword_242490000, v5, v6, "cancelling search query %@", buf, 0xCu);
  }

  searchTaskSet = [(MobileCalDAVAccount *)self searchTaskSet];
  v8 = [searchTaskSet copy];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  v11 = v9;
  if (v10)
  {
    v12 = v10;
    v13 = *v20;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v20 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v19 + 1) + 8 * v14);
      searchContext = [v15 searchContext];
      v17 = [searchContext isEqual:queryCopy];

      if (v17)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        v11 = v9;
        goto LABEL_14;
      }
    }

    v11 = v15;

    if (!v11)
    {
      goto LABEL_15;
    }

    taskManager = [(MobileCalDAVAccount *)self taskManager];
    [taskManager cancelTask:v11];
  }

LABEL_14:

LABEL_15:
}

- (void)_reallyCancelAllSearchQueries
{
  v20 = *MEMORY[0x277D85DE8];
  searchTaskSet = [(MobileCalDAVAccount *)self searchTaskSet];
  v4 = [searchTaskSet copy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        taskManager = [(MobileCalDAVAccount *)self taskManager];
        [taskManager cancelTask:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = DALoggingwithCategory();
  v13 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v12, v13))
  {
    *v14 = 0;
    _os_log_impl(&dword_242490000, v12, v13, "_reallyCancelAllSearchQueries is complete. All search queries have been cancelled.", v14, 2u);
  }
}

- (BOOL)_reallySearchQueriesRunning
{
  searchTaskSet = [(MobileCalDAVAccount *)self searchTaskSet];
  v3 = [searchTaskSet count] != 0;

  return v3;
}

- (void)discoveryTask:(id)task gotAccountInfo:(id)info error:(id)error
{
  v38 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  infoCopy = info;
  errorCopy = error;
  v11 = DALoggingwithCategory();
  v12 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v11, v12))
  {
    v32 = 138412802;
    v33 = taskCopy;
    v34 = 2112;
    v35 = infoCopy;
    v36 = 2112;
    v37 = errorCopy;
    _os_log_impl(&dword_242490000, v11, v12, "DiscoveryTaskGroup %@ got account info %@ with error %@", &v32, 0x20u);
  }

  checkValidityTaskGroup = [(MobileCalDAVAccount *)self checkValidityTaskGroup];

  if (checkValidityTaskGroup == taskCopy)
  {
    if (errorCopy)
    {
LABEL_17:
      v26 = [(MobileCalDAVAccount *)self consumerForTask:taskCopy];
      checkValidityTaskGroup2 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
      [(MobileCalDAVAccount *)self removeConsumerForTask:checkValidityTaskGroup2];

      if (!errorCopy || ![(MobileCalDAVAccount *)self retryDiscoveryTask:v26])
      {
        hostForDiscovery = self->_hostForDiscovery;
        self->_hostForDiscovery = 0;

        usernameForDiscovery = self->_usernameForDiscovery;
        self->_usernameForDiscovery = 0;

        v30 = coreDAVValidationErrorFromRawError();
        [v26 account:self isValid:errorCopy == 0 validationError:v30];

        [(MobileCalDAVAccount *)self setCheckValidityTaskGroup:0];
      }

      goto LABEL_21;
    }

    principalPath = [(MobileCalDAVAccount *)self principalPath];
    if ([principalPath length])
    {
      principalPath2 = [(MobileCalDAVAccount *)self principalPath];
      if (![principalPath2 isEqualToString:@"/"])
      {
        shouldDoInitialAutodiscovery = [(MobileCalDAVAccount *)self shouldDoInitialAutodiscovery];

        if ((shouldDoInitialAutodiscovery & 1) == 0)
        {
          v17 = 0;
          goto LABEL_10;
        }

LABEL_9:
        principalURL = [infoCopy principalURL];
        [(MobileCalDAVAccount *)self setPrincipalURL:principalURL];

        v17 = 1;
LABEL_10:
        backingAccountInfo = [(MobileCalDAVAccount *)self backingAccountInfo];
        v19 = [backingAccountInfo accountPropertyForKey:@"CalDAVMobileAccountDelegatePrincipalPath"];

        if (v19)
        {
          [(MobileCalDAVAccount *)self setPrincipalPath:v19];
          mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
          v17 = 1;
          [mainPrincipal setIsDelegate:1];
        }

        scheme = [infoCopy scheme];
        -[MobileCalDAVAccount setUseSSL:](self, "setUseSSL:", [scheme isEqualToString:@"http"] ^ 1);

        host = [infoCopy host];
        [(MobileCalDAVAccount *)self setHost:host];

        if (self->_usernameForDiscovery)
        {
          [(MobileCalDAVAccount *)self setUsername:?];
        }

        -[MobileCalDAVAccount setPort:](self, "setPort:", [infoCopy port]);
        if (v17)
        {
          [(MobileCalDAVAccount *)self saveModifiedPropertiesOnBackingAccount];
        }

        v23 = MEMORY[0x277CF7040];
        serverHeaders = [infoCopy serverHeaders];
        v25 = [v23 versionWithHTTPHeaders:serverHeaders];
        [(MobileCalDAVAccount *)self setServerVersion:v25];

        goto LABEL_17;
      }
    }

    goto LABEL_9;
  }

LABEL_21:
}

- (NSArray)wellKnownPaths
{
  v3 = MEMORY[0x277CCACA8];
  username = [(MobileCalDAVAccount *)self username];
  v5 = [v3 stringWithFormat:@"/calendar/dav/%@/user/", username];

  v6 = [MEMORY[0x277CBEB18] arrayWithObjects:{@"/.well-known/caldav", @"/", @"/principals/", v5, 0}];
  principalPath = [(MobileCalDAVAccount *)self principalPath];
  da_appendSlashIfNeeded = [principalPath da_appendSlashIfNeeded];

  if ([da_appendSlashIfNeeded length] && (objc_msgSend(v6, "containsObject:", da_appendSlashIfNeeded) & 1) == 0)
  {
    if (([(MobileCalDAVAccount *)self shouldDoInitialAutodiscovery]& 1) == 0)
    {
      [v6 removeAllObjects];
    }

    [v6 insertObject:da_appendSlashIfNeeded atIndex:0];
  }

  return v6;
}

- (BOOL)retryDiscoveryTask:(id)task
{
  usernameForDiscovery = self->_usernameForDiscovery;
  if (usernameForDiscovery)
  {
    [(MobileCalDAVAccount *)self performDiscoveryWithHostname:self->_hostForDiscovery username:0 consumer:task];
  }

  return usernameForDiscovery != 0;
}

- (void)discoverInitialPropertiesWithConsumer:(id)consumer
{
  v17 = *MEMORY[0x277D85DE8];
  consumerCopy = consumer;
  host = [(MobileCalDAVAccount *)self host];
  if (host && (v6 = host, -[MobileCalDAVAccount host](self, "host"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 length], v7, v6, v8))
  {
    [(MobileCalDAVAccount *)self performDiscoveryWithHostname:0 username:0 consumer:consumerCopy];
  }

  else
  {
    backingAccountInfo = [(MobileCalDAVAccount *)self backingAccountInfo];
    username = [backingAccountInfo username];

    if ([username resemblesEmailAddress])
    {
      hostFromEmail = [username hostFromEmail];
      userFromEmail = [username userFromEmail];
    }

    else
    {
      hostFromEmail = 0;
      userFromEmail = 0;
    }

    if ([hostFromEmail length] && objc_msgSend(userFromEmail, "length"))
    {
      [(MobileCalDAVAccount *)self performDiscoveryWithHostname:hostFromEmail username:userFromEmail consumer:consumerCopy];
    }

    else
    {
      v13 = DALoggingwithCategory();
      v14 = *(MEMORY[0x277CF3AF0] + 4);
      if (os_log_type_enabled(v13, v14))
      {
        v15 = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_242490000, v13, v14, "Autodiscover called on account %@, but that account does not have a host set and username does not seems to resemble email address. Ignoring autodiscovery request", &v15, 0xCu);
      }

      [consumerCopy account:self isValid:0 validationError:0];
    }
  }
}

- (void)performDiscoveryWithHostname:(id)hostname username:(id)username consumer:(id)consumer
{
  v41 = *MEMORY[0x277D85DE8];
  hostnameCopy = hostname;
  usernameCopy = username;
  consumerCopy = consumer;
  objc_storeStrong(&self->_hostForDiscovery, hostname);
  objc_storeStrong(&self->_usernameForDiscovery, username);
  host = [(MobileCalDAVAccount *)self host];
  if (host && (v13 = host, -[MobileCalDAVAccount host](self, "host"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, v13, v15))
  {
    v34 = hostnameCopy;
    [(MobileCalDAVAccount *)self setShouldUseOpportunisticSockets:0];
    wellKnownPaths = [(MobileCalDAVAccount *)self wellKnownPaths];
    v17 = objc_alloc(MEMORY[0x277CFDBB0]);
    mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
    taskManager = [(MobileCalDAVAccount *)self taskManager];
    v20 = [MEMORY[0x277CBEA60] cdvArrayWithIntegers:{80, 8008, 8080, 8800, 0}];
    v21 = [MEMORY[0x277CBEA60] cdvArrayWithIntegers:{443, 8443, 8843, 0}];
    if ([(MobileCalDAVAccount *)self useSSL])
    {
      v22 = 0;
    }

    else
    {
      v22 = @"_caldav._tcp.";
    }

    if ([(MobileCalDAVAccount *)self useSSL])
    {
      v23 = @"_caldavs._tcp.";
    }

    else
    {
      v23 = 0;
    }

    v24 = [v17 initWithAccountInfoProvider:mainPrincipal taskManager:taskManager httpPorts:v20 httpsPorts:v21 httpServiceString:v22 httpsServiceString:v23 wellKnownPaths:wellKnownPaths requiredComplianceClass:@"calendar-access"];
    [(MobileCalDAVAccount *)self setCheckValidityTaskGroup:v24];

    checkValidityTaskGroup = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
    [checkValidityTaskGroup setTimeoutInterval:15.0];

    checkValidityTaskGroup2 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
    [checkValidityTaskGroup2 setDelegate:self];

    v27 = DALoggingwithCategory();
    v28 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v27, v28))
    {
      checkValidityTaskGroup3 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
      *buf = 138412802;
      selfCopy2 = self;
      v37 = 2112;
      v38 = checkValidityTaskGroup3;
      v39 = 2112;
      v40 = consumerCopy;
      _os_log_impl(&dword_242490000, v27, v28, "account %@ is checking validity with group %@ on behalf of %@", buf, 0x20u);
    }

    checkValidityTaskGroup4 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
    [(MobileCalDAVAccount *)self setConsumer:consumerCopy forTask:checkValidityTaskGroup4];

    checkValidityTaskGroup5 = [(MobileCalDAVAccount *)self checkValidityTaskGroup];
    [checkValidityTaskGroup5 startTaskGroup];

    hostnameCopy = v34;
  }

  else
  {
    v32 = DALoggingwithCategory();
    v33 = *(MEMORY[0x277CF3AF0] + 3);
    if (os_log_type_enabled(v32, v33))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_impl(&dword_242490000, v32, v33, "Autodiscover called on account %@, but that account does not have a host. Ignoring autodiscovery request", buf, 0xCu);
    }

    [consumerCopy account:self isValid:0 validationError:0];
  }
}

- (void)retainPowerAssertion
{
  mEMORY[0x277CF3A18] = [MEMORY[0x277CF3A18] sharedPowerAssertionManager];
  _powerAssertionContext = [(MobileCalDAVAccount *)self _powerAssertionContext];
  _powerAssertionGroupIdentifier = [(MobileCalDAVAccount *)self _powerAssertionGroupIdentifier];
  [mEMORY[0x277CF3A18] retainPowerAssertion:_powerAssertionContext withGroupIdentifier:_powerAssertionGroupIdentifier];
}

- (void)releasePowerAssertion
{
  v9 = *MEMORY[0x277D85DE8];
  _powerAssertionContext = [(MobileCalDAVAccount *)self _powerAssertionContext];
  mEMORY[0x277CF3A18] = [MEMORY[0x277CF3A18] sharedPowerAssertionManager];
  v4 = [mEMORY[0x277CF3A18] powerAssertionRetainCount:_powerAssertionContext];

  if (v4)
  {
    mEMORY[0x277CF3A18]2 = [MEMORY[0x277CF3A18] sharedPowerAssertionManager];
    [mEMORY[0x277CF3A18]2 releasePowerAssertion:_powerAssertionContext];
  }

  else
  {
    mEMORY[0x277CF3A18]2 = DALoggingwithCategory();
    v6 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(mEMORY[0x277CF3A18]2, *(MEMORY[0x277CF3AF0] + 6)))
    {
      v7 = 138412290;
      v8 = _powerAssertionContext;
      _os_log_impl(&dword_242490000, mEMORY[0x277CF3A18]2, v6, "Dropping power assertion release for %@ since the retain count isn't positive", &v7, 0xCu);
    }
  }
}

- (void)dropPowerAssertions
{
  mEMORY[0x277CF3A18] = [MEMORY[0x277CF3A18] sharedPowerAssertionManager];
  _powerAssertionGroupIdentifier = [(MobileCalDAVAccount *)self _powerAssertionGroupIdentifier];
  [mEMORY[0x277CF3A18] dropPowerAssertionsForGroupIdentifier:_powerAssertionGroupIdentifier];
}

- (void)reattainPowerAssertions
{
  mEMORY[0x277CF3A18] = [MEMORY[0x277CF3A18] sharedPowerAssertionManager];
  _powerAssertionGroupIdentifier = [(MobileCalDAVAccount *)self _powerAssertionGroupIdentifier];
  [mEMORY[0x277CF3A18] reattainPowerAssertionsForGroupIdentifier:_powerAssertionGroupIdentifier];
}

- (BOOL)isEqualToAccount:(id)account
{
  accountCopy = account;
  username = [accountCopy username];
  v8 = [username length];
  if (v8 || (-[MobileCalDAVAccount username](self, "username"), v35 = objc_claimAutoreleasedReturnValue(), [v35 length]))
  {
    username2 = [accountCopy username];
    username3 = [(MobileCalDAVAccount *)self username];
    if (([username2 isEqualToString:username3] & 1) == 0)
    {

      v9 = 0;
      goto LABEL_25;
    }

    v36 = 1;
  }

  else
  {
    v36 = 0;
  }

  host = [accountCopy host];
  v11 = [host length];
  if (v11 || (-[MobileCalDAVAccount host](self, "host"), v27 = objc_claimAutoreleasedReturnValue(), [v27 length]))
  {
    host2 = [accountCopy host];
    host3 = [(MobileCalDAVAccount *)self host];
    if (([host2 isEqualToString:host3] & 1) == 0)
    {

      if (!v11)
      {
      }

      v9 = 0;
      if (v36)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v31 = host3;
    v26 = host2;
    v33 = v11;
    v34 = host;
    v14 = 1;
  }

  else
  {
    v33 = 0;
    v34 = host;
    v14 = 0;
  }

  principalURL = [accountCopy principalURL];
  absoluteString = [principalURL absoluteString];
  v16 = [absoluteString length];
  if (v16 || (-[MobileCalDAVAccount principalURL](self, "principalURL"), v25 = objc_claimAutoreleasedReturnValue(), [v25 absoluteString], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "length")))
  {
    v28 = v14;
    v29 = username2;
    v30 = username;
    principalURL2 = [accountCopy principalURL];
    absoluteString2 = [principalURL2 absoluteString];
    principalURL3 = [(MobileCalDAVAccount *)self principalURL];
    absoluteString3 = [principalURL3 absoluteString];
    v9 = [absoluteString2 isEqualToString:absoluteString3];

    if (v16)
    {

      username2 = v29;
      username = v30;
      v21 = v33;
      v22 = v31;
      if (!v28)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    username2 = v29;
    username = v30;
    v22 = v31;
    LOBYTE(v14) = v28;
  }

  else
  {
    v9 = 1;
    v22 = v31;
  }

  v21 = v33;
  if (v14)
  {
LABEL_20:
  }

LABEL_21:
  if (!v21)
  {
  }

  if (v36)
  {
LABEL_24:
  }

LABEL_25:
  if (!v8)
  {
  }

  return v9;
}

- (BOOL)accountHasSignificantPropertyChangesFromOldAccountInfo:(id)info
{
  infoCopy = info;
  v13.receiver = self;
  v13.super_class = MobileCalDAVAccount;
  if (![(MobileCalDAVAccount *)&v13 accountHasSignificantPropertyChangesFromOldAccountInfo:infoCopy])
  {
    v7 = [MEMORY[0x277CF39F8] daAccountSubclassWithBackingAccountInfo:infoCopy];
    principalPath = [(MobileCalDAVAccount *)self principalPath];
    v9 = [principalPath length];
    if (v9 || ([v7 principalPath], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "length")))
    {
      principalPath2 = [(MobileCalDAVAccount *)self principalPath];
      principalPath3 = [v7 principalPath];
      v6 = [principalPath2 isEqualToString:principalPath3] ^ 1;

      if (v9)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    goto LABEL_9;
  }

  LOBYTE(v6) = 1;
LABEL_10:

  return v6;
}

- (id)localizedIdenticalAccountFailureMessage
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"ACCOUNT_UNIQUE_CONSTRAINT_FAILED_BODY_FORMAT_CALDAV" value:&stru_2854B8D68 table:@"DataAccess"];

  return v3;
}

- (id)localizedInvalidPasswordMessage
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"INVALID_PASSWORD_BODY_CALDAV" value:&stru_2854B8D68 table:@"DataAccess"];
  accountDescription = [(MobileCalDAVAccount *)self accountDescription];
  v7 = [v3 stringWithFormat:v5, accountDescription];

  return v7;
}

- (void)resetStatusReport
{
  v7.receiver = self;
  v7.super_class = MobileCalDAVAccount;
  [(MobileCalDAVAccount *)&v7 resetStatusReport];
  v3 = MEMORY[0x277CCABB0];
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];
  v5 = [v3 numberWithBool:{objc_msgSend(mainPrincipal, "isDelegate")}];
  statusReport = [(MobileCalDAVAccount *)self statusReport];
  [statusReport setIsDelegate:v5];
}

- (void)addToCoreDAVLoggingDelegates
{
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];

  if (mainPrincipal)
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    mainPrincipal2 = [(MobileCalDAVAccount *)self mainPrincipal];
    [mEMORY[0x277CFDC18] addLogDelegate:self forAccountInfoProvider:mainPrincipal2];
  }
}

- (void)removeFromCoreDAVLoggingDelegates
{
  mainPrincipal = [(MobileCalDAVAccount *)self mainPrincipal];

  if (mainPrincipal)
  {
    mEMORY[0x277CFDC18] = [MEMORY[0x277CFDC18] sharedLogging];
    mainPrincipal2 = [(MobileCalDAVAccount *)self mainPrincipal];
    [mEMORY[0x277CFDC18] removeLogDelegate:self forAccountInfoProvider:mainPrincipal2];
  }
}

- (int64_t)coreDAVLogLevel
{
  DALogLevel = getDALogLevel();
  DAOutputLevel = getDAOutputLevel();
  if (DALogLevel <= DAOutputLevel)
  {
    return DAOutputLevel;
  }

  else
  {
    return DALogLevel;
  }
}

- (void)coreDAVLogDiagnosticMessage:(id)message atLevel:(int64_t)level
{
  levelCopy = level;
  v10 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v6 = DALoggingwithCategory();
  v7 = *(MEMORY[0x277CF3AF0] + levelCopy);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = 138412290;
    v9 = messageCopy;
    _os_log_impl(&dword_242490000, v6, v7, "%@", &v8, 0xCu);
  }
}

- (void)coreDAVLogTransmittedDataPartial:(id)partial
{
  partialCopy = partial;
  coreDAVLogger = [(MobileCalDAVAccount *)self coreDAVLogger];
  [coreDAVLogger logSnippet:partialCopy];
}

- (BOOL)addressIsAccountOwner:(id)owner
{
  ownerCopy = owner;
  if (ownerCopy)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    principals = [(MobileCalDAVAccount *)self principals];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__MobileCalDAVAccount_addressIsAccountOwner___block_invoke;
    v8[3] = &unk_278D4F390;
    v9 = ownerCopy;
    v10 = &v11;
    [principals enumerateKeysAndObjectsUsingBlock:v8];

    v6 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void __45__MobileCalDAVAccount_addressIsAccountOwner___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v10 = a3;
  v6 = [MEMORY[0x277CBEBC0] URLWithString:*(a1 + 32)];
  if (v6 && [v10 calendarUserAddressIsEquivalentToURL:v6])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  else
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"mailto:%@", *(a1 + 32)];
    v9 = [v7 URLWithString:v8];

    if (v9 && [v10 calendarUserAddressIsEquivalentToURL:v9])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }
}

- (void)refreshActor:(uint64_t)a1 didCompleteWithError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVAccount.m" lineNumber:1417 description:{@"I didn't order a refresh, so why is there one on my menu?"}];
}

- (void)refreshActor:(uint64_t)a1 didCompleteWithError:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MobileCalDAVAccount.m" lineNumber:1418 description:@"We should have an actor at this point"];
}

@end