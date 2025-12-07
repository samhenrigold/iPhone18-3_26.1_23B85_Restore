@interface HKSPSleepWidgetManager
+ (id)_widgetReloadDescription:(unint64_t)description;
+ (id)defaultRelevanceController;
+ (id)defaultTimelineControllers;
+ (id)widgetBundleIdentifierForCurrentDevice;
+ (id)widgetContainerBundleIdentifierForCurrentDevice;
+ (id)widgetKinds;
- (HKSPSleepWidgetManager)init;
- (HKSPSleepWidgetManager)initWithTimelineControllers:(id)controllers relevanceController:(id)controller;
- (HKSPSleepWidgetManager)initWithTimelineControllers:(id)controllers relevanceController:(id)controller timelineScheduler:(id)scheduler;
- (HKSPSleepWidgetManagerDelegate)delegate;
- (void)invalidateRelevances;
- (void)reloadWidgetsWithReason:(unint64_t)reason;
@end

@implementation HKSPSleepWidgetManager

- (HKSPSleepWidgetManager)init
{
  defaultTimelineControllers = [objc_opt_class() defaultTimelineControllers];
  defaultRelevanceController = [objc_opt_class() defaultRelevanceController];
  v5 = [(HKSPSleepWidgetManager *)self initWithTimelineControllers:defaultTimelineControllers relevanceController:defaultRelevanceController];

  return v5;
}

- (HKSPSleepWidgetManager)initWithTimelineControllers:(id)controllers relevanceController:(id)controller
{
  v6 = MEMORY[0x277D2C938];
  controllerCopy = controller;
  controllersCopy = controllers;
  v9 = [v6 serialDispatchQueueSchedulerWithName:@"com.apple.HKSPSleepWidgetManager.serial"];
  v10 = [(HKSPSleepWidgetManager *)self initWithTimelineControllers:controllersCopy relevanceController:controllerCopy timelineScheduler:v9];

  return v10;
}

- (HKSPSleepWidgetManager)initWithTimelineControllers:(id)controllers relevanceController:(id)controller timelineScheduler:(id)scheduler
{
  controllersCopy = controllers;
  controllerCopy = controller;
  schedulerCopy = scheduler;
  v16.receiver = self;
  v16.super_class = HKSPSleepWidgetManager;
  v12 = [(HKSPSleepWidgetManager *)&v16 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_timelineControllers, controllers);
    objc_storeStrong(&v13->_relevanceController, controller);
    objc_storeStrong(&v13->_chsScheduler, scheduler);
    v14 = v13;
  }

  return v13;
}

+ (id)defaultTimelineControllers
{
  widgetKinds = [self widgetKinds];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__HKSPSleepWidgetManager_defaultTimelineControllers__block_invoke;
  v6[3] = &__block_descriptor_40_e18__16__0__NSString_8l;
  v6[4] = self;
  v4 = [widgetKinds na_map:v6];

  return v4;
}

id __52__HKSPSleepWidgetManager_defaultTimelineControllers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getCHSTimelineControllerClass_softClass;
  v14 = getCHSTimelineControllerClass_softClass;
  if (!getCHSTimelineControllerClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getCHSTimelineControllerClass_block_invoke;
    v10[3] = &unk_279C75838;
    v10[4] = &v11;
    __getCHSTimelineControllerClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [v4 alloc];
  v7 = [*(a1 + 32) widgetBundleIdentifierForCurrentDevice];
  v8 = [v6 initWithExtensionBundleIdentifier:v7 kind:v3];

  return v8;
}

+ (id)defaultRelevanceController
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
    v6[3] = &unk_279C75838;
    v6[4] = &v7;
    __getCHSWidgetServiceClass_block_invoke(v6);
    v2 = v8[3];
  }

  v3 = v2;
  _Block_object_dispose(&v7, 8);
  sharedWidgetService = [v2 sharedWidgetService];

  return sharedWidgetService;
}

+ (id)widgetKinds
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB18];
  v10[0] = @"com.apple.health.SleepStageWidget";
  v10[1] = @"com.apple.health.SleepWidget";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v4 = [v2 arrayWithArray:v3];

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  sleepDetails = [features sleepDetails];

  if (sleepDetails)
  {
    [v4 addObject:@"com.apple.health.SleepScoreWidget"];
  }

  v8 = [v4 copy];

  return v8;
}

- (void)reloadWidgetsWithReason:(unint64_t)reason
{
  v5 = [objc_opt_class() _widgetReloadDescription:reason];
  v6 = [objc_opt_class() _shouldForceWidgetReload:reason];
  timelineControllers = self->_timelineControllers;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HKSPSleepWidgetManager_reloadWidgetsWithReason___block_invoke;
  v9[3] = &unk_279C757E8;
  v9[4] = self;
  v10 = v5;
  v11 = v6;
  v8 = v5;
  [(NSArray *)timelineControllers na_each:v9];
}

