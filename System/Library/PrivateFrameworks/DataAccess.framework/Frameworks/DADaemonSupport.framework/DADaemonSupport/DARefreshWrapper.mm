@interface DARefreshWrapper
- (DARefreshManagerDelegate)delegate;
- (DARefreshWrapper)init;
- (const)fetchActivityIdentifier;
- (const)retryActivityIdentifier;
- (id)_fetchActivityCriteriaInOnPowerMode;
- (id)_fetchActivityCriteriaWithInterval:(int64_t)interval;
- (id)_stringForStyle:(int)style;
- (id)description;
- (int64_t)XPCActivityInterval;
- (void)_retryActivityFired;
- (void)cancelAllTokenRegistrations;
- (void)cancelDailyRefreshActivity;
- (void)cancelFetchActivity;
- (void)cancelRetryActivity;
- (void)dailyRefreshActivityFired;
- (void)performTokenRegistrationRequestsWithToken:(id)token onBehalfOf:(id)of;
- (void)refreshCollections:(id)collections withReason:(int)reason;
- (void)retryCollections:(id)collections after:(double)after reason:(int)reason;
- (void)setCurStyle:(int)style;
- (void)startDailyRefreshActivity;
- (void)startFetchActivityForFetch;
- (void)startFetchActivityForPush;
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
  v5 = [v2 stringWithFormat:@"com.apple.dataaccess.dataaccessd.retry.%@", scheduleIdentifier];

  uTF8String = [v5 UTF8String];
  return uTF8String;
}

- (void)cancelRetryActivity
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    getDAAccount = [delegate getDAAccount];
    accountDescription = [getDAAccount accountDescription];
    delegate2 = [(DARefreshWrapper *)self delegate];
    getDAAccount2 = [delegate2 getDAAccount];
    publicDescription = [getDAAccount2 publicDescription];
    v11 = 138412802;
    v12 = accountDescription;
    v13 = 2114;
    v14 = publicDescription;
    v15 = 2080;
    retryActivityIdentifier = [(DARefreshWrapper *)self retryActivityIdentifier];
    _os_log_impl(&dword_248524000, v3, v4, "XPC: Cancelling Retry Activity for account %@ (%{public}@) retryActivityIdentifier: %s", &v11, 0x20u);
  }

  xpc_activity_unregister([(DARefreshWrapper *)self retryActivityIdentifier]);
}

- (void)cancelDailyRefreshActivity
{
  v3 = +[DARefreshManager sharedManager];
  [v3 endDailyRefreshActivityForWrapper:self];
}

- (void)startDailyRefreshActivity
{
  v3 = +[DARefreshManager sharedManager];
  [v3 startDailyRefreshActivityForWrapper:self];
}

- (void)stopCollectionsRefresh
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_248524000, v3, v4, "%@: Stopping XPC Activities for Refreshing Collections", &v6, 0xCu);
  }

  [(DARefreshWrapper *)self cancelRetryActivity];
  [(DARefreshWrapper *)self cancelDailyRefreshActivity];
  [(DARefreshWrapper *)self cancelFetchActivity];
  v5 = DALoggingwithCategory();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_248524000, v5, v4, "%@: Cancelling pending Token Registration request", &v6, 0xCu);
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
    return off_278F1D4A8[style];
  }
}

- (const)fetchActivityIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  delegate = [(DARefreshWrapper *)self delegate];
  getDAAccount = [delegate getDAAccount];
  accountID = [getDAAccount accountID];
  v6 = [v2 stringWithFormat:@"com.apple.dataaccess.dataaccessd.fetch.%@", accountID];

  uTF8String = [v6 UTF8String];
  return uTF8String;
}

- (int64_t)XPCActivityInterval
{
  v14 = *MEMORY[0x277D85DE8];
  delegate = [(DARefreshWrapper *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    fetchInterval = [delegate fetchInterval];
    v5 = fetchInterval;
    if (fetchInterval >= -2)
    {
      if (fetchInterval != -2)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v6 = DALoggingwithCategory();
      v7 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v6, v7))
      {
        v10 = 138412546;
        v11 = delegate;
        v12 = 2048;
        v13 = v5;
        _os_log_impl(&dword_248524000, v6, v7, "Delegate (%@) returned invalid fetch interval %lli; using system default", &v10, 0x16u);
      }
    }
  }

  delegate2 = [(DARefreshWrapper *)self delegate];
  [delegate2 scheduleIdentifier];
  LODWORD(v5) = PCSettingsGetPollInterval();

  if (v5 <= -2)
  {
    v5 = -1;
  }

  else
  {
    v5 = v5;
  }

