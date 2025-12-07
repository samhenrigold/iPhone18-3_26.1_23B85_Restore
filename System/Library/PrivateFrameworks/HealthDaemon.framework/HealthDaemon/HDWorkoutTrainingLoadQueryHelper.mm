@interface HDWorkoutTrainingLoadQueryHelper
- (HDWorkoutTrainingLoadQueryHelper)initWithFilter:(id)filter options:(int64_t)options anchorDate:(id)date intervalComponents:(id)components profile:(id)profile;
- (HDWorkoutTrainingLoadQueryHelper)initWithFilter:(id)filter options:(int64_t)options profile:(id)profile;
- (id)_calculatorWithIntervalCollection:(id)collection;
- (id)_trainingLoadFromStatistics:(id)statistics count:(int64_t)count;
- (void)fetchTrainingLoadCollectionWithCompletion:(id)completion;
- (void)fetchTrainingLoadWithCompletion:(id)completion;
@end

@implementation HDWorkoutTrainingLoadQueryHelper

- (HDWorkoutTrainingLoadQueryHelper)initWithFilter:(id)filter options:(int64_t)options profile:(id)profile
{
  filterCopy = filter;
  profileCopy = profile;
  v15.receiver = self;
  v15.super_class = HDWorkoutTrainingLoadQueryHelper;
  v10 = [(HDWorkoutTrainingLoadQueryHelper *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_profile, profileCopy);
    v12 = objc_msgSend_copy(filterCopy);
    filter = v11->_filter;
    v11->_filter = v12;

    v11->_options = options;
  }

  return v11;
}

- (HDWorkoutTrainingLoadQueryHelper)initWithFilter:(id)filter options:(int64_t)options anchorDate:(id)date intervalComponents:(id)components profile:(id)profile
{
  profileCopy = profile;
  componentsCopy = components;
  filterCopy = filter;
  v15 = objc_msgSend_copy(date);
  anchorDate = self->_anchorDate;
  self->_anchorDate = v15;

  v17 = objc_msgSend_copy(componentsCopy);
  intervalComponents = self->_intervalComponents;
  self->_intervalComponents = v17;

  v19 = [(HDWorkoutTrainingLoadQueryHelper *)self initWithFilter:filterCopy options:options profile:profileCopy];
  return v19;
}

- (void)fetchTrainingLoadWithCompletion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = [(HDWorkoutTrainingLoadQueryHelper *)self _calculatorWithIntervalCollection:0];
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dataSource = self->_dataSource;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __68__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadWithCompletion___block_invoke;
  v38[3] = &unk_27861BFD0;
  v9 = v5;
  v39 = v9;
  selfCopy = self;
  selfCopy2 = self;
  v32 = v7;
  v41 = v32;
  v11 = v6;
  v42 = v11;
  if ([(HDWorkoutTrainingLoadDataSource *)dataSource samplesForCalculatorWithHandler:v38])
  {
    v30 = v9;
    v31 = completionCopy;
    currentStatistics = [v9 currentStatistics];
    v29 = v11;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          v18 = [v12 objectForKeyedSubscript:{v17, currentStatistics}];
          currentStatistics2 = [v18 currentStatistics];
          v20 = [v32 objectForKeyedSubscript:v17];
          v21 = -[HDWorkoutTrainingLoadQueryHelper _trainingLoadFromStatistics:count:](selfCopy2, "_trainingLoadFromStatistics:count:", currentStatistics2, [v20 count]);

          v22 = [v33 objectForKeyedSubscript:v17];

          if (!v22)
          {
            [v33 setObject:v21 forKeyedSubscript:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v14);
    }

    if ([currentStatistics dataCount])
    {
      v23 = objc_alloc(MEMORY[0x277CCDCC8]);
      v24 = -[HDWorkoutTrainingLoadQueryHelper _trainingLoadFromStatistics:count:](selfCopy2, "_trainingLoadFromStatistics:count:", currentStatistics, [currentStatistics dataCount]);
      v25 = [v23 initWithTotalTrainingLoad:v24 trainingloadByActivityType:v33];

      completionCopy = v31;
    }

    else
    {
      _HKInitializeLogging();
      v27 = *MEMORY[0x277CCC330];
      completionCopy = v31;
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        selfCopy3 = selfCopy2;
        _os_log_impl(&dword_228986000, v27, OS_LOG_TYPE_INFO, "%{public}@: No training load to return", buf, 0xCu);
      }

      v25 = 0;
    }

    v11 = v29;
    v9 = v30;
    completionCopy[2](completionCopy, v25, 0);
  }

  else
  {
    _HKInitializeLogging();
    v26 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy3 = self;
      v46 = 2114;
      v47 = 0;
      _os_log_error_impl(&dword_228986000, v26, OS_LOG_TYPE_ERROR, "%{public}@: Failed querying training load with error : %{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, 0);
  }
}

