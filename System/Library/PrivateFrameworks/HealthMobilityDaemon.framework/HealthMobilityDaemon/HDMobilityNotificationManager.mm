@interface HDMobilityNotificationManager
- (HDMobilityNotificationManager)initWithProfile:(id)profile walkingSteadinessAvailabilityManager:(id)manager;
- (void)_queue_showNotificationForLocalSteadinessEvent:(id)event completion:(id)completion;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)samplesAdded:(id)added anchor:(id)anchor;
@end

@implementation HDMobilityNotificationManager

- (HDMobilityNotificationManager)initWithProfile:(id)profile walkingSteadinessAvailabilityManager:(id)manager
{
  v26 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  managerCopy = manager;
  v23.receiver = self;
  v23.super_class = HDMobilityNotificationManager;
  v8 = [(HDMobilityNotificationManager *)&v23 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_profile, profileCopy);
    v10 = HKCreateSerialDispatchQueue();
    queue = v9->_queue;
    v9->_queue = v10;

    WeakRetained = objc_loadWeakRetained(&v9->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerForDaemonReady:v9];

    v14 = objc_alloc_init(MEMORY[0x277D11AB0]);
    analyticsManager = v9->_analyticsManager;
    v9->_analyticsManager = v14;

    v16 = [objc_alloc(MEMORY[0x277CCD460]) initWithFeatureAvailabilityProviding:managerCopy healthDataSource:profileCopy countryCodeSource:0];
    walkingSteadinessFeatureStatusManager = v9->_walkingSteadinessFeatureStatusManager;
    v9->_walkingSteadinessFeatureStatusManager = v16;

    _HKInitializeLogging();
    v18 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      v19 = v18;
      v20 = objc_opt_class();
      *buf = 138543362;
      v25 = v20;
      _os_log_impl(&dword_251962000, v19, OS_LOG_TYPE_DEFAULT, "[%{public}@] was created", buf, 0xCu);
    }

    v21 = v9;
  }

  return v9;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v3 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 138543362;
    v10 = objc_opt_class();
    _os_log_impl(&dword_251962000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] stop observing walking steadiness events", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  v7 = HKMobilityWalkingSteadinessEventType();
  [dataManager removeObserver:self forDataType:v7];

  v8.receiver = self;
  v8.super_class = HDMobilityNotificationManager;
  [(HDMobilityNotificationManager *)&v8 dealloc];
}

- (void)daemonReady:(id)ready
{
  v11 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v9 = 138543362;
    v10 = objc_opt_class();
    _os_log_impl(&dword_251962000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] start observing walking steadiness events", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  v8 = HKMobilityWalkingSteadinessEventType();
  [dataManager addObserver:self forDataType:v8];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v31 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [addedCopy countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v25;
    v10 = MEMORY[0x277CCC2F8];
    *&v7 = 138543362;
    v22 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(addedCopy);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        _source = [v12 _source];
        _isLocalDevice = [_source _isLocalDevice];

        _HKInitializeLogging();
        v15 = *v10;
        v16 = os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT);
        if (_isLocalDevice)
        {
          if (v16)
          {
            v17 = v15;
            v18 = objc_opt_class();
            *buf = v22;
            v29 = v18;
            _os_log_impl(&dword_251962000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@] Detected AppleWalkingSteadinessEvent added with local device source", buf, 0xCu);
          }

          queue = self->_queue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke;
          block[3] = &unk_2796D94B0;
          block[4] = self;
          block[5] = v12;
          dispatch_async(queue, block);
        }

        else if (v16)
        {
          v20 = v15;
          v21 = objc_opt_class();
          *buf = v22;
          v29 = v21;
          _os_log_impl(&dword_251962000, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Detected AppleWalkingSteadinessEvent added with non-local device source", buf, 0xCu);
        }
      }

      v8 = [addedCopy countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v8);
  }
}

uint64_t __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke_2;
  v4[3] = &unk_2796D9488;
  v4[4] = v2;
  return [v2 _queue_showNotificationForLocalSteadinessEvent:v1 completion:v4];
}

void __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke_2(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  _HKInitializeLogging();
  v6 = *MEMORY[0x277CCC2F8];
  v7 = *MEMORY[0x277CCC2F8];
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v6;
      v9 = 138543362;
      v10 = objc_opt_class();
      _os_log_impl(&dword_251962000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Notified user for AppleWalkingSteadinessEvent successfully.", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke_2_cold_1(a1, v6, v5);
  }
}

