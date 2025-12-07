@interface CNAutocompleteSuggestionsSearch
+ (unint64_t)charactersThreshold;
- (CNAutocompleteSuggestionsSearch)init;
- (CNAutocompleteSuggestionsSearch)initWithContactStore:(id)store;
- (id)convertContacts:(id)contacts request:(id)request;
- (id)executeRequest:(id)request completionHandler:(id)handler;
- (id)keysToFetchForRequest:(id)request;
- (id)resultTransformWithFactory:(id)factory properties:(id)properties;
- (id)resultTransformWithRequest:(id)request;
- (id)suggestedContactsWithRequest:(id)request keysToFetch:(id)fetch error:(id *)error;
@end

@implementation CNAutocompleteSuggestionsSearch

+ (unint64_t)charactersThreshold
{
  v5 = 0;
  standardPreferences = [MEMORY[0x277CFBEE8] standardPreferences];
  v3 = [standardPreferences integerForKey:@"CNSuggestionsCharactersThresholdInAutocomplete" keyExists:&v5];

  if (v5)
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

- (CNAutocompleteSuggestionsSearch)init
{
  v3 = objc_alloc_init(MEMORY[0x277CBDAC0]);
  [v3 setIncludeSuggestedContacts:1];
  v4 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v3];
  v5 = [(CNAutocompleteSuggestionsSearch *)self initWithContactStore:v4];

  return v5;
}

- (CNAutocompleteSuggestionsSearch)initWithContactStore:(id)store
{
  storeCopy = store;
  v10.receiver = self;
  v10.super_class = CNAutocompleteSuggestionsSearch;
  v6 = [(CNAutocompleteSuggestionsSearch *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
    v8 = v7;
  }

  return v7;
}

- (id)executeRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
  schedulerProvider = [currentEnvironment schedulerProvider];
  backgroundScheduler = [schedulerProvider backgroundScheduler];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__CNAutocompleteSuggestionsSearch_executeRequest_completionHandler___block_invoke;
  v15[3] = &unk_2781C4630;
  v15[4] = self;
  v16 = requestCopy;
  v17 = handlerCopy;
  v11 = handlerCopy;
  v12 = requestCopy;
  v13 = [backgroundScheduler performCancelableBlock:v15];

  return v13;
}

void __68__CNAutocompleteSuggestionsSearch_executeRequest_completionHandler___block_invoke(id *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() charactersThreshold];
  v5 = [a1[5] searchString];
  v6 = [v5 length];

  if (v6 >= v4)
  {
    v10 = [a1[4] keysToFetchForRequest:a1[5]];
    v11 = a1[4];
    v12 = a1[5];
    v21 = 0;
    v13 = [v11 suggestedContactsWithRequest:v12 keysToFetch:v10 error:&v21];
    v14 = v21;
    if (v13)
    {
      v15 = [a1[4] convertContacts:v13 request:a1[5]];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __68__CNAutocompleteSuggestionsSearch_executeRequest_completionHandler___block_invoke_4;
      v18[3] = &unk_2781C46A0;
      v16 = a1[6];
      v19 = v15;
      v20 = v16;
      v17 = v15;
      [v3 performBlock:v18];
    }

    else
    {
      (*(a1[6] + 2))();
    }
  }

  else
  {
    v8 = CNALoggingContextDebug(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[5];
      *buf = 134218240;
      v23 = v9;
      v24 = 2048;
      v25 = v4;
      _os_log_impl(&dword_2155FE000, v8, OS_LOG_TYPE_DEFAULT, "Skipping request %p against suggestion because search string is smaller than %lu chars", buf, 0x16u);
    }

    (*(a1[6] + 2))();
  }
}

- (id)keysToFetchForRequest:(id)request
{
  v3 = MEMORY[0x277CBEB18];
  v4 = MEMORY[0x277CBDA78];
  requestCopy = request;
  v6 = [v4 descriptorForRequiredKeysForStyle:0];
  v7 = [v3 arrayWithObject:v6];

  searchableProperties = [requestCopy searchableProperties];

  [v7 addObjectsFromArray:searchableProperties];
  v9 = +[CNAutocompleteNameComponents contactKeys];
  [v7 addObjectsFromArray:v9];

  return v7;
}

