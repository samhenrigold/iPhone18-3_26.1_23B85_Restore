@interface HKMCViewModelProvider
- ($0AC6E346AE4835514AAA8AC86D8F4844)_test_managedDayRange;
- ($0AC6E346AE4835514AAA8AC86D8F4844)activeDayRange;
- (BOOL)_didFetchMinimumAnalysis;
- (HKMCViewModelProvider)initWithHealthStore:(id)store analysisProvider:(id)provider pregnancyModelProvider:(id)modelProvider maximumActiveDuration:(int64_t)duration minimumBufferDuration:(int64_t)bufferDuration shouldFetchCycleFactors:(BOOL)factors calendarCache:(id)cache;
- (id)_copyWithDataSource:(id)source cycleFactorsDataSource:(id)dataSource minimumBufferDuration:(int64_t)duration;
- (id)_initWithDataSource:(id)source cycleFactorsDataSource:(id)dataSource analysisProvider:(id)provider maximumActiveDuration:(int64_t)duration minimumBufferDuration:(int64_t)bufferDuration prefetchDuration:(int64_t)prefetchDuration shouldFetchCycleFactors:(BOOL)factors calendarCache:(id)self0 queue:(id)self1;
- (id)_viewModelWithDayIndex:(int64_t)index fetchedDaySummary:(id)summary;
- (id)copyWithMinimumBufferDuration:(int64_t)duration;
- (id)dayViewModelAtIndex:(int64_t)index;
- (int64_t)_fetchStateForDayIndex:(int64_t)index;
- (unint64_t)_bleedingAfterPregnancyLevel:(int64_t)level;
- (unint64_t)_bleedingInPregnancyLevel:(int64_t)level;
- (unint64_t)_fertileWindowLevelWithDayIndex:(int64_t)index;
- (unint64_t)_menstruationLevelWithDayIndex:(int64_t)index menstrualFlow:(int64_t)flow partiallyLoggedPeriod:(BOOL *)period;
- (unint64_t)_pregnancyStateWithDayIndex:(int64_t)index cycleFactors:(id)factors;
- (void)_queue_notifyObserversDidUpdate;
- (void)_queue_runNotifyObserversOperationNow;
- (void)_setFetchState:(int64_t)state forDayIndexRange:(id)range;
- (void)_updateManagedDayRangeIfNeeded;
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
- (void)cycleFactorsDataSource:(id)source didFetchCycleFactors:(id)factors;
- (void)cycleFactorsDataSource:(id)source didUpdatePregnancyModel:(id)model;
- (void)dealloc;
- (void)setActiveCycles:(id)cycles;
- (void)setActiveDayRange:(id)range;
- (void)viewModelProviderDataSource:(id)source didFetchDaySummaries:(id)summaries forDayIndexRange:(id)range daySummaryAnchor:(id)anchor;
- (void)viewModelProviderDataSourceDidUpdateDaySummaries:(id)summaries;
@end

@implementation HKMCViewModelProvider

- (void)setActiveCycles:(id)cycles
{
  v28 = *MEMORY[0x277D85DE8];
  cyclesCopy = cycles;
  if (![cyclesCopy count])
  {
    [(HKMCViewModelProvider(HKMCCycle) *)a2 setActiveCycles:?];
  }

  calendarCache = [(HKMCViewModelProvider *)self calendarCache];
  currentCalendar = [calendarCache currentCalendar];
  v8 = HKMCTodayIndex(currentCalendar);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = cyclesCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  selfCopy = self;
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    v13 = 0xFFFFFFFF80000000;
    v14 = 0x7FFFFFFFLL;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        menstruationSegment = [v16 menstruationSegment];
        days = [menstruationSegment days];

        if (days < v14)
        {
          v14 = days;
        }

        lastDayIndex = [v16 lastDayIndex];
        integerValue = [lastDayIndex integerValue];
        if (integerValue)
        {
          v21 = integerValue;
        }

        else
        {
          v21 = v8;
        }

        if (v21 > v13)
        {
          v13 = v21;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = 0xFFFFFFFF80000000;
    v14 = 0x7FFFFFFFLL;
  }

  [(HKMCViewModelProvider *)selfCopy setMaximumActiveDuration:v13 - v14 + 1];
  [(HKMCViewModelProvider *)selfCopy setActiveDayRange:v14, v13 - v14 + 1];
}

- (HKMCViewModelProvider)initWithHealthStore:(id)store analysisProvider:(id)provider pregnancyModelProvider:(id)modelProvider maximumActiveDuration:(int64_t)duration minimumBufferDuration:(int64_t)bufferDuration shouldFetchCycleFactors:(BOOL)factors calendarCache:(id)cache
{
  cacheCopy = cache;
  modelProviderCopy = modelProvider;
  providerCopy = provider;
  storeCopy = store;
  v19 = [HKMCViewModelProviderDataSource alloc];
  v20 = MEMORY[0x277D85CD0];
  v21 = [(HKMCViewModelProviderDataSource *)v19 initWithHealthStore:storeCopy calendarCache:cacheCopy queue:MEMORY[0x277D85CD0]];
  v22 = [[HKMCCycleFactorsDataSource alloc] initWithHealthStore:storeCopy pregnancyModelProvider:modelProviderCopy queue:v20];

  LOBYTE(v25) = factors;
  v23 = [(HKMCViewModelProvider *)self _initWithDataSource:v21 cycleFactorsDataSource:v22 analysisProvider:providerCopy maximumActiveDuration:duration minimumBufferDuration:bufferDuration prefetchDuration:5 * bufferDuration shouldFetchCycleFactors:v25 calendarCache:cacheCopy queue:v20];

  return v23;
}

