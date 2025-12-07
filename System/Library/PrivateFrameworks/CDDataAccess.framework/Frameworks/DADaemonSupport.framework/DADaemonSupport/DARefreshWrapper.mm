@interface DARefreshWrapper
- (DARefreshManagerDelegate)delegate;
- (DARefreshWrapper)init;
- (const)fetchActivityIdentifier;
- (const)retryActivityIdentifier;
- (id)_fetchActivityCriteriaInOnPowerMode;
- (id)_fetchActivityCriteriaWithInterval:(int64_t)interval;
- (id)_stringForStyle:(int)style;
- (id)description;
- (int64_t)XPCActivityIntervalFromSystemSetting;
- (void)_retryActivityFired;
- (void)cancelAllTokenRegistrations;
- (void)cancelFetchActivity;
- (void)cancelRetryActivity;
- (void)dailyRefreshActivityFired;
- (void)performTokenRegistrationRequestsWithToken:(id)token onBehalfOf:(id)of;
- (void)refreshCollections:(id)collections withReason:(int)reason;
- (void)retryCollections:(id)collections after:(double)after reason:(int)reason;
- (void)setCurStyle:(int)style;
- (void)startFetchActivityForPush;
- (void)startFetchActivityForSystemPCStyle;
- (void)startFetchActivityWithInterval:(int64_t)interval;
- (void)stopCollectionsRefresh;
- (void)tokenRegistrationRequest:(id)request finishedWithError:(id)error;
@end

@implementation DARefreshWrapper

- (DARefreshWrapper)init
{
  v5.receiver = self;
  v5.super_class = DARefreshWrapper;
  v2 = [(DARefreshWrapper *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(DARefreshWrapper *)v2 setTokenRegistrations:v3];

    v2->_fetchInterval = -1;
  }

  return v2;
}

- (const)retryActivityIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  delegate = [(DARefreshWrapper *)self delegate];
  scheduleIdentifier = [delegate scheduleIdentifier];
  v5 = [v2 stringWithFormat:@"com.apple.remindd.dataaccess.retry.%@", scheduleIdentifier];

  uTF8String = [v5 UTF8String];
  return uTF8String;
}

- (void)cancelRetryActivity
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    getDAAccount = [delegate getDAAccount];
    accountDescription = [getDAAccount accountDescription];
    v8 = 138412546;
    v9 = accountDescription;
    v10 = 2080;
    retryActivityIdentifier = [(DARefreshWrapper *)self retryActivityIdentifier];
    _os_log_impl(&dword_2424DF000, v3, v4, "XPC: Cancelling Retry Activity For Account %@ AccountID: %s", &v8, 0x16u);
  }

  xpc_activity_unregister([(DARefreshWrapper *)self retryActivityIdentifier]);
}

- (void)stopCollectionsRefresh
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_2424DF000, v3, v4, "%@: Stopping XPC Activities for Refreshing Collections", &v6, 0xCu);
  }

  [(DARefreshWrapper *)self cancelRetryActivity];
  [(DARefreshWrapper *)self cancelDailyRefreshActivity];
  [(DARefreshWrapper *)self cancelFetchActivity];
  v5 = DALoggingwithCategory();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_2424DF000, v5, v4, "%@: Cancelling pending Token Registration request", &v6, 0xCu);
  }

  [(DARefreshWrapper *)self cancelAllTokenRegistrations];
}

- (id)_stringForStyle:(int)style
{
  if (style > 2)
  {
    return @"UNKNOWN!";
  }

  else
  {
    return off_278D52DD0[style];
  }
}

- (const)fetchActivityIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  delegate = [(DARefreshWrapper *)self delegate];
  getDAAccount = [delegate getDAAccount];
  accountID = [getDAAccount accountID];
  v6 = [v2 stringWithFormat:@"com.apple.remindd.dataaccess.fetch.%@", accountID];

  uTF8String = [v6 UTF8String];
  return uTF8String;
}

- (int64_t)XPCActivityIntervalFromSystemSetting
{
  delegate = [(DARefreshWrapper *)self delegate];
  [delegate scheduleIdentifier];
  PollInterval = PCSettingsGetPollInterval();

  if (PollInterval > 1799)
  {
    if (PollInterval == 1800)
    {
      v4 = MEMORY[0x277D862B0];
      return *v4;
    }

    if (PollInterval == 3600)
    {
      v4 = MEMORY[0x277D862A0];
      return *v4;
    }

    return -1;
  }

  if (!PollInterval)
  {
    return 0;
  }

  if (PollInterval != 900)
  {
    return -1;
  }

  v4 = MEMORY[0x277D86290];
  return *v4;
}

