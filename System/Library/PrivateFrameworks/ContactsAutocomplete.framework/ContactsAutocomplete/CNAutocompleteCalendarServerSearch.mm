@interface CNAutocompleteCalendarServerSearch
+ (BOOL)isSupported;
- (CNAutocompleteCalendarServerSearch)init;
- (CNAutocompleteCalendarServerSearch)initWithEventStoreProvider:(id)provider operationFactory:(id)factory;
- (id)executeRequest:(id)request completionHandler:(id)handler;
- (id)executeRequest:(id)request source:(id)source resultsFactory:(id)factory withCompletionHandler:(id)handler;
- (id)queryForFetchRequest:(id)request;
- (id)resultTransformWithFactory:(id)factory;
@end

@implementation CNAutocompleteCalendarServerSearch

+ (BOOL)isSupported
{
  EKDirectorySearchOperationClass_0 = getEKDirectorySearchOperationClass_0(self, a2);

  return [EKDirectorySearchOperationClass_0 isSupported];
}

- (CNAutocompleteCalendarServerSearch)init
{
  v3 = [objc_alloc(getEKEphemeralCacheEventStoreProviderClass(self a2))];
  v4 = objc_alloc_init(CNAutocompleteCalendarServerOperationFactory);
  v5 = [(CNAutocompleteCalendarServerSearch *)self initWithEventStoreProvider:v3 operationFactory:v4];

  return v5;
}

id __42__CNAutocompleteCalendarServerSearch_init__block_invoke()
{
  v0 = objc_alloc_init(getEKEventStoreClass_0());

  return v0;
}

- (CNAutocompleteCalendarServerSearch)initWithEventStoreProvider:(id)provider operationFactory:(id)factory
{
  providerCopy = provider;
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = CNAutocompleteCalendarServerSearch;
  v9 = [(CNAutocompleteCalendarServerSearch *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventStoreProvider, provider);
    objc_storeStrong(&v10->_operationFactory, factory);
    v11 = objc_alloc_init(MEMORY[0x277CFBEC0]);
    tokenizer = v10->_tokenizer;
    v10->_tokenizer = v11;

    v13 = v10;
  }

  return v10;
}

- (id)executeRequest:(id)request completionHandler:(id)handler
{
  v34[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  fetchContext = [requestCopy fetchContext];
  sendingAddressAccountIdentifier = [fetchContext sendingAddressAccountIdentifier];

  v10 = (*(*MEMORY[0x277CFBD30] + 16))();
  if (v10)
  {
    v11 = CNALoggingContextDebug(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "Will not run a calendar server search because there's no sending account identifier", buf, 2u);
    }

    v12 = MEMORY[0x277CCA9B8];
    v33 = *MEMORY[0x277CCA470];
    v34[0] = @"Missing sending account identifier";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v14 = [v12 errorWithDomain:@"CNContactAutocompleteErrorDomain" code:0 userInfo:v13];

    handlerCopy[2](handlerCopy, 0, v14);
    v15 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  }

  else
  {
    eventStore = [(EKEphemeralCacheEventStoreProvider *)self->_eventStoreProvider eventStore];
    v14 = [eventStore sourceWithIdentifier:sendingAddressAccountIdentifier];

    v18 = CNALoggingContextDebug(v17);
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v19)
      {
        *buf = 138412290;
        v32 = v14;
        _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "Using source: %@", buf, 0xCu);
      }

      priorityDomainForSorting = [requestCopy priorityDomainForSorting];
      fetchContext2 = [requestCopy fetchContext];
      sendingAddress = [fetchContext2 sendingAddress];
      v23 = [CNAutocompleteResultFactory factoryWithPriorityDomain:priorityDomainForSorting sendingAddress:sendingAddress];

      v24 = [(CNAutocompleteCalendarServerSearch *)self executeRequest:requestCopy source:v14 resultsFactory:v23 withCompletionHandler:handlerCopy];
    }

    else
    {
      if (v19)
      {
        *buf = 138412290;
        v32 = sendingAddressAccountIdentifier;
        _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "No source found for sending account identifier %@", buf, 0xCu);
      }

      v25 = MEMORY[0x277CCA9B8];
      v29 = *MEMORY[0x277CCA470];
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not get a source from EventKit with account identifier: %@", sendingAddressAccountIdentifier];
      v30 = v26;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v23 = [v25 errorWithDomain:@"CNContactAutocompleteErrorDomain" code:0 userInfo:v27];

      handlerCopy[2](handlerCopy, 0, v23);
      v24 = objc_alloc_init(MEMORY[0x277CFBDC8]);
    }

    v15 = v24;
  }

  return v15;
}

