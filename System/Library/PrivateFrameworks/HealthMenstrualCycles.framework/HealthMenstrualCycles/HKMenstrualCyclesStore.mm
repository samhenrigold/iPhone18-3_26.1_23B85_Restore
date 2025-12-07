@interface HKMenstrualCyclesStore
- (BOOL)setDeviationDetectedIfNeededForDeviations:(id)deviations;
- (HKCloudSyncControl)cloudSyncControl;
- (HKMenstrualCyclesStore)initWithHealthStore:(id)store;
- (NSDate)cycleFactorsLastReviewedDate;
- (NSNumber)lastMenstrualPeriodDismissalDay;
- (NSNumber)unconfirmedDeviationDismissalDay;
- (NSNumber)unconfirmedDeviationSubmissionDay;
- (id)_appProtectedSyncedKeyValueDomain;
- (id)_deviationDetectionAnalyticsDomain;
- (id)_syncedProtectedKeyValueDomain;
- (id)deviationDetectedIndicesForDeviationType:(int64_t)type error:(id *)error;
- (void)_triggerImmediateSyncWithReason:(id)reason;
- (void)confirmAndSaveDeviationWithMenstrualFlowByDayIndex:(id)index intermenstrualBleedingByDayIndex:(id)dayIndex addedCycleFactors:(id)factors initialAnalysisWindow:(id)window completion:(id)completion;
- (void)fetchCurrentAnalysisWithCompletion:(id)completion;
- (void)fetchCurrentPregnancyModelWithCompletion:(id)completion;
- (void)fetchScheduledNotificationsWithCompletion:(id)completion;
- (void)saveBleedingFlow:(int64_t)flow forBleedingType:(int64_t)type dayIndex:(int64_t)index completion:(id)completion;
- (void)saveBleedingFlowByDayIndex:(id)index forBleedingType:(int64_t)type completion:(id)completion;
- (void)saveDaySummaries:(id)summaries canOverrideCreationDate:(BOOL)date completion:(id)completion;
- (void)saveDaySummary:(id)summary completion:(id)completion;
- (void)saveLastMenstrualPeriodWithDayIndexRange:(id)range completion:(id)completion;
- (void)saveMenstrualFlow:(int64_t)flow dayIndex:(int64_t)index updateAdjacentDays:(BOOL)days completion:(id)completion;
- (void)saveMenstrualFlowByDayIndex:(id)index completion:(id)completion;
- (void)savePeriodEndedOnDayIndex:(int64_t)index completion:(id)completion;
- (void)savePeriodNotYetEndedWithCompletion:(id)completion;
- (void)savePeriodNotYetStartedWithCompletion:(id)completion;
- (void)savePeriodStartedOnDayIndex:(int64_t)index completion:(id)completion;
- (void)savePeriodStartedOnDayIndex:(int64_t)index endedOnDayIndex:(int64_t)dayIndex completion:(id)completion;
- (void)setCycleFactorsLastReviewedDate:(id)date;
- (void)setIsEligibleForCycleFactorsReminder:(BOOL)reminder;
- (void)setLastMenstrualPeriodDismissalDay:(id)day;
- (void)setUnconfirmedDeviationDismissalDay:(id)day;
- (void)setUnconfirmedDeviationSubmissionDay:(id)day;
- (void)triggerAnalysisForDebugReason:(id)reason completion:(id)completion;
@end

@implementation HKMenstrualCyclesStore

