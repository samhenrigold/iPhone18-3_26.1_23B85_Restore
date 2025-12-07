@interface _CNFilteringResponsePreparer
- (_CNFilteringResponsePreparer)initWithResponsePreparer:(id)preparer delegate:(id)delegate filter:(id)filter;
- (id)prepareResults:(id)results forFetch:(id)fetch;
@end

@implementation _CNFilteringResponsePreparer

- (_CNFilteringResponsePreparer)initWithResponsePreparer:(id)preparer delegate:(id)delegate filter:(id)filter
{
  filterCopy = filter;
  v14.receiver = self;
  v14.super_class = _CNFilteringResponsePreparer;
  v9 = [(_CNAutocompleteResponsePreparerDecorator *)&v14 initWithResponsePreparer:preparer delegate:delegate];
  if (v9)
  {
    v10 = [filterCopy copy];
    filter = v9->_filter;
    v9->_filter = v10;

    v12 = v9;
  }

  return v9;
}

- (id)prepareResults:(id)results forFetch:(id)fetch
{
  v23 = *MEMORY[0x277D85DE8];
  fetchCopy = fetch;
  resultsCopy = results;
  filter = [(_CNFilteringResponsePreparer *)self filter];
  v9 = [resultsCopy _cn_filter:filter];

  v11 = CNALoggingContextDebug(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v9 count];
    if (v12 < 0x1F5)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", v12, v18];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"first %lu of %lu", 500, v12];
    }
    v13 = ;
    v14 = [v9 _cn_take:500];
    *buf = 138543619;
    v20 = v13;
    v21 = 2113;
    v22 = v14;
    _os_log_impl(&dword_2155FE000, v11, OS_LOG_TYPE_DEFAULT, "Filtered results: (%{public}@): %{private}@", buf, 0x16u);
  }

  preparer = [(_CNAutocompleteResponsePreparerDecorator *)self preparer];
  v16 = [preparer prepareResults:v9 forFetch:fetchCopy];

  return v16;
}

@end