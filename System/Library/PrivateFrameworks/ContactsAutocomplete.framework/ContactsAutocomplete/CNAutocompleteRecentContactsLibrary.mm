@interface CNAutocompleteRecentContactsLibrary
+ (id)addressKindsForSearchType:(unint64_t)type;
+ (id)domainsForFetchRequest:(id)request;
+ (id)domainsForSearchType:(unint64_t)type;
+ (id)library:(id)library recentContactsWithRequest:(id)request;
+ (id)queryForRequest:(id)request;
+ (unint64_t)implicitGroupThresholdForSearchType:(unint64_t)type;
+ (void)addLoggingHandlersToFuture:(id)future request:(id)request;
@end

@implementation CNAutocompleteRecentContactsLibrary

+ (id)library:(id)library recentContactsWithRequest:(id)request
{
  v19 = *MEMORY[0x277D85DE8];
  libraryCopy = library;
  requestCopy = request;
  v8 = [self queryForRequest:requestCopy];
  v9 = CNALoggingContextDebug(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = libraryCopy;
    _os_log_impl(&dword_2155FE000, v9, OS_LOG_TYPE_DEFAULT, "Performing recents query: %@ against library: %@", &v15, 0x16u);
  }

  v10 = objc_alloc_init(MEMORY[0x277CFBE90]);
  future = [v10 future];
  [self addLoggingHandlersToFuture:future request:requestCopy];

  completionHandlerAdapter = [v10 completionHandlerAdapter];
  [libraryCopy performRecentsSearch:v8 queue:0 completion:completionHandlerAdapter];

  future2 = [v10 future];

  return future2;
}

+ (id)queryForRequest:(id)request
{
  requestCopy = request;
  v5 = [self domainsForFetchRequest:requestCopy];
  v6 = [self addressKindsForSearchType:{objc_msgSend(requestCopy, "searchType")}];
  v7 = [self implicitGroupThresholdForSearchType:{objc_msgSend(requestCopy, "searchType")}];
  v8 = *MEMORY[0x277CFBD30];
  searchString = [requestCopy searchString];
  v10 = (*(v8 + 16))(v8, searchString);

  v11 = MEMORY[0x277D00F38];
  if (v10)
  {
    v12 = objc_alloc_init(MEMORY[0x277D00F38]);
    searchString2 = [MEMORY[0x277D00F30] predicateForKey:*MEMORY[0x277D00EF8] inCollection:v6];
    [v12 setSearchPredicate:searchString2];
  }

  else
  {
    searchString2 = [requestCopy searchString];
    fetchContext = [requestCopy fetchContext];
    sendingAddress = [fetchContext sendingAddress];
    v12 = [v11 searchQueryForSearchTerm:searchString2 preferredKinds:v6 sendingAddress:sendingAddress recentsDomain:&stru_282787720];
  }

  [v12 setDomains:v5];
  [v12 setImplicitGroupThreshold:v7];
  [v12 setComparator:0];

  return v12;
}

+ (void)addLoggingHandlersToFuture:(id)future request:(id)request
{
  v30 = *MEMORY[0x277D85DE8];
  futureCopy = future;
  triageIdentifier = [request triageIdentifier];
  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v9 = v8;

  v11 = CNALoggingContextTriage(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = triageIdentifier;
    _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreRecents: Will search", buf, 0xCu);
  }

  v13 = CNALoggingContextTriage(v12);
  v14 = os_signpost_id_generate(v13);

  v16 = CNALoggingContextPerformance(v15);
  v17 = v16;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v17, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Searching CoreRecents", "", buf, 2u);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __74__CNAutocompleteRecentContactsLibrary_addLoggingHandlersToFuture_request___block_invoke;
  v24[3] = &unk_2781C3C80;
  v26 = v14;
  v27 = v9;
  v18 = triageIdentifier;
  v25 = v18;
  [futureCopy addSuccessBlock:v24];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __74__CNAutocompleteRecentContactsLibrary_addLoggingHandlersToFuture_request___block_invoke_9;
  v20[3] = &unk_2781C3CA8;
  v23 = v9;
  v21 = v18;
  v22 = v14;
  v19 = v18;
  [futureCopy addFailureBlock:v20];
}

void __74__CNAutocompleteRecentContactsLibrary_addLoggingHandlersToFuture_request___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CNALoggingContextPerformance(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v24) = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v5, OS_SIGNPOST_INTERVAL_END, v6, "Searching CoreRecents", "", &v24, 2u);
  }

  v7 = [MEMORY[0x277CFBED0] defaultProvider];
  [v7 timestamp];
  v9 = v8;

  v10 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v9 - *(a1 + 48)];
  v11 = CNALoggingContextTriage(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = [v3 count];
    v14 = [v3 count];
    v15 = "results";
    v24 = 138544130;
    v25 = v12;
    v26 = 2048;
    if (v14 == 1)
    {
      v15 = "result";
    }

    v27 = v13;
    v28 = 2080;
    v29 = v15;
    v30 = 2114;
    v31 = v10;
    _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreRecents: Search complete (%lu %s, %{public}@)", &v24, 0x2Au);
  }

  v17 = CNALoggingContextPerformance(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    v24 = 138412546;
    v25 = v18;
    v26 = 2114;
    v27 = v10;
    _os_log_impl(&dword_2155FE000, v17, OS_LOG_TYPE_INFO, "Time to fetch %@ recent contacts: %{public}@", &v24, 0x16u);
  }

  v20 = CNALoggingContextDebug(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "count")}];
    v22 = [v3 _cn_take:200];
    v23 = [v22 _cn_map:&__block_literal_global];
    v24 = 138412546;
    v25 = v21;
    v26 = 2112;
    v27 = v23;
    _os_log_impl(&dword_2155FE000, v20, OS_LOG_TYPE_DEFAULT, "CoreRecents results (first 200 out of %@): %@", &v24, 0x16u);
  }
}