- (HKMenstrualCyclesStore)initWithHealthStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = HKMenstrualCyclesStore;
  v6 = [(HKMenstrualCyclesStore *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    v8 = objc_alloc(MEMORY[0x277CCDAA0]);
    uUID = [MEMORY[0x277CCAD78] UUID];
    v10 = [v8 initWithHealthStore:storeCopy taskIdentifier:@"HKMCPluginServer" exportedObject:v7 taskUUID:uUID];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v10;

    [(HKTaskServerProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (HKCloudSyncControl)cloudSyncControl
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_cloudSyncControl)
  {
    v3 = [objc_alloc(MEMORY[0x277CCD128]) initWithHealthStore:selfCopy->_healthStore];
    cloudSyncControl = selfCopy->_cloudSyncControl;
    selfCopy->_cloudSyncControl = v3;
  }

  objc_sync_exit(selfCopy);

  v5 = selfCopy->_cloudSyncControl;

  return v5;
}

- (void)fetchScheduledNotificationsWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __68__HKMenstrualCyclesStore_fetchScheduledNotificationsWithCompletion___block_invoke;
  v9[3] = &unk_2796D49F8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HKMenstrualCyclesStore_fetchScheduledNotificationsWithCompletion___block_invoke_2;
  v7[3] = &unk_2796D4960;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)saveDaySummary:(id)summary completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  summaryCopy = summary;
  v6 = MEMORY[0x277CBEA60];
  completionCopy = completion;
  summaryCopy2 = summary;
  v9 = [v6 arrayWithObjects:&summaryCopy count:1];

  [(HKMenstrualCyclesStore *)self saveDaySummaries:v9 completion:completionCopy, summaryCopy, v11];
}

- (void)saveDaySummaries:(id)summaries canOverrideCreationDate:(BOOL)date completion:(id)completion
{
  summariesCopy = summaries;
  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__HKMenstrualCyclesStore_saveDaySummaries_canOverrideCreationDate_completion___block_invoke;
  v15[3] = &unk_2796D4A20;
  v16 = summariesCopy;
  dateCopy = date;
  v17 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__HKMenstrualCyclesStore_saveDaySummaries_canOverrideCreationDate_completion___block_invoke_2;
  v13[3] = &unk_2796D4960;
  v14 = v17;
  v11 = v17;
  v12 = summariesCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)saveMenstrualFlow:(int64_t)flow dayIndex:(int64_t)index updateAdjacentDays:(BOOL)days completion:(id)completion
{
  v32 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = v13;
    v15 = HKSensitiveLogItem();
    *buf = 138543874;
    v27 = v13;
    v28 = 2112;
    v29 = v15;
    v30 = 2048;
    flowCopy = flow;
    _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving a %@ value of %ld", buf, 0x20u);
  }

  v16 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __83__HKMenstrualCyclesStore_saveMenstrualFlow_dayIndex_updateAdjacentDays_completion___block_invoke;
  v21[3] = &unk_2796D4A48;
  flowCopy2 = flow;
  indexCopy = index;
  daysCopy = days;
  v22 = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __83__HKMenstrualCyclesStore_saveMenstrualFlow_dayIndex_updateAdjacentDays_completion___block_invoke_2;
  v19[3] = &unk_2796D4960;
  v20 = v22;
  v18 = v22;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v21 errorHandler:v19];
}

- (void)saveBleedingFlow:(int64_t)flow forBleedingType:(int64_t)type dayIndex:(int64_t)index completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = *MEMORY[0x277CCC2E8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_DEFAULT))
  {
    log = v11;
    v12 = objc_opt_class();
    v22 = v12;
    v13 = HKSensitiveLogItem();
    v14 = HKSensitiveLogItem();
    [MEMORY[0x277CCABB0] numberWithInteger:type];
    v16 = v15 = index;
    v17 = HKSensitiveLogItem();
    *buf = 138544386;
    v31 = v12;
    v32 = 2112;
    v33 = v13;
    v34 = 2048;
    flowCopy = flow;
    v36 = 2112;
    v37 = v14;
    v38 = 2112;
    v39 = v17;
    _os_log_impl(&dword_2518FC000, log, OS_LOG_TYPE_DEFAULT, "[%{public}@] Saving a %@ value of %ld for %@ %@", buf, 0x34u);

    index = v15;
  }

  v18 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __79__HKMenstrualCyclesStore_saveBleedingFlow_forBleedingType_dayIndex_completion___block_invoke;
  v25[3] = &unk_2796D4A70;
  flowCopy2 = flow;
  typeCopy = type;
  indexCopy = index;
  v26 = v18;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __79__HKMenstrualCyclesStore_saveBleedingFlow_forBleedingType_dayIndex_completion___block_invoke_2;
  v23[3] = &unk_2796D4960;
  v24 = v26;
  v20 = v26;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v25 errorHandler:v23];
}