void __50__HKSPSleepWidgetManager_reloadWidgetsWithReason___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 kind];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

  if (WeakRetained && (v6 = objc_loadWeakRetained((*(a1 + 32) + 8)), v7 = [v6 shouldReloadWidgetOfKind:v4], v6, !v7))
  {
    v16 = HKSPLogForCategory(0x12uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = objc_opt_class();
      v26 = 2114;
      v27 = v4;
      v17 = v25;
      _os_log_impl(&dword_269A84000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] not reloading %{public}@ timeline", buf, 0x16u);
    }
  }

  else
  {
    v8 = HKSPLogForCategory(0x12uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = *(a1 + 48);
      *buf = 138544130;
      v25 = v9;
      v26 = 2114;
      v27 = v4;
      v28 = 2114;
      v29 = v10;
      v30 = 1024;
      v31 = v11;
      v12 = v9;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] reloading %{public}@ timeline (reason: %{public}@, forceReload: %d)", buf, 0x26u);
    }

    v13 = *(*(a1 + 32) + 32);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __50__HKSPSleepWidgetManager_reloadWidgetsWithReason___block_invoke_320;
    v18[3] = &unk_279C757C0;
    v23 = *(a1 + 48);
    v19 = v3;
    v14 = *(a1 + 40);
    v15 = *(a1 + 32);
    v20 = v14;
    v21 = v15;
    v22 = v4;
    [v13 performBlock:v18];

    v16 = v19;
  }
}

void __50__HKSPSleepWidgetManager_reloadWidgetsWithReason___block_invoke_320(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    [v3 reloadTimelineWithReason:v4];
  }

  else
  {
    [v3 reloadTimelineBudgetedWithReason:v4];
  }
  v5 = ;
  v6 = HKSPLogForCategory(0x12uLL);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 56);
      v13 = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v5;
      v10 = v8;
      _os_log_error_impl(&dword_269A84000, v7, OS_LOG_TYPE_ERROR, "[%{public}@] failed to reload %{public}@ timeline (error: %{public}@)", &v13, 0x20u);
LABEL_9:
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = *(a1 + 56);
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    v10 = v11;
    _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_INFO, "[%{public}@] successfully reloaded %{public}@ timeline", &v13, 0x16u);
    goto LABEL_9;
  }
}

- (void)invalidateRelevances
{
  widgetKinds = [objc_opt_class() widgetKinds];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke;
  v4[3] = &unk_279C75810;
  v4[4] = self;
  [widgetKinds na_each:v4];
}

void __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));

  if (WeakRetained && (v5 = objc_loadWeakRetained((*(a1 + 32) + 8)), v6 = [v5 shouldInvalidateRelevanceForWidgetOfKind:v3], v5, !v6))
  {
    v11 = HKSPLogForCategory(0x12uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v3;
      v12 = v16;
      _os_log_impl(&dword_269A84000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] not invalidating %{public}@ relevances", buf, 0x16u);
    }
  }

  else
  {
    v7 = HKSPLogForCategory(0x12uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v16 = objc_opt_class();
      v17 = 2114;
      v18 = v3;
      v8 = v16;
      _os_log_impl(&dword_269A84000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] invalidating %{public}@ relevances", buf, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 32);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke_323;
    v13[3] = &unk_279C73B58;
    v13[4] = v9;
    v14 = v3;
    [v10 performBlock:v13];
  }
}

void __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke_323(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 24);
  v5 = [objc_opt_class() widgetContainerBundleIdentifierForCurrentDevice];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke_2;
  v7[3] = &unk_279C74F60;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  [v4 invalidateRelevancesOfKind:v3 inBundle:v5 completion:v7];
}

void __46__HKSPSleepWidgetManager_invalidateRelevances__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory(0x12uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v11 = 138543874;
      v12 = v6;
      v13 = 2114;
      v14 = v7;
      v15 = 2114;
      v16 = v3;
      v8 = v6;
      _os_log_error_impl(&dword_269A84000, v5, OS_LOG_TYPE_ERROR, "[%{public}@] failed to invalidate %{public}@ relevances (error: %{public}@)", &v11, 0x20u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = *(a1 + 40);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v10;
    v8 = v9;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_INFO, "[%{public}@] successfully invalidated %{public}@ relevances", &v11, 0x16u);
    goto LABEL_6;
  }
}

+ (id)widgetBundleIdentifierForCurrentDevice
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_device = [mEMORY[0x277CCDD30] hksp_device];

  v4 = hksp_device > 6 || ((1 << hksp_device) & 0x7A) == 0;
  if (!v4 || hksp_device == 1000)
  {
    return @"com.apple.Health.Sleep.SleepWidgetExtension";
  }

  else
  {
    return @"com.apple.NanoSleep.watchkitapp.NanoSleepWidgetExtension";
  }
}

+ (id)widgetContainerBundleIdentifierForCurrentDevice
{
  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  hksp_device = [mEMORY[0x277CCDD30] hksp_device];

  if (hksp_device == 2)
  {
    v4 = @"com.apple.NanoSleep.watchkitapp";
  }

  else
  {
    v4 = @"com.apple.Health.Sleep";
  }

  return v4;
}

+ (id)_widgetReloadDescription:(unint64_t)description
{
  if (description > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_279C75890[description];
  }
}

- (HKSPSleepWidgetManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end