- (id)suggestedContactsWithRequest:(id)request keysToFetch:(id)fetch error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  fetchCopy = fetch;
  v10 = CNALoggingContextTriage(fetchCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    triageIdentifier = [requestCopy triageIdentifier];
    v52 = 138543362;
    v53 = triageIdentifier;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreSuggestions: Will search", &v52, 0xCu);
  }

  v13 = CNALoggingContextDebug(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v52 = 134217984;
    v53 = requestCopy;
    _os_log_impl(&dword_2155FE000, v13, OS_LOG_TYPE_DEFAULT, "Executing request %p against suggested contacts", &v52, 0xCu);
  }

  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v16 = v15;

  v18 = CNALoggingContextTriage(v17);
  v19 = os_signpost_id_generate(v18);

  v21 = CNALoggingContextPerformance(v20);
  v22 = v21;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    LOWORD(v52) = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "Searching CoreSuggestions", "", &v52, 2u);
  }

  v23 = MEMORY[0x277CBDA58];
  searchString = [requestCopy searchString];
  v25 = [v23 predicateForContactsMatchingName:searchString];

  contactStore = [(CNAutocompleteSuggestionsSearch *)self contactStore];
  v27 = [contactStore unifiedContactsMatchingPredicate:v25 keysToFetch:fetchCopy error:error];

  v29 = CNALoggingContextPerformance(v28);
  v30 = v29;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    LOWORD(v52) = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v30, OS_SIGNPOST_INTERVAL_END, v19, "Searching CoreSuggestions", "", &v52, 2u);
  }

  defaultProvider2 = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider2 timestamp];
  v33 = v32;

  v34 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v33 - v16];
  v35 = v34;
  if (v27)
  {
    v36 = CNALoggingContextPerformance(v34);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
      v52 = 138412546;
      v53 = v37;
      v54 = 2112;
      v55 = v35;
      _os_log_impl(&dword_2155FE000, v36, OS_LOG_TYPE_INFO, "Time to fetch %@ suggested contacts: %@", &v52, 0x16u);
    }

    v39 = CNALoggingContextDebug(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
      v41 = [v27 _cn_take:200];
      v52 = 138412547;
      v53 = v40;
      v54 = 2113;
      v55 = v41;
      _os_log_impl(&dword_2155FE000, v39, OS_LOG_TYPE_DEFAULT, "Suggestions results (first 200 out of %@): %{private}@", &v52, 0x16u);
    }

    v43 = CNALoggingContextTriage(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      triageIdentifier2 = [requestCopy triageIdentifier];
      v45 = [v27 count];
      v52 = 138543874;
      v53 = triageIdentifier2;
      v54 = 2048;
      v55 = v45;
      v56 = 2114;
      v57 = v35;
      _os_log_impl(&dword_2155FE000, v43, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreSuggestions: Search complete (%ld result(s), %{public}@)", &v52, 0x20u);
    }

    v46 = v27;
  }

  else
  {
    if (error)
    {
      v47 = *error;
    }

    else
    {
      v47 = 0;
    }

    v48 = v47;
    v49 = CNALoggingContextTriage(v48);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      triageIdentifier3 = [requestCopy triageIdentifier];
      v52 = 138543874;
      v53 = triageIdentifier3;
      v54 = 2114;
      v55 = v35;
      v56 = 2114;
      v57 = v48;
      _os_log_impl(&dword_2155FE000, v49, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreSuggestions: Search failed (%{public}@): %{public}@", &v52, 0x20u);
    }
  }

  return v27;
}

- (id)convertContacts:(id)contacts request:(id)request
{
  requestCopy = request;
  contactsCopy = contacts;
  v8 = [(CNAutocompleteSuggestionsSearch *)self resultTransformWithRequest:requestCopy];
  v9 = [contactsCopy _cn_flatMap:v8];

  v10 = [CNAutocompleteResultTokenMatcher alloc];
  searchString = [requestCopy searchString];

  v12 = [(CNAutocompleteResultTokenMatcher *)v10 initWithSearchString:searchString];
  filterAdapter = [(CNAutocompleteResultTokenMatcher *)v12 filterAdapter];
  v14 = [v9 _cn_filter:filterAdapter];

  return v14;
}