- (void)saveBleedingFlowByDayIndex:(id)index forBleedingType:(int64_t)type completion:(id)completion
{
  indexCopy = index;
  v9 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__HKMenstrualCyclesStore_saveBleedingFlowByDayIndex_forBleedingType_completion___block_invoke;
  v15[3] = &unk_2796D4A98;
  v16 = indexCopy;
  typeCopy = type;
  v17 = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__HKMenstrualCyclesStore_saveBleedingFlowByDayIndex_forBleedingType_completion___block_invoke_2;
  v13[3] = &unk_2796D4960;
  v14 = v17;
  v11 = v17;
  v12 = indexCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v13];
}

- (void)saveMenstrualFlowByDayIndex:(id)index completion:(id)completion
{
  indexCopy = index;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __65__HKMenstrualCyclesStore_saveMenstrualFlowByDayIndex_completion___block_invoke;
  v13[3] = &unk_2796D4AC0;
  v14 = indexCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HKMenstrualCyclesStore_saveMenstrualFlowByDayIndex_completion___block_invoke_2;
  v11[3] = &unk_2796D4960;
  v12 = v15;
  v9 = v15;
  v10 = indexCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)fetchCurrentAnalysisWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __61__HKMenstrualCyclesStore_fetchCurrentAnalysisWithCompletion___block_invoke;
  v9[3] = &unk_2796D49F8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__HKMenstrualCyclesStore_fetchCurrentAnalysisWithCompletion___block_invoke_2;
  v7[3] = &unk_2796D4960;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)fetchCurrentPregnancyModelWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __67__HKMenstrualCyclesStore_fetchCurrentPregnancyModelWithCompletion___block_invoke;
  v9[3] = &unk_2796D49F8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__HKMenstrualCyclesStore_fetchCurrentPregnancyModelWithCompletion___block_invoke_2;
  v7[3] = &unk_2796D4960;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)confirmAndSaveDeviationWithMenstrualFlowByDayIndex:(id)index intermenstrualBleedingByDayIndex:(id)dayIndex addedCycleFactors:(id)factors initialAnalysisWindow:(id)window completion:(id)completion
{
  var1 = window.var1;
  var0 = window.var0;
  indexCopy = index;
  dayIndexCopy = dayIndex;
  factorsCopy = factors;
  v16 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueObjectHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __161__HKMenstrualCyclesStore_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke;
  v24[3] = &unk_2796D4AE8;
  v25 = indexCopy;
  v26 = dayIndexCopy;
  v27 = factorsCopy;
  v29 = var0;
  v30 = var1;
  v28 = v16;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __161__HKMenstrualCyclesStore_confirmAndSaveDeviationWithMenstrualFlowByDayIndex_intermenstrualBleedingByDayIndex_addedCycleFactors_initialAnalysisWindow_completion___block_invoke_2;
  v22[3] = &unk_2796D4960;
  v23 = v28;
  v18 = v28;
  v19 = factorsCopy;
  v20 = dayIndexCopy;
  v21 = indexCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v24 errorHandler:v22];
}

- (void)saveLastMenstrualPeriodWithDayIndexRange:(id)range completion:(id)completion
{
  var1 = range.var1;
  var0 = range.var0;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__HKMenstrualCyclesStore_saveLastMenstrualPeriodWithDayIndexRange_completion___block_invoke;
  v12[3] = &unk_2796D4B10;
  v14 = var0;
  v15 = var1;
  v13 = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __78__HKMenstrualCyclesStore_saveLastMenstrualPeriodWithDayIndexRange_completion___block_invoke_2;
  v10[3] = &unk_2796D4960;
  v11 = v13;
  v9 = v13;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v12 errorHandler:v10];
}

- (void)savePeriodNotYetStartedWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __64__HKMenstrualCyclesStore_savePeriodNotYetStartedWithCompletion___block_invoke;
  v9[3] = &unk_2796D49F8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HKMenstrualCyclesStore_savePeriodNotYetStartedWithCompletion___block_invoke_2;
  v7[3] = &unk_2796D4960;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)savePeriodNotYetEndedWithCompletion:(id)completion
{
  v4 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HKMenstrualCyclesStore_savePeriodNotYetEndedWithCompletion___block_invoke;
  v9[3] = &unk_2796D49F8;
  v10 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__HKMenstrualCyclesStore_savePeriodNotYetEndedWithCompletion___block_invoke_2;
  v7[3] = &unk_2796D4960;
  v8 = v10;
  v6 = v10;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v9 errorHandler:v7];
}

- (void)savePeriodStartedOnDayIndex:(int64_t)index completion:(id)completion
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__HKMenstrualCyclesStore_savePeriodStartedOnDayIndex_completion___block_invoke;
  v11[3] = &unk_2796D4B38;
  indexCopy = index;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __65__HKMenstrualCyclesStore_savePeriodStartedOnDayIndex_completion___block_invoke_2;
  v9[3] = &unk_2796D4960;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)savePeriodStartedOnDayIndex:(int64_t)index endedOnDayIndex:(int64_t)dayIndex completion:(id)completion
{
  v8 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __81__HKMenstrualCyclesStore_savePeriodStartedOnDayIndex_endedOnDayIndex_completion___block_invoke;
  v13[3] = &unk_2796D4B10;
  indexCopy = index;
  dayIndexCopy = dayIndex;
  v14 = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __81__HKMenstrualCyclesStore_savePeriodStartedOnDayIndex_endedOnDayIndex_completion___block_invoke_2;
  v11[3] = &unk_2796D4960;
  v12 = v14;
  v10 = v14;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (void)savePeriodEndedOnDayIndex:(int64_t)index completion:(id)completion
{
  v6 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HKMenstrualCyclesStore_savePeriodEndedOnDayIndex_completion___block_invoke;
  v11[3] = &unk_2796D4B38;
  indexCopy = index;
  v12 = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__HKMenstrualCyclesStore_savePeriodEndedOnDayIndex_completion___block_invoke_2;
  v9[3] = &unk_2796D4960;
  v10 = v12;
  v8 = v12;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v11 errorHandler:v9];
}

- (void)triggerAnalysisForDebugReason:(id)reason completion:(id)completion
{
  reasonCopy = reason;
  v7 = [(HKTaskServerProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completion];
  proxyProvider = self->_proxyProvider;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __67__HKMenstrualCyclesStore_triggerAnalysisForDebugReason_completion___block_invoke;
  v13[3] = &unk_2796D4AC0;
  v14 = reasonCopy;
  v15 = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__HKMenstrualCyclesStore_triggerAnalysisForDebugReason_completion___block_invoke_2;
  v11[3] = &unk_2796D4960;
  v12 = v15;
  v9 = v15;
  v10 = reasonCopy;
  [(HKTaskServerProxyProvider *)proxyProvider fetchProxyWithHandler:v13 errorHandler:v11];
}

- (NSDate)cycleFactorsLastReviewedDate
{
  v18 = *MEMORY[0x277D85DE8];
  _appProtectedSyncedKeyValueDomain = [(HKMenstrualCyclesStore *)self _appProtectedSyncedKeyValueDomain];
  v11 = 0;
  v3 = [_appProtectedSyncedKeyValueDomain dateForKey:@"CycleFactorsLastReviewedDate" error:&v11];
  v4 = v11;

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
      v9 = objc_opt_class();
      *buf = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = @"CycleFactorsLastReviewedDate";
      v16 = 2114;
      v17 = v4;
      v10 = v9;
      _os_log_error_impl(&dword_2518FC000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", buf, 0x20u);
    }
  }

  return v3;
}

- (void)setCycleFactorsLastReviewedDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  _appProtectedSyncedKeyValueDomain = [(HKMenstrualCyclesStore *)self _appProtectedSyncedKeyValueDomain];
  v15 = 0;
  [_appProtectedSyncedKeyValueDomain setDate:dateCopy forKey:@"CycleFactorsLastReviewedDate" error:&v15];
  v6 = v15;

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E8];
  v8 = *MEMORY[0x277CCC2E8];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_opt_class();
      *buf = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = @"CycleFactorsLastReviewedDate";
      v20 = 2114;
      v21 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7;
      v13 = objc_opt_class();
      *buf = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = @"CycleFactorsLastReviewedDate";
      v20 = 2112;
      v21 = dateCopy;
      v14 = v13;
      _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %{public}@: %@", buf, 0x20u);
    }

    [(HKMenstrualCyclesStore *)self _triggerImmediateSyncWithReason:@"setCycleFactorsLastReviewedDate"];
  }
}

- (void)setIsEligibleForCycleFactorsReminder:(BOOL)reminder
{
  reminderCopy = reminder;
  v24 = *MEMORY[0x277D85DE8];
  _appProtectedSyncedKeyValueDomain = [(HKMenstrualCyclesStore *)self _appProtectedSyncedKeyValueDomain];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:reminderCopy];
  v17 = 0;
  [_appProtectedSyncedKeyValueDomain setNumber:v5 forKey:@"HKMCCycleFactorsEligibilityState" error:&v17];
  v6 = v17;

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E8];
  v8 = *MEMORY[0x277CCC2E8];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_opt_class();
      *buf = 138543874;
      v19 = v10;
      v20 = 2114;
      v21 = @"HKMCCycleFactorsEligibilityState";
      v22 = 2114;
      v23 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v7;
    v13 = objc_opt_class();
    v14 = MEMORY[0x277CCABB0];
    v15 = v13;
    v16 = [v14 numberWithBool:reminderCopy];
    *buf = 138543874;
    v19 = v13;
    v20 = 2114;
    v21 = @"HKMCCycleFactorsEligibilityState";
    v22 = 2112;
    v23 = v16;
    _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %{public}@: %@", buf, 0x20u);
  }
}

- (NSNumber)lastMenstrualPeriodDismissalDay
{
  v18 = *MEMORY[0x277D85DE8];
  _syncedProtectedKeyValueDomain = [(HKMenstrualCyclesStore *)self _syncedProtectedKeyValueDomain];
  v11 = 0;
  v3 = [_syncedProtectedKeyValueDomain numberForKey:@"LastMenstrualPeriodDismissalDefaultsKey" error:&v11];
  v4 = v11;

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
      v9 = objc_opt_class();
      *buf = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = @"LastMenstrualPeriodDismissalDefaultsKey";
      v16 = 2114;
      v17 = v4;
      v10 = v9;
      _os_log_error_impl(&dword_2518FC000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", buf, 0x20u);
    }
  }

  return v3;
}