LABEL_10:

  return v5;
}

- (id)_fetchActivityCriteriaWithInterval:(int64_t)interval
{
  v4 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86360], 1);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86250], interval);
  xpc_dictionary_set_int64(v4, *MEMORY[0x277D86270], interval / 5);
  xpc_dictionary_set_BOOL(v4, *MEMORY[0x277D86398], 1);
  xpc_dictionary_set_string(v4, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);

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
  v33 = *MEMORY[0x277D85DE8];
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
      v12 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v11, v12))
      {
        delegate3 = [(DARefreshWrapper *)self delegate];
        getDAAccount3 = [delegate3 getDAAccount];
        accountDescription2 = [getDAAccount3 accountDescription];
        delegate4 = [(DARefreshWrapper *)self delegate];
        getDAAccount4 = [delegate4 getDAAccount];
        publicDescription = [getDAAccount4 publicDescription];
        *buf = 138413058;
        v26 = accountDescription2;
        v27 = 2114;
        v28 = publicDescription;
        v29 = 2080;
        fetchActivityIdentifier = [(DARefreshWrapper *)self fetchActivityIdentifier];
        v31 = 2048;
        fetchInterval = [(DARefreshWrapper *)self fetchInterval];
        _os_log_impl(&dword_248524000, v11, v12, "XPC: Registering Fetch Activity for account %@ (%{public}@) retryActivityIdentifier: %s, Interval %lld", buf, 0x2Au);
      }

      fetchInterval2 = [(DARefreshWrapper *)self fetchInterval];
      fetchActivityIdentifier2 = [(DARefreshWrapper *)self fetchActivityIdentifier];
      v20 = *MEMORY[0x277D86238];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke;
      handler[3] = &unk_278F1D488;
      handler[4] = self;
      handler[5] = interval;
      handler[6] = fetchInterval2;
      xpc_activity_register(fetchActivityIdentifier2, v20, handler);
      return;
    }
  }

  else
  {
  }

  v21 = DALoggingwithCategory();
  v22 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v21, v22))
  {
    *buf = 0;
    _os_log_impl(&dword_248524000, v21, v22, "Don't start fetch because either DAAccount is nil or account description is nil", buf, 2u);
  }
}

void __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = a2;
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v6 = xpc_activity_set_state(v3, 4);
    v7 = DALoggingwithCategory();
    v8 = v7;
    if (v6)
    {
      v9 = MEMORY[0x277D03988];
      v10 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v7, v10))
      {
        v11 = [*(a1 + 32) delegate];
        v12 = [v11 getDAAccount];
        v13 = [v12 accountID];
        *buf = 138543362;
        v44 = v13;
        _os_log_impl(&dword_248524000, v8, v10, "XPC: Successfully set XPC activity state to XPC_ACTIVITY_STATE_CONTINUE for account %{public}@", buf, 0xCu);
      }

      v14 = DALoggingwithCategory();
      v15 = *(v9 + 7);
      if (os_log_type_enabled(v14, v15))
      {
        v16 = [*(a1 + 32) delegate];
        v17 = [v16 getDAAccount];
        v18 = [v17 accountDescription];
        v19 = [*(a1 + 32) delegate];
        v20 = [v19 getDAAccount];
        v21 = [v20 publicDescription];
        *buf = 138412546;
        v44 = v18;
        v45 = 2114;
        v46 = v21;
        _os_log_impl(&dword_248524000, v14, v15, "Start fetching in automatically mode for account %@ (%{public}@)", buf, 0x16u);
      }

      v22 = [*(a1 + 32) delegate];
      [v22 saveXpcActivity:v3];

      v23 = objc_alloc(MEMORY[0x277D03750]);
      v8 = [*(a1 + 32) delegate];
      v24 = [v8 getDAAccount];
      v25 = [v23 initWithAccount:v24];
    }

    else
    {
      v26 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, *(MEMORY[0x277D03988] + 3)))
      {
        v27 = [*(a1 + 32) delegate];
        v28 = [v27 getDAAccount];
        v29 = [v28 accountID];
        *buf = 138543362;
        v44 = v29;
        _os_log_impl(&dword_248524000, v8, v26, "XPC: Failed to set XPC activity state to XPC_ACTIVITY_STATE_CONTINUE for account %{public}@", buf, 0xCu);
      }

      v25 = 0;
    }

    v30 = dataaccess_get_global_queue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke_21;
    block[3] = &unk_278F1CD98;
    block[4] = *(a1 + 32);
    v42 = v25;
    v31 = v25;
    dispatch_async(v30, block);

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
    v31 = ;
    v32 = xpc_activity_copy_criteria(v3);
    if (!v32 || !xpc_equal(v31, v32))
    {
      v33 = DALoggingwithCategory();
      v34 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v33, v34))
      {
        v40 = [*(a1 + 32) delegate];
        v35 = [v40 getDAAccount];
        v36 = [v35 accountDescription];
        v37 = [*(a1 + 32) delegate];
        v38 = [v37 getDAAccount];
        v39 = [v38 publicDescription];
        *buf = 138412546;
        v44 = v36;
        v45 = 2114;
        v46 = v39;
        _os_log_impl(&dword_248524000, v33, v34, "Updating criteria for fetch xpc activity for account %@ (%{public}@)", buf, 0x16u);
      }

      xpc_activity_set_criteria(v3, v31);
    }

