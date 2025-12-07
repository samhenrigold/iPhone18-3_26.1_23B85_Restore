@interface HDMedicationsWidgetSchedulingManager
+ (BOOL)_deviceRequiresInvalidationForWidgetRelevance;
+ (id)_reloadReasonsStringForReasons:(id)reasons;
+ (id)defaultMedicationsWidgetRelevanceController;
+ (id)defaultMedicationsWidgetTimelineControllerForProfile:(id)profile;
- (HDMedicationsWidgetSchedulingManager)initWithProfile:(id)profile;
- (void)_invalidateRelevancesWithReason:(id)reason;
- (void)_queue_reloadWidgets;
- (void)_reloadWidgetIfNecessaryWithDoseEvents:(id)events;
- (void)_runReloadOperationForReason:(int64_t)reason;
- (void)_startObservingMedicationChanges;
- (void)_stopObservingMedicationChanges;
- (void)dealloc;
- (void)profileDidBecomeReady:(id)ready;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor;
- (void)scheduleManager:(id)manager didAddOrModifySchedules:(id)schedules;
- (void)scheduleManager:(id)manager didPruneScheduleItems:(id)items;
- (void)scheduleManagerDidRescheduleMedications:(id)medications;
@end

@implementation HDMedicationsWidgetSchedulingManager

- (HDMedicationsWidgetSchedulingManager)initWithProfile:(id)profile
{
  profileCopy = profile;
  v20.receiver = self;
  v20.super_class = HDMedicationsWidgetSchedulingManager;
  v5 = [(HDMedicationsWidgetSchedulingManager *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKCreateSerialDispatchQueue();
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCA940]);
    queue_reloadReasons = v6->_queue_reloadReasons;
    v6->_queue_reloadReasons = v9;

    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    [WeakRetained registerProfileReadyObserver:v6 queue:v6->_queue];

    objc_initWeak(&location, v6);
    v12 = objc_alloc(MEMORY[0x277CCDD98]);
    v13 = v6->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __56__HDMedicationsWidgetSchedulingManager_initWithProfile___block_invoke;
    v17[3] = &unk_2796CD6F8;
    objc_copyWeak(&v18, &location);
    v14 = [v12 initWithMode:0 clock:1 queue:v13 delay:v17 block:1.0];
    reloadOperation = v6->_reloadOperation;
    v6->_reloadOperation = v14;

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __56__HDMedicationsWidgetSchedulingManager_initWithProfile___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_reloadWidgets];
}

- (void)dealloc
{
  [(HDMedicationsWidgetSchedulingManager *)self _stopObservingMedicationChanges];
  v3.receiver = self;
  v3.super_class = HDMedicationsWidgetSchedulingManager;
  [(HDMedicationsWidgetSchedulingManager *)&v3 dealloc];
}

+ (id)defaultMedicationsWidgetTimelineControllerForProfile:(id)profile
{
  profileCopy = profile;
  daemon = [profileCopy daemon];
  behavior = [daemon behavior];

  isAppleWatch = [behavior isAppleWatch];
  v7 = MEMORY[0x277D114D8];
  if (!isAppleWatch)
  {
    v7 = MEMORY[0x277D114D0];
  }

  v8 = *v7;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v9 = getCHSTimelineControllerClass_softClass;
  v18 = getCHSTimelineControllerClass_softClass;
  if (!getCHSTimelineControllerClass_softClass)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __getCHSTimelineControllerClass_block_invoke;
    v14[3] = &unk_2796CEC00;
    v14[4] = &v15;
    __getCHSTimelineControllerClass_block_invoke(v14);
    v9 = v16[3];
  }

  v10 = v9;
  _Block_object_dispose(&v15, 8);
  v11 = [v9 alloc];
  v12 = [v11 initWithExtensionBundleIdentifier:v8 kind:*MEMORY[0x277D114E0]];

  return v12;
}

+ (id)defaultMedicationsWidgetRelevanceController
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v2 = getCHSWidgetServiceClass_softClass;
  v10 = getCHSWidgetServiceClass_softClass;
  if (!getCHSWidgetServiceClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getCHSWidgetServiceClass_block_invoke;
    v6[3] = &unk_2796CEC00;
    v6[4] = &v7;
    __getCHSWidgetServiceClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  sharedWidgetService = [v2 sharedWidgetService];

  return sharedWidgetService;
}