- (void)setLastMenstrualPeriodDismissalDay:(id)day
{
  v22 = *MEMORY[0x277D85DE8];
  dayCopy = day;
  _syncedProtectedKeyValueDomain = [(HKMenstrualCyclesStore *)self _syncedProtectedKeyValueDomain];
  v15 = 0;
  [_syncedProtectedKeyValueDomain setNumber:dayCopy forKey:@"LastMenstrualPeriodDismissalDefaultsKey" error:&v15];
  v6 = v15;

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E8];
  v8 = *MEMORY[0x277CCC2E8];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_opt_class();
      *buf = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = @"LastMenstrualPeriodDismissalDefaultsKey";
      v20 = 2114;
      v21 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7;
      v13 = objc_opt_class();
      *buf = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = @"LastMenstrualPeriodDismissalDefaultsKey";
      v20 = 2112;
      v21 = dayCopy;
      v14 = v13;
      _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %{public}@: %@", buf, 0x20u);
    }

    [(HKMenstrualCyclesStore *)self _triggerImmediateSyncWithReason:@"setLastMenstrualPeriodDismissalDay"];
  }
}

- (id)deviationDetectedIndicesForDeviationType:(int64_t)type error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = HKMCDeviationDetectionAnalyticsKeyFromDeviationType(type);
  _deviationDetectionAnalyticsDomain = [(HKMenstrualCyclesStore *)self _deviationDetectionAnalyticsDomain];
  v8 = [_deviationDetectionAnalyticsDomain propertyListValueForKey:v6 error:error];

  if (!error || v8)
  {
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = objc_alloc_init(MEMORY[0x277CBEA60]);

      v8 = v10;
    }
  }

  else
  {
    _HKInitializeLogging();
    v9 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v12 = v9;
      v13 = objc_opt_class();
      v14 = *error;
      v16 = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = v6;
      v20 = 2114;
      v21 = v14;
      v15 = v13;
      _os_log_error_impl(&dword_2518FC000, v12, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", &v16, 0x20u);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)setDeviationDetectedIfNeededForDeviations:(id)deviations
{
  v55 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = deviations;
  v4 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (!v4)
  {
    v7 = 0;
    goto LABEL_28;
  }

  v6 = v4;
  v7 = 0;
  v8 = 0;
  v9 = *v45;
  *&v5 = 138543874;
  v38 = v5;
  while (2)
  {
    v10 = 0;
    v40 = v6;
    do
    {
      if (*v45 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v44 + 1) + 8 * v10);
      v12 = MEMORY[0x277CCABB0];
      days = [v11 days];
      if (v14 <= 0)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14 + days - 1;
      }

      v16 = [v12 numberWithInteger:v15];
      v17 = HKMCDeviationDetectionAnalyticsKeyFromDeviationType([v11 type]);
      type = [v11 type];
      v43 = v8;
      v19 = [(HKMenstrualCyclesStore *)self deviationDetectedIndicesForDeviationType:type error:&v43];
      v20 = v43;

      if (v20)
      {
        _HKInitializeLogging();
        v30 = *MEMORY[0x277CCC2E8];
        if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
        {
          v32 = v30;
          v33 = objc_opt_class();
          *buf = v38;
          v49 = v33;
          v50 = 2114;
          v51 = v17;
          v52 = 2114;
          v53 = v20;
          v34 = v33;
          _os_log_error_impl(&dword_2518FC000, v32, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", buf, 0x20u);
        }

        v8 = v20;
        goto LABEL_26;
      }

      if ([v19 containsObject:v16])
      {
        v8 = 0;
        goto LABEL_16;
      }

      v39 = v7;
      v21 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v19];
      [v21 addObject:v16];
      selfCopy = self;
      _deviationDetectionAnalyticsDomain = [(HKMenstrualCyclesStore *)self _deviationDetectionAnalyticsDomain];
      v42 = 0;
      v24 = [_deviationDetectionAnalyticsDomain setPropertyListValue:v21 forKey:v17 error:&v42];
      v8 = v42;

      _HKInitializeLogging();
      v25 = *MEMORY[0x277CCC2E8];
      v26 = *MEMORY[0x277CCC2E8];
      if (!v24)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v35 = v25;
          v36 = objc_opt_class();
          *buf = v38;
          v49 = v36;
          v50 = 2114;
          v51 = v17;
          v52 = 2114;
          v53 = v8;
          v37 = v36;
          _os_log_error_impl(&dword_2518FC000, v35, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting %{public}@: %{public}@", buf, 0x20u);
        }

        v7 = v39;
LABEL_26:

        goto LABEL_27;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v25;
        v28 = objc_opt_class();
        *buf = v38;
        v49 = v28;
        v50 = 2114;
        v51 = v17;
        v52 = 2112;
        v53 = v21;
        v29 = v28;
        _os_log_impl(&dword_2518FC000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %{public}@: %@", buf, 0x20u);
      }

      v7 = 1;
      self = selfCopy;
      v6 = v40;
LABEL_16:

      ++v10;
    }

    while (v6 != v10);
    v6 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_27:

LABEL_28:
  return v7 & 1;
}

- (NSNumber)unconfirmedDeviationDismissalDay
{
  v18 = *MEMORY[0x277D85DE8];
  _syncedProtectedKeyValueDomain = [(HKMenstrualCyclesStore *)self _syncedProtectedKeyValueDomain];
  v11 = 0;
  v3 = [_syncedProtectedKeyValueDomain numberForKey:@"UnconfirmedDeviationDismissalDayIndex" error:&v11];
  v4 = v11;

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
      v9 = objc_opt_class();
      *buf = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = @"UnconfirmedDeviationDismissalDayIndex";
      v16 = 2114;
      v17 = v4;
      v10 = v9;
      _os_log_error_impl(&dword_2518FC000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", buf, 0x20u);
    }
  }

  return v3;
}