- (id)_fetchActivityCriteriaWithInterval:(int64_t)interval
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], interval);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], interval / 5);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], 1);

  return v4;
}

- (id)_fetchActivityCriteriaInOnPowerMode
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86360], 1);
  v3 = *MEMORY[0x277D862A0];
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86250], *MEMORY[0x277D862A0]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x277D86270], v3 / 5);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86230], 0);
  xpc_dictionary_set_BOOL(v2, *MEMORY[0x277D86390], 1);

  return v2;
}

- (void)startFetchActivityWithInterval:(int64_t)interval
{
  v28 = *MEMORY[0x277D85DE8];
  delegate = [(DARefreshWrapper *)self delegate];
  getDAAccount = [delegate getDAAccount];
  if (getDAAccount)
  {
    v7 = getDAAccount;
    delegate2 = [(DARefreshWrapper *)self delegate];
    getDAAccount2 = [delegate2 getDAAccount];
    accountDescription = [getDAAccount2 accountDescription];

    if (accountDescription)
    {
      v11 = DALoggingwithCategory();
      v12 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v11, v12))
      {
        delegate3 = [(DARefreshWrapper *)self delegate];
        getDAAccount3 = [delegate3 getDAAccount];
        accountDescription2 = [getDAAccount3 accountDescription];
        *buf = 138412802;
        v23 = accountDescription2;
        v24 = 2080;
        fetchActivityIdentifier = [(DARefreshWrapper *)self fetchActivityIdentifier];
        v26 = 2048;
        fetchInterval = [(DARefreshWrapper *)self fetchInterval];
        _os_log_impl(&dword_2424DF000, v11, v12, "XPC: Registering Fetch Activity For Account %@ AccountID %s, Interval %lld", buf, 0x20u);
      }

      fetchInterval2 = [(DARefreshWrapper *)self fetchInterval];
      fetchActivityIdentifier2 = [(DARefreshWrapper *)self fetchActivityIdentifier];
      v18 = *MEMORY[0x277D86238];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke;
      handler[3] = &unk_278D52DB0;
      handler[4] = self;
      handler[5] = interval;
      handler[6] = fetchInterval2;
      xpc_activity_register(fetchActivityIdentifier2, v18, handler);
      return;
    }
  }

  else
  {
  }

  v19 = DALoggingwithCategory();
  v20 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v19, v20))
  {
    *buf = 0;
    _os_log_impl(&dword_2424DF000, v19, v20, "Don't start fetch because either DAAccount is nil or account description is nil", buf, 2u);
  }
}

