@interface CNAutocompleteQueryResponsePreparer
- (CNAutocompleteFetchDelegate)delegate;
- (CNAutocompleteQueryResponsePreparer)initWithDelegate:(id)delegate fetchRequest:(id)request;
- (id)addDiagnosticLog:(id)log;
- (id)applyPriorityResultsOrder:(id)order;
- (id)askDelegateToAdjustResults;
- (id)prepareResults:(id)results forFetch:(id)fetch;
- (id)removeResultsWithBlockedHandles;
- (id)resultsNotPreviouslyReturned:(id)returned;
- (id)sortResults;
- (id)suppressResultsWithAddresses:(id)addresses;
@end

@implementation CNAutocompleteQueryResponsePreparer

- (CNAutocompleteFetchDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)askDelegateToAdjustResults
{
  v3 = [_CNDelegateAdjustingResponsePreparer alloc];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v5 = [(_CNAutocompleteResponsePreparerDecorator *)v3 initWithResponsePreparer:self delegate:delegate];

  return v5;
}

- (id)removeResultsWithBlockedHandles
{
  v3 = [_CNHandleBlockingResponsePreparer alloc];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v5 = [(_CNAutocompleteResponsePreparerDecorator *)v3 initWithResponsePreparer:self delegate:delegate];

  return v5;
}

- (CNAutocompleteQueryResponsePreparer)initWithDelegate:(id)delegate fetchRequest:(id)request
{
  delegateCopy = delegate;
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = CNAutocompleteQueryResponsePreparer;
  v8 = [(CNAutocompleteQueryResponsePreparer *)&v13 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB40]);
    previouslyReturnedResults = v8->_previouslyReturnedResults;
    v8->_previouslyReturnedResults = v9;

    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v8->_fetchRequest, request);
    v11 = v8;
  }

  return v8;
}

- (id)prepareResults:(id)results forFetch:(id)fetch
{
  v50 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v6 = CNALoggingContextDebug(resultsCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [resultsCopy count];
    if (v7 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v7, v45];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v7];
    }
    v8 = ;
    *buf = 138543362;
    v47 = v8;
    _os_log_impl(&dword_2155FE000, v6, OS_LOG_TYPE_DEFAULT, "Calling prepareResults: (%{public}@)", buf, 0xCu);
  }

  v9 = [(CNAutocompleteQueryResponsePreparer *)self findUniqueResults:resultsCopy];
  v10 = CNALoggingContextDebug(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v9 count];
    if (v11 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v11, v45];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v11];
    }
    v12 = ;
    *buf = 138543362;
    v47 = v12;
    _os_log_impl(&dword_2155FE000, v10, OS_LOG_TYPE_DEFAULT, "Found unique results: (%{public}@)", buf, 0xCu);
  }

  v13 = [(CNAutocompleteQueryResponsePreparer *)self resultsNotPreviouslyReturned:v9];
  v14 = CNALoggingContextDebug(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 count];
    if (v15 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v15, v45];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v15];
    }
    v16 = ;
    *buf = 138543362;
    v47 = v16;
    _os_log_impl(&dword_2155FE000, v14, OS_LOG_TYPE_DEFAULT, "Found unique results not previously returned: (%{public}@)", buf, 0xCu);
  }

  v18 = CNALoggingContextDebug(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [v13 count];
    if (v19 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v19, v45];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v19];
    }
    v20 = ;
    *buf = 138543362;
    v47 = v20;
    _os_log_impl(&dword_2155FE000, v18, OS_LOG_TYPE_DEFAULT, "Found unique new results not previously returned: (%{public}@)", buf, 0xCu);
  }

  fetchRequest = [(CNAutocompleteQueryResponsePreparer *)self fetchRequest];
  searchString = [fetchRequest searchString];
  v23 = [searchString length];

  v25 = CNALoggingContextDebug(v24);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v26)
    {
      v27 = [v13 count];
      if (v27 < 0x1F5)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v27, v45];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v27];
      }
      v29 = ;
      *buf = 138543362;
      v47 = v29;
      _os_log_impl(&dword_2155FE000, v25, OS_LOG_TYPE_DEFAULT, "Search string has length > 0: (%{public}@)", buf, 0xCu);
    }

    v30 = [(CNAutocompleteQueryResponsePreparer *)self applyPriorityResultsOrder:v13];
  }

  else
  {
    if (v26)
    {
      v28 = [v13 count];
      if (v28 < 0x1F5)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v28, v45];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v28];
      }
      v31 = ;
      *buf = 138543362;
      v47 = v31;
      _os_log_impl(&dword_2155FE000, v25, OS_LOG_TYPE_DEFAULT, "Search string has length = 0: (%{public}@)", buf, 0xCu);
    }

    v30 = v13;
  }

  v32 = v30;
  v33 = CNALoggingContextDebug(v30);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [v9 count];
    if (v34 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v34, v45];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v34];
    }
    v35 = ;
    v36 = [v9 _cn_take:500];
    *buf = 138543619;
    v47 = v35;
    v48 = 2113;
    v49 = v36;
    _os_log_impl(&dword_2155FE000, v33, OS_LOG_TYPE_DEFAULT, "Unique results: (%{public}@): %{private}@", buf, 0x16u);
  }

  if (CNAutocompleteIsDebugLoggingEnabled())
  {
    v37 = [resultsCopy mutableCopy];
    v38 = CNALoggingContextDebug([v37 removeObjectsInArray:v13]);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v47 = v37;
      _os_log_impl(&dword_2155FE000, v38, OS_LOG_TYPE_DEFAULT, "Dropping duplicate results: %{private}@", buf, 0xCu);
    }

    v40 = CNALoggingContextDebug(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [v32 count];
      if (v41 < 0x1F5)
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v41, v45];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v41];
      }
      v42 = ;
      v43 = [v32 _cn_take:500];
      *buf = 138543619;
      v47 = v42;
      v48 = 2113;
      v49 = v43;
      _os_log_impl(&dword_2155FE000, v40, OS_LOG_TYPE_DEFAULT, "Will return re-ranked results (%{public}@): %{private}@", buf, 0x16u);
    }
  }

  return v32;
}