- (id)resultTransformWithRequest:(id)request
{
  requestCopy = request;
  priorityDomainForSorting = [requestCopy priorityDomainForSorting];
  fetchContext = [requestCopy fetchContext];
  sendingAddress = [fetchContext sendingAddress];
  v8 = [CNAutocompleteResultFactory factoryWithPriorityDomain:priorityDomainForSorting sendingAddress:sendingAddress];

  searchableProperties = [requestCopy searchableProperties];
  v10 = [(CNAutocompleteSuggestionsSearch *)self resultTransformWithFactory:v8 properties:searchableProperties];

  v11 = self->_contactStore;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke;
  v17[3] = &unk_2781C51D0;
  v17[4] = self;
  v18 = requestCopy;
  v19 = v11;
  v20 = v10;
  v12 = v11;
  v13 = requestCopy;
  v14 = v10;
  v15 = [v17 copy];

  return v15;
}

id __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v15 = a2;
  (*(*(a1 + 56) + 16))();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v3 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_2;
        v24[3] = &unk_2781C5180;
        v8 = v15;
        v9 = *(a1 + 32);
        v10 = *(a1 + 40);
        v25 = v8;
        v26 = v9;
        v27 = v10;
        [v7 setContactProvider:v24];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_17;
        v22[3] = &unk_2781C49A0;
        v11 = v8;
        v23 = v11;
        [v7 addDiagnosticLog:v22];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_2_21;
        v19[3] = &unk_2781C51A8;
        v20 = *(a1 + 48);
        v12 = v11;
        v21 = v12;
        [v7 addDiagnosticLog:v19];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_3_41;
        v16[3] = &unk_2781C4718;
        v17 = v12;
        v18 = *(a1 + 48);
        [v7 setIgnoreResultBlock:v16];
      }

      v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v4);
  }

  return obj;
}

id __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_2(id *a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([a1[4] areKeysAvailable:v5])
  {
    v6 = a1[4];
  }

  else
  {
    v7 = [a1[5] suggestedContactsWithRequest:a1[6] keysToFetch:v5 error:a3];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_3;
    v13[3] = &unk_2781C5158;
    v14 = a1[4];
    v8 = [v7 _cn_firstObjectPassingTest:v13];
    v9 = v8;
    if (!v8)
    {
      v10 = CNALoggingContextTriage(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [a1[6] triageIdentifier];
        *buf = 138543362;
        v16 = v11;
        _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] CNAutocompleteSuggestionsSearch: Contact provider failed to refetch contact, returning internally fetched contact.", buf, 0xCu);
      }

      v9 = a1[4];
    }

    v6 = v9;
  }

  return v6;
}

uint64_t __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v5 = [v3 identifier];

  v6 = [v4 isEqualToString:v5];
  return v6;
}

id __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_17(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [*(a1 + 32) suggestionRecordId];
  v3 = [v1 stringWithFormat:@"Suggestion record id: %lld", objc_msgSend(v2, "numericValue")];

  return v3;
}

id __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_2_21(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) originForSuggestion:*(a1 + 40) error:a2];
  v3 = [MEMORY[0x277CCAB68] string];
  v4 = [v2 title];
  [v3 appendFormat:@"Title: %@\n", v4];

  v5 = [v2 fromPerson];
  [v3 appendFormat:@"From: %@\n", v5];

  v6 = [v2 to];
  [v3 appendFormat:@"To: %@\n", v6];

  v7 = [v2 cc];
  [v3 appendFormat:@"CC: %@\n", v7];

  v8 = [v2 date];
  [v3 appendFormat:@"Date: %@\n", v8];

  v9 = [v2 contextSnippet];
  [v3 appendFormat:@"Context:\n=====\n%@\n=====", v9];

  return v3;
}

uint64_t __62__CNAutocompleteSuggestionsSearch_resultTransformWithRequest___block_invoke_3_41(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBDBB8]);
  [v4 rejectSuggestion:*(a1 + 32)];
  v5 = *(a1 + 40);
  v13 = 0;
  v6 = [v5 executeSaveRequest:v4 error:&v13];
  v7 = v13;
  v8 = v7;
  if ((v6 & 1) == 0)
  {
    v9 = CNALoggingContextDebug(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_2155FE000, v9, OS_LOG_TYPE_DEFAULT, "Can't ignore suggestion: %@, with error: %@", buf, 0x16u);
    }

    if (a2)
    {
      v11 = v8;
      *a2 = v8;
    }
  }

  return v6;
}

- (id)resultTransformWithFactory:(id)factory properties:(id)properties
{
  v19 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v6 = [CNAutocompleteLocalContactResultTransformBuilder suggestedContactBuilderWithResultFactory:factory];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = propertiesCopy;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addTransformForProperty:{*(*(&v14 + 1) + 8 * i), v14}];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  build = [v6 build];

  return build;
}

@end