- (id)_initWithDataSource:(id)source cycleFactorsDataSource:(id)dataSource analysisProvider:(id)provider maximumActiveDuration:(int64_t)duration minimumBufferDuration:(int64_t)bufferDuration prefetchDuration:(int64_t)prefetchDuration shouldFetchCycleFactors:(BOOL)factors calendarCache:(id)self0 queue:(id)self1
{
  v35 = a2;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  providerCopy = provider;
  cacheCopy = cache;
  queueCopy = queue;
  v43.receiver = self;
  v43.super_class = HKMCViewModelProvider;
  v19 = [(HKMCViewModelProvider *)&v43 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, queue);
    objc_storeStrong((v20 + 8), source);
    [*(v20 + 8) setDelegate:v20];
    objc_storeStrong((v20 + 16), dataSource);
    objc_storeStrong((v20 + 24), provider);
    [*(v20 + 24) registerObserver:v20];
    if (factors)
    {
      [*(v20 + 16) setDelegate:{v20, v35}];
    }

    if (bufferDuration > prefetchDuration)
    {
      [HKMCViewModelProvider _initWithDataSource:v35 cycleFactorsDataSource:v20 analysisProvider:? maximumActiveDuration:? minimumBufferDuration:? prefetchDuration:? shouldFetchCycleFactors:? calendarCache:? queue:?];
    }

    *(v20 + 152) = duration;
    *(v20 + 56) = bufferDuration;
    *(v20 + 64) = prefetchDuration;
    *(v20 + 48) = factors;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v22 = *(v20 + 32);
    *(v20 + 32) = weakObjectsHashTable;

    indexSet = [MEMORY[0x277CCAB58] indexSet];
    v24 = *(v20 + 88);
    *(v20 + 88) = indexSet;

    indexSet2 = [MEMORY[0x277CCAB58] indexSet];
    v26 = *(v20 + 96);
    *(v20 + 96) = indexSet2;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v28 = *(v20 + 104);
    *(v20 + 104) = dictionary;

    objc_storeStrong((v20 + 160), cache);
    currentCalendar = [cacheCopy currentCalendar];
    *(v20 + 168) = HKMCTodayIndex(currentCalendar);

    objc_initWeak(&location, v20);
    v30 = objc_alloc(MEMORY[0x277CCDD98]);
    v31 = *(v20 + 40);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __190__HKMCViewModelProvider__initWithDataSource_cycleFactorsDataSource_analysisProvider_maximumActiveDuration_minimumBufferDuration_prefetchDuration_shouldFetchCycleFactors_calendarCache_queue___block_invoke;
    v40[3] = &unk_2796D4DB8;
    objc_copyWeak(&v41, &location);
    v32 = [v30 initWithQueue:v31 delay:v40 block:1.0];
    v33 = *(v20 + 144);
    *(v20 + 144) = v32;

    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v20;
}

void __190__HKMCViewModelProvider__initWithDataSource_cycleFactorsDataSource_analysisProvider_maximumActiveDuration_minimumBufferDuration_prefetchDuration_shouldFetchCycleFactors_calendarCache_queue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_runNotifyObserversOperationNow];
}

- (id)copyWithMinimumBufferDuration:(int64_t)duration
{
  v5 = [HKMCViewModelProviderDataSource alloc];
  healthStore = [(HKMCAnalysisProvider *)self->_analysisProvider healthStore];
  v7 = [(HKMCViewModelProviderDataSource *)v5 initWithHealthStore:healthStore calendarCache:self->_calendarCache queue:self->_queue];

  v8 = [HKMCCycleFactorsDataSource alloc];
  healthStore2 = [(HKMCAnalysisProvider *)self->_analysisProvider healthStore];
  v10 = [(HKMCCycleFactorsDataSource *)v8 initWithHealthStore:healthStore2 pregnancyModelProvider:0 queue:self->_queue];

  v11 = [(HKMCViewModelProvider *)self _copyWithDataSource:v7 cycleFactorsDataSource:v10 minimumBufferDuration:duration];
  return v11;
}

