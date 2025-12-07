@interface CNAutocompleteLocalQuery
+ (id)groupsQuery;
+ (id)peopleQuery;
+ (id)queryWithDelegate:(id)delegate;
- (id)autocompleteResultsForFetchResults:(id)results resultFactory:(id)factory;
- (id)fetchResultsForString:(id)string;
- (id)makeResultFactory;
- (id)run;
- (void)cancel;
@end

@implementation CNAutocompleteLocalQuery

+ (id)peopleQuery
{
  v3 = objc_alloc_init(CNAutocompleteLocalContactsFetcher);
  v4 = [self queryWithDelegate:v3];

  return v4;
}

+ (id)groupsQuery
{
  v3 = objc_alloc_init(CNAutocompleteLocalGroupsFetcher);
  v4 = [self queryWithDelegate:v3];

  return v4;
}

+ (id)queryWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = objc_alloc_init(self);
  v6 = v5[4];
  v5[4] = delegateCopy;

  return v5;
}

- (id)run
{
  request = [(CNAutocompleteLocalQuery *)self request];
  searchNames = [request searchNames];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__CNAutocompleteLocalQuery_run__block_invoke;
  v9[3] = &unk_2781C4308;
  v9[4] = self;
  v5 = [searchNames _cn_flatMap:v9];

  makeResultFactory = [(CNAutocompleteLocalQuery *)self makeResultFactory];
  v7 = [(CNAutocompleteLocalQuery *)self autocompleteResultsForFetchResults:v5 resultFactory:makeResultFactory];

  return v7;
}