LABEL_22:
  }
}

void __51__DARefreshWrapper_startFetchActivityWithInterval___block_invoke_21(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = [*(a1 + 32) delegate];
    v6 = [v5 getDAAccount];
    v7 = [v6 accountDescription];
    v8 = [*(a1 + 32) delegate];
    v9 = [v8 getDAAccount];
    v10 = [v9 publicDescription];
    v11 = [*(a1 + 32) fetchActivityIdentifier];
    v12 = [*(a1 + 32) fetchInterval];
    v16 = 138413058;
    v17 = v7;
    v18 = 2114;
    v19 = v10;
    v20 = 2080;
    v21 = v11;
    v22 = 2048;
    v23 = v12;
    _os_log_impl(&dword_248524000, v3, v4, "XPC: Performing Fetch Activity for account %@ (%{public}@) fetchActivityIdentifier %s, Interval %lld", &v16, 0x2Au);
  }

  v13 = *(a1 + 32);
  v14 = [v13 delegate];
  v15 = [v14 watchedCollections];
  [v13 refreshCollections:v15 withReason:1];
}

- (void)startFetchActivityForFetch
{
  v20 = *MEMORY[0x277D85DE8];
  [(DARefreshWrapper *)self setFetchInterval:[(DARefreshWrapper *)self XPCActivityInterval]];
  if ([(DARefreshWrapper *)self fetchInterval]< 0)
  {
    v4 = DALoggingwithCategory();
    v5 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v4, v5))
    {
      delegate = [(DARefreshWrapper *)self delegate];
      getDAAccount = [delegate getDAAccount];
      accountDescription = [getDAAccount accountDescription];
      delegate2 = [(DARefreshWrapper *)self delegate];
      getDAAccount2 = [delegate2 getDAAccount];
      publicDescription = [getDAAccount2 publicDescription];
      v12 = 138413058;
      v13 = accountDescription;
      v14 = 2114;
      v15 = publicDescription;
      v16 = 2080;
      fetchActivityIdentifier = [(DARefreshWrapper *)self fetchActivityIdentifier];
      v18 = 2048;
      xPCActivityInterval = [(DARefreshWrapper *)self XPCActivityInterval];
      _os_log_impl(&dword_248524000, v4, v5, "XPC: Manual Sync Fetch Activity for account %@ (%{public}@) fetchActivityIdentifier %s, Interval %lld", &v12, 0x2Au);
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
  v19 = *MEMORY[0x277D85DE8];
  [(DARefreshWrapper *)self setFetchInterval:*MEMORY[0x277D862B0]];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    getDAAccount = [delegate getDAAccount];
    accountDescription = [getDAAccount accountDescription];
    delegate2 = [(DARefreshWrapper *)self delegate];
    getDAAccount2 = [delegate2 getDAAccount];
    publicDescription = [getDAAccount2 publicDescription];
    v11 = 138413058;
    v12 = accountDescription;
    v13 = 2114;
    v14 = publicDescription;
    v15 = 2080;
    fetchActivityIdentifier = [(DARefreshWrapper *)self fetchActivityIdentifier];
    v17 = 2048;
    fetchInterval = [(DARefreshWrapper *)self fetchInterval];
    _os_log_impl(&dword_248524000, v3, v4, "XPC: Starting a Temp Sync Fetch Activity before Transitioning to Push for account %@ (%{public}@) fetchActivityIdentifier %s, Interval %lld", &v11, 0x2Au);
  }

  [(DARefreshWrapper *)self startFetchActivityWithInterval:[(DARefreshWrapper *)self fetchInterval]];
}