- (id)executeRequest:(id)request source:(id)source resultsFactory:(id)factory withCompletionHandler:(id)handler
{
  v66 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  sourceCopy = source;
  factoryCopy = factory;
  handlerCopy = handler;
  v11 = [(CNAutocompleteCalendarServerSearch *)self queryForFetchRequest:requestCopy];
  v12 = CNALoggingContextDebug(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    terms = [v11 terms];
    *buf = 138412546;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = terms;
    _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Using query: %@ terms: %@", buf, 0x16u);
  }

  array = [MEMORY[0x277CBEB18] array];
  v15 = objc_alloc_init(MEMORY[0x277CFBEE0]);
  operationFactory = [(CNAutocompleteCalendarServerSearch *)self operationFactory];
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 3221225472;
  v59[2] = __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke;
  v59[3] = &unk_2781C5080;
  v17 = v15;
  v60 = v17;
  v18 = array;
  v61 = v18;
  v19 = [operationFactory eventKitDirectorySearchOperationForSource:sourceCopy query:v11 resultsBlock:v59];

  v21 = CNALoggingContextTriage(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier = [requestCopy triageIdentifier];
    searchString = [requestCopy searchString];
    v24 = [searchString length];
    *buf = 138543618;
    *&buf[4] = triageIdentifier;
    *&buf[12] = 2048;
    *&buf[14] = v24;
    _os_log_impl(&dword_2155FE000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calendar Servers: Will search (%lu letters)", buf, 0x16u);
  }

  v26 = CNALoggingContextTriage(v25);
  v27 = os_signpost_id_generate(v26);

  v29 = CNALoggingContextPerformance(v28);
  v30 = v29;
  if ((v27 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v30, OS_SIGNPOST_INTERVAL_BEGIN, v27, "Searching Calendar Servers", "", buf, 2u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v63 = __Block_byref_object_copy__3;
  v64 = __Block_byref_object_dispose__3;
  v65 = 0;
  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v33 = v32;

  objc_initWeak(&location, v19);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke_16;
  v49[3] = &unk_2781C50D0;
  objc_copyWeak(v57, &location);
  v57[1] = v27;
  v57[2] = v33;
  v34 = requestCopy;
  v50 = v34;
  v35 = handlerCopy;
  v55 = v35;
  v36 = v17;
  v51 = v36;
  v37 = v18;
  v56 = buf;
  v52 = v37;
  selfCopy = self;
  v38 = factoryCopy;
  v54 = v38;
  [v19 setCompletionBlock:v49];
  v39 = objc_alloc_init(MEMORY[0x277CFBDC8]);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke_22;
  v47[3] = &unk_2781C3FB0;
  v40 = v19;
  v48 = v40;
  [v39 addCancelationBlock:v47];
  date = [MEMORY[0x277CBEAA8] date];
  v42 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = date;

  [v40 start];
  objc_destroyWeak(v57);
  objc_destroyWeak(&location);
  _Block_object_dispose(buf, 8);

  return v39;
}

void __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  CNRunWithLock();
}

void __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = [*(a1 + 40) people];
  v2 = [v3 allObjects];
  [v1 addObjectsFromArray:v2];
}

void __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke_16(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v3 = CNALoggingContextPerformance(WeakRetained);
  v4 = v3;
  v5 = *(a1 + 96);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v4, OS_SIGNPOST_INTERVAL_END, v5, "Searching Directory Servers", "", buf, 2u);
  }

  v6 = [MEMORY[0x277CFBED0] defaultProvider];
  [v6 timestamp];
  v8 = v7;

  v9 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v8 - *(a1 + 104)];
  v10 = [WeakRetained error];
  v11 = v10 == 0;

  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v42 = __Block_byref_object_copy__3;
    v43 = __Block_byref_object_dispose__3;
    v44 = 0;
    v31 = MEMORY[0x277D85DD0];
    v32 = *(a1 + 48);
    v18 = CNRunWithLock();
    v19 = CNALoggingContextTriage(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 32) triageIdentifier];
      *&v21 = COERCE_DOUBLE([*(*&buf[8] + 40) count]);
      v22 = [*(*&buf[8] + 40) count];
      v23 = "results";
      *v33 = 138544130;
      v34 = v20;
      v35 = 2048;
      if (v22 == 1)
      {
        v23 = "result";
      }

      v36 = *&v21;
      v37 = 2080;
      v38 = v23;
      v39 = 2114;
      v40 = v9;
      _os_log_impl(&dword_2155FE000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calendar Servers: Search complete (%lu %s, %{public}@)", v33, 0x2Au);
    }

    v25 = CNALoggingContextPerformance(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(*&buf[8] + 40), "count")}];
      [*(*(*(a1 + 80) + 8) + 40) timeIntervalSinceNow];
      *v33 = 138412546;
      v34 = v26;
      v35 = 2048;
      v36 = v27 * -1000.0;
      _os_log_impl(&dword_2155FE000, v25, OS_LOG_TYPE_INFO, "Time to fetch Calendar Server: %@ results, in %.3fms", v33, 0x16u);
    }

    v28 = *(*&buf[8] + 40);
    v29 = [*(a1 + 56) resultTransformWithFactory:*(a1 + 64)];
    v30 = [v28 _cn_map:v29];

    (*(*(a1 + 72) + 16))();
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v13 = CNALoggingContextTriage(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 32) triageIdentifier];
      v15 = [WeakRetained error];
      *buf = 138543874;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v9;
      *&buf[22] = 2114;
      v42 = v15;
      _os_log_impl(&dword_2155FE000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] Calendar Servers: Search failed (%{public}@): %{public}@", buf, 0x20u);
    }

    v16 = *(a1 + 72);
    v17 = [WeakRetained error];
    (*(v16 + 16))(v16, 0, v17);
  }
}