- (id)fetchResultsForString:(id)string
{
  v68 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  _cn_tokens = [stringCopy _cn_tokens];
  searchableProperties = [(CNAutocompleteLocalQuery *)self searchableProperties];
  defaultProvider = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider timestamp];
  v9 = v8;

  v11 = CNALoggingContextTriage(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    [(CNAutocompleteFetchRequest *)self->_request triageIdentifier];
    v13 = v12 = searchableProperties;
    queryNameForLogging = [(CNAutocompleteLocalQueryDelegate *)self->_delegate queryNameForLogging];
    *buf = 138543618;
    v59 = v13;
    v60 = 2114;
    v61 = queryNameForLogging;
    _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@: Will search", buf, 0x16u);

    searchableProperties = v12;
  }

  v16 = CNALoggingContextTriage(v15);
  v17 = os_signpost_id_generate(v16);

  v19 = CNALoggingContextPerformance(v18);
  v20 = v19;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v17, "Searching Contacts", "", buf, 2u);
  }

  delegate = self->_delegate;
  contactStore = self->_contactStore;
  v57 = 0;
  v23 = [(CNAutocompleteLocalQueryDelegate *)delegate resultsForSearchString:stringCopy terms:_cn_tokens properties:searchableProperties contactStore:contactStore error:&v57];
  v56 = v57;
  v24 = CNALoggingContextPerformance(v56);
  v25 = v24;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2155FE000, v25, OS_SIGNPOST_INTERVAL_END, v17, "Searching Contacts", "", buf, 2u);
  }

  defaultProvider2 = [MEMORY[0x277CFBED0] defaultProvider];
  [defaultProvider2 timestamp];
  v28 = v27;

  v29 = [MEMORY[0x277CFBEC8] stringForTimeInterval:v28 - v9];
  v30 = CNALoggingContextTriage(v29);
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v31)
    {
      triageIdentifier = [(CNAutocompleteFetchRequest *)self->_request triageIdentifier];
      queryNameForLogging2 = [(CNAutocompleteLocalQueryDelegate *)self->_delegate queryNameForLogging];
      v34 = [v23 count];
      v35 = [v23 count];
      *buf = 138544386;
      v36 = "results";
      v59 = triageIdentifier;
      v60 = 2114;
      if (v35 == 1)
      {
        v36 = "result";
      }

      v61 = queryNameForLogging2;
      v62 = 2048;
      v63 = v34;
      v64 = 2080;
      v65 = v36;
      v66 = 2114;
      v67 = v29;
      _os_log_impl(&dword_2155FE000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@: Search complete (%lu %s, %{public}@)", buf, 0x34u);
    }

    v38 = CNALoggingContextDebug(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      queryNameForLogging3 = [(CNAutocompleteLocalQueryDelegate *)self->_delegate queryNameForLogging];
      v55 = self->_delegate;
      v40 = [v23 count];
      v41 = v29;
      v42 = stringCopy;
      v43 = searchableProperties;
      v44 = _cn_tokens;
      if (v40 >= 0xC8)
      {
        v45 = 200;
      }

      else
      {
        v45 = v40;
      }

      v46 = [v23 count];
      v47 = [v23 _cn_take:200];
      *buf = 138544387;
      v59 = queryNameForLogging3;
      v60 = 2112;
      v61 = v55;
      v62 = 2048;
      v63 = v45;
      _cn_tokens = v44;
      searchableProperties = v43;
      stringCopy = v42;
      v29 = v41;
      v64 = 2048;
      v65 = v46;
      v66 = 2113;
      v67 = v47;
      _os_log_impl(&dword_2155FE000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@ results with delegate %@ (first %lu out of %lu): %{private}@", buf, 0x34u);
    }

    v48 = v56;
  }

  else
  {
    v48 = v56;
    if (v31)
    {
      triageIdentifier2 = [(CNAutocompleteFetchRequest *)self->_request triageIdentifier];
      queryNameForLogging4 = [(CNAutocompleteLocalQueryDelegate *)self->_delegate queryNameForLogging];
      *buf = 138544130;
      v59 = triageIdentifier2;
      v60 = 2114;
      v61 = queryNameForLogging4;
      v62 = 2114;
      v63 = v29;
      v64 = 2112;
      v65 = v56;
      _os_log_impl(&dword_2155FE000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{public}@: Search failed (%{public}@): %@", buf, 0x2Au);
    }

    v38 = CNALoggingContextDebug(v51);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v52 = self->_delegate;
      v53 = self->_contactStore;
      *buf = 138413314;
      v59 = v52;
      v60 = 2112;
      v61 = stringCopy;
      v62 = 2112;
      v63 = _cn_tokens;
      v64 = 2112;
      v65 = v53;
      v66 = 2112;
      v67 = v56;
      _os_log_impl(&dword_2155FE000, v38, OS_LOG_TYPE_DEFAULT, "Got nil results when asking: %@ for: %@, terms: %@, contactStore: %@, error: %@", buf, 0x34u);
    }
  }

  return v23;
}

- (id)makeResultFactory
{
  priorityDomainForSorting = [(CNAutocompleteFetchRequest *)self->_request priorityDomainForSorting];
  fetchContext = [(CNAutocompleteFetchRequest *)self->_request fetchContext];
  sendingAddress = [fetchContext sendingAddress];
  v6 = [CNAutocompleteResultFactory factoryWithPriorityDomain:priorityDomainForSorting sendingAddress:sendingAddress];

  return v6;
}

- (id)autocompleteResultsForFetchResults:(id)results resultFactory:(id)factory
{
  factoryCopy = factory;
  resultsCopy = results;
  searchableProperties = [(CNAutocompleteLocalQuery *)self searchableProperties];
  v9 = [(CNAutocompleteLocalQueryDelegate *)self->_delegate autocompleteResultsForProperties:searchableProperties fetchResults:resultsCopy resultFactory:factoryCopy contactStore:self->_contactFetcherStore];

  return v9;
}

- (void)cancel
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = CNALoggingContextDebug(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_2155FE000, v3, OS_LOG_TYPE_DEFAULT, "Cancel: %@", &v4, 0xCu);
  }
}

@end