void __74__CNAutocompleteRecentContactsLibrary_addLoggingHandlersToFuture_request___block_invoke_9(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CNALoggingContextPerformance(v3);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v5, OS_SIGNPOST_INTERVAL_END, v6, "Searching CoreRecents", "", &v17, 2u);
  }

  v7 = [MEMORY[0x277CFBED0] defaultProvider];
  [v7 timestamp];
  v9 = v8;

  v10 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v9 - *(a1 + 48)];
  v11 = CNALoggingContextTriage(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v17 = 138543874;
    v18 = v12;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v3;
    _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] CoreRecents: Search failed (%{public}@): %{public}@", &v17, 0x20u);
  }

  v14 = CNALoggingContextPerformance(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v17 = 138543362;
    v18 = v10;
    _os_log_impl(&dword_2155FE000, v14, OS_LOG_TYPE_INFO, "Failure fetching recent contacts after %{public}@", &v17, 0xCu);
  }

  v16 = CNALoggingContextDebug(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = v3;
    _os_log_impl(&dword_2155FE000, v16, OS_LOG_TYPE_DEFAULT, "Failed to fetch recent contacts: %@", &v17, 0xCu);
  }
}

+ (id)domainsForFetchRequest:(id)request
{
  requestCopy = request;
  fetchContext = [requestCopy fetchContext];
  bundleIdentifiers = [fetchContext bundleIdentifiers];
  v7 = [bundleIdentifiers count];

  if (v7)
  {
    fetchContext2 = [requestCopy fetchContext];

    bundleIdentifiers2 = [fetchContext2 bundleIdentifiers];
    v10 = [bundleIdentifiers2 copy];
  }

  else
  {
    searchType = [requestCopy searchType];

    v10 = [self domainsForSearchType:searchType];
  }

  return v10;
}

+ (id)domainsForSearchType:(unint64_t)type
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (type > 2)
  {
    if (type == 3)
    {
      v20 = *MEMORY[0x277D00F08];
      v8 = MEMORY[0x277CBEA60];
      v9 = &v20;
      goto LABEL_21;
    }

    if (type == 4)
    {
      v25 = *MEMORY[0x277D00F20];
      v8 = MEMORY[0x277CBEA60];
      v9 = &v25;
      goto LABEL_21;
    }

    if (type != 5)
    {
      goto LABEL_15;
    }

LABEL_10:
    currentEnvironment = [MEMORY[0x277CFBE10] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v12 = [featureFlags isFeatureEnabled:19];

    if (v12)
    {
      v13 = *MEMORY[0x277D00F00];
      v23[0] = *MEMORY[0x277D00F20];
      v23[1] = v13;
      v8 = MEMORY[0x277CBEA60];
      v9 = v23;
      goto LABEL_12;
    }

    v24 = *MEMORY[0x277D00F20];
    v8 = MEMORY[0x277CBEA60];
    v9 = &v24;
LABEL_21:
    v14 = 1;
    goto LABEL_22;
  }

  switch(type)
  {
    case 0uLL:
      v26[0] = *MEMORY[0x277D00F18];
      v8 = MEMORY[0x277CBEA60];
      v9 = v26;
      goto LABEL_21;
    case 1uLL:
      goto LABEL_10;
    case 2uLL:
      currentEnvironment2 = [MEMORY[0x277CFBE10] currentEnvironment];
      featureFlags2 = [currentEnvironment2 featureFlags];
      v6 = [featureFlags2 isFeatureEnabled:19];

      if (v6)
      {
        v7 = *MEMORY[0x277D00F00];
        v21[0] = *MEMORY[0x277D00F10];
        v21[1] = v7;
        v8 = MEMORY[0x277CBEA60];
        v9 = v21;
LABEL_12:
        v14 = 2;
LABEL_22:
        v16 = [v8 arrayWithObjects:v9 count:v14];
        goto LABEL_23;
      }

      v22 = *MEMORY[0x277D00F10];
      v8 = MEMORY[0x277CBEA60];
      v9 = &v22;
      goto LABEL_21;
  }

LABEL_15:
  v15 = CNALoggingContextDebug(self);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_2155FE000, v15, OS_LOG_TYPE_DEFAULT, "No domain for searchType: %lu ", &v18, 0xCu);
  }

  v16 = 0;
LABEL_23:

  return v16;
}

+ (id)addressKindsForSearchType:(unint64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  if (type - 4 < 2)
  {
    goto LABEL_4;
  }

  if (type == 2)
  {
    v7 = *MEMORY[0x277D00EE0];
    v13 = *MEMORY[0x277D00EC0];
    v14 = v7;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v13;
  }

  else
  {
    if (type == 1)
    {
LABEL_4:
      v3 = *MEMORY[0x277D00EE0];
      v15 = *MEMORY[0x277D00EC0];
      v16 = v3;
      v17 = *MEMORY[0x277D00EC8];
      v4 = MEMORY[0x277CBEA60];
      v5 = &v15;
      v6 = 3;
      goto LABEL_8;
    }

    v8 = *MEMORY[0x277D00EC8];
    v11 = *MEMORY[0x277D00EC0];
    v12 = v8;
    v4 = MEMORY[0x277CBEA60];
    v5 = &v11;
  }

  v6 = 2;
LABEL_8:
  v9 = [v4 arrayWithObjects:v5 count:{v6, v11, v12, v13, v14, v15, v16, v17, v18}];

  return v9;
}

+ (unint64_t)implicitGroupThresholdForSearchType:(unint64_t)type
{
  if (type > 5)
  {
    return 0;
  }

  else
  {
    return qword_21565C190[type];
  }
}

@end