- (id)_copyWithDataSource:(id)source cycleFactorsDataSource:(id)dataSource minimumBufferDuration:(int64_t)duration
{
  dataSourceCopy = dataSource;
  sourceCopy = source;
  v10 = objc_alloc(objc_opt_class());
  LOBYTE(v28) = self->_shouldFetchCycleFactors;
  v11 = [v10 _initWithDataSource:sourceCopy cycleFactorsDataSource:dataSourceCopy analysisProvider:self->_analysisProvider maximumActiveDuration:self->_maximumActiveDuration minimumBufferDuration:duration prefetchDuration:5 * duration shouldFetchCycleFactors:v28 calendarCache:self->_calendarCache queue:self->_queue];

  v12 = [(NSMutableIndexSet *)self->_fetchCompletedDayIndexes mutableCopy];
  v13 = v11[12];
  v11[12] = v12;

  fetchCompletedDayIndexes = self->_fetchCompletedDayIndexes;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __90__HKMCViewModelProvider__copyWithDataSource_cycleFactorsDataSource_minimumBufferDuration___block_invoke;
  v29[3] = &unk_2796D4DE0;
  v15 = v11;
  v30 = v15;
  [(NSMutableIndexSet *)fetchCompletedDayIndexes hk_enumerateDayIndexRangesUsingBlock:v29];
  v16 = [(NSMutableDictionary *)self->_daySummariesByDayIndex mutableCopy];
  v17 = v15[13];
  v15[13] = v16;

  v18 = [(NSArray *)self->_cycleFactors copy];
  v19 = v15[14];
  v15[14] = v18;

  v20 = [(HKMCAnalysis *)self->_analysis copy];
  v21 = v15[16];
  v15[16] = v20;

  v22 = [(HKMCPregnancyModel *)self->_lastPregnancyModel copy];
  v23 = v15[17];
  v15[17] = v22;

  v24 = [(NSNumber *)self->_minimumAnalysisAnchor copy];
  v25 = v15[15];
  v15[15] = v24;

  [v15 setActiveDayRange:{self->_activeDayRange.start, self->_activeDayRange.duration}];
  _HKInitializeLogging();
  v26 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEBUG))
  {
    [HKMCViewModelProvider _copyWithDataSource:v26 cycleFactorsDataSource:self minimumBufferDuration:v15];
  }

  return v15;
}

uint64_t __90__HKMCViewModelProvider__copyWithDataSource_cycleFactorsDataSource_minimumBufferDuration___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 32);
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  return result;
}

- (id)dayViewModelAtIndex:(int64_t)index
{
  dispatch_assert_queue_V2(self->_queue);
  if ([(HKMCViewModelProvider *)self _fetchStateForDayIndex:index]== 2)
  {
    daySummariesByDayIndex = self->_daySummariesByDayIndex;
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:index];
    v7 = [(NSMutableDictionary *)daySummariesByDayIndex objectForKeyedSubscript:v6];

    v8 = [(HKMCViewModelProvider *)self _viewModelWithDayIndex:index fetchedDaySummary:v7];
  }

  else
  {
    v8 = +[HKMCDayViewModel unfetchedDayViewModel];
  }

  return v8;
}

- (void)setActiveDayRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  v22 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  if (var1 <= self->_maximumActiveDuration)
  {
    if (self->_activeDayRange.start != var0 || self->_activeDayRange.duration != var1)
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEBUG))
      {
        [(HKMCViewModelProvider *)v13 setActiveDayRange:var0, var1];
      }

      self->_activeDayRange.start = var0;
      self->_activeDayRange.duration = var1;
      [(HKMCViewModelProvider *)self _updateManagedDayRangeIfNeeded];
    }
  }

  else
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = v8;
      v10 = NSStringFromHKDayIndexRange();
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maximumActiveDuration];
      v14 = 138544130;
      v15 = v8;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_error_impl(&dword_2518FC000, v7, OS_LOG_TYPE_ERROR, "[%{public}@:%p] Ignoring invalid active day range: %{public}@, maximum duration is %{public}@", &v14, 0x2Au);
    }
  }
}

- (id)_viewModelWithDayIndex:(int64_t)index fetchedDaySummary:(id)summary
{
  summaryCopy = summary;
  v27 = 0;
  v7 = -[HKMCViewModelProvider _menstruationLevelWithDayIndex:menstrualFlow:partiallyLoggedPeriod:](self, "_menstruationLevelWithDayIndex:menstrualFlow:partiallyLoggedPeriod:", index, [summaryCopy menstrualFlow], &v27);
  v8 = [(HKMCViewModelProvider *)self _fertileWindowLevelWithDayIndex:index];
  currentCalendar = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  v10 = currentCalendar;
  cycleFactors = self->_cycleFactors;
  if (cycleFactors)
  {
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __66__HKMCViewModelProvider__viewModelWithDayIndex_fetchedDaySummary___block_invoke;
    v24[3] = &unk_2796D4E08;
    v25 = currentCalendar;
    indexCopy = index;
    v23 = [(NSArray *)cycleFactors hk_filter:v24];
    v12 = [(HKMCViewModelProvider *)self _pregnancyStateWithDayIndex:index cycleFactors:self->_cycleFactors];
    v13 = -[HKMCViewModelProvider _bleedingInPregnancyLevel:](self, "_bleedingInPregnancyLevel:", [summaryCopy bleedingInPregnancyFlow]);
    v14 = -[HKMCViewModelProvider _bleedingAfterPregnancyLevel:](self, "_bleedingAfterPregnancyLevel:", [summaryCopy bleedingAfterPregnancyFlow]);

    if (summaryCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v23 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    if (summaryCopy)
    {
      goto LABEL_11;
    }
  }

  if (!v7 && !v8 && !v12 && !v13 && !v14 && ![v23 count])
  {
    if ([(HKMCViewModelProvider *)self _didFetchInitialAnalysis])
    {
      +[HKMCDayViewModel emptyDayViewModel];
    }

    else
    {
      +[HKMCDayViewModel unfetchedDayViewModel];
    }
    v20 = ;
    v19 = v23;
    goto LABEL_12;
  }

LABEL_11:
  v15 = v8;
  v16 = v7;
  v17 = v10;
  v18 = v27;
  BYTE1(v22) = [(HKMCViewModelProvider *)self _didFetchInitialAnalysis];
  LOBYTE(v22) = v18;
  v10 = v17;
  v19 = v23;
  v20 = [HKMCDayViewModel dayViewModelWithMenstruationLevel:v16 fertileWindowLevel:v15 pregnancyState:v12 bleedingInPregnancyLevel:v13 bleedingAfterPregnancyLevel:v14 daySummary:summaryCopy cycleFactors:v23 partiallyLoggedPeriod:v22 fetched:?];
LABEL_12:

  return v20;
}

BOOL __66__HKMCViewModelProvider__viewModelWithDayIndex_fetchedDaySummary___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 hk_dayIndexRangeWithCalendar:*(a1 + 32)];
  v5 = *(a1 + 40);
  v7 = v5 < v3;
  v6 = v5 - v3;
  return !v7 && v6 < v4;
}

