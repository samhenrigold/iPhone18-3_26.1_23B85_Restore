@interface _CNSortingResponsePreparer
- (id)prepareResults:(id)results forFetch:(id)fetch;
@end

@implementation _CNSortingResponsePreparer

- (id)prepareResults:(id)results forFetch:(id)fetch
{
  v30 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  fetchCopy = fetch;
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  [delegate autocompleteFetch:fetchCopy willSortResults:resultsCopy];

  delegate2 = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v10 = [delegate2 resultComparatorForAutocompleteFetch:fetchCopy];

  v12 = CNALoggingContextDebug(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Using sorting algoritm provided by client", buf, 2u);
    }

    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __54___CNSortingResponsePreparer_prepareResults_forFetch___block_invoke;
    v24[3] = &unk_2781C4E58;
    v25 = v10;
    v14 = [resultsCopy sortedArrayUsingComparator:v24];
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Using standard sorting algorithms", buf, 2u);
    }

    v15 = [resultsCopy sortedArrayUsingSelector:sel_compare_];
    v14 = v15;
  }

  v16 = CNALoggingContextDebug(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v14 count];
    if (v17 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v17, v23];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v17];
    }
    v18 = ;
    v19 = [v14 _cn_take:500];
    *buf = 138543619;
    v27 = v18;
    v28 = 2113;
    v29 = v19;
    _os_log_impl(&dword_2155FE000, v16, OS_LOG_TYPE_DEFAULT, "Sorted results: (%{public}@): %{private}@", buf, 0x16u);
  }

  preparer = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  v21 = [preparer prepareResults:v14 forFetch:fetchCopy];

  return v21;
}

@end