- (void)profileDidBecomeReady:(id)ready
{
  v12 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = objc_opt_class();
    v5 = v11;
    _os_log_impl(&dword_25181C000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] profileDidBecomeReady", buf, 0xCu);
  }

  [(HDMedicationsWidgetSchedulingManager *)self _startObservingMedicationChanges];
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__HDMedicationsWidgetSchedulingManager_profileDidBecomeReady___block_invoke;
  v9[3] = &unk_2796CD998;
  v9[4] = self;
  [database performWhenDataProtectedByFirstUnlockIsAvailableOnQueue:queue block:v9];
}

uint64_t __62__HDMedicationsWidgetSchedulingManager_profileDidBecomeReady___block_invoke(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = HKLogMedication();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_25181C000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] first unlock occurred", &v6, 0xCu);
  }

  return [*(a1 + 32) _runReloadOperationForReason:0];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v9 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  _HKInitializeLogging();
  v6 = HKLogMedication();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25181C000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] dose event samples added", &v7, 0xCu);
  }

  [(HDMedicationsWidgetSchedulingManager *)self _reloadWidgetIfNecessaryWithDoseEvents:addedCopy];
}

- (void)samplesOfTypesWereRemoved:(id)removed anchor:(id)anchor
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCD658];
  removedCopy = removed;
  medicationDoseEventType = [v5 medicationDoseEventType];
  v8 = [removedCopy containsObject:medicationDoseEventType];

  if (v8)
  {
    _HKInitializeLogging();
    v9 = HKLogMedication();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] dose event samples removed", &v10, 0xCu);
    }

    [(HDMedicationsWidgetSchedulingManager *)self _runReloadOperationForReason:2];
  }
}

- (void)scheduleManagerDidRescheduleMedications:(id)medications
{
  v7 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogMedication();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25181C000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] medications rescheduled", &v5, 0xCu);
  }

  [(HDMedicationsWidgetSchedulingManager *)self _runReloadOperationForReason:3];
}

- (void)scheduleManager:(id)manager didPruneScheduleItems:(id)items
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] medication schedules pruned", &v6, 0xCu);
  }

  [(HDMedicationsWidgetSchedulingManager *)self _runReloadOperationForReason:4];
}

- (void)scheduleManager:(id)manager didAddOrModifySchedules:(id)schedules
{
  v8 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v5 = HKLogMedication();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_25181C000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] medication schedules added or updated", &v6, 0xCu);
  }

  [(HDMedicationsWidgetSchedulingManager *)self _runReloadOperationForReason:5];
}

- (void)_startObservingMedicationChanges
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
  [dataManager addObserver:self forDataType:medicationDoseEventType];

  v8 = objc_loadWeakRetained(&self->_profile);
  healthMedicationsProfileExtension = [v8 healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];
  [medicationScheduleManager registerObserver:self queue:0];
}

- (void)_stopObservingMedicationChanges
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  medicationDoseEventType = [MEMORY[0x277CCD658] medicationDoseEventType];
  [dataManager removeObserver:self forDataType:medicationDoseEventType];

  v8 = objc_loadWeakRetained(&self->_profile);
  healthMedicationsProfileExtension = [v8 healthMedicationsProfileExtension];
  medicationScheduleManager = [healthMedicationsProfileExtension medicationScheduleManager];
  [medicationScheduleManager unregisterObserver:self];
}

- (void)_runReloadOperationForReason:(int64_t)reason
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __69__HDMedicationsWidgetSchedulingManager__runReloadOperationForReason___block_invoke;
  v4[3] = &unk_2796CD770;
  v4[4] = self;
  v4[5] = reason;
  dispatch_async(queue, v4);
}

uint64_t __69__HDMedicationsWidgetSchedulingManager__runReloadOperationForReason___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v2 addObject:v3];

  v4 = *(*(a1 + 32) + 32);

  return [v4 execute];
}

- (void)_queue_reloadWidgets
{
  v3 = objc_opt_class();
  v4 = v3;
  v5 = [a2 description];
  *v12 = 138543618;
  *&v12[4] = v3;
  *&v12[12] = 2112;
  *&v12[14] = v5;
  OUTLINED_FUNCTION_0_7(&dword_25181C000, v6, v7, "[%{public}@] error while trying to reload widget: %@", v8, v9, v10, v11, *v12, *&v12[8], *&v12[16]);
}