uint64_t __68__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7, double a8)
{
  v15 = a4;
  v16 = *(a1 + 32);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __68__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadWithCompletion___block_invoke_2;
  v23[3] = &unk_27861BFA8;
  v17 = v16;
  v29 = a6;
  v30 = a7;
  v31 = a8;
  v32 = a2;
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v24 = v17;
  v25 = v18;
  v33 = a3;
  v26 = v19;
  v27 = v15;
  v28 = *(a1 + 56);
  v20 = v15;
  v21 = [v17 performAddSampleTransaction:v23 error:a5];

  return v21;
}

uint64_t __68__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadWithCompletion___block_invoke_2(uint64_t a1, uint64_t *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) addSampleValue:*(a1 + 96) startTime:a2 endTime:*(a1 + 72) sourceID:*(a1 + 80) error:*(a1 + 88)];
  if (*(*(a1 + 40) + 24) == 1)
  {
    v5 = *(a1 + 48);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 104)];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (!v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v9 = *(a1 + 48);
      v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 104)];
      [v9 setObject:v8 forKeyedSubscript:v10];
    }

    v11 = *(a1 + 48);
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 104)];
    v13 = [v11 objectForKeyedSubscript:v12];
    [v13 addObject:*(a1 + 56)];

    v14 = *(a1 + 64);
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 104)];
    v16 = [v14 objectForKeyedSubscript:v15];

    if (!v16)
    {
      v16 = [*(a1 + 40) _calculatorWithIntervalCollection:0];
      v17 = *(a1 + 64);
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 104)];
      [v17 setObject:v16 forKeyedSubscript:v18];
    }

    if (([v16 addSampleValue:*(a1 + 96) startTime:a2 endTime:*(a1 + 72) sourceID:*(a1 + 80) error:*(a1 + 88)] & 1) == 0)
    {
      _HKInitializeLogging();
      v19 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
      {
        v20 = *(a1 + 40);
        v21 = *(a1 + 80);
        v22 = *(a1 + 88);
        v23 = MEMORY[0x277CCABB0];
        v24 = *(a1 + 104);
        v25 = v19;
        v26 = [v23 numberWithUnsignedInteger:v24];
        v27 = *a2;
        v29 = 138544386;
        v30 = v20;
        v31 = 2048;
        v32 = v21;
        v33 = 2048;
        v34 = v22;
        v35 = 2114;
        v36 = v26;
        v37 = 2114;
        v38 = v27;
        _os_log_impl(&dword_228986000, v25, OS_LOG_TYPE_INFO, "%{public}@: Failed adding sample to load activity calculator with start date %f, end date %f and activityType %{public}@, error:%{public}@", &v29, 0x34u);
      }
    }
  }

  return v4;
}

- (void)fetchTrainingLoadCollectionWithCompletion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x277CCDD78]) initWithAnchorDate:self->_anchorDate intervalComponents:self->_intervalComponents];
  v6 = [(HDWorkoutTrainingLoadQueryHelper *)self _calculatorWithIntervalCollection:v5];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__61;
  v34 = __Block_byref_object_dispose__61;
  v35 = 0;
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __78__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadCollectionWithCompletion___block_invoke;
  v29[3] = &unk_27861BFF8;
  v29[4] = self;
  v29[5] = &v30;
  [v6 setStatisticsHandler:v29];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  dataSource = self->_dataSource;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = __78__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadCollectionWithCompletion___block_invoke_2;
  v22 = &unk_27861C070;
  v11 = v6;
  v23 = v11;
  selfCopy = self;
  v12 = v7;
  v25 = v12;
  v13 = v8;
  v26 = v13;
  v14 = v5;
  v27 = v14;
  v15 = v9;
  v28 = v15;
  if (![(HDWorkoutTrainingLoadDataSource *)dataSource samplesForCalculatorWithHandler:&v19])
  {
    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v38 = 2114;
      v39 = 0;
      _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@: Failed querying training load with error : %{public}@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if (!v31[5])
  {
LABEL_6:
    v17 = 0;
    goto LABEL_7;
  }

  v16 = objc_alloc(MEMORY[0x277CCDCB8]);
  v17 = [v16 initWithTotalTrainingLoadCollection:v31[5] collectionByActivityType:{v15, v19, v20, v21, v22, v23, selfCopy, v25, v26, v27}];
LABEL_7:
  completionCopy[2](completionCopy, v17, 0);

  _Block_object_dispose(&v30, 8);
}

