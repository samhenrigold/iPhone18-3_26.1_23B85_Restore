@interface CNAutocompleteUsageMonitor
+ (void)userIgnoredResultsForRequest:(id)request afterDelay:(double)delay;
+ (void)userSelectedResult:(id)result atSortedIndex:(unint64_t)index forRequest:(id)request gotResultsFromDuet:(BOOL)duet;
- (CNAutocompleteUsageMonitor)init;
- (CNAutocompleteUsageMonitor)initWithProbeProvider:(id)provider;
- (void)userIgnoredResultsOfBatch:(unint64_t)batch forRequest:(id)request afterDelay:(double)delay;
- (void)userSawNumberOfResults:(unint64_t)results forBatch:(unint64_t)batch includingNumberOfSuggestions:(unint64_t)suggestions forRequest:(id)request;
- (void)userSelectedResult:(id)result atSortedIndex:(unint64_t)index forRequest:(id)request gotResultsFromDuet:(BOOL)duet;
@end

@implementation CNAutocompleteUsageMonitor

+ (void)userSelectedResult:(id)result atSortedIndex:(unint64_t)index forRequest:(id)request gotResultsFromDuet:(BOOL)duet
{
  duetCopy = duet;
  requestCopy = request;
  resultCopy = result;
  v12 = objc_alloc_init(self);
  [v12 userSelectedResult:resultCopy atSortedIndex:index forRequest:requestCopy gotResultsFromDuet:duetCopy];
}

+ (void)userIgnoredResultsForRequest:(id)request afterDelay:(double)delay
{
  requestCopy = request;
  v7 = objc_alloc_init(self);
  [v7 userIgnoredResultsOfBatch:0 forRequest:requestCopy afterDelay:delay];
}

- (CNAutocompleteUsageMonitor)init
{
  v3 = +[CNAutocompleteProbeProviderFactory defaultProbeProvider];
  v4 = [(CNAutocompleteUsageMonitor *)self initWithProbeProvider:v3];

  return v4;
}

- (CNAutocompleteUsageMonitor)initWithProbeProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = CNAutocompleteUsageMonitor;
  v6 = [(CNAutocompleteUsageMonitor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_probeProvider, provider);
  }

  return v7;
}

- (void)userSelectedResult:(id)result atSortedIndex:(unint64_t)index forRequest:(id)request gotResultsFromDuet:(BOOL)duet
{
  duetCopy = duet;
  resultCopy = result;
  requestCopy = request;
  if (requestCopy)
  {
    probeProvider = [(CNAutocompleteUsageMonitor *)self probeProvider];
    usageMonitorProbe = [probeProvider usageMonitorProbe];

    [usageMonitorProbe recordDuetReturnedResults:duetCopy];
    v13 = *MEMORY[0x277CFBD30];
    searchString = [requestCopy searchString];
    LODWORD(v13) = (*(v13 + 16))(v13, searchString);

    if (v13)
    {
      [usageMonitorProbe recordUserSelectedPredictionAtIndex:index];
    }

    else
    {
      [usageMonitorProbe recordUserSelectedIndex:index];
      searchString2 = [requestCopy searchString];
      [usageMonitorProbe recordUserTypedInNumberOfCharacters:{objc_msgSend(searchString2, "length")}];

      [usageMonitorProbe recordUserSelectedResultWithSourceType:{objc_msgSend(resultCopy, "sourceType")}];
      if (resultCopy)
      {
        probeProvider2 = [(CNAutocompleteUsageMonitor *)self probeProvider];
        suggestionsProbe = [probeProvider2 suggestionsProbe];

        [suggestionsProbe recordUserSelectedAutocompleteResult:resultCopy];
        [suggestionsProbe sendData];
      }
    }

    [usageMonitorProbe sendData];
  }
}

- (void)userIgnoredResultsOfBatch:(unint64_t)batch forRequest:(id)request afterDelay:(double)delay
{
  requestCopy = request;
  probeProvider = [(CNAutocompleteUsageMonitor *)self probeProvider];
  usageMonitorProbe = [probeProvider usageMonitorProbe];

  v10 = *MEMORY[0x277CFBD30];
  searchString = [requestCopy searchString];

  LODWORD(v10) = (*(v10 + 16))(v10, searchString);
  if (v10)
  {
    [usageMonitorProbe recordUserIgnoredPredictionAfterDelay:delay];
  }

  else
  {
    [usageMonitorProbe recordUserIgnoredPrefixedResultAfterDelay:batch batch:delay];
  }

  [usageMonitorProbe sendData];
}

- (void)userSawNumberOfResults:(unint64_t)results forBatch:(unint64_t)batch includingNumberOfSuggestions:(unint64_t)suggestions forRequest:(id)request
{
  requestCopy = request;
  probeProvider = [(CNAutocompleteUsageMonitor *)self probeProvider];
  usageMonitorProbe = [probeProvider usageMonitorProbe];

  v11 = *MEMORY[0x277CFBD30];
  searchString = [requestCopy searchString];

  LODWORD(v11) = (*(v11 + 16))(v11, searchString);
  if (v11)
  {
    [usageMonitorProbe recordUserSawPredictions];
  }

  if (suggestions)
  {
    [usageMonitorProbe recordUserSawResultsConsideredSuggestion:suggestions];
  }

  v13 = results - suggestions;
  if (results != suggestions)
  {
    [usageMonitorProbe recordUserSawCuratedResults:v13];
  }

  [usageMonitorProbe sendData];
}

@end