- (id)resultsNotPreviouslyReturned:(id)returned
{
  previouslyReturnedResults = self->_previouslyReturnedResults;
  returnedCopy = returned;
  v6 = [(NSMutableOrderedSet *)previouslyReturnedResults count];
  [(NSMutableOrderedSet *)self->_previouslyReturnedResults addObjectsFromArray:returnedCopy];

  v7 = [(NSMutableOrderedSet *)self->_previouslyReturnedResults count]- v6;
  array = [(NSMutableOrderedSet *)self->_previouslyReturnedResults array];
  v9 = [array subarrayWithRange:{v6, v7}];

  return v9;
}

- (id)applyPriorityResultsOrder:(id)order
{
  v4 = MEMORY[0x277CFBE10];
  orderCopy = order;
  currentEnvironment = [v4 currentEnvironment];
  suggestedResultPrioritization = [currentEnvironment suggestedResultPrioritization];

  fetchRequest = [(CNAutocompleteQueryResponsePreparer *)self fetchRequest];
  matchingPriorityResultsPromise = [(CNAutocompleteQueryResponsePreparer *)self matchingPriorityResultsPromise];
  v10 = [suggestedResultPrioritization applyPriorityOrderToResults:orderCopy fetchRequest:fetchRequest andCompletePriorityResultsPromise:matchingPriorityResultsPromise];

  return v10;
}

- (id)addDiagnosticLog:(id)log
{
  logCopy = log;
  v5 = [_CNDiagnosticResponsePreparer alloc];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v7 = [(_CNDiagnosticResponsePreparer *)v5 initWithResponsePreparer:self delegate:delegate log:logCopy];

  return v7;
}

- (id)sortResults
{
  v3 = [_CNSortingResponsePreparer alloc];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v5 = [(_CNAutocompleteResponsePreparerDecorator *)v3 initWithResponsePreparer:self delegate:delegate];

  return v5;
}

- (id)suppressResultsWithAddresses:(id)addresses
{
  v4 = MEMORY[0x277CBEB98];
  v5 = [addresses _cn_map:CNAutocompleteResultAddressStringForHashingTransform];
  v6 = [v4 setWithArray:v5];

  v7 = [_CNFilteringResponsePreparer alloc];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__CNAutocompleteQueryResponsePreparer_suppressResultsWithAddresses___block_invoke;
  v12[3] = &unk_2781C4AB0;
  v13 = v6;
  v9 = v6;
  v10 = [(_CNFilteringResponsePreparer *)v7 initWithResponsePreparer:self delegate:delegate filter:v12];

  return v10;
}

uint64_t __68__CNAutocompleteQueryResponsePreparer_suppressResultsWithAddresses___block_invoke(uint64_t a1, void *a2)
{
  v3 = CNAutocompleteResultAddressStringForHashingTransform;
  v4 = [a2 value];
  v5 = [v4 address];
  v6 = v3[2](v3, v5);

  LODWORD(a1) = [*(a1 + 32) containsObject:v6];
  return a1 ^ 1;
}

@end