void __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v6 = xpc_activity_set_state(v3, 4);
    v7 = DALoggingwithCategory();
    v8 = v7;
    if (v6)
    {
      v9 = MEMORY[0x277CF3AF0];
      v10 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v7, v10))
      {
        v11 = [*(a1 + 32) delegate];
        v12 = [v11 getDAAccount];
        v13 = [v12 accountID];
        *buf = 138412290;
        v41 = v13;
        _os_log_impl(&dword_2424DF000, v8, v10, "XPC: Successfully set XPC activity state to XPC_ACTIVITY_STATE_CONTINUE for account %@", buf, 0xCu);
      }

      v14 = DALoggingwithCategory();
      v15 = *(v9 + 7);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = [*(a1 + 32) delegate];
        v17 = [v16 getDAAccount];
        v18 = [v17 accountDescription];
        *buf = 138412290;
        v41 = v18;
        _os_log_impl(&dword_2424DF000, v14, v15, "Start fetching in automatically mode for account %@", buf, 0xCu);
      }

      v19 = [*(a1 + 32) delegate];
      [v19 saveXpcActivity:v3];

      v20 = objc_alloc(MEMORY[0x277CF3A08]);
      v8 = [*(a1 + 32) delegate];
      v21 = [v8 getDAAccount];
      v22 = [v20 initWithAccount:v21];
    }

    else
    {
      v23 = *(MEMORY[0x277CF3AF0] + 3);
      if (os_log_type_enabled(v7, *(MEMORY[0x277CF3AF0] + 3)))
      {
        v24 = [*(a1 + 32) delegate];
        v25 = [v24 getDAAccount];
        v26 = [v25 accountID];
        *buf = 138412290;
        v41 = v26;
        _os_log_impl(&dword_2424DF000, v8, v23, "XPC: Failed to set XPC activity state to XPC_ACTIVITY_STATE_CONTINUE for account %@", buf, 0xCu);
      }

      v22 = 0;
    }

    v27 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke_18;
    block[3] = &unk_278D52AB0;
    block[4] = *(a1 + 32);
    v39 = v22;
    v28 = v22;
    dispatch_async(v27, block);

    goto LABEL_22;
  }

  if (!state)
  {
    v5 = *(a1 + 32);
    if (*(a1 + 40) < 1)
    {
      [v5 _fetchActivityCriteriaInOnPowerMode];
    }

    else
    {
      [v5 _fetchActivityCriteriaWithInterval:*(a1 + 48)];
    }
    v28 = ;
    v29 = xpc_activity_copy_criteria(v3);
    if (!v29 || !xpc_equal(v28, v29))
    {
      v30 = DALoggingwithCategory();
      v31 = *(MEMORY[0x277CF3AF0] + 6);
      if (os_log_type_enabled(v30, v31))
      {
        v37 = [*(a1 + 32) delegate];
        v32 = [v37 getDAAccount];
        v33 = [v32 accountDescription];
        v34 = [*(a1 + 32) delegate];
        v35 = [v34 getDAAccount];
        v36 = [v35 accountID];
        *buf = 138412546;
        v41 = v33;
        v42 = 2112;
        v43 = v36;
        _os_log_impl(&dword_2424DF000, v30, v31, "Updating criteria for fetch xpc activity for account %@ accountID %@", buf, 0x16u);
      }

      xpc_activity_set_criteria(v3, v28);
    }

LABEL_22:
  }
}

void __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke_18(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [*(a1 + 32) delegate];
    v6 = [v5 getDAAccount];
    v7 = [v6 accountDescription];
    v8 = [*(a1 + 32) fetchActivityIdentifier];
    v9 = [*(a1 + 32) fetchInterval];
    v13 = 138412802;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    v17 = 2048;
    v18 = v9;
    _os_log_impl(&dword_2424DF000, v3, v4, "XPC: Performing Fetch Activity For Account %@ AccountID %s, Interval %lld", &v13, 0x20u);
  }

  v10 = *(a1 + 32);
  v11 = [v10 delegate];
  v12 = [v11 watchedCollections];
  [v10 refreshCollections:v12 withReason:1];
}

- (void)startFetchActivityForSystemPCStyle
{
  v15 = *MEMORY[0x277D85DE8];
  [(DARefreshWrapper *)self setFetchInterval:[(DARefreshWrapper *)self XPCActivityIntervalFromSystemSetting]];
  if ([(DARefreshWrapper *)self fetchInterval]< 0)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277CF3AF0] + 6);
    if (os_log_type_enabled(v4, v5))
    {
      delegate = [(DARefreshWrapper *)self delegate];
      getDAAccount = [delegate getDAAccount];
      accountDescription = [getDAAccount accountDescription];
      v9 = 138412802;
      v10 = accountDescription;
      v11 = 2080;
      fetchActivityIdentifier = [(DARefreshWrapper *)self fetchActivityIdentifier];
      v13 = 2048;
      xPCActivityIntervalFromSystemSetting = [(DARefreshWrapper *)self XPCActivityIntervalFromSystemSetting];
      _os_log_impl(&dword_2424DF000, v4, v5, "XPC: Manual Sync Fetch Activity For Account %@ AccountID %s, Interval %lld", &v9, 0x20u);
    }

    [(DARefreshWrapper *)self cancelFetchActivity];
  }

  else
  {
    fetchInterval = [(DARefreshWrapper *)self fetchInterval];

    [(DARefreshWrapper *)self startFetchActivityWithInterval:fetchInterval];
  }
}

- (void)startFetchActivityForPush
{
  v14 = *MEMORY[0x277D85DE8];
  [(DARefreshWrapper *)self setFetchInterval:*MEMORY[0x277D862B0]];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    getDAAccount = [delegate getDAAccount];
    accountDescription = [getDAAccount accountDescription];
    v8 = 138412802;
    v9 = accountDescription;
    v10 = 2080;
    fetchActivityIdentifier = [(DARefreshWrapper *)self fetchActivityIdentifier];
    v12 = 2048;
    fetchInterval = [(DARefreshWrapper *)self fetchInterval];
    _os_log_impl(&dword_2424DF000, v3, v4, "XPC: Starting a Temp Sync Fetch Activity before Transitioning to Push For Account %@ AccountID %s, Interval %lld", &v8, 0x20u);
  }

  [(DARefreshWrapper *)self startFetchActivityWithInterval:[(DARefreshWrapper *)self fetchInterval]];
}