- (unint64_t)_pregnancyStateWithDayIndex:(int64_t)index cycleFactors:(id)factors
{
  v64 = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  currentCalendar = [(HKCalendarCache *)self->_calendarCache currentCalendar];
  recentPregnancyStartThresholdInDays = [MEMORY[0x277CCD5A0] recentPregnancyStartThresholdInDays];
  recentPregnancyEndThresholdInDays = [MEMORY[0x277CCD5A0] recentPregnancyEndThresholdInDays];
  maximumNumberOfWeeksPregnant = [MEMORY[0x277CCD5A0] maximumNumberOfWeeksPregnant];
  estimatedDueDate = [(HKMCPregnancyModel *)self->_lastPregnancyModel estimatedDueDate];

  indexCopy = index;
  if (!estimatedDueDate)
  {
    goto LABEL_5;
  }

  estimatedDueDate2 = [(HKMCPregnancyModel *)self->_lastPregnancyModel estimatedDueDate];
  v12 = [estimatedDueDate2 hk_dayIndexWithCalendar:currentCalendar];

  if (v12 != index)
  {
    goto LABEL_5;
  }

  pregnancyEndDate = [(HKMCPregnancyModel *)self->_lastPregnancyModel pregnancyEndDate];

  pregnancyEndDate2 = [(HKMCPregnancyModel *)self->_lastPregnancyModel pregnancyEndDate];
  v15 = currentCalendar;
  v16 = pregnancyEndDate2;
  v17 = v15;
  v18 = [pregnancyEndDate2 hk_dayIndexWithCalendar:?];

  v19 = 4;
  if (!pregnancyEndDate)
  {
    currentCalendar = v17;
    goto LABEL_47;
  }

  currentCalendar = v17;
  if (v18 < indexCopy)
  {
LABEL_5:
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v50 = factorsCopy;
    obj = factorsCopy;
    v20 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    if (!v20)
    {
      v56 = 0;
      goto LABEL_46;
    }

    v21 = v20;
    v56 = 0;
    v58 = 0;
    v51 = 7 * maximumNumberOfWeeksPregnant;
    selfCopy = self;
    v22 = *v60;
    v23 = *MEMORY[0x277CCBA68];
    v54 = recentPregnancyStartThresholdInDays + 1;
    while (1)
    {
      v24 = 0;
      do
      {
        if (*v60 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v59 + 1) + 8 * v24);
        categoryType = [v25 categoryType];
        identifier = [categoryType identifier];
        v28 = identifier;
        if (identifier != v23)
        {

          goto LABEL_34;
        }

        v29 = v22;
        startDate = [v25 startDate];
        v31 = currentCalendar;
        v32 = [startDate hk_dayIndexWithCalendar:currentCalendar];

        if (v32 <= v58)
        {
          currentCalendar = v31;
LABEL_33:
          v22 = v29;
          goto LABEL_34;
        }

        v33 = [v25 hk_dayIndexRangeWithCalendar:v31];
        v35 = v34;
        startDate2 = [v25 startDate];
        v37 = [startDate2 hk_dayIndexWithCalendar:v31];

        endDate = [v25 endDate];
        v39 = [endDate hk_dayIndexWithCalendar:v31];

        v40 = v37;
        if (v54 + v37 >= v39)
        {
          v41 = v39 - v37;
        }

        else
        {
          v41 = v54;
        }

        currentCalendar = v31;
        v58 = v40;
        if (indexCopy < v33 || indexCopy - v33 >= v35)
        {
          v45 = indexCopy - v39 > recentPregnancyEndThresholdInDays || indexCopy < v39;
          v46 = v56;
          if (!v45)
          {
            v46 = 1;
          }

          v56 = v46;
          goto LABEL_33;
        }

        v22 = v29;
        v42 = indexCopy - v40;
        if (selfCopy->_todayDayIndex >= indexCopy)
        {
          v47 = v42 >= v41 || indexCopy < v40;
          v44 = 5;
          if (v47)
          {
            v44 = 6;
          }

          goto LABEL_41;
        }

        if (v42 < v51)
        {
          v43 = v42 >= v41 || indexCopy < v40;
          v44 = 2;
          if (!v43)
          {
            v44 = 3;
          }

LABEL_41:
          v56 = v44;
          goto LABEL_34;
        }

        v56 = 0;
LABEL_34:
        ++v24;
      }

      while (v21 != v24);
      v48 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
      v21 = v48;
      if (!v48)
      {
LABEL_46:

        factorsCopy = v50;
        v19 = v56;
        break;
      }
    }
  }

