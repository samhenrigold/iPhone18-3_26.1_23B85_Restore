@interface CNAutocompleteLocalExtensionSearch
- (CNAutocompleteLocalExtensionSearch)init;
- (CNAutocompleteLocalExtensionSearch)initWithDataStore:(id)store;
- (id)executeRequest:(id)request completionHandler:(id)handler;
- (id)fetchContactsForFetchRequest:(id)request completionHandler:(id)handler;
@end

@implementation CNAutocompleteLocalExtensionSearch

- (CNAutocompleteLocalExtensionSearch)init
{
  mEMORY[0x277CBB600] = [MEMORY[0x277CBB600] shared];
  v4 = [(CNAutocompleteLocalExtensionSearch *)self initWithDataStore:mEMORY[0x277CBB600]];

  return v4;
}

- (CNAutocompleteLocalExtensionSearch)initWithDataStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CNAutocompleteLocalExtensionSearch;
  v6 = [(CNAutocompleteLocalExtensionSearch *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataStore, store);
    v8 = v7;
  }

  return v7;
}

- (id)executeRequest:(id)request completionHandler:(id)handler
{
  v20 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v8 = CNALoggingContextDebug(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v19 = requestCopy;
    _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Executing request %p against local extensions", buf, 0xCu);
  }

  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v11 = v10;

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __71__CNAutocompleteLocalExtensionSearch_executeRequest_completionHandler___block_invoke;
  v15[3] = &unk_2781C45B8;
  v17 = v11;
  v16 = handlerCopy;
  v12 = handlerCopy;
  v13 = [(CNAutocompleteLocalExtensionSearch *)self fetchContactsForFetchRequest:requestCopy completionHandler:v15];

  return v13;
}

void __71__CNAutocompleteLocalExtensionSearch_executeRequest_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x277CFBEC8] sharedFormatter];
  v8 = [MEMORY[0x277CFBED0] defaultProvider];
  [v8 timestamp];
  v10 = [v7 stringForTimeInterval:v9 - *(a1 + 40)];

  v12 = CNALoggingContextPerformance(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v13)
    {
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_INFO, "Fetching from local extensions failed after %@. Error: %@", &v18, 0x16u);
    }
  }

  else
  {
    if (v13)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v18 = 138412546;
      v19 = v14;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_INFO, "Time to fetch %@ contacts from local extensions: %@", &v18, 0x16u);
    }

    v12 = CNALoggingContextDebug(v15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
      v17 = [v5 _cn_take:200];
      v18 = 138412546;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Local Extensions results (first 200 out of %@): %@", &v18, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (id)fetchContactsForFetchRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  if (([v8 isCanceled] & 1) == 0)
  {
    if ([requestCopy shouldIncludeGroupResults])
    {
      if ([requestCopy addressableGroupResultStyle] == 1)
      {
        v9 = 51;
      }

      else
      {
        v9 = 19;
      }
    }

    else
    {
      v9 = 1;
    }

    if ([requestCopy includeDirectoryServers])
    {
      v10 = 3;
    }

    else
    {
      v10 = 1;
    }

    v11 = self->_dataStore;
    v12 = objc_alloc(MEMORY[0x277CBB638]);
    searchString = [requestCopy searchString];
    v14 = [v12 initWithOptions:v9 behaviors:v10 searchString:searchString];

    v15 = [(CLSDataStore *)self->_dataStore _cna_objectsMatching:v14];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __85__CNAutocompleteLocalExtensionSearch_fetchContactsForFetchRequest_completionHandler___block_invoke;
    v21[3] = &unk_2781C45E0;
    v22 = requestCopy;
    v23 = v11;
    v16 = handlerCopy;
    v24 = v16;
    v17 = v11;
    [v15 addSuccessBlock:v21];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __85__CNAutocompleteLocalExtensionSearch_fetchContactsForFetchRequest_completionHandler___block_invoke_10;
    v19[3] = &unk_2781C4240;
    v20 = v16;
    [v15 addFailureBlock:v19];
  }

  return v8;
}

void __85__CNAutocompleteLocalExtensionSearch_fetchContactsForFetchRequest_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CNALoggingContextDebug(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = [v3 count];
    _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Count of MAID objects: %lu", &v12, 0xCu);
  }

  v5 = [*(a1 + 32) priorityDomainForSorting];
  v6 = [*(a1 + 32) sendingAddress];
  v7 = [CNAutocompleteResultFactory factoryWithPriorityDomain:v5 sendingAddress:v6];

  v8 = -[CNAClassKitResultTransformVisitor initWithFactory:dataStore:searchType:addressableGroupResultStyle:]([CNAClassKitResultTransformVisitor alloc], "initWithFactory:dataStore:searchType:addressableGroupResultStyle:", v7, *(a1 + 40), [*(a1 + 32) searchType], objc_msgSend(*(a1 + 32), "addressableGroupResultStyle"));
  v9 = [(CNAClassKitResultTransformVisitor *)v8 reduceCollection:v3];
  v10 = CNALoggingContextDebug(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 count];
    v12 = 134217984;
    v13 = v11;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Count of converted MAID results: %lu", &v12, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
}

void __85__CNAutocompleteLocalExtensionSearch_fetchContactsForFetchRequest_completionHandler___block_invoke_10(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CNALoggingContextDebug(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "MAID search failure: %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

@end