- (void)cancelFetchActivity
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    getDAAccount = [delegate getDAAccount];
    accountDescription = [getDAAccount accountDescription];
    v8 = 138412546;
    v9 = accountDescription;
    v10 = 2080;
    fetchActivityIdentifier = [(DARefreshWrapper *)self fetchActivityIdentifier];
    _os_log_impl(&dword_2424DF000, v3, v4, "XPC: Cancelling Fetch Activity For Account %@ AccountID: %s", &v8, 0x16u);
  }

  xpc_activity_unregister([(DARefreshWrapper *)self fetchActivityIdentifier]);
}

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] stringWithFormat:@"<DARefreshWrapper "];
  [v3 appendFormat:@"%p", self];
  delegate = [(DARefreshWrapper *)self delegate];
  [v3 appendFormat:@" for delegate %@", delegate];

  pushState = [(DARefreshWrapper *)self pushState];
  v6 = [(DARefreshWrapper *)self _stringForStyle:self->_curStyle];
  [v3 appendFormat:@": Push state %d, style %@", pushState, v6];

  pushRegistrationTime = [(DARefreshWrapper *)self pushRegistrationTime];
  [v3 appendFormat:@", last registration: %@", pushRegistrationTime];

  tokenRegistrations = [(DARefreshWrapper *)self tokenRegistrations];
  v9 = [tokenRegistrations count];

  if (v9)
  {
    tokenRegistrations2 = [(DARefreshWrapper *)self tokenRegistrations];
    [v3 appendFormat:@", %ld outstanding token registrations", objc_msgSend(tokenRegistrations2, "count")];
  }

  [v3 appendString:@">"];

  return v3;
}

- (void)setCurStyle:(int)style
{
  if (style)
  {
    [(DARefreshWrapper *)self cancelDailyRefreshActivity];
  }

  self->_curStyle = style;
}

- (void)cancelAllTokenRegistrations
{
  v14 = *MEMORY[0x277D85DE8];
  tokenRegistrations = [(DARefreshWrapper *)self tokenRegistrations];
  objc_sync_enter(tokenRegistrations);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  tokenRegistrations2 = [(DARefreshWrapper *)self tokenRegistrations];
  v5 = [tokenRegistrations2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(tokenRegistrations2);
        }

        [*(*(&v9 + 1) + 8 * v7++) cancel];
      }

      while (v5 != v7);
      v5 = [tokenRegistrations2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  tokenRegistrations3 = [(DARefreshWrapper *)self tokenRegistrations];
  [tokenRegistrations3 removeAllObjects];

  objc_sync_exit(tokenRegistrations);
}

- (void)tokenRegistrationRequest:(id)request finishedWithError:(id)error
{
  requestCopy = request;
  errorCopy = error;
  tokenRegistrations = [(DARefreshWrapper *)self tokenRegistrations];
  objc_sync_enter(tokenRegistrations);
  if (errorCopy)
  {
    v9 = +[DARefreshManager sharedManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __63__DARefreshWrapper_tokenRegistrationRequest_finishedWithError___block_invoke;
    v11[3] = &unk_278D52C00;
    v12 = requestCopy;
    [v9 _performBlockOnRefreshManagerThread:v11];
  }

  else
  {
    [(DARefreshWrapper *)self startDailyRefreshActivity];
  }

  tokenRegistrations2 = [(DARefreshWrapper *)self tokenRegistrations];
  [tokenRegistrations2 removeObject:requestCopy];

  objc_sync_exit(tokenRegistrations);
}

void __63__DARefreshWrapper_tokenRegistrationRequest_finishedWithError___block_invoke(uint64_t a1)
{
  v3 = +[DARefreshManager sharedManager];
  v2 = [*(a1 + 32) wrapper];
  [v3 _pushRegistrationForDelegateFailed:v2];
}

- (void)performTokenRegistrationRequestsWithToken:(id)token onBehalfOf:(id)of
{
  v32 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  ofCopy = of;
  obj = [(DARefreshWrapper *)self tokenRegistrations];
  objc_sync_enter(obj);
  v8 = DALoggingwithCategory();
  v9 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v8, v9))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    delegate2 = [(DARefreshWrapper *)self delegate];
    watchedCollections = [delegate2 watchedCollections];
    *buf = 138412546;
    v29 = delegate;
    v30 = 2112;
    v31 = watchedCollections;
    _os_log_impl(&dword_2424DF000, v8, v9, "Performing token registration request for %@ with watched collections %@", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  delegate3 = [(DARefreshWrapper *)self delegate];
  watchedCollections2 = [delegate3 watchedCollections];

  v14 = [watchedCollections2 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = *v24;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(watchedCollections2);
        }

        v17 = [DATokenRegistrationRequest requestWithToken:tokenCopy pushKey:*(*(&v23 + 1) + 8 * i) wrapper:self onBehalfOf:ofCopy, obj];
        [v17 setDelegate:self];
        tokenRegistrations = [(DARefreshWrapper *)self tokenRegistrations];
        [tokenRegistrations addObject:v17];

        delegate4 = [(DARefreshWrapper *)self delegate];
        getDAAccount = [delegate4 getDAAccount];

        [v17 sendRegistrationRequestForAccount:getDAAccount];
      }

      v14 = [watchedCollections2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  objc_sync_exit(obj);
}