LABEL_47:

  return v19;
}

- (unint64_t)_bleedingInPregnancyLevel:(int64_t)level
{
  v3 = 1;
  if (level == 1)
  {
    v3 = 2;
  }

  if (level)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_bleedingAfterPregnancyLevel:(int64_t)level
{
  v3 = 1;
  if (level == 1)
  {
    v3 = 2;
  }

  if (level)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_menstruationLevelWithDayIndex:(int64_t)index menstrualFlow:(int64_t)flow partiallyLoggedPeriod:(BOOL *)period
{
  v42 = *MEMORY[0x277D85DE8];
  if ((flow - 1) < 5)
  {
    return qword_25192B3B0[flow - 1];
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  cycles = [(HKMCAnalysis *)self->_analysis cycles];
  v10 = [cycles countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(cycles);
        }

        menstruationSegment = [*(*(&v36 + 1) + 8 * i) menstruationSegment];
        days = [menstruationSegment days];
        v17 = v16;

        if (index >= days && index - days < v17)
        {

          return 3;
        }
      }

      v11 = [cycles countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  menstruationProjections = [(HKMCAnalysis *)self->_analysis menstruationProjections];
  v20 = [menstruationProjections countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v33;
    v5 = 2;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v33 != v22)
        {
          objc_enumerationMutation(menstruationProjections);
        }

        v24 = *(*(&v32 + 1) + 8 * j);
        mostLikelyDays = [v24 mostLikelyDays];
        if (index >= mostLikelyDays && index - mostLikelyDays < v26)
        {
          goto LABEL_32;
        }

        allDays = [v24 allDays];
        if (index >= allDays && index - allDays < v29)
        {
          v5 = 1;
LABEL_32:
          *period = [v24 isPartiallyLogged];

          return v5;
        }
      }

      v21 = [menstruationProjections countByEnumeratingWithState:&v32 objects:v40 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (unint64_t)_fertileWindowLevelWithDayIndex:(int64_t)index
{
  v45 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  cycles = [(HKMCAnalysis *)self->_analysis cycles];
  v6 = [cycles countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v40;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v40 != v8)
        {
          objc_enumerationMutation(cycles);
        }

        v10 = *(*(&v39 + 1) + 8 * i);
        fertileWindowSegment = [v10 fertileWindowSegment];

        if (fertileWindowSegment)
        {
          fertileWindowSegment2 = [v10 fertileWindowSegment];
          days = [fertileWindowSegment2 days];
          v15 = v14 + days - 1;
          if (v14 <= 0)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v15 == index)
          {
            if ([v10 ovulationConfirmationType] == 1)
            {

LABEL_39:
              v25 = 3;
              goto LABEL_41;
            }

            ovulationConfirmationType = [v10 ovulationConfirmationType];

            if (ovulationConfirmationType == 2)
            {
              goto LABEL_39;
            }
          }

          else
          {
          }

          fertileWindowSegment3 = [v10 fertileWindowSegment];
          days2 = [fertileWindowSegment3 days];
          v20 = v19;

          if (index >= days2 && index - days2 < v20)
          {
            v25 = 2;
            goto LABEL_41;
          }
        }
      }

      v7 = [cycles countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  cycles = [(HKMCAnalysis *)self->_analysis fertileWindowProjections];
  v22 = [cycles countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    v25 = 3;
LABEL_22:
    v26 = 0;
    while (1)
    {
      if (*v36 != v24)
      {
        objc_enumerationMutation(cycles);
      }

      v27 = *(*(&v35 + 1) + 8 * v26);
      if ([v27 predictionPrimarySource] == 3 || objc_msgSend(v27, "predictionPrimarySource") == 4)
      {
        allDays = [v27 allDays];
        v30 = v29 + allDays - 1;
        if (v29 <= 0)
        {
          v30 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v30 == index)
        {
          break;
        }
      }

      allDays2 = [v27 allDays];
      if (index >= allDays2 && index - allDays2 < v32)
      {
        v25 = 1;
        break;
      }

      if (v23 == ++v26)
      {
        v23 = [cycles countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v23)
        {
          goto LABEL_22;
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_36:
    v25 = 0;
  }

LABEL_41:

  return v25;
}

- (void)_updateManagedDayRangeIfNeeded
{
  v41 = *MEMORY[0x277D85DE8];
  start = self->_managedDayRange.start;
  duration = self->_managedDayRange.duration;
  HKIntersectionDayIndexRange();
  v5 = self->_managedDayRange.start;
  if (v6)
  {
    minimumBufferDuration = self->_minimumBufferDuration;
    prefetchDuration = self->_prefetchDuration;
    v9 = self->_maximumActiveDuration + 2 * prefetchDuration;
    v10 = self->_activeDayRange.start;
    if (v10 < minimumBufferDuration + v5)
    {
      if (v5 >= v10)
      {
        v11 = self->_activeDayRange.start;
      }

      else
      {
        v11 = self->_managedDayRange.start;
      }

      start = v11 - prefetchDuration;
      v12 = self->_managedDayRange.duration;
      v13 = v5 + v12 - 1;
      v14 = v12 <= 0;
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v14)
      {
        v15 = v13;
      }

      v16 = v15 - start;
      if (v9 >= v16 + 1)
      {
        duration = v16 + 1;
      }

      else
      {
        duration = self->_maximumActiveDuration + 2 * prefetchDuration;
      }
    }

    v17 = self->_activeDayRange.duration;
    v18 = v10 + v17 - 1;
    v14 = v17 <= 0;
    v19 = 0x7FFFFFFFFFFFFFFFLL;
    if (v14)
    {
      v18 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (duration > 0)
    {
      v19 = duration + start - 1;
    }

    if (v18 > v19 - minimumBufferDuration)
    {
      if (v19 <= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      v21 = v20 + prefetchDuration;
      if (v9 >= v21 - start + 1)
      {
        duration = v21 - start + 1;
      }

      else
      {
        duration = v9;
      }

      start = v21 - duration + 1;
    }
  }

  else
  {
    v22 = self->_prefetchDuration;
    start = self->_activeDayRange.start - v22;
    duration = self->_activeDayRange.duration + 2 * v22;
  }

  if (v5 != start || self->_managedDayRange.duration != duration)
  {
    v24 = [MEMORY[0x277CCAA78] hk_indexSetWithDayIndexRange:?];
    v25 = [MEMORY[0x277CCAA78] hk_indexSetWithDayIndexRange:{start, duration}];
    self->_managedDayRange.start = start;
    self->_managedDayRange.duration = duration;
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v27 = v26;
      v28 = objc_opt_class();
      v29 = v28;
      v30 = NSStringFromHKDayIndexRange();
      *buf = 138543874;
      v36 = v28;
      v37 = 2048;
      selfCopy = self;
      v39 = 2114;
      v40 = v30;
      _os_log_impl(&dword_2518FC000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Updated managed day range: %{public}@", buf, 0x20u);
    }

    v31 = [v24 hk_indexSetSubtractingIndexes:v25];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __55__HKMCViewModelProvider__updateManagedDayRangeIfNeeded__block_invoke;
    v34[3] = &unk_2796D4DE0;
    v34[4] = self;
    [v31 hk_enumerateDayIndexRangesUsingBlock:v34];
    v32 = [v25 hk_indexSetSubtractingIndexes:v24];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __55__HKMCViewModelProvider__updateManagedDayRangeIfNeeded__block_invoke_2;
    v33[3] = &unk_2796D4DE0;
    v33[4] = self;
    [v32 hk_enumerateDayIndexRangesUsingBlock:v33];
    if (self->_shouldFetchCycleFactors)
    {
      [(HKMCCycleFactorsDataSourceProviding *)self->_cycleFactorsDataSource startObservingCycleFactorsInDayIndexRange:start, duration];
    }
  }
}

void __55__HKMCViewModelProvider__updateManagedDayRangeIfNeeded__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  [*(*(a1 + 32) + 8) cancelFetchForDaySummariesInDayIndexRange:{a2, a3}];
  [*(a1 + 32) _setFetchState:0 forDayIndexRange:{v4, a3}];
  v6 = v4 + a3;
  do
  {
    do
    {
      v7 = *(*(a1 + 32) + 104);
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
      [v7 setObject:0 forKeyedSubscript:v8];

      ++v4;
    }

    while (a3 < 1);
  }

  while (v6 > v4);
}

uint64_t __55__HKMCViewModelProvider__updateManagedDayRangeIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) _setFetchState:1 forDayIndexRange:{a2, a3}];
  v6 = *(*(a1 + 32) + 8);

  return [v6 fetchDaySummariesInDayIndexRange:{a2, a3}];
}

- (int64_t)_fetchStateForDayIndex:(int64_t)index
{
  if (([(NSMutableIndexSet *)self->_fetchCompletedDayIndexes containsIndex:?]& 1) != 0)
  {
    return 2;
  }

  else
  {
    return [(NSMutableIndexSet *)self->_fetchStartedDayIndexes containsIndex:index];
  }
}

- (void)_setFetchState:(int64_t)state forDayIndexRange:(id)range
{
  var1 = range.var1;
  var0 = range.var0;
  if (range.var0 < 0)
  {
    [HKMCViewModelProvider _setFetchState:forDayIndexRange:];
  }

  p_fetchStartedDayIndexes = &self->_fetchStartedDayIndexes;
  [(NSMutableIndexSet *)self->_fetchStartedDayIndexes removeIndexesInRange:var0, var1];
  fetchCompletedDayIndexes = self->_fetchCompletedDayIndexes;
  p_fetchCompletedDayIndexes = &self->_fetchCompletedDayIndexes;
  [(NSMutableIndexSet *)fetchCompletedDayIndexes removeIndexesInRange:var0, var1];
  if (state != 1)
  {
    if (state != 2)
    {
      return;
    }

    p_fetchStartedDayIndexes = p_fetchCompletedDayIndexes;
  }

  v11 = *p_fetchStartedDayIndexes;

  [(NSMutableIndexSet *)v11 addIndexesInRange:var0, var1];
}

- (BOOL)_didFetchMinimumAnalysis
{
  selfCopy = self;
  latestSampleInfo = [(HKMCAnalysis *)self->_analysis latestSampleInfo];
  anchor = [latestSampleInfo anchor];
  LOBYTE(selfCopy) = anchor >= [(NSNumber *)selfCopy->_minimumAnalysisAnchor longLongValue];

  return selfCopy;
}

- (void)cycleFactorsDataSource:(id)source didFetchCycleFactors:(id)factors
{
  v26 = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  _HKInitializeLogging();
  v6 = MEMORY[0x277CCC2E8];
  v7 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = objc_opt_class();
    v10 = MEMORY[0x277CCABB0];
    v11 = v9;
    v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(factorsCopy, "count")}];
    v13 = HKSensitiveLogItem();
    *buf = 138543874;
    v21 = v9;
    v22 = 2048;
    selfCopy = self;
    v24 = 2112;
    v25 = v13;
    _os_log_impl(&dword_2518FC000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Fetched %@ cycle factors", buf, 0x20u);
  }

  if ([(NSArray *)self->_cycleFactors isEqualToArray:factorsCopy])
  {
    if (HKShowSensitiveLogItems())
    {
      _HKInitializeLogging();
      v14 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
      {
        [HKMCViewModelProvider cycleFactorsDataSource:v14 didFetchCycleFactors:self];
      }
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:1];
    v19 = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
    v17 = [factorsCopy sortedArrayUsingDescriptors:v16];
    cycleFactors = self->_cycleFactors;
    self->_cycleFactors = v17;

    [(HKMCViewModelProvider *)self _queue_notifyObserversDidUpdate];
  }
}

- (void)cycleFactorsDataSource:(id)source didUpdatePregnancyModel:(id)model
{
  v19 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  lastPregnancyModel = self->_lastPregnancyModel;
  v8 = HKShowSensitiveLogItems();
  if (lastPregnancyModel == modelCopy)
  {
    if (v8)
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v15 = 138543618;
        v16 = objc_opt_class();
        v17 = 2048;
        selfCopy2 = self;
        v14 = v16;
        _os_log_impl(&dword_2518FC000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Skipping update due to identical pregnancy model", &v15, 0x16u);
      }
    }
  }

  else
  {
    if (v8)
    {
      _HKInitializeLogging();
      v9 = *MEMORY[0x277CCC2E8];
      if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
      {
        v10 = v9;
        v15 = 138543618;
        v16 = objc_opt_class();
        v17 = 2048;
        selfCopy2 = self;
        v11 = v16;
        _os_log_impl(&dword_2518FC000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Updated pregnancy model", &v15, 0x16u);
      }
    }

    objc_storeStrong(&self->_lastPregnancyModel, model);
    [(HKMCViewModelProvider *)self _queue_notifyObserversDidUpdate];
  }
}

- (void)viewModelProviderDataSource:(id)source didFetchDaySummaries:(id)summaries forDayIndexRange:(id)range daySummaryAnchor:(id)anchor
{
  var1 = range.var1;
  var0 = range.var0;
  v54 = *MEMORY[0x277D85DE8];
  summariesCopy = summaries;
  anchorCopy = anchor;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = MEMORY[0x277CCABB0];
    v15 = v13;
    v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(summariesCopy, "count")}];
    v17 = NSStringFromHKDayIndexRange();
    *buf = 138544130;
    v47 = v13;
    v48 = 2048;
    selfCopy = self;
    v50 = 2112;
    v51 = v16;
    v52 = 2114;
    v53 = v17;
    _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Fetched %@ summaries in range: %{public}@", buf, 0x2Au);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  allKeys = [(NSMutableDictionary *)self->_daySummariesByDayIndex allKeys];
  v19 = [allKeys countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v41;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v40 + 1) + 8 * i);
        integerValue = [v23 integerValue];
        if (integerValue >= var0 && integerValue - var0 < var1)
        {
          [(NSMutableDictionary *)self->_daySummariesByDayIndex setObject:0 forKeyedSubscript:v23];
        }
      }

      v20 = [allKeys countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v20);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v26 = summariesCopy;
  v27 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v37;
    do
    {
      for (j = 0; j != v28; ++j)
      {
        if (*v37 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = *(*(&v36 + 1) + 8 * j);
        daySummariesByDayIndex = self->_daySummariesByDayIndex;
        v33 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v31, "dayIndex")}];
        [(NSMutableDictionary *)daySummariesByDayIndex setObject:v31 forKeyedSubscript:v33];
      }

      v28 = [v26 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v28);
  }

  [(HKMCViewModelProvider *)self _setFetchState:2 forDayIndexRange:var0, var1];
  minimumAnalysisAnchor = self->_minimumAnalysisAnchor;
  self->_minimumAnalysisAnchor = anchorCopy;

  [(HKMCViewModelProvider *)self _queue_notifyObserversDidUpdate];
}

