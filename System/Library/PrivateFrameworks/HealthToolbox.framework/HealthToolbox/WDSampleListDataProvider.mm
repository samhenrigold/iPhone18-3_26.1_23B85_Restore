@interface WDSampleListDataProvider
- (BOOL)_handleObjectsRemoved:(id)removed;
- (BOOL)canEditRowAtIndexPath:(id)path;
- (BOOL)hasCompleteDataSet;
- (HKHealthStore)healthStore;
- (WDProfile)profile;
- (WDSampleListDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (id)_UUIDsForSamplesWithEndDate:(id)date;
- (id)_defaultPredicateWithPredicateForType:(id)type;
- (id)_pagingContextForSampleType:(id)type;
- (id)accessViewControllerForSample:(id)sample healthStore:(id)store;
- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler;
- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view;
- (id)defaultPredicateForSampleType:(id)type;
- (id)displayTypeController;
- (id)secondaryTextForObject:(id)object;
- (id)textForObject:(id)object;
- (id)titleForSection:(unint64_t)section;
- (id)unitController;
- (id)viewControllerForItemAtIndexPath:(id)path;
- (id)viewControllerForSampleType:(id)type subSamplePredicate:(id)predicate title:(id)title;
- (void)_callUpdateHandler;
- (void)_handleQueryResultsForSampleType:(id)type results:(id)results;
- (void)_requestNextPageOfData;
- (void)_requestNextPageOfDataForSampleType:(id)type;
- (void)_resetAllData;
- (void)_stopAllQueries;
- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion;
- (void)setDefaultQueryPredicate:(id)predicate;
- (void)startCollectingDataWithUpdateHandler:(id)handler;
- (void)stopCollectingData;
- (void)updateController:(id)controller didReceiveUpdateForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error;
- (void)viewControllerWantsDataIncludingDate:(id)date;
@end

@implementation WDSampleListDataProvider

- (WDSampleListDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  typeCopy = type;
  profileCopy = profile;
  v16.receiver = self;
  v16.super_class = WDSampleListDataProvider;
  v9 = [(WDSampleListDataProvider *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_displayType, type);
    objc_storeWeak(&v10->_profile, profileCopy);
    v11 = objc_alloc_init(MEMORY[0x277CCD9F8]);
    samples = v10->_samples;
    v10->_samples = v11;

    v13 = v10->_samples;
    _samplesSortDescriptor = [(WDSampleListDataProvider *)v10 _samplesSortDescriptor];
    [(HKSortedSampleArray *)v13 setSortDescriptor:_samplesSortDescriptor];

    v10->_didFetchInitialData = 0;
  }

  return v10;
}

- (id)_defaultPredicateWithPredicateForType:(id)type
{
  v4 = [(WDSampleListDataProvider *)self predicateForType:type];
  defaultQueryPredicate = [(WDSampleListDataProvider *)self defaultQueryPredicate];
  v6 = WDPredicateMatchingPredicates(v4, defaultQueryPredicate);

  return v6;
}

- (void)setDefaultQueryPredicate:(id)predicate
{
  objc_storeStrong(&self->_defaultQueryPredicate, predicate);
  predicateCopy = predicate;
  v6 = objc_alloc(MEMORY[0x277CCD8C8]);
  v7 = MEMORY[0x277CBEB98];
  sampleType = [(HKDisplayType *)self->_displayType sampleType];
  v8 = [v7 setWithObject:sampleType];
  v9 = [v6 initWithPredicate:predicateCopy dataTypes:v8];
  defaultQueryPredicateFilter = self->_defaultQueryPredicateFilter;
  self->_defaultQueryPredicateFilter = v9;
}

- (BOOL)hasCompleteDataSet
{
  v17 = *MEMORY[0x277D85DE8];
  if (![(NSDictionary *)self->_pagingContexts count])
  {
    return 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_pagingContexts;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSDictionary *)self->_pagingContexts objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i), v12];
        if ([v8 isFetchingData])
        {

LABEL_15:
          v10 = 0;
          goto LABEL_16;
        }

        requiresPaging = [v8 requiresPaging];

        if (requiresPaging)
        {
          goto LABEL_15;
        }
      }

      v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v10 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (id)titleForSection:(unint64_t)section
{
  if ([(HKSortedSampleArray *)self->_samples count]< 1)
  {
    v5 = &stru_28641D9B8;
  }

  else
  {
    unitController = [(WDSampleListDataProvider *)self unitController];
    v5 = [unitController localizedLongDisplayNameForDisplayType:self->_displayType];
  }

  return v5;
}