void __78__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadCollectionWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [v11 sumQuantity];
  [v4 _value];
  v6 = v5;

  if (v6 != 0.0)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v7 = [objc_alloc(MEMORY[0x277CCDCA8]) _init];
      v8 = *(*(a1 + 40) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;
    }

    v10 = [*(a1 + 32) _trainingLoadFromStatistics:v11 count:{objc_msgSend(v11, "dataCount")}];
    [*(*(*(a1 + 40) + 8) + 40) addTrainingLoad:v10];
  }
}

uint64_t __78__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadCollectionWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, double a7, double a8)
{
  v15 = a4;
  v16 = *(a1 + 32);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __78__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadCollectionWithCompletion___block_invoke_3;
  v23[3] = &unk_27861C048;
  v17 = v16;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v34 = a2;
  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  v24 = v17;
  v25 = v18;
  v35 = a3;
  v26 = v19;
  v27 = v15;
  v28 = *(a1 + 56);
  v29 = *(a1 + 64);
  v30 = *(a1 + 72);
  v20 = v15;
  v21 = [v17 performAddSampleTransaction:v23 error:a5];

  return v21;
}

uint64_t __78__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadCollectionWithCompletion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) addSampleValue:*(a1 + 112) startTime:a2 endTime:*(a1 + 88) sourceID:*(a1 + 96) error:*(a1 + 104)];
  if (*(*(a1 + 40) + 24) == 1)
  {
    v4 = *(a1 + 48);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 120)];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (!v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v8 = *(a1 + 48);
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 120)];
      [v8 setObject:v7 forKeyedSubscript:v9];
    }

    v10 = *(a1 + 48);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 120)];
    v12 = [v10 objectForKeyedSubscript:v11];
    [v12 addObject:*(a1 + 56)];

    v13 = *(a1 + 64);
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 120)];
    v15 = [v13 objectForKeyedSubscript:v14];

    if (!v15)
    {
      v15 = [*(a1 + 40) _calculatorWithIntervalCollection:*(a1 + 72)];
      v16 = *(a1 + 64);
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 120)];
      [v16 setObject:v15 forKeyedSubscript:v17];
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __78__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadCollectionWithCompletion___block_invoke_4;
    v46[3] = &unk_27861C020;
    v18 = *(a1 + 48);
    v46[4] = *(a1 + 40);
    v19 = v18;
    v20 = *(a1 + 120);
    v47 = v19;
    v49 = v20;
    v48 = *(a1 + 80);
    [v15 setStatisticsHandler:v46];
    _HKInitializeLogging();
    v21 = MEMORY[0x277CCC330];
    v22 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      v23 = *(a1 + 40);
      v25 = *(a1 + 96);
      v24 = *(a1 + 104);
      v26 = MEMORY[0x277CCABB0];
      v27 = *(a1 + 120);
      v28 = v22;
      v29 = [v26 numberWithUnsignedInteger:v27];
      *buf = 138544130;
      v51 = v23;
      v52 = 2048;
      v53 = v25;
      v54 = 2048;
      v55 = v24;
      v21 = MEMORY[0x277CCC330];
      v56 = 2114;
      v57 = v29;
      _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_INFO, "%{public}@: Adding sample to activity calculator with start %f, end date %f and activityType : %{public}@", buf, 0x2Au);
    }

    v30 = *(a1 + 88);
    v31 = *(a1 + 96);
    v32 = *(a1 + 104);
    v33 = *(a1 + 112);
    v45 = 0;
    v34 = [v15 addSampleValue:v33 startTime:&v45 endTime:v30 sourceID:v31 error:v32];
    v35 = v45;
    if ((v34 & 1) == 0)
    {
      _HKInitializeLogging();
      v36 = *v21;
      if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
      {
        v38 = *(a1 + 40);
        v39 = *(a1 + 96);
        v40 = *(a1 + 104);
        v41 = MEMORY[0x277CCABB0];
        v42 = *(a1 + 120);
        v43 = v36;
        v44 = [v41 numberWithUnsignedInteger:v42];
        *buf = 138544386;
        v51 = v38;
        v52 = 2048;
        v53 = v39;
        v54 = 2048;
        v55 = v40;
        v56 = 2114;
        v57 = v44;
        v58 = 2114;
        v59 = v35;
        _os_log_error_impl(&dword_228986000, v43, OS_LOG_TYPE_ERROR, "%{public}@: Failed adding sample to activity calculator with start date %f, end date %f, activityType %{public}@ and error: %{public}@", buf, 0x34u);
      }
    }
  }

  return v3;
}

