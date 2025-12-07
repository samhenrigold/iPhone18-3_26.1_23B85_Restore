@interface CNAutocompletePredictionSearch
+ (unint64_t)predictedResultLimit;
+ (unint64_t)predictionStrategyForRequest:(id)request;
- (CNAutocompletePredictionSearch)init;
- (CNAutocompletePredictionSearch)initWithContactStore:(id)store;
- (id)executeRequest:(id)request completionHandler:(id)handler;
- (id)strategyForRequest:(id)request;
- (id)suggestionsForRequest:(id)request;
@end

@implementation CNAutocompletePredictionSearch

- (CNAutocompletePredictionSearch)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v4 = [(CNAutocompletePredictionSearch *)self initWithContactStore:v3];

  return v4;
}

- (CNAutocompletePredictionSearch)initWithContactStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = CNAutocompletePredictionSearch;
  v6 = [(CNAutocompletePredictionSearch *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
    currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
    schedulerProvider = [currentEnvironment schedulerProvider];
    v10 = [schedulerProvider backgroundSchedulerWithQualityOfService:4];
    scheduler = v7->_scheduler;
    v7->_scheduler = v10;

    v12 = v7;
  }

  return v7;
}

- (id)executeRequest:(id)request completionHandler:(id)handler
{
  v24 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v8 = CNALoggingContextDebug(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v23 = requestCopy;
    _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Executing request %p against predictions CoreDuet/PeopleSuggester", buf, 0xCu);
  }

  v9 = [(CNAutocompletePredictionSearch *)self suggestionsForRequest:requestCopy];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __67__CNAutocompletePredictionSearch_executeRequest_completionHandler___block_invoke;
  v20[3] = &unk_2781C4218;
  v10 = handlerCopy;
  v21 = v10;
  [v9 addSuccessBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __67__CNAutocompletePredictionSearch_executeRequest_completionHandler___block_invoke_2;
  v18[3] = &unk_2781C4240;
  v19 = v10;
  v11 = v10;
  [v9 addFailureBlock:v18];
  v12 = MEMORY[0x277CFBDC8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__CNAutocompletePredictionSearch_executeRequest_completionHandler___block_invoke_3;
  v16[3] = &unk_2781C3FB0;
  v17 = v9;
  v13 = v9;
  v14 = [v12 tokenWithCancelationBlock:v16];

  return v14;
}

- (id)suggestionsForRequest:(id)request
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_alloc_init(MEMORY[0x277CFBE90]);
  v6 = [(CNAutocompletePredictionSearch *)self strategyForRequest:requestCopy];
  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v9 = v8;

  v11 = CNALoggingContextTriage(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier = [requestCopy triageIdentifier];
    descriptionForLogging = [v6 descriptionForLogging];
    *buf = 138543618;
    v29 = triageIdentifier;
    v30 = 2114;
    v31 = descriptionForLogging;
    _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Predictions: Will search %{public}@", buf, 0x16u);
  }

  scheduler = self->_scheduler;
  v20 = MEMORY[0x277D85DD0];
  v21 = 3221225472;
  v22 = __56__CNAutocompletePredictionSearch_suggestionsForRequest___block_invoke;
  v23 = &unk_2781C4268;
  v24 = v6;
  v25 = requestCopy;
  v27 = v9;
  v26 = v5;
  v15 = v5;
  v16 = requestCopy;
  v17 = v6;
  [(CNScheduler *)scheduler performBlock:&v20];
  future = [v15 future];

  return future;
}

void __56__CNAutocompletePredictionSearch_suggestionsForRequest___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) searchResultsForFetchRequest:*(a1 + 40)];
  v3 = [MEMORY[0x277CFBED0] defaultProvider];
  [v3 timestamp];
  v5 = v4;

  v6 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v5 - *(a1 + 56)];
  v7 = CNALoggingContextTriage(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) triageIdentifier];
    v9 = [v2 count];
    v10 = [v2 count];
    v11 = "results";
    v20 = 138544130;
    v22 = 2048;
    v21 = v8;
    if (v10 == 1)
    {
      v11 = "result";
    }

    v23 = v9;
    v24 = 2080;
    v25 = v11;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_2155FE000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Predictions: Search complete (%lu %s, %{public}@)", &v20, 0x2Au);
  }

  v13 = CNALoggingContextPerformance(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v2 count];
    v15 = [*(a1 + 32) descriptionForLogging];
    v20 = 134218498;
    v21 = v14;
    v22 = 2112;
    v23 = v15;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_2155FE000, v13, OS_LOG_TYPE_INFO, "Time to fetch %lu predictions results from %@: %{public}@", &v20, 0x20u);
  }

  v17 = CNALoggingContextDebug(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v2, "count")}];
    v19 = [v2 _cn_take:200];
    v20 = 138412546;
    v21 = v18;
    v22 = 2112;
    v23 = v19;
    _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_DEFAULT, "Predicted results (first 200 out of %@): %@", &v20, 0x16u);
  }

  [*(a1 + 48) finishWithResult:v2];
}

- (id)strategyForRequest:(id)request
{
  requestCopy = request;
  v5 = [objc_opt_class() predictionStrategyForRequest:requestCopy];

  contactStore = self->_contactStore;
  if (v5 == 1)
  {
    [CNAutocompletePredictionSearchStrategy peopleSuggesterStrategyWithContactStore:contactStore];
  }

  else
  {
    [CNAutocompletePredictionSearchStrategy coreDuetStrategyWithContactStore:contactStore];
  }
  v7 = ;

  return v7;
}

+ (unint64_t)predictionStrategyForRequest:(id)request
{
  requestCopy = request;
  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  userDefaults = [currentEnvironment userDefaults];
  v6 = [userDefaults userHasOptedInToPreference:@"CNAlwaysUsePeopleSuggesterForPredictions"];

  v7 = (v6 & 1) != 0 || [requestCopy searchType] == 2 || objc_msgSend(requestCopy, "searchType") == 1;
  return v7;
}

+ (unint64_t)predictedResultLimit
{
  v5 = 0;
  standardPreferences = [MEMORY[0x277CFBEE8] standardPreferences];
  v3 = [standardPreferences integerForKey:@"CNAutocompleteDefaultsPredictedResultLimit" keyExists:&v5];

  if (v5)
  {
    return v3;
  }

  else
  {
    return 8;
  }
}

@end