- (id)secondaryTextForObject:(id)object
{
  endDate = [object endDate];
  v4 = HKFormattedStringForDate();

  return v4;
}

- (void)startCollectingDataWithUpdateHandler:(id)handler
{
  v19 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = MEMORY[0x253092270]();
  updateCallback = self->_updateCallback;
  self->_updateCallback = v5;

  if (self->_didFetchInitialData)
  {
    handlerCopy[2](handlerCopy);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  updateController = [WeakRetained updateController];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  sampleTypes = [(WDSampleListDataProvider *)self sampleTypes];
  v10 = [sampleTypes countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(sampleTypes);
        }

        [updateController addObserver:self forType:*(*(&v14 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [sampleTypes countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [(WDSampleListDataProvider *)self _requestNextPageOfData];
}

- (void)stopCollectingData
{
  v17 = *MEMORY[0x277D85DE8];
  updateCallback = self->_updateCallback;
  self->_updateCallback = 0;

  [(WDSampleListDataProvider *)self _stopAllQueries];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  sampleTypes = [(WDSampleListDataProvider *)self sampleTypes];
  v5 = [sampleTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(sampleTypes);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        WeakRetained = objc_loadWeakRetained(&self->_profile);
        updateController = [WeakRetained updateController];
        [updateController removeObserver:self forType:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [sampleTypes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

- (void)_stopAllQueries
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sampleTypes = [(WDSampleListDataProvider *)self sampleTypes];
  v4 = [sampleTypes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(sampleTypes);
        }

        v8 = [(WDSampleListDataProvider *)self _pagingContextForSampleType:*(*(&v11 + 1) + 8 * v7)];
        currentDataFetcher = [v8 currentDataFetcher];

        if (currentDataFetcher)
        {
          currentDataFetcher2 = [v8 currentDataFetcher];
          [currentDataFetcher2 stop];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [sampleTypes countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_resetAllData
{
  [(WDSampleListDataProvider *)self _stopAllQueries];
  pagingContexts = self->_pagingContexts;
  self->_pagingContexts = 0;

  samples = self->_samples;

  [(HKSortedSampleArray *)samples removeAllSamples];
}

- (BOOL)canEditRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section >= [(WDSampleListDataProvider *)self numberOfSections])
  {
    v7 = 0;
  }

  else
  {
    v6 = [pathCopy row];
    v7 = v6 < -[WDSampleListDataProvider numberOfObjectsForSection:](self, "numberOfObjectsForSection:", [pathCopy section]);
  }

  return v7;
}

- (void)deleteObjectsAtIndexPath:(id)path healthStore:(id)store options:(unint64_t)options completion:(id)completion
{
  completionCopy = completion;
  storeCopy = store;
  pathCopy = path;
  v13 = [pathCopy row];
  section = [pathCopy section];

  v15 = [(WDSampleListDataProvider *)self objectAtIndex:v13 forSection:section];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__WDSampleListDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke;
  v17[3] = &unk_2796E76A8;
  v18 = completionCopy;
  v16 = completionCopy;
  [v15 deleteObjectWithHealthStore:storeCopy options:options completion:v17];
}

uint64_t __84__WDSampleListDataProvider_deleteObjectsAtIndexPath_healthStore_options_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)viewControllerForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  section = [pathCopy section];

  v7 = [(WDSampleListDataProvider *)self objectAtIndex:v5 forSection:section];
  v8 = objc_alloc(MEMORY[0x277D12818]);
  profileName = [(WDSampleListDataProvider *)self profileName];
  v10 = [v8 initWithSample:v7 usingInsetStyling:1 profileName:profileName delegate:self];

  return v10;
}

- (HKHealthStore)healthStore
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  healthStore = [WeakRetained healthStore];

  return healthStore;
}

- (id)displayTypeController
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  displayTypeController = [WeakRetained displayTypeController];

  return displayTypeController;
}

- (id)unitController
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  unitController = [WeakRetained unitController];

  return unitController;
}

- (id)defaultPredicateForSampleType:(id)type
{
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  displayTypeController = [WeakRetained displayTypeController];

  v7 = [displayTypeController displayTypeForObjectType:typeCopy];

  v8 = objc_loadWeakRetained(&self->_profile);
  unitController = [v8 unitController];
  v10 = [v7 wd_listViewControllerDataProviderWithProfile:v8 unitController:unitController];

  defaultQueryPredicate = [v10 defaultQueryPredicate];

  return defaultQueryPredicate;
}

- (id)viewControllerForSampleType:(id)type subSamplePredicate:(id)predicate title:(id)title
{
  titleCopy = title;
  predicateCopy = predicate;
  typeCopy = type;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  displayTypeController = [WeakRetained displayTypeController];

  v13 = [displayTypeController displayTypeForObjectType:typeCopy];

  v14 = objc_loadWeakRetained(&self->_profile);
  unitController = [v14 unitController];
  v16 = [v13 wd_listViewControllerDataProviderWithProfile:v14 unitController:unitController isHierarchical:0];

  defaultQueryPredicate = [v16 defaultQueryPredicate];
  v18 = HKUIPredicateMatchingPredicates();

  [v16 setDefaultQueryPredicate:v18];
  v19 = [WDDataListViewController alloc];
  v20 = objc_loadWeakRetained(&self->_profile);
  v21 = [(WDDataListViewController *)v19 initWithDisplayType:v13 profile:v20 dataProvider:v16 usingInsetStyling:1];

  [(WDDataListViewController *)v21 setTitle:titleCopy];

  return v21;
}

- (id)accessViewControllerForSample:(id)sample healthStore:(id)store
{
  storeCopy = store;
  sampleCopy = sample;
  v7 = [[WDAppAccessListViewController alloc] initWithSample:sampleCopy healthStore:storeCopy];

  return v7;
}

- (void)viewControllerWantsDataIncludingDate:(id)date
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  [(WDSampleListDataProvider *)self _resetAllData];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  sampleTypes = [(WDSampleListDataProvider *)self sampleTypes];
  v6 = [sampleTypes countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(sampleTypes);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(WDSampleListDataProvider *)self _pagingContextForSampleType:v10];
        if (dateCopy)
        {
          v12 = [(WDSampleListDataProvider *)self queryDateForSelectedDate:dateCopy];
          [v11 setFetchUntilDate:v12];
        }

        if (!self->_updateCallback)
        {

          goto LABEL_13;
        }

        [(WDSampleListDataProvider *)self _requestNextPageOfDataForSampleType:v10];
      }

      v7 = [sampleTypes countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_requestNextPageOfData
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  sampleTypes = [(WDSampleListDataProvider *)self sampleTypes];
  v4 = [sampleTypes countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(sampleTypes);
        }

        [(WDSampleListDataProvider *)self _requestNextPageOfDataForSampleType:*(*(&v8 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [sampleTypes countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (id)_pagingContextForSampleType:(id)type
{
  v22 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  pagingContexts = self->_pagingContexts;
  if (!pagingContexts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    sampleTypes = [(WDSampleListDataProvider *)self sampleTypes];
    v8 = [sampleTypes countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(sampleTypes);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = objc_alloc_init(_WDSampleListDataProviderPagingContext);
          [(_WDSampleListDataProviderPagingContext *)v13 setRequiresPaging:1];
          [(NSDictionary *)v6 setObject:v13 forKeyedSubscript:v12];
        }

        v9 = [sampleTypes countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v14 = self->_pagingContexts;
    self->_pagingContexts = v6;

    pagingContexts = self->_pagingContexts;
  }

  v15 = [(NSDictionary *)pagingContexts objectForKeyedSubscript:typeCopy];

  return v15;
}

- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  v11 = MEMORY[0x277CCD8D0];
  handlerCopy = handler;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  typeCopy = type;
  v16 = [[v11 alloc] initWithSampleType:typeCopy predicate:predicateCopy limit:limit sortDescriptors:descriptorsCopy resultsHandler:handlerCopy];

  return v16;
}

- (void)_requestNextPageOfDataForSampleType:(id)type
{
  v28[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v5 = [(WDSampleListDataProvider *)self _pagingContextForSampleType:typeCopy];
  if (([v5 isFetchingData] & 1) != 0 || !objc_msgSend(v5, "requiresPaging"))
  {
    goto LABEL_11;
  }

  v6 = [(WDSampleListDataProvider *)self _defaultPredicateWithPredicateForType:typeCopy];
  earliestProcessedSampleDate = [v5 earliestProcessedSampleDate];
  if (earliestProcessedSampleDate)
  {
    fetchUntilDate2 = [(WDSampleListDataProvider *)self _UUIDsForSamplesWithEndDate:earliestProcessedSampleDate];
    v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K <= %@", *MEMORY[0x277CCC6C8], earliestProcessedSampleDate];
    v10 = [MEMORY[0x277CCD838] predicateForObjectsWithUUIDs:fetchUntilDate2];
    v11 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v10];

    v12 = HKUIPredicateMatchingPredicates();

    v13 = HKUIPredicateMatchingPredicates();

    v6 = v11;
LABEL_7:

    v6 = v13;
    goto LABEL_8;
  }

  fetchUntilDate = [v5 fetchUntilDate];

  if (fetchUntilDate)
  {
    fetchUntilDate2 = [v5 fetchUntilDate];
    v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K >= %@", *MEMORY[0x277CCC6C8], fetchUntilDate2];
    v13 = HKUIPredicateMatchingPredicates();
    goto LABEL_7;
  }

LABEL_8:
  v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD38] ascending:0];
  v28[0] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __64__WDSampleListDataProvider__requestNextPageOfDataForSampleType___block_invoke;
  v26[3] = &unk_2796E8270;
  v26[4] = self;
  v17 = typeCopy;
  v27 = v17;
  v18 = MEMORY[0x253092270](v26);
  v19 = [(WDSampleListDataProvider *)self createDataFetcherForSampleType:v17 predicate:v6 limit:200 sortDescriptors:v16 resultsHandler:v18];
  if (!v19)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __64__WDSampleListDataProvider__requestNextPageOfDataForSampleType___block_invoke_317;
    v24[3] = &unk_2796E8298;
    v25 = v18;
    v20 = [(WDSampleListDataProvider *)self createQueryForSampleType:v17 predicate:v6 limit:200 sortDescriptors:v16 resultsHandler:v24];
    v21 = objc_alloc(MEMORY[0x277D12A20]);
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    healthStore = [WeakRetained healthStore];
    v19 = [v21 initWithHealthStore:healthStore query:v20];
  }

  [v5 setFetchingData:1];
  [v5 setCurrentDataFetcher:v19];
  [v19 start];

LABEL_11:
}

void __64__WDSampleListDataProvider__requestNextPageOfDataForSampleType___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__WDSampleListDataProvider__requestNextPageOfDataForSampleType___block_invoke_2;
  v10[3] = &unk_2796E7148;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

uint64_t __64__WDSampleListDataProvider__requestNextPageOfDataForSampleType___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 32) = 1;
  if (*(a1 + 40))
  {
    _HKInitializeLogging();
    v4 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v6 = *(a1 + 48);
      v8 = *(a1 + 32);
      v9 = 138412802;
      v10 = v8;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      _os_log_error_impl(&dword_251E85000, v4, OS_LOG_TYPE_ERROR, "%@: Error fetching samples of type (%@): %@", &v9, 0x20u);
    }
  }

  return [*(a1 + 32) _handleQueryResultsForSampleType:*(a1 + 48) results:*(a1 + 56)];
}

- (void)_handleQueryResultsForSampleType:(id)type results:(id)results
{
  resultsCopy = results;
  samples = self->_samples;
  typeCopy = type;
  [(HKSortedSampleArray *)samples insertSamples:resultsCopy];
  lastObject = [resultsCopy lastObject];
  endDate = [lastObject endDate];

  v10 = [(WDSampleListDataProvider *)self _pagingContextForSampleType:typeCopy];

  [v10 setCurrentDataFetcher:0];
  [v10 setFetchingData:0];
  fetchUntilDate = [v10 fetchUntilDate];
  if (fetchUntilDate)
  {
    v12 = 1;
  }

  else
  {
    v12 = [resultsCopy count] == 200;
  }

  [v10 setRequiresPaging:v12];

  [v10 setFetchUntilDate:0];
  if (endDate)
  {
    [v10 setEarliestProcessedSampleDate:endDate];
  }

  else
  {
    earliestProcessedSampleDate = [v10 earliestProcessedSampleDate];
    [v10 setEarliestProcessedSampleDate:earliestProcessedSampleDate];
  }

  [(WDSampleListDataProvider *)self _callUpdateHandler];
}

- (id)_UUIDsForSamplesWithEndDate:(id)date
{
  v21 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allSamples = [(HKSortedSampleArray *)self->_samples allSamples];
  reverseObjectEnumerator = [allSamples reverseObjectEnumerator];

  v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        endDate = [v12 endDate];
        if (HKUIObjectIsLarger())
        {

          goto LABEL_13;
        }

        if ([endDate isEqualToDate:dateCopy])
        {
          uUID = [v12 UUID];
          [v5 addObject:uUID];
        }
      }

      v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v5;
}

- (void)_callUpdateHandler
{
  updateCallback = self->_updateCallback;
  if (updateCallback)
  {
    updateCallback[2]();
  }
}

- (void)updateController:(id)controller didReceiveUpdateForType:(id)type samplesAdded:(id)added objectsRemoved:(id)removed recoveringFromError:(BOOL)error
{
  errorCopy = error;
  v26 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v11 = [(WDSampleListDataProvider *)self _handleObjectsRemoved:removed];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = addedCopy;
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v21 + 1) + 8 * v17);
        defaultQueryPredicateFilter = self->_defaultQueryPredicateFilter;
        if (!defaultQueryPredicateFilter || [(HKSampleListDataProviderFilter *)defaultQueryPredicateFilter acceptsDataObject:*(*(&v21 + 1) + 8 * v17)])
        {
          [v12 addObject:v18];
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  if (((v11 | [(HKSortedSampleArray *)self->_samples insertSamples:v12]) & 1) != 0 || errorCopy)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __117__WDSampleListDataProvider_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke;
    v20[3] = &unk_2796E82C0;
    v20[4] = self;
    [(WDSampleListDataProvider *)self refineSamplesWithCompletion:v20];
  }
}

void __117__WDSampleListDataProvider_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__WDSampleListDataProvider_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke_2;
  block[3] = &unk_2796E6C00;
  v7 = *(a1 + 32);
  v11 = v5;
  v12 = v7;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __117__WDSampleListDataProvider_updateController_didReceiveUpdateForType_samplesAdded_objectsRemoved_recoveringFromError___block_invoke_2(void *a1)
{
  if (a1[4])
  {
    [*(a1[5] + 72) removeSamplesWithUUIDs:?];
  }

  if (a1[6])
  {
    [*(a1[5] + 72) insertSamples:?];
  }

  v2 = a1[5];

  return [v2 _callUpdateHandler];
}

- (BOOL)_handleObjectsRemoved:(id)removed
{
  v19 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = removedCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        uUID = [*(*(&v14 + 1) + 8 * v10) UUID];
        [v5 addObject:uUID];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [(HKSortedSampleArray *)self->_samples removeSamplesWithUUIDs:v5];
  return v12;
}

- (WDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (id)textForObject:(id)object
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)customCellForObject:(id)object indexPath:(id)path tableView:(id)view
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end