- (void)setUnconfirmedDeviationDismissalDay:(id)day
{
  v22 = *MEMORY[0x277D85DE8];
  dayCopy = day;
  _syncedProtectedKeyValueDomain = [(HKMenstrualCyclesStore *)self _syncedProtectedKeyValueDomain];
  v15 = 0;
  [_syncedProtectedKeyValueDomain setNumber:dayCopy forKey:@"UnconfirmedDeviationDismissalDayIndex" error:&v15];
  v6 = v15;

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E8];
  v8 = *MEMORY[0x277CCC2E8];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_opt_class();
      *buf = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = @"UnconfirmedDeviationDismissalDayIndex";
      v20 = 2114;
      v21 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting %{public}@: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v7;
      v13 = objc_opt_class();
      *buf = 138543874;
      v17 = v13;
      v18 = 2114;
      v19 = @"UnconfirmedDeviationDismissalDayIndex";
      v20 = 2112;
      v21 = dayCopy;
      v14 = v13;
      _os_log_impl(&dword_2518FC000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %{public}@: %@", buf, 0x20u);
    }

    [(HKMenstrualCyclesStore *)self triggerAnalysisForDebugReason:@"deviation dismissal" completion:&__block_literal_global];
    [(HKMenstrualCyclesStore *)self _triggerImmediateSyncWithReason:@"setUnconfirmedDeviationDismissalDay"];
  }
}

- (NSNumber)unconfirmedDeviationSubmissionDay
{
  v18 = *MEMORY[0x277D85DE8];
  _deviationDetectionAnalyticsDomain = [(HKMenstrualCyclesStore *)self _deviationDetectionAnalyticsDomain];
  v11 = 0;
  v3 = [_deviationDetectionAnalyticsDomain numberForKey:@"UnconfirmedDeviationSubmissionDayIndex" error:&v11];
  v4 = v11;

  if (v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC2E8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2E8], OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
      v9 = objc_opt_class();
      *buf = 138543874;
      v13 = v9;
      v14 = 2114;
      v15 = @"UnconfirmedDeviationSubmissionDayIndex";
      v16 = 2114;
      v17 = v4;
      v10 = v9;
      _os_log_error_impl(&dword_2518FC000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Error retrieving %{public}@: %{public}@", buf, 0x20u);
    }
  }

  return v3;
}