- (void)refreshCollections:(id)collections withReason:(int)reason
{
  v4 = *&reason;
  collectionsCopy = collections;
  [(DARefreshWrapper *)self cancelRetryActivity];
  delegate = [(DARefreshWrapper *)self delegate];
  [delegate refreshCollections:collectionsCopy withReason:v4];
}

- (void)_retryActivityFired
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    scheduleIdentifier = [delegate scheduleIdentifier];
    v8 = 138412290;
    v9 = scheduleIdentifier;
    _os_log_impl(&dword_2424DF000, v3, v4, "Retry activity  fired for delegate %@", &v8, 0xCu);
  }

  refreshCollections = [(DARefreshWrapper *)self refreshCollections];
  [(DARefreshWrapper *)self refreshCollections:refreshCollections withReason:[(DARefreshWrapper *)self refreshReason]];
}

- (void)dailyRefreshActivityFired
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    scheduleIdentifier = [delegate scheduleIdentifier];
    v9 = 138412290;
    v10 = scheduleIdentifier;
    _os_log_impl(&dword_2424DF000, v3, v4, "Daily refresh activity fired for delegate %@", &v9, 0xCu);
  }

  delegate2 = [(DARefreshWrapper *)self delegate];
  watchedCollections = [delegate2 watchedCollections];
  [(DARefreshWrapper *)self refreshCollections:watchedCollections withReason:1];
}

- (void)retryCollections:(id)collections after:(double)after reason:(int)reason
{
  v5 = *&reason;
  v23 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  [(DARefreshWrapper *)self cancelRetryActivity];
  [(DARefreshWrapper *)self setRefreshReason:v5];
  if (collectionsCopy)
  {
    v9 = [collectionsCopy mutableCopy];
    [(DARefreshWrapper *)self setRefreshCollections:v9];
  }

  else
  {
    [(DARefreshWrapper *)self setRefreshCollections:0];
  }

  v10 = DALoggingwithCategory();
  v11 = *(MEMORY[0x277CF3AF0] + 6);
  if (os_log_type_enabled(v10, v11))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    scheduleIdentifier = [delegate scheduleIdentifier];
    *buf = 138412802;
    v18 = collectionsCopy;
    v19 = 2112;
    v20 = scheduleIdentifier;
    v21 = 2048;
    afterCopy = after;
    _os_log_impl(&dword_2424DF000, v10, v11, "Setting a timer to refresh the collections %@ for delegate %@ after %f seconds", buf, 0x20u);
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v14, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v14, *MEMORY[0x277D86250], after);
  xpc_dictionary_set_int64(v14, *MEMORY[0x277D86270], after / 5);
  retryActivityIdentifier = [(DARefreshWrapper *)self retryActivityIdentifier];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__DARefreshWrapper_retryCollections_after_reason___block_invoke;
  handler[3] = &unk_278D52D10;
  handler[4] = self;
  xpc_activity_register(retryActivityIdentifier, v14, handler);
}

void __50__DARefreshWrapper_retryCollections_after_reason___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DARefreshWrapper_retryCollections_after_reason___block_invoke_2;
  block[3] = &unk_278D52C00;
  block[4] = *(a1 + 32);
  dispatch_async(v3, block);
}

- (DARefreshManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end