- (void)viewModelProviderDataSourceDidUpdateDaySummaries:(id)summaries
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    *v7 = 138543618;
    *&v7[4] = objc_opt_class();
    *&v7[12] = 2048;
    *&v7[14] = self;
    v6 = *&v7[4];
    _os_log_impl(&dword_2518FC000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Updated summaries", v7, 0x16u);
  }

  [(HKMCViewModelProviderDataSource *)self->_dataSource fetchDaySummariesInDayIndexRange:self->_managedDayRange.start, self->_managedDayRange.duration, *v7, *&v7[8], v8];
}

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  v14 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2048;
    selfCopy = self;
    v8 = v11;
    _os_log_impl(&dword_2518FC000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Updated analysis", &v10, 0x16u);
  }

  analysis = self->_analysis;
  self->_analysis = analysisCopy;

  [(HKMCViewModelProvider *)self _queue_notifyObserversDidUpdate];
}

- (void)_queue_notifyObserversDidUpdate
{
  v20 = *MEMORY[0x277D85DE8];
  if ([(HKMCViewModelProvider *)self _didFetchInitialAnalysis]&& ![(HKMCViewModelProvider *)self _didFetchMinimumAnalysis])
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = objc_opt_class();
      analysis = self->_analysis;
      v8 = v6;
      latestSampleInfo = [(HKMCAnalysis *)analysis latestSampleInfo];
      v10 = HKSensitiveLogItem();
      minimumAnalysisAnchor = self->_minimumAnalysisAnchor;
      v12 = 138544130;
      v13 = v6;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = minimumAnalysisAnchor;
      _os_log_impl(&dword_2518FC000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Delaying notifying observers of updates due to outdated analysis: %{public}@ < %{public}@", &v12, 0x2Au);
    }

    [(_HKDelayedOperation *)self->_notifyObserversOperation execute];
  }

  else
  {
    notifyObserversOperation = self->_notifyObserversOperation;

    [(_HKDelayedOperation *)notifyObserversOperation executeWithDelay:0.0];
  }
}