- (void)setUnconfirmedDeviationSubmissionDay:(id)day
{
  v20 = *MEMORY[0x277D85DE8];
  dayCopy = day;
  _deviationDetectionAnalyticsDomain = [(HKMenstrualCyclesStore *)self _deviationDetectionAnalyticsDomain];
  v13 = 0;
  [_deviationDetectionAnalyticsDomain setNumber:dayCopy forKey:@"UnconfirmedDeviationSubmissionDayIndex" error:&v13];
  v6 = v13;

  _HKInitializeLogging();
  v7 = *MEMORY[0x277CCC2E8];
  v8 = *MEMORY[0x277CCC2E8];
  if (v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v7;
      v10 = objc_opt_class();
      *buf = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = @"UnconfirmedDeviationSubmissionDayIndex";
      v18 = 2114;
      v19 = v6;
      v11 = v10;
      _os_log_error_impl(&dword_2518FC000, v9, OS_LOG_TYPE_ERROR, "[%{public}@] Error setting %{public}@: %{public}@", buf, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v7;
    v12 = objc_opt_class();
    *buf = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = @"UnconfirmedDeviationSubmissionDayIndex";
    v18 = 2112;
    v19 = dayCopy;
    v11 = v12;
    _os_log_impl(&dword_2518FC000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] Set %{public}@: %@", buf, 0x20u);
    goto LABEL_6;
  }
}

- (void)_triggerImmediateSyncWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  cloudSyncControl = [(HKMenstrualCyclesStore *)self cloudSyncControl];
  v7 = [objc_alloc(MEMORY[0x277CCD140]) initWithChangesSyncRequest:v5];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HKMenstrualCyclesStore__triggerImmediateSyncWithReason___block_invoke;
  v9[3] = &unk_2796D4B80;
  v9[4] = self;
  v10 = reasonCopy;
  v8 = reasonCopy;
  [cloudSyncControl syncWithRequest:v7 reason:v8 completion:v9];
}

void __58__HKMenstrualCyclesStore__triggerImmediateSyncWithReason___block_invoke(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2E8];
  v7 = *MEMORY[0x277CCC2E8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v12 = 138543618;
      v13 = v9;
      v14 = 2114;
      v15 = v10;
      v11 = v9;
      _os_log_impl(&dword_2518FC000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully requested sync after %{public}@", &v12, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __58__HKMenstrualCyclesStore__triggerImmediateSyncWithReason___block_invoke_cold_1(a1, v6, v5);
  }
}

- (id)_syncedProtectedKeyValueDomain
{
  v3 = objc_alloc(MEMORY[0x277CCD570]);
  healthStore = [(HKMenstrualCyclesStore *)self healthStore];
  v5 = [v3 initWithCategory:0 domainName:@"com.apple.private.health.menstrual-cycles" healthStore:healthStore];

  return v5;
}

- (id)_appProtectedSyncedKeyValueDomain
{
  v3 = objc_alloc(MEMORY[0x277CCD570]);
  healthStore = [(HKMenstrualCyclesStore *)self healthStore];
  v5 = [v3 initWithCategory:2 domainName:@"com.apple.private.health.menstrual-cycles" healthStore:healthStore];

  return v5;
}

- (id)_deviationDetectionAnalyticsDomain
{
  v3 = objc_alloc(MEMORY[0x277CCD570]);
  healthStore = [(HKMenstrualCyclesStore *)self healthStore];
  v5 = [v3 initWithCategory:1 domainName:@"com.apple.private.health.menstrual-cycles.deviation-detection-analytics" healthStore:healthStore];

  return v5;
}

void __58__HKMenstrualCyclesStore__triggerImmediateSyncWithReason___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = objc_opt_class();
  v7 = *(a1 + 40);
  v9 = 138543874;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = a3;
  v8 = v6;
  _os_log_error_impl(&dword_2518FC000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] Unsuccessfully requested sync after %{public}@: %{public}@", &v9, 0x20u);
}

@end