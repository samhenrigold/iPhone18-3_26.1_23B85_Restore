@interface _CNDelegateAdjustingResponsePreparer
- (id)prepareResults:(id)results forFetch:(id)fetch;
- (void)adjustArray:(id)array byAddingResults:(id)results;
- (void)adjustArray:(id)array byRemovingResults:(id)results;
@end

@implementation _CNDelegateAdjustingResponsePreparer

- (id)prepareResults:(id)results forFetch:(id)fetch
{
  v32 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  fetchCopy = fetch;
  date = [MEMORY[0x277CBEAA8] date];
  delegate = [(CNAutocompleteQueryResponsePreparer *)self delegate];
  v10 = [delegate autocompleteFetch:fetchCopy willAdjustResults:resultsCopy];

  v11 = [v10 count];
  v12 = CNALoggingContextDebug(v11);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      [date timeIntervalSinceNow];
      v28 = 134218243;
      v29 = v14 * -1000.0;
      v30 = 2113;
      v31 = v10;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Delegate requested adjustments (%.3fms): %{private}@", &v28, 0x16u);
    }

    v16 = CNALoggingContextPerformance(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      [date timeIntervalSinceNow];
      v28 = 134218243;
      v29 = v17 * -1000.0;
      v30 = 2113;
      v31 = v10;
      _os_log_impl(&dword_2155FE000, v16, OS_LOG_TYPE_INFO, "Delegate requested adjustments (%.3fms): %{private}@", &v28, 0x16u);
    }

    preparer2 = [resultsCopy mutableCopy];
    v19 = [v10 objectForKeyedSubscript:@"rejected"];
    [(_CNDelegateAdjustingResponsePreparer *)self adjustArray:preparer2 byRemovingResults:v19];

    v20 = [v10 objectForKeyedSubscript:@"additional"];
    [(_CNDelegateAdjustingResponsePreparer *)self adjustArray:preparer2 byAddingResults:v20];

    preparer = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
    v22 = [preparer prepareResults:preparer2 forFetch:fetchCopy];
  }

  else
  {
    if (v13)
    {
      [date timeIntervalSinceNow];
      v28 = 134217984;
      v29 = v23 * -1000.0;
      _os_log_impl(&dword_2155FE000, v12, OS_LOG_TYPE_DEFAULT, "Delegate made no adjustments (%.3fms)", &v28, 0xCu);
    }

    v25 = CNALoggingContextPerformance(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      [date timeIntervalSinceNow];
      v28 = 134217984;
      v29 = v26 * -1000.0;
      _os_log_impl(&dword_2155FE000, v25, OS_LOG_TYPE_INFO, "Delegate made no adjustments (%.3fms)", &v28, 0xCu);
    }

    preparer2 = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
    v22 = [preparer2 prepareResults:resultsCopy forFetch:fetchCopy];
  }

  return v22;
}

- (void)adjustArray:(id)array byAddingResults:(id)results
{
  arrayCopy = array;
  resultsCopy = results;
  v6 = resultsCopy;
  if (resultsCopy && [resultsCopy count])
  {
    [arrayCopy addObjectsFromArray:v6];
  }
}

- (void)adjustArray:(id)array byRemovingResults:(id)results
{
  arrayCopy = array;
  resultsCopy = results;
  v6 = resultsCopy;
  if (resultsCopy && [resultsCopy count])
  {
    [arrayCopy removeObjectsInArray:v6];
  }
}

@end