+ (id)_reloadReasonsStringForReasons:(id)reasons
{
  reasonsCopy = reasons;
  allObjects = [reasonsCopy allObjects];
  v5 = [allObjects sortedArrayUsingSelector:sel_compare_];

  v6 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"medications ["];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__HDMedicationsWidgetSchedulingManager__reloadReasonsStringForReasons___block_invoke;
  v9[3] = &unk_2796CEB88;
  v10 = reasonsCopy;
  v7 = reasonsCopy;
  [v6 hk_appendComponentsJoinedByString:@" container:" componentGenerator:{v5, v9}];
  [v6 appendString:@"]"];

  return v6;
}

id __71__HDMedicationsWidgetSchedulingManager__reloadReasonsStringForReasons___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 integerValue];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  v6 = HDStringFromMedicationsWidgetSchedulingManagerReloadReason(v4);
  v7 = [*(a1 + 32) countForObject:v3];

  v8 = [v5 initWithFormat:@"%@: %d", v6, v7];

  return v8;
}

- (void)_reloadWidgetIfNecessaryWithDoseEvents:(id)events
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEA80];
  eventsCopy = events;
  currentCalendar = [v4 currentCalendar];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __79__HDMedicationsWidgetSchedulingManager__reloadWidgetIfNecessaryWithDoseEvents___block_invoke;
  v15[3] = &unk_2796CEBB0;
  v7 = currentCalendar;
  v16 = v7;
  v8 = [eventsCopy hk_containsObjectPassingTest:v15];

  _HKInitializeLogging();
  v9 = HKLogMedication();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v11 = objc_opt_class();
      *buf = 138543362;
      v18 = v11;
      v12 = v11;
      _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] recent dose events detected scheduling reload", buf, 0xCu);
    }

    [(HDMedicationsWidgetSchedulingManager *)self _runReloadOperationForReason:1];
  }

  else
  {
    if (v10)
    {
      v13 = objc_opt_class();
      *buf = 138543362;
      v18 = v13;
      v14 = v13;
      _os_log_impl(&dword_25181C000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] no recent dose events detected skipping reload", buf, 0xCu);
    }
  }
}

unint64_t __79__HDMedicationsWidgetSchedulingManager__reloadWidgetIfNecessaryWithDoseEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [v3 startDate];
    if ([v4 isDateInToday:v5])
    {
      LODWORD(v6) = 1;
    }

    else
    {
      v6 = *(a1 + 32);
      v7 = [v3 endDate];
      LODWORD(v6) = [v6 isDateInToday:v7];
    }

    if ([v3 logOrigin] == 2)
    {
      v6 = v6;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_invalidateRelevancesWithReason:(id)reason
{
  reasonCopy = reason;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  healthMedicationsProfileExtension = [WeakRetained healthMedicationsProfileExtension];
  createMedicationsWidgetRelevanceController = [healthMedicationsProfileExtension createMedicationsWidgetRelevanceController];

  v8 = *MEMORY[0x277D114E0];
  v9 = *MEMORY[0x277CCC580];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HDMedicationsWidgetSchedulingManager__invalidateRelevancesWithReason___block_invoke;
  v11[3] = &unk_2796CEBD8;
  v11[4] = self;
  v12 = reasonCopy;
  v10 = reasonCopy;
  [createMedicationsWidgetRelevanceController invalidateRelevancesOfKind:v8 inBundle:v9 completion:v11];
}

void __72__HDMedicationsWidgetSchedulingManager__invalidateRelevancesWithReason___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = (a1 + 32);
  v5 = MEMORY[0x253084B70](*(*(a1 + 32) + 40));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, *(a1 + 40), v3);
  }

  _HKInitializeLogging();
  v7 = HKLogMedication();
  v8 = v7;
  if (v3)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __72__HDMedicationsWidgetSchedulingManager__invalidateRelevancesWithReason___block_invoke_cold_1(v4, v3);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = objc_opt_class();
    v9 = v11;
    _os_log_impl(&dword_25181C000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] successfully invalidated relevances", &v10, 0xCu);
  }
}

+ (BOOL)_deviceRequiresInvalidationForWidgetRelevance
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];

  return isAppleWatch;
}

void __72__HDMedicationsWidgetSchedulingManager__invalidateRelevancesWithReason___block_invoke_cold_1(void *a1, uint64_t a2)
{
  *v10 = 138543618;
  *&v10[4] = objc_opt_class();
  *&v10[12] = 2114;
  *&v10[14] = a2;
  v3 = *&v10[4];
  OUTLINED_FUNCTION_0_7(&dword_25181C000, v4, v5, "[%{public}@] error invalidating relevances: %{public}@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

@end