- (void)_queue_runNotifyObserversOperationNow
{
  v26 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = MEMORY[0x277CCABB0];
    observers = self->_observers;
    v8 = v5;
    v9 = [v6 numberWithUnsignedInteger:{-[NSHashTable count](observers, "count")}];
    *buf = 138543874;
    v21 = v5;
    v22 = 2048;
    selfCopy = self;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Notifying %{public}@ observers of updates", buf, 0x20u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_observers;
  v11 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v15 + 1) + 8 * v14++) viewModelProviderDidUpdate:{self, v15}];
      }

      while (v12 != v14);
      v12 = [(NSHashTable *)v10 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543618;
    v8 = objc_opt_class();
    v9 = 2048;
    selfCopy = self;
    v5 = v8;
    _os_log_impl(&dword_2518FC000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@:%p] Dealloc", buf, 0x16u);
  }

  v6.receiver = self;
  v6.super_class = HKMCViewModelProvider;
  [(HKMCViewModelProvider *)&v6 dealloc];
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)_test_managedDayRange
{
  duration = self->_managedDayRange.duration;
  start = self->_managedDayRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)activeDayRange
{
  duration = self->_activeDayRange.duration;
  start = self->_activeDayRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

- (void)_initWithDataSource:(uint64_t)a1 cycleFactorsDataSource:(uint64_t)a2 analysisProvider:maximumActiveDuration:minimumBufferDuration:prefetchDuration:shouldFetchCycleFactors:calendarCache:queue:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKMCViewModelProvider.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"minimumBufferDuration <= prefetchDuration"}];
}