void __78__HDWorkoutTrainingLoadQueryHelper_fetchTrainingLoadCollectionWithCompletion___block_invoke_4(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[4];
  v5 = a1[5];
  v6 = MEMORY[0x277CCABB0];
  v7 = a1[7];
  v8 = a3;
  v9 = [v6 numberWithUnsignedInteger:v7];
  v10 = [v5 objectForKeyedSubscript:v9];
  v16 = [v4 _trainingLoadFromStatistics:v8 count:{objc_msgSend(v10, "count")}];

  v11 = a1[6];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (!v13)
  {
    v13 = [objc_alloc(MEMORY[0x277CCDCA8]) _init];
  }

  [v13 addTrainingLoad:v16];
  v14 = a1[6];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1[7]];
  [v14 setObject:v13 forKeyedSubscript:v15];
}

- (id)_trainingLoadFromStatistics:(id)statistics count:(int64_t)count
{
  v21 = *MEMORY[0x277D85DE8];
  statisticsCopy = statistics;
  sumQuantity = [statisticsCopy sumQuantity];
  [sumQuantity _value];
  v9 = v8;

  if (v9 == 0.0)
  {
    _HKInitializeLogging();
    v10 = *MEMORY[0x277CCC330];
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_INFO))
    {
      v19 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_INFO, "%{public}@: No training load. Returning 0 value ", &v19, 0xCu);
    }
  }

  v11 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [statisticsCopy startDate];
  endDate = [statisticsCopy endDate];
  v14 = [v11 initWithStartDate:startDate endDate:endDate];

  v15 = objc_alloc(MEMORY[0x277CCDCA0]);
  sumQuantity2 = [statisticsCopy sumQuantity];

  v17 = [v15 initWithQuantity:sumQuantity2 dateInterval:v14 count:count];

  return v17;
}

- (id)_calculatorWithIntervalCollection:(id)collection
{
  v4 = MEMORY[0x277CCD830];
  v5 = *MEMORY[0x277CCCCD8];
  collectionCopy = collection;
  v7 = [v4 quantityTypeForIdentifier:v5];
  appleEffortScoreUnit = [MEMORY[0x277CCDAB0] appleEffortScoreUnit];
  secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
  v10 = [appleEffortScoreUnit unitMultipliedByUnit:secondUnit];
  v11 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithUnderlyingSampleType:v7 aggregationStyle:0 canonicalUnit:v10 shouldUseUnderlyingTypeForStatistics:0];

  v12 = [HDStatisticsCollectionCalculator calculatorForQuantityType:v11 intervalCollection:collectionCopy options:16 mergeStrategy:0 computationMethod:0];

  v13 = [HDStatisticsCollectionCalculatorDefaultSourceOrderProvider alloc];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v15 = [(HDStatisticsCollectionCalculatorDefaultSourceOrderProvider *)v13 initWithProfile:WeakRetained quantityType:v11];
  sourceOrderProvider = self->_sourceOrderProvider;
  self->_sourceOrderProvider = v15;

  if (!self->_dataSource)
  {
    v17 = [HDWorkoutTrainingLoadDataSource alloc];
    v18 = objc_loadWeakRetained(&self->_profile);
    v19 = [(HDWorkoutTrainingLoadDataSource *)v17 initWithProfile:v18 quantityType:v11 filter:self->_filter];
    dataSource = self->_dataSource;
    self->_dataSource = v19;
  }

  [v12 setSourceOrderProvider:self->_sourceOrderProvider];

  return v12;
}

@end