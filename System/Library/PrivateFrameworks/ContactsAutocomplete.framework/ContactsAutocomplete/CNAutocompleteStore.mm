@interface CNAutocompleteStore
+ (double)defaultFetchCoalescingInterval;
- (CNAutocompleteSearchProvider)searchProvider;
- (CNAutocompleteStore)initWithDelegate:(id)delegate;
- (CNAutocompleteStore)initWithDelegate:(id)delegate searchProvider:(id)provider probeProvider:(id)probeProvider scheduler:(id)scheduler;
- (CNCancelationToken)currentFetchToken;
- (id)executeFetchRequest:(id)request afterDelay:(double)delay delegate:(id)delegate;
- (id)executeFetchRequest:(id)request delegate:(id)delegate;
- (id)scheduleFetchRequest:(id)request delegate:(id)delegate;
- (void)ignoreResult:(id)result completionHandler:(id)handler;
- (void)userSelectedResult:(id)result atSortedIndex:(unint64_t)index;
@end

@implementation CNAutocompleteStore

+ (double)defaultFetchCoalescingInterval
{
  standardPreferences = [MEMORY[0x277CFBEE8] standardPreferences];
  v3 = [standardPreferences objectForKey:@"CNAutocompleteKeystrokeCoalescingInterval"];

  if (v3)
  {
    [v3 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.2;
  }

  return v5;
}

- (CNCancelationToken)currentFetchToken
{
  WeakRetained = objc_loadWeakRetained(&self->_currentFetchToken);

  return WeakRetained;
}

- (CNAutocompleteStore)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = +[CNAutocompleteSearchProviderFactory cachingProvider];
  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  schedulerProvider = [currentEnvironment schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];

  v9 = +[CNAutocompleteProbeProviderFactory defaultProbeProvider];
  v10 = [(CNAutocompleteStore *)self initWithDelegate:delegateCopy searchProvider:v5 probeProvider:v9 scheduler:backgroundScheduler];

  return v10;
}

- (CNAutocompleteStore)initWithDelegate:(id)delegate searchProvider:(id)provider probeProvider:(id)probeProvider scheduler:(id)scheduler
{
  delegateCopy = delegate;
  providerCopy = provider;
  probeProviderCopy = probeProvider;
  schedulerCopy = scheduler;
  v24.receiver = self;
  v24.super_class = CNAutocompleteStore;
  v14 = [(CNAutocompleteStore *)&v24 init];
  if (v14)
  {
    v15 = [[CNAutocompleteUserSession alloc] initWithProbeProvider:probeProviderCopy];
    userSession = v14->_userSession;
    v14->_userSession = v15;

    v17 = [[CNAutocompleteStoreQueryHelper alloc] initWithSearchProvider:providerCopy delegate:delegateCopy probeProvider:probeProviderCopy scheduler:schedulerCopy userSession:v14->_userSession];
    queryHelper = v14->_queryHelper;
    v14->_queryHelper = v17;

    objc_storeStrong(&v14->_scheduler, scheduler);
    objc_storeStrong(&v14->_probeProvider, probeProvider);
    [objc_opt_class() defaultFetchCoalescingInterval];
    v14->_fetchCoalescingInterval = v19;
    v20 = [[CNAutocompleteStoreReproStringRecorder alloc] initWithTimeProvider:schedulerCopy];
    reproStringRecorder = v14->_reproStringRecorder;
    v14->_reproStringRecorder = v20;

    v22 = v14;
  }

  return v14;
}

- (CNAutocompleteSearchProvider)searchProvider
{
  queryHelper = [(CNAutocompleteStore *)self queryHelper];
  searchProvider = [queryHelper searchProvider];

  return searchProvider;
}

- (id)scheduleFetchRequest:(id)request delegate:(id)delegate
{
  requestCopy = request;
  delegateCopy = delegate;
  [(CNAutocompleteStore *)self fetchCoalescingInterval];
  if (v8 == 0.0)
  {
    [(CNAutocompleteStore *)self executeFetchRequest:requestCopy delegate:delegateCopy];
  }

  else
  {
    [(CNAutocompleteStore *)self fetchCoalescingInterval];
    [(CNAutocompleteStore *)self executeFetchRequest:requestCopy afterDelay:delegateCopy delegate:?];
  }
  v9 = ;

  return v9;
}