- (void)_queue_showNotificationForLocalSteadinessEvent:(id)event completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  if (!completionCopy)
  {
    [HDMobilityNotificationManager _queue_showNotificationForLocalSteadinessEvent:a2 completion:self];
  }

  _source = [eventCopy _source];
  _isLocalDevice = [_source _isLocalDevice];

  if ((_isLocalDevice & 1) == 0)
  {
    [HDMobilityNotificationManager _queue_showNotificationForLocalSteadinessEvent:a2 completion:self];
  }

  categoryType = [eventCopy categoryType];
  code = [categoryType code];

  if (code != 250)
  {
    [HDMobilityNotificationManager _queue_showNotificationForLocalSteadinessEvent:a2 completion:self];
  }

  _HKInitializeLogging();
  v13 = *MEMORY[0x277CCC2F8];
  if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2112;
    *&buf[14] = eventCopy;
    _os_log_impl(&dword_251962000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] showing notification for event: %@", buf, 0x16u);
  }

  value = [eventCopy value];
  v16 = HKMobilityNotificationCategoryForWalkingSteadinessEventValue();
  if (v16)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v30 = __Block_byref_object_copy_;
    v31 = __Block_byref_object_dispose_;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    notificationManager = [WeakRetained notificationManager];

    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x3032000000;
    v27[3] = __Block_byref_object_copy_;
    v27[4] = __Block_byref_object_dispose_;
    v28 = self->_analyticsManager;
    v18 = *(*&buf[8] + 40);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __91__HDMobilityNotificationManager__queue_showNotificationForLocalSteadinessEvent_completion___block_invoke;
    v20[3] = &unk_2796D9500;
    v20[4] = self;
    v21 = v16;
    v24 = buf;
    v23 = completionCopy;
    v26 = value;
    v22 = eventCopy;
    v25 = v27;
    [v18 removeDeliveredNotificationsWithCategoryIdentifier:v21 completionHandler:v20];

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v19 = [MEMORY[0x277CCA9B8] hk_error:3 format:{@"Unknown notification category for walking steadiness event value: %ld", value}];
    (*(completionCopy + 2))(completionCopy, 0, v19);
  }
}

void __91__HDMobilityNotificationManager__queue_showNotificationForLocalSteadinessEvent_completion___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 32);
  v25 = 0;
  v3 = [v2 featureStatusWithError:&v25];
  v4 = v25;
  v5 = MEMORY[0x277CCC2F8];
  if (!v3)
  {
    _HKInitializeLogging();
    v6 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      *buf = 138543618;
      v27 = v8;
      v28 = 2114;
      v29 = v4;
      _os_log_impl(&dword_251962000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unable to get featureStatus. error: %{public}@", buf, 0x16u);
    }
  }

  v9 = [v3 objectForKeyedSubscript:*MEMORY[0x277D11A48]];
  v10 = [v9 areAllRequirementsSatisfied];

  _HKInitializeLogging();
  v11 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    *buf = 138543618;
    v27 = v13;
    v28 = 1024;
    LODWORD(v29) = v10;
    _os_log_impl(&dword_251962000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] Firing notification with shouldHidePregnancyContent: %d", buf, 0x12u);
  }

  v14 = [MEMORY[0x277CE1FC0] hkmobility_requestForCategory:*(a1 + 40) shouldHidePregnancyContent:v10];
  [*(*(*(a1 + 64) + 8) + 40) postNotificationWithRequest:v14 completion:*(a1 + 56)];
  v15 = [HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource alloc];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v17 = *(a1 + 80);
  v18 = *(a1 + 40);
  v19 = [*(a1 + 48) endDate];
  v20 = [(HDMobilityWalkingSteadinessAnalyticsNotificationEventDataSource *)v15 initWithProfile:WeakRetained category:v18 value:v17 date:v19 isShowingPregnancyContent:v10 ^ 1];

  v21 = *(*(*(a1 + 72) + 8) + 40);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __91__HDMobilityNotificationManager__queue_showNotificationForLocalSteadinessEvent_completion___block_invoke_322;
  v23[3] = &unk_2796D94D8;
  v22 = *(a1 + 40);
  v23[4] = *(a1 + 32);
  v24 = v22;
  [v21 submitNotificationEventWithDataSource:v20 resultHandler:v23];
}

void __91__HDMobilityNotificationManager__queue_showNotificationForLocalSteadinessEvent_completion___block_invoke_322(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 status] == 1)
  {
    _HKInitializeLogging();
    v4 = *MEMORY[0x277CCC2F8];
    if (os_log_type_enabled(*MEMORY[0x277CCC2F8], OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v8 = [v3 error];
      v9 = 138543874;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_251962000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unable to submit notification analytics for category: %@, error: %{public}@", &v9, 0x20u);
    }
  }
}

void __53__HDMobilityNotificationManager_samplesAdded_anchor___block_invoke_2_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = 138543618;
  v6 = objc_opt_class();
  v7 = 2112;
  v8 = a3;
  _os_log_fault_impl(&dword_251962000, v4, OS_LOG_TYPE_FAULT, "[%{public}@] Failed to notify user for AppleWalkingSteadinessEvent with error: %@", &v5, 0x16u);
}

- (void)_queue_showNotificationForLocalSteadinessEvent:(uint64_t)a1 completion:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMobilityNotificationManager.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
}

- (void)_queue_showNotificationForLocalSteadinessEvent:(uint64_t)a1 completion:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMobilityNotificationManager.m" lineNumber:87 description:{@"Invalid parameter not satisfying: %@", @"event._source._isLocalDevice"}];
}

- (void)_queue_showNotificationForLocalSteadinessEvent:(uint64_t)a1 completion:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HDMobilityNotificationManager.m" lineNumber:88 description:{@"Invalid parameter not satisfying: %@", @"event.categoryType.code == _HKDataTypeAppleWalkingSteadinessEvent"}];
}

@end