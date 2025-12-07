@interface CNAutocompleteDirectoryServerSearch
- (CNAutocompleteDirectoryServerSearch)init;
- (CNAutocompleteDirectoryServerSearch)initWithContactStore:(id)store;
- (id)executeRequest:(id)request completionHandler:(id)handler;
- (id)fetchContactsForFetchRequest:(id)request completionHandler:(id)handler;
@end

@implementation CNAutocompleteDirectoryServerSearch

- (CNAutocompleteDirectoryServerSearch)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v4 = [(CNAutocompleteDirectoryServerSearch *)self initWithContactStore:v3];

  return v4;
}

- (CNAutocompleteDirectoryServerSearch)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = CNAutocompleteDirectoryServerSearch;
  v6 = [(CNAutocompleteDirectoryServerSearch *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (id)executeRequest:(id)request completionHandler:(id)handler
{
  v37 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  timeProvider = [currentEnvironment timeProvider];
  [timeProvider timestamp];
  v11 = v10;

  v13 = CNALoggingContextTriage(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier = [requestCopy triageIdentifier];
    searchString = [requestCopy searchString];
    *buf = 138543618;
    v34 = triageIdentifier;
    v35 = 2048;
    v36 = [searchString length];
    _os_log_impl(&dword_2155FE000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Directory Servers: Will search (%lu letters)", buf, 0x16u);
  }

  v17 = CNALoggingContextTriage(v16);
  v18 = os_signpost_id_generate(v17);

  v20 = CNALoggingContextPerformance(v19);
  v21 = v20;
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v18, "Searching Directory Servers", "", buf, 2u);
  }

  v23 = CNALoggingContextDebug(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = requestCopy;
    _os_log_impl(&dword_2155FE000, v23, OS_LOG_TYPE_DEFAULT, "Executing request %p against directory servers", buf, 0xCu);
  }

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __72__CNAutocompleteDirectoryServerSearch_executeRequest_completionHandler___block_invoke;
  v28[3] = &unk_2781C4608;
  v30 = handlerCopy;
  v31 = v18;
  v32 = v11;
  v29 = requestCopy;
  v24 = handlerCopy;
  v25 = requestCopy;
  v26 = [(CNAutocompleteDirectoryServerSearch *)self fetchContactsForFetchRequest:v25 completionHandler:v28];

  return v26;
}

void __72__CNAutocompleteDirectoryServerSearch_executeRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = CNALoggingContextPerformance(v6);
  v8 = v7;
  v9 = *(a1 + 48);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v28) = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v8, OS_SIGNPOST_INTERVAL_END, v9, "Searching Directory Servers", "", &v28, 2u);
  }

  v10 = [MEMORY[0x277CFBE10] currentEnvironment];
  v11 = [v10 timeProvider];
  [v11 timestamp];
  v13 = v12;

  v14 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v13 - *(a1 + 56)];
  v15 = CNALoggingContextPerformance(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    v28 = 138412546;
    v29 = v16;
    v30 = 2114;
    v31 = v14;
    _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_INFO, "Time to fetch %@ contacts on directory servers: %{public}@", &v28, 0x16u);
  }

  v18 = CNALoggingContextTriage(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v19)
    {
      v20 = [*(a1 + 32) triageIdentifier];
      v28 = 138543874;
      v29 = v20;
      v30 = 2114;
      v31 = v14;
      v32 = 2114;
      v33 = v6;
      _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Directory Servers: Search failed (%{public}@): %{public}@", &v28, 0x20u);
    }
  }

  else
  {
    if (v19)
    {
      v21 = [*(a1 + 32) triageIdentifier];
      v22 = [v5 count];
      v23 = [v5 count];
      v24 = "results";
      v28 = 138544130;
      v30 = 2048;
      v29 = v21;
      if (v23 == 1)
      {
        v24 = "result";
      }

      v31 = v22;
      v32 = 2080;
      v33 = v24;
      v34 = 2114;
      v35 = v14;
      _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Directory Servers: Search complete (%lu %s, %{public}@)", &v28, 0x2Au);
    }

    v18 = CNALoggingContextDebug(v25);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v27 = [v5 _cn_take:200];
      v28 = 138412546;
      v29 = v26;
      v30 = 2112;
      v31 = v27;
      _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "Directory Server results (first 200 out of %@): %@", &v28, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (id)fetchContactsForFetchRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  schedulerProvider = [currentEnvironment schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __86__CNAutocompleteDirectoryServerSearch_fetchContactsForFetchRequest_completionHandler___block_invoke;
  v15[3] = &unk_2781C4630;
  v16 = requestCopy;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  v13 = [backgroundScheduler performCancelableBlock:v15];

  return v13;
}

void __86__CNAutocompleteDirectoryServerSearch_fetchContactsForFetchRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CNADirectoryServerSearchTask alloc];
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) contactStore];
  v11 = [(CNADirectoryServerSearchTask *)v4 initWithRequest:v5 contactStore:v6 cancelationToken:v3];

  v7 = [(CNADirectoryServerSearchTask *)v11 run];
  v8 = *(a1 + 48);
  v9 = [v7 value];
  v10 = [v7 error];
  (*(v8 + 16))(v8, v9, v10);
}

@end