- (id)executeFetchRequest:(id)request afterDelay:(double)delay delegate:(id)delegate
{
  v49 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  delegateCopy = delegate;
  v10 = CNALoggingContextDebug(delegateCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    v46 = requestCopy;
    v47 = 2048;
    delayCopy = delay;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Scheduling request %{private}@ after delay (%.3fs)", buf, 0x16u);
  }

  searchNames = [requestCopy searchNames];
  v12 = [searchNames count] == 1;

  if (v12)
  {
    reproStringRecorder = [(CNAutocompleteStore *)self reproStringRecorder];
    searchString = [requestCopy searchString];
    [reproStringRecorder recordString:searchString];

    v17 = CNALoggingContextDebug(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      reproStringRecorder2 = [(CNAutocompleteStore *)self reproStringRecorder];
      reproString = [reproStringRecorder2 reproString];
      *buf = 138412290;
      v46 = reproString;
      _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "Repro string: %@", buf, 0xCu);
    }
  }

  v20 = CNALoggingContextDebug(v13);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    currentFetchToken = [(CNAutocompleteStore *)self currentFetchToken];
    *buf = 134217984;
    v46 = currentFetchToken;
    _os_log_impl(&dword_2155FE000, v20, OS_LOG_TYPE_DEFAULT, "Cancelling current fetch token (%p)", buf, 0xCu);
  }

  currentFetchToken2 = [(CNAutocompleteStore *)self currentFetchToken];
  [currentFetchToken2 cancel];

  v23 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  [(CNAutocompleteStore *)self setCurrentFetchToken:v23];
  v44 = 0;
  v24 = [requestCopy isValid:&v44];
  v25 = v44;
  v26 = v25;
  if (v24)
  {
    userSession = [(CNAutocompleteStore *)self userSession];
    [userSession willStartExecutingRequest:requestCopy];

    objc_initWeak(buf, self);
    currentFetchToken3 = [(CNAutocompleteStore *)self currentFetchToken];
    scheduler = [(CNAutocompleteStore *)self scheduler];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __63__CNAutocompleteStore_executeFetchRequest_afterDelay_delegate___block_invoke_2;
    v36[3] = &unk_2781C4070;
    objc_copyWeak(&v39, buf);
    v37 = requestCopy;
    v38 = delegateCopy;
    v30 = [scheduler afterDelay:v36 performBlock:delay];
    [currentFetchToken3 addCancelable:v30];

    objc_destroyWeak(&v39);
    objc_destroyWeak(buf);
  }

  else
  {
    v31 = CNALoggingContextDebug(v25);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v46 = requestCopy;
      v47 = 2112;
      delayCopy = *&v26;
      _os_log_impl(&dword_2155FE000, v31, OS_LOG_TYPE_DEFAULT, "Fetch request is not valid: %@, error:%@, stopping.", buf, 0x16u);
    }

    scheduler2 = [(CNAutocompleteStore *)self scheduler];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __63__CNAutocompleteStore_executeFetchRequest_afterDelay_delegate___block_invoke;
    v40[3] = &unk_2781C4048;
    v41 = delegateCopy;
    v42 = v23;
    v43 = v26;
    v33 = [scheduler2 afterDelay:v40 performBlock:0.0];
  }

  currentFetchToken4 = [(CNAutocompleteStore *)self currentFetchToken];

  return currentFetchToken4;
}

void __63__CNAutocompleteStore_executeFetchRequest_afterDelay_delegate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [WeakRetained queryHelper];
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = [v10 currentFetchToken];
    v7 = [v3 executeFetchRequest:v5 delegate:v4 delegateToken:v6];

    v8 = [v10 currentFetchToken];
    if (v7 == v8)
    {
      __63__CNAutocompleteStore_executeFetchRequest_afterDelay_delegate___block_invoke_2_cold_1();
    }

    v9 = [v10 currentFetchToken];
    [v9 addCancelable:v7];

    WeakRetained = v10;
  }
}

- (id)executeFetchRequest:(id)request delegate:(id)delegate
{
  v33 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  delegateCopy = delegate;
  v8 = CNALoggingContextDebug(delegateCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = requestCopy;
    _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Executing request %@", buf, 0xCu);
  }

  currentFetchToken = [(CNAutocompleteStore *)self currentFetchToken];
  [currentFetchToken cancel];

  v10 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  [(CNAutocompleteStore *)self setCurrentFetchToken:v10];
  v28 = 0;
  v11 = [requestCopy isValid:&v28];
  v12 = v28;
  v13 = v12;
  if (v11)
  {
    userSession = [(CNAutocompleteStore *)self userSession];
    [userSession willStartExecutingRequest:requestCopy];

    queryHelper = [(CNAutocompleteStore *)self queryHelper];
    currentFetchToken2 = [(CNAutocompleteStore *)self currentFetchToken];
    v17 = [queryHelper executeFetchRequest:requestCopy delegate:delegateCopy delegateToken:currentFetchToken2];

    currentFetchToken3 = [(CNAutocompleteStore *)self currentFetchToken];
    [currentFetchToken3 addCancelable:v17];
  }

  else
  {
    v19 = CNALoggingContextDebug(v12);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v30 = requestCopy;
      v31 = 2112;
      v32 = v13;
      _os_log_impl(&dword_2155FE000, v19, OS_LOG_TYPE_DEFAULT, "Fetch request is not valid: %@, error:%@, stopping.", buf, 0x16u);
    }

    scheduler = [(CNAutocompleteStore *)self scheduler];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __52__CNAutocompleteStore_executeFetchRequest_delegate___block_invoke;
    v24[3] = &unk_2781C4048;
    v25 = delegateCopy;
    v26 = v10;
    v27 = v13;
    v21 = [scheduler afterDelay:v24 performBlock:0.0];

    v17 = v25;
  }

  currentFetchToken4 = [(CNAutocompleteStore *)self currentFetchToken];

  return currentFetchToken4;
}

- (void)userSelectedResult:(id)result atSortedIndex:(unint64_t)index
{
  resultCopy = result;
  userSession = [(CNAutocompleteStore *)self userSession];
  [userSession didSelectResult:resultCopy atSortedIndex:index];

  reproStringRecorder = [(CNAutocompleteStore *)self reproStringRecorder];
  [reproStringRecorder clear];
}

- (void)ignoreResult:(id)result completionHandler:(id)handler
{
  resultCopy = result;
  handlerCopy = handler;
  ignoreResultBlock = [resultCopy ignoreResultBlock];

  if (ignoreResultBlock)
  {
    scheduler = [(CNAutocompleteStore *)self scheduler];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __54__CNAutocompleteStore_ignoreResult_completionHandler___block_invoke;
    v10[3] = &unk_2781C40C0;
    v11 = resultCopy;
    v12 = handlerCopy;
    [scheduler performBlock:v10];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
  }
}

void __54__CNAutocompleteStore_ignoreResult_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) ignoreResultBlock];
  v6 = 0;
  v3 = (v2)[2](v2, &v6);
  v4 = v6;

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

@end