- (void)cancelFetchActivity
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v3, v4))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    getDAAccount = [delegate getDAAccount];
    accountDescription = [getDAAccount accountDescription];
    delegate2 = [(DARefreshWrapper *)self delegate];
    getDAAccount2 = [delegate2 getDAAccount];
    publicDescription = [getDAAccount2 publicDescription];
    v11 = 138412802;
    v12 = accountDescription;
    v13 = 2114;
    v14 = publicDescription;
    v15 = 2080;
    fetchActivityIdentifier = [(DARefreshWrapper *)self fetchActivityIdentifier];
    _os_log_impl(&dword_248524000, v3, v4, "XPC: Cancelling Fetch Activity for account %@ (%{public}@) fetchActivityIdentifier %s", &v11, 0x20u);
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
    v11[3] = &unk_278F1CDC0;
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
  v9 = *(MEMORY[0x277D03988] + 6);
  if (os_log_type_enabled(v8, v9))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    delegate2 = [(DARefreshWrapper *)self delegate];
    watchedCollections = [delegate2 watchedCollections];
    *buf = 138412546;
    v29 = delegate;
    v30 = 2112;
    v31 = watchedCollections;
    _os_log_impl(&dword_248524000, v8, v9, "Performing token registration request for %@ with watched collections %@", buf, 0x16u);
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
  v14 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  v7 = DALoggingwithCategory();
  v8 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v7, v8))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    scheduleIdentifier = [delegate scheduleIdentifier];
    v12 = 138543362;
    v13 = scheduleIdentifier;
    _os_log_impl(&dword_248524000, v7, v8, "Refreshing delegate %{public}@", &v12, 0xCu);
  }

  [(DARefreshWrapper *)self cancelRetryActivity];
  delegate2 = [(DARefreshWrapper *)self delegate];
  [delegate2 refreshCollections:collectionsCopy withReason:v4];
}

- (void)_retryActivityFired
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    scheduleIdentifier = [delegate scheduleIdentifier];
    v8 = 138543362;
    v9 = scheduleIdentifier;
    _os_log_impl(&dword_248524000, v3, v4, "Retry activity  fired for delegate %{public}@", &v8, 0xCu);
  }

  refreshCollections = [(DARefreshWrapper *)self refreshCollections];
  [(DARefreshWrapper *)self refreshCollections:refreshCollections withReason:[(DARefreshWrapper *)self refreshReason]];
}

- (void)dailyRefreshActivityFired
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = DALoggingwithCategory();
  v4 = *(MEMORY[0x277D03988] + 5);
  if (os_log_type_enabled(v3, v4))
  {
    delegate = [(DARefreshWrapper *)self delegate];
    scheduleIdentifier = [delegate scheduleIdentifier];
    v9 = 138543362;
    v10 = scheduleIdentifier;
    _os_log_impl(&dword_248524000, v3, v4, "Daily refresh activity fired for delegate %{public}@", &v9, 0xCu);
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
  v11 = *(MEMORY[0x277D03988] + 6);
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
    _os_log_impl(&dword_248524000, v10, v11, "Setting a timer to refresh the collections %@ for delegate %@ after %f seconds", buf, 0x20u);
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v14, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v14, *MEMORY[0x277D86250], after);
  xpc_dictionary_set_int64(v14, *MEMORY[0x277D86270], after / 5);
  retryActivityIdentifier = [(DARefreshWrapper *)self retryActivityIdentifier];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __50__DARefreshWrapper_retryCollections_after_reason___block_invoke;
  handler[3] = &unk_278F1CEA8;
  handler[4] = self;
  xpc_activity_register(retryActivityIdentifier, v14, handler);
}

void __50__DARefreshWrapper_retryCollections_after_reason___block_invoke(uint64_t a1)
{
  v2 = dataaccess_get_global_queue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__DARefreshWrapper_retryCollections_after_reason___block_invoke_2;
  block[3] = &unk_278F1CDC0;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (DARefreshManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end