- (void)_copyWithDataSource:(void *)a1 cycleFactorsDataSource:(uint64_t)a2 minimumBufferDuration:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v7 = 138543874;
  v8 = objc_opt_class();
  v9 = 2050;
  v10 = a2;
  v11 = 2050;
  v12 = a3;
  v6 = v8;
  _os_log_debug_impl(&dword_2518FC000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@] Copying %{public}p to %{public}p", &v7, 0x20u);
}

- (void)setActiveDayRange:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = objc_opt_class();
  v7 = v6;
  v8 = NSStringFromHKDayIndexRange();
  v9 = 138543874;
  v10 = v6;
  v11 = 2048;
  v12 = a2;
  v13 = 2114;
  v14 = v8;
  _os_log_debug_impl(&dword_2518FC000, v5, OS_LOG_TYPE_DEBUG, "[%{public}@:%p] Updated active day range: %{public}@", &v9, 0x20u);
}

- (void)_setFetchState:forDayIndexRange:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSRange NSRangeFromHKDayIndexRange(HKDayIndexRange)"];
  [v1 handleFailureInFunction:v0 file:@"HKDayIndexRange.h" lineNumber:46 description:@"Cannot convert day index ranges less than 0 to NSRange"];
}

- (void)cycleFactorsDataSource:(void *)a1 didFetchCycleFactors:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v5 = 138543618;
  v6 = objc_opt_class();
  v7 = 2048;
  v8 = a2;
  v4 = v6;
  _os_log_debug_impl(&dword_2518FC000, v3, OS_LOG_TYPE_DEBUG, "[%{public}@:%p] No factors changed, skipping notifying observers", &v5, 0x16u);
}

@end