uint64_t __97__CNAutocompleteCalendarServerSearch_executeRequest_source_resultsFactory_withCompletionHandler___block_invoke_18(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) copy];

  return MEMORY[0x2821F96F8]();
}

- (id)queryForFetchRequest:(id)request
{
  v4 = getEKDirectorySearchQueryClass;
  requestCopy = request;
  v6 = objc_alloc_init(v4());
  v7 = MEMORY[0x277CBEB98];
  tokenizer = [(CNAutocompleteCalendarServerSearch *)self tokenizer];
  searchString = [requestCopy searchString];

  v10 = [tokenizer tokenizeString:searchString];
  v11 = [v7 setWithArray:v10];

  [v6 setTerms:v11];
  [v6 setFindGroups:0];
  [v6 setFindLocations:0];
  [v6 setFindResources:0];
  [v6 setFindUsers:1];

  return v6;
}

- (id)resultTransformWithFactory:(id)factory
{
  factoryCopy = factory;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__CNAutocompleteCalendarServerSearch_resultTransformWithFactory___block_invoke;
  aBlock[3] = &unk_2781C50F8;
  v9 = factoryCopy;
  v4 = factoryCopy;
  v5 = _Block_copy(aBlock);
  v6 = [v5 copy];

  return v6;
}

id __65__CNAutocompleteCalendarServerSearch_resultTransformWithFactory___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(CNAutocompleteResultValue);
  v5 = *MEMORY[0x277CFBCE8];
  v6 = [v3 preferredAddress];
  v7 = (*(v5 + 16))(v5, v6);
  [(CNAutocompleteResultValue *)v4 setAddress:v7];

  [(CNAutocompleteResultValue *)v4 setAddressType:1];
  if (objc_opt_respondsToSelector())
  {
    v8 = [v3 userInfo];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 32);
  v10 = [v3 displayName];
  v11 = [v9 calendarServerResultWithDisplayName:v10 value:v4 nameComponents:0 userInfo:v8];

  return v11;
}

@end