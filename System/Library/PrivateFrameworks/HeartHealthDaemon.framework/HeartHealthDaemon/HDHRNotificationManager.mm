@interface HDHRNotificationManager
- (BOOL)_queue_fakeCardioFitnessNotificationWithData:(BOOL)data repeat:(BOOL)repeat error:(id *)error;
- (HDHRNotificationManager)initWithProfile:(id)profile;
- (id)_userNotificationCenter;
- (void)_queue_fakeNotificationWithEventType:(id)type withData:(BOOL)data;
- (void)_queue_showNotificationForHeartEvent:(id)event;
- (void)_subscribeToFakingNotification:(id)notification type:(id)type withData:(BOOL)data;
- (void)_subscribeToFakingNotifications;
- (void)_unsubscribeToFakingNotifications;
- (void)daemonReady:(id)ready;
- (void)dealloc;
- (void)samplesAdded:(id)added anchor:(id)anchor;
@end

@implementation HDHRNotificationManager

- (HDHRNotificationManager)initWithProfile:(id)profile
{
  v19 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v16.receiver = self;
  v16.super_class = HDHRNotificationManager;
  v5 = [(HDHRNotificationManager *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = HKDispatchQueueName();
    v8 = dispatch_queue_create(v7, 0);
    queue = v6->_queue;
    v6->_queue = v8;

    [(HDHRNotificationManager *)v6 _subscribeToFakingNotifications];
    WeakRetained = objc_loadWeakRetained(&v6->_profile);
    daemon = [WeakRetained daemon];
    [daemon registerForDaemonReady:v6];

    _HKInitializeLogging();
    v12 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138543362;
      v18 = v13;
      v14 = v13;
      _os_log_impl(&dword_229486000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@] was created", buf, 0xCu);
    }
  }

  return v6;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  [(HDHRNotificationManager *)self _unsubscribeToFakingNotifications];
  _HKInitializeLogging();
  v3 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v16 = objc_opt_class();
    v4 = v16;
    _os_log_impl(&dword_229486000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] stop observing heart rate events", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  tachycardiaType = [MEMORY[0x277CCD0C0] tachycardiaType];
  [dataManager removeObserver:self forDataType:tachycardiaType];

  v8 = objc_loadWeakRetained(&self->_profile);
  dataManager2 = [v8 dataManager];
  bradycardiaType = [MEMORY[0x277CCD0C0] bradycardiaType];
  [dataManager2 removeObserver:self forDataType:bradycardiaType];

  v11 = objc_loadWeakRetained(&self->_profile);
  dataManager3 = [v11 dataManager];
  lowCardioFitnessEventType = [MEMORY[0x277CCD0C0] lowCardioFitnessEventType];
  [dataManager3 removeObserver:self forDataType:lowCardioFitnessEventType];

  v14.receiver = self;
  v14.super_class = HDHRNotificationManager;
  [(HDHRNotificationManager *)&v14 dealloc];
}

- (void)daemonReady:(id)ready
{
  v17 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v4 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = objc_opt_class();
    v5 = v16;
    _os_log_impl(&dword_229486000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] start observing heart rate events", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_profile);
  dataManager = [WeakRetained dataManager];
  tachycardiaType = [MEMORY[0x277CCD0C0] tachycardiaType];
  [dataManager addObserver:self forDataType:tachycardiaType];

  v9 = objc_loadWeakRetained(&self->_profile);
  dataManager2 = [v9 dataManager];
  bradycardiaType = [MEMORY[0x277CCD0C0] bradycardiaType];
  [dataManager2 addObserver:self forDataType:bradycardiaType];

  v12 = objc_loadWeakRetained(&self->_profile);
  dataManager3 = [v12 dataManager];
  lowCardioFitnessEventType = [MEMORY[0x277CCD0C0] lowCardioFitnessEventType];
  [dataManager3 addObserver:self forDataType:lowCardioFitnessEventType];
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  v29 = *MEMORY[0x277D85DE8];
  addedCopy = added;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [addedCopy countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(addedCopy);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        sourceRevision = [v10 sourceRevision];
        source = [sourceRevision source];
        _isLocalDevice = [source _isLocalDevice];

        _HKInitializeLogging();
        v14 = HKLogHeartRateCategory();
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);

        if (_isLocalDevice)
        {
          if (v15)
          {
            v16 = HKLogHeartRateCategory();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              [HDHRNotificationManager samplesAdded:v27 anchor:self];
            }
          }

          queue = self->_queue;
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __47__HDHRNotificationManager_samplesAdded_anchor___block_invoke;
          v21[3] = &unk_27865FE98;
          v21[4] = self;
          v21[5] = v10;
          dispatch_async(queue, v21);
        }

        else
        {
          if (v15)
          {
            v18 = HKLogHeartRateCategory();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              [HDHRNotificationManager samplesAdded:v26 anchor:self];
            }
          }

          mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
          if ([mEMORY[0x277CCDD30] isAppleInternalInstall])
          {
            unitTest_notificationForNonLocalDeviceSourceSkipped = self->_unitTest_notificationForNonLocalDeviceSourceSkipped;

            if (unitTest_notificationForNonLocalDeviceSourceSkipped)
            {
              (*(self->_unitTest_notificationForNonLocalDeviceSourceSkipped + 2))();
            }
          }

          else
          {
          }
        }
      }

      v7 = [addedCopy countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v7);
  }
}

- (id)_userNotificationCenter
{
  if (_userNotificationCenter_onceToken != -1)
  {
    [HDHRNotificationManager _userNotificationCenter];
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  if (![mEMORY[0x277CCDD30] isAppleInternalInstall] || (unitTest_userNotificationCenter = self->_unitTest_userNotificationCenter) == 0)
  {
    unitTest_userNotificationCenter = _userNotificationCenter_userNotificationCenter;
  }

  v5 = unitTest_userNotificationCenter;

  return unitTest_userNotificationCenter;
}

uint64_t __50__HDHRNotificationManager__userNotificationCenter__block_invoke()
{
  _userNotificationCenter_userNotificationCenter = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.HeartRate"];

  return MEMORY[0x2821F96F8]();
}

- (void)_queue_showNotificationForHeartEvent:(id)event
{
  v80 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  endDate = [eventCopy endDate];
  v7 = [currentCalendar hk_dateByAddingDays:1 toDate:endDate];

  date = [MEMORY[0x277CBEAA8] date];
  LODWORD(endDate) = [date hk_isAfterDate:v7];

  _HKInitializeLogging();
  v9 = HKLogHeartRateCategory();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (!endDate)
  {
    if (v10)
    {
      *buf = 138543874;
      v75 = objc_opt_class();
      v76 = 2112;
      v77 = eventCopy;
      v78 = 2114;
      v79 = v7;
      v14 = v75;
      _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] showing notification for event: %@, expiration date: %{public}@", buf, 0x20u);
    }

    v15 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v15 setDateStyle:0];
    [v15 setTimeStyle:1];
    startDate = [eventCopy startDate];
    v66 = v15;
    v17 = [v15 stringFromDate:startDate];

    metadata = [eventCopy metadata];
    v19 = [metadata objectForKey:*MEMORY[0x277CCE048]];

    [v19 _beatsPerMinute];
    v21 = MEMORY[0x277CCABB8];
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:llround(v20)];
    v23 = [v21 localizedStringFromNumber:v22 numberStyle:1];

    categoryType = [eventCopy categoryType];
    tachycardiaType = [MEMORY[0x277CCD0C0] tachycardiaType];
    v26 = [categoryType isEqual:tachycardiaType];

    v67 = v23;
    if (v26)
    {
      v62 = v19;
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      [v27 localizedStringForKey:@"HEART_RATE_TACHYCARDIA_TITLE" value:&stru_283CC4740 table:@"Localizable"];
      v29 = v28 = v7;

      v30 = MEMORY[0x277CCACA8];
      selfCopy3 = self;
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"HEART_RATE_TACHYCARDIA_MESSAGE_FORMAT" value:&stru_283CC4740 table:@"Localizable"];
      v63 = v17;
      v61 = v23;
      v33 = v29;
      v7 = v28;
      v34 = [v30 stringWithFormat:v32, v61, v17];

      v35 = @"Tachycardia";
    }

    else
    {
      categoryType2 = [eventCopy categoryType];
      bradycardiaType = [MEMORY[0x277CCD0C0] bradycardiaType];
      v38 = [categoryType2 isEqual:bradycardiaType];

      if (v38)
      {
        v62 = v19;
        v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v33 = [v39 localizedStringForKey:@"HEART_RATE_BRADYCARDIA_TITLE" value:&stru_283CC4740 table:@"Localizable"];

        v40 = MEMORY[0x277CCACA8];
        selfCopy3 = self;
        v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v42 = [v41 localizedStringForKey:@"HEART_RATE_BRADYCARDIA_MESSAGE_FORMAT" value:&stru_283CC4740 table:@"Localizable"];
        v63 = v17;
        v34 = [v40 stringWithFormat:v42, v67, v17];

        v35 = @"Bradycardia";
      }

      else
      {
        categoryType3 = [eventCopy categoryType];
        lowCardioFitnessEventType = [MEMORY[0x277CCD0C0] lowCardioFitnessEventType];
        v45 = [categoryType3 isEqual:lowCardioFitnessEventType];

        if (!v45)
        {
          _HKInitializeLogging();
          v58 = HKLogHeartRateCategory();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            [(HDHRNotificationManager *)self _queue_showNotificationForHeartEvent:eventCopy, v58];
          }

          mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
          if ([mEMORY[0x277CCDD30] isAppleInternalInstall])
          {
            unitTest_notificationForUnsupportedEventSkipped = self->_unitTest_notificationForUnsupportedEventSkipped;

            if (unitTest_notificationForUnsupportedEventSkipped)
            {
              (*(self->_unitTest_notificationForUnsupportedEventSkipped + 2))();
            }
          }

          else
          {
          }

          goto LABEL_21;
        }

        v62 = v19;
        v63 = v17;
        selfCopy3 = self;
        v33 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"HEART_RATE_LOW_CARDIO_FITNESS_TITLE" arguments:0];
        v34 = [MEMORY[0x277CCACA8] localizedUserNotificationStringForKey:@"HEART_RATE_LOW_CARDIO_FITNESS_MESSAGE" arguments:0];
        v35 = @"LowCardioFitness";
      }
    }

    v46 = objc_alloc_init(MEMORY[0x277CE1F60]);
    [v46 setTitle:v33];
    [v46 setBody:v34];
    [v46 setCategoryIdentifier:v35];
    [v46 setThreadIdentifier:v35];
    v47 = [MEMORY[0x277CE1F70] soundWithAlertType:25];
    [v47 setAlertTopic:*MEMORY[0x277D71FC8]];
    [v46 setSound:v47];
    endDate2 = [eventCopy endDate];
    [v46 setDate:endDate2];

    [v46 setExpirationDate:v7];
    v71 = 0;
    v49 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:eventCopy requiringSecureCoding:1 error:&v71];
    v64 = v71;
    if (v49)
    {
      v50 = v34;
      v51 = v33;
      v72 = @"HeartRateEventData";
      v73 = v49;
      v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
      [v46 setUserInfo:v52];
    }

    else
    {
      _HKInitializeLogging();
      v52 = HKLogHeartRateCategory();
      v50 = v34;
      v51 = v33;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [HDHRNotificationManager _queue_showNotificationForHeartEvent:];
      }
    }

    v53 = MEMORY[0x277CE1FC0];
    uUID = [eventCopy UUID];
    uUIDString = [uUID UUIDString];
    v56 = [v53 requestWithIdentifier:uUIDString content:v46 trigger:0];

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke;
    block[3] = &unk_278660440;
    block[4] = selfCopy3;
    v69 = v56;
    v70 = eventCopy;
    v57 = v56;
    dispatch_async(MEMORY[0x277D85CD0], block);

    v19 = v62;
    v17 = v63;
    v23 = v67;
LABEL_21:

    goto LABEL_22;
  }

  if (v10)
  {
    *buf = 138543618;
    v75 = objc_opt_class();
    v76 = 2112;
    v77 = eventCopy;
    v11 = v75;
    _os_log_impl(&dword_229486000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] not showing expired notification for event: %@", buf, 0x16u);
  }

  mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
  if ([mEMORY[0x277CCDD30]2 isAppleInternalInstall])
  {
    unitTest_notificationForExpiredEventSkipped = self->_unitTest_notificationForExpiredEventSkipped;

    if (unitTest_notificationForExpiredEventSkipped)
    {
      (*(self->_unitTest_notificationForExpiredEventSkipped + 2))();
    }
  }

  else
  {
  }

LABEL_22:
}

void __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _userNotificationCenter];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke_2;
  v4[3] = &unk_278660AE0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 48);
  [v2 addNotificationRequest:v3 withCompletionHandler:v4];
}

void __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    _HKInitializeLogging();
    v4 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke_2_cold_1();
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v6 = [WeakRetained notificationManager];

  if (v6)
  {
    v7 = [v6 areHealthNotificationsAuthorized];
  }

  else
  {
    v7 = 0;
  }

  v8 = [[HDHRNotificationAnalytics alloc] initWithEventSample:*(a1 + 40) areHealthNotificationsAuthorized:v7];
  [(HDHRNotificationAnalytics *)v8 submit];
}

- (void)_queue_fakeNotificationWithEventType:(id)type withData:(BOOL)data
{
  dataCopy = data;
  v76[1] = *MEMORY[0x277D85DE8];
  typeCopy = type;
  _HKInitializeLogging();
  v5 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    identifier = [typeCopy identifier];
    v9 = [MEMORY[0x277CCABB0] numberWithBool:dataCopy];
    *buf = 138543874;
    *&buf[4] = v6;
    *&buf[12] = 2114;
    *&buf[14] = identifier;
    *&buf[22] = 2112;
    v72 = v9;
    _os_log_impl(&dword_229486000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] faking %{public}@ notification, withData: %@", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v53 = [date dateByAddingTimeInterval:-600.0];
  v10 = [MEMORY[0x277CCD7E8] _quantityWithBeatsPerMinute:120.0];
  bradycardiaType = [MEMORY[0x277CCD0C0] bradycardiaType];
  v12 = [typeCopy isEqual:bradycardiaType];

  if (v12)
  {
    v13 = [MEMORY[0x277CCD7E8] _quantityWithBeatsPerMinute:40.0];

    v10 = v13;
  }

  v14 = MEMORY[0x277CCD0B0];
  v75 = *MEMORY[0x277CCE048];
  v76[0] = v10;
  v50 = v10;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:&v75 count:1];
  v55 = [v14 categorySampleWithType:typeCopy value:0 startDate:v53 endDate:date metadata:v15];

  if (dataCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v72 = __Block_byref_object_copy__5;
    v73 = __Block_byref_object_dispose__5;
    v74 = 0;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    dataManager = [WeakRetained dataManager];
    v70 = v55;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v70 count:1];
    v19 = objc_loadWeakRetained(&self->_profile);
    dataProvenanceManager = [v19 dataProvenanceManager];
    defaultLocalDataProvenance = [dataProvenanceManager defaultLocalDataProvenance];
    Current = CFAbsoluteTimeGetCurrent();
    v23 = *&buf[8];
    obj = *(*&buf[8] + 40);
    v24 = [dataManager insertDataObjects:v18 withProvenance:defaultLocalDataProvenance creationDate:&obj error:Current];
    objc_storeStrong((v23 + 40), obj);

    if (v24)
    {
      _HKInitializeLogging();
      v25 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        *v66 = 138543618;
        v67 = v26;
        v68 = 2112;
        v69 = v55;
        v27 = v26;
        _os_log_impl(&dword_229486000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@] faking - saved event sample: %@", v66, 0x16u);
      }
    }

    else
    {
      _HKInitializeLogging();
      v25 = HKLogHeartRateCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v28 = objc_opt_class();
        [(HDHRNotificationManager *)v28 _queue_fakeNotificationWithEventType:v66 withData:v25];
      }
    }

    bradycardiaType2 = [MEMORY[0x277CCD0C0] bradycardiaType];
    v30 = [typeCopy isEqual:bradycardiaType2];

    if (v30)
    {
      v31 = &unk_283CD34C0;
    }

    else
    {
      v31 = &unk_283CD34A8;
    }

    array = [MEMORY[0x277CBEB18] array];
    v33 = 0;
    v34 = *MEMORY[0x277CCCB90];
    while ([v31 count] > v33)
    {
      v35 = [&unk_283CD3490 objectAtIndexedSubscript:v33];
      [v35 doubleValue];
      v36 = [v53 dateByAddingTimeInterval:?];

      v37 = MEMORY[0x277CCD800];
      v38 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v34];
      v39 = MEMORY[0x277CCD7E8];
      v40 = [v31 objectAtIndexedSubscript:v33];
      [v40 doubleValue];
      v41 = [v39 _quantityWithBeatsPerMinute:?];
      v42 = [v37 quantitySampleWithType:v38 quantity:v41 startDate:v36 endDate:v36];

      [array addObject:v42];
      ++v33;
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v54 = array;
    v43 = [v54 countByEnumeratingWithState:&v60 objects:v65 count:16];
    if (v43)
    {
      v44 = *v61;
      v45 = 0.0;
      v46 = MEMORY[0x277D85CD0];
      do
      {
        v47 = 0;
        do
        {
          if (*v61 != v44)
          {
            objc_enumerationMutation(v54);
          }

          v48 = *(*(&v60 + 1) + 8 * v47);
          v49 = dispatch_time(0, (v45 * 1000000000.0));
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __73__HDHRNotificationManager__queue_fakeNotificationWithEventType_withData___block_invoke;
          block[3] = &unk_278660B08;
          block[4] = self;
          block[5] = v48;
          v59 = buf;
          v58 = v55;
          dispatch_after(v49, v46, block);

          v45 = v45 + 2.0;
          ++v47;
        }

        while (v43 != v47);
        v43 = [v54 countByEnumeratingWithState:&v60 objects:v65 count:16];
      }

      while (v43);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(HDHRNotificationManager *)self _queue_showNotificationForHeartEvent:v55];
  }
}

void __73__HDHRNotificationManager__queue_fakeNotificationWithEventType_withData___block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = a1 + 32;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [WeakRetained dataManager];

  v31[0] = *(a1 + 40);
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v6 = objc_loadWeakRetained((*v2 + 8));
  v7 = [v6 dataProvenanceManager];
  v8 = [v7 defaultLocalDataProvenance];
  Current = CFAbsoluteTimeGetCurrent();
  v10 = *(*(a1 + 56) + 8);
  obj = *(v10 + 40);
  v11 = [v4 insertDataObjects:v5 withProvenance:v8 creationDate:&obj error:Current];
  objc_storeStrong((v10 + 40), obj);

  _HKInitializeLogging();
  v12 = HKLogHeartRateCategory();
  v13 = v12;
  if (!v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __73__HDHRNotificationManager__queue_fakeNotificationWithEventType_withData___block_invoke_cold_1();
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = *(a1 + 40);
    *buf = 138543618;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    v16 = v14;
    _os_log_impl(&dword_229486000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] faking - saved heart rate sample: %@", buf, 0x16u);
  }

  v17 = objc_loadWeakRetained((*(a1 + 32) + 8));
  v18 = [v17 associationManager];
  v19 = [*(a1 + 40) UUID];
  v26 = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
  v21 = [*(a1 + 48) UUID];
  v22 = *(*(a1 + 56) + 8);
  v24 = *(v22 + 40);
  v23 = [v18 associateObjectUUIDs:v20 objectUUID:v21 error:&v24];
  objc_storeStrong((v22 + 40), v24);

  if ((v23 & 1) == 0)
  {
    _HKInitializeLogging();
    v13 = HKLogHeartRateCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __73__HDHRNotificationManager__queue_fakeNotificationWithEventType_withData___block_invoke_cold_2();
    }

LABEL_9:
  }
}

- (void)_subscribeToFakingNotifications
{
  tachycardiaType = [MEMORY[0x277CCD0C0] tachycardiaType];
  [(HDHRNotificationManager *)self _subscribeToFakingNotification:@"com.apple.HeartRate.Tachycardia" type:tachycardiaType withData:0];

  tachycardiaType2 = [MEMORY[0x277CCD0C0] tachycardiaType];
  [(HDHRNotificationManager *)self _subscribeToFakingNotification:@"com.apple.HeartRate.TachycardiaWithData" type:tachycardiaType2 withData:1];

  bradycardiaType = [MEMORY[0x277CCD0C0] bradycardiaType];
  [(HDHRNotificationManager *)self _subscribeToFakingNotification:@"com.apple.HeartRate.Bradycardia" type:bradycardiaType withData:0];

  bradycardiaType2 = [MEMORY[0x277CCD0C0] bradycardiaType];
  [(HDHRNotificationManager *)self _subscribeToFakingNotification:@"com.apple.HeartRate.BradycardiaWithData" type:bradycardiaType2 withData:1];
}

- (void)_subscribeToFakingNotification:(id)notification type:(id)type withData:(BOOL)data
{
  notificationCopy = notification;
  typeCopy = type;
  objc_initWeak(&location, self);
  out_token = 0;
  uTF8String = [notificationCopy UTF8String];
  queue = self->_queue;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __72__HDHRNotificationManager__subscribeToFakingNotification_type_withData___block_invoke;
  v18 = &unk_278660B30;
  objc_copyWeak(&v20, &location);
  v12 = typeCopy;
  v19 = v12;
  dataCopy = data;
  notify_register_dispatch(uTF8String, &out_token, queue, &v15);
  fakingNotifyTokens = self->_fakingNotifyTokens;
  v14 = [MEMORY[0x277CCABB0] numberWithInt:{out_token, v15, v16, v17, v18}];
  [(NSMutableArray *)fakingNotifyTokens addObject:v14];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __72__HDHRNotificationManager__subscribeToFakingNotification_type_withData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _queue_fakeNotificationWithEventType:*(a1 + 32) withData:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)_unsubscribeToFakingNotifications
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_fakingNotifyTokens;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        intValue = [*(*(&v8 + 1) + 8 * v6) intValue];
        if (notify_is_valid_token(intValue))
        {
          notify_cancel(intValue);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (BOOL)_queue_fakeCardioFitnessNotificationWithData:(BOOL)data repeat:(BOOL)repeat error:(id *)error
{
  repeatCopy = repeat;
  dataCopy = data;
  v109 = *MEMORY[0x277D85DE8];
  _HKInitializeLogging();
  v7 = HKLogHeartRateCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = MEMORY[0x277CCABB0];
    v10 = v8;
    v11 = [v9 numberWithBool:dataCopy];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:repeatCopy];
    *buf = 138543874;
    v104 = v8;
    v105 = 2112;
    v106 = v11;
    v107 = 2112;
    v108 = v12;
    _os_log_impl(&dword_229486000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] faking Cardio Fitness notification, withData: %@, repeat: %@", buf, 0x20u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  v14 = [date dateByAddingTimeInterval:-1641600.0];
  v15 = MEMORY[0x277CCD7E8];
  v16 = [MEMORY[0x277CCDAB0] unitFromString:@"ml/(kg*min)"];
  v17 = [v15 quantityWithUnit:v16 doubleValue:24.0];

  v18 = MEMORY[0x277CCD7E8];
  v19 = [MEMORY[0x277CCDAB0] unitFromString:@"ml/(kg*min)"];
  v20 = [v18 quantityWithUnit:v19 doubleValue:19.0];

  v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:date];
  [v21 duration];
  v23 = v22;

  v24 = MEMORY[0x277CCD0B0];
  lowCardioFitnessEventType = [MEMORY[0x277CCD0C0] lowCardioFitnessEventType];
  v26 = *MEMORY[0x277CCC4D8];
  v101[0] = *MEMORY[0x277CCC540];
  v101[1] = v26;
  v85 = v20;
  v102[0] = v20;
  v102[1] = v17;
  v101[2] = *MEMORY[0x277CCE0D8];
  v27 = [MEMORY[0x277CCABB0] numberWithBool:repeatCopy];
  v102[2] = v27;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:3];
  v29 = [v24 categorySampleWithType:lowCardioFitnessEventType value:1 startDate:v14 endDate:date metadata:v28];

  if (dataCopy)
  {
    v81 = v17;
    v82 = v14;
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    dataManager = [WeakRetained dataManager];
    v83 = v29;
    v100 = v29;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
    v33 = objc_loadWeakRetained(&self->_profile);
    dataProvenanceManager = [v33 dataProvenanceManager];
    defaultLocalDataProvenance = [dataProvenanceManager defaultLocalDataProvenance];
    v97 = 0;
    v36 = [dataManager insertDataObjects:v32 withProvenance:defaultLocalDataProvenance creationDate:&v97 error:CFAbsoluteTimeGetCurrent()];
    v37 = v97;

    _HKInitializeLogging();
    v38 = HKLogHeartRateCategory();
    v39 = v38;
    if (v36)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_opt_class();
        *buf = 138543618;
        v104 = v40;
        v105 = 2112;
        v106 = v29;
        v41 = v40;
        _os_log_impl(&dword_229486000, v39, OS_LOG_TYPE_DEFAULT, "[%{public}@] faking - saved event sample: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [HDHRNotificationManager _queue_fakeCardioFitnessNotificationWithData:repeat:error:];
    }

    v45 = [&unk_283CD34D8 count];
    array = [MEMORY[0x277CBEB18] array];
    v86 = date;
    if (v45 >= 1)
    {
      v47 = 0;
      v48 = -floor(v23 / (v45 - 1));
      v89 = *MEMORY[0x277CCCC98];
      do
      {
        v49 = [date dateByAddingTimeInterval:{v48 * v47, v81, v82}];
        v50 = MEMORY[0x277CCD7E8];
        v51 = [MEMORY[0x277CCDAB0] unitFromString:@"ml/(kg*min)"];
        v52 = [&unk_283CD34D8 objectAtIndexedSubscript:v47];
        [v52 doubleValue];
        v53 = [v50 quantityWithUnit:v51 doubleValue:?];

        v54 = MEMORY[0x277CCD800];
        v55 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:v89];
        v56 = [v54 quantitySampleWithType:v55 quantity:v53 startDate:v49 endDate:v49];

        [array addObject:v56];
        date = v86;

        ++v47;
      }

      while (v45 != v47);
    }

    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    obj = array;
    v90 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
    if (v90)
    {
      v88 = *v94;
      do
      {
        v57 = 0;
        do
        {
          v58 = v37;
          if (*v94 != v88)
          {
            objc_enumerationMutation(obj);
          }

          v59 = *(*(&v93 + 1) + 8 * v57);
          v60 = objc_loadWeakRetained(&self->_profile);
          dataManager2 = [v60 dataManager];

          v98 = v59;
          v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
          v63 = objc_loadWeakRetained(&self->_profile);
          dataProvenanceManager2 = [v63 dataProvenanceManager];
          defaultLocalDataProvenance2 = [dataProvenanceManager2 defaultLocalDataProvenance];
          Current = CFAbsoluteTimeGetCurrent();
          v92 = v37;
          v67 = [dataManager2 insertDataObjects:v62 withProvenance:defaultLocalDataProvenance2 creationDate:1 skipInsertionFilter:&v92 error:Current];
          v37 = v92;

          _HKInitializeLogging();
          v68 = HKLogHeartRateCategory();
          v69 = v68;
          if (v67)
          {
            if (!os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_23;
            }

            v70 = objc_opt_class();
            *buf = 138543618;
            v104 = v70;
            v105 = 2112;
            v106 = v59;
            v71 = v70;
            _os_log_impl(&dword_229486000, v69, OS_LOG_TYPE_DEFAULT, "[%{public}@] faking - saved VO2Max sample: %@", buf, 0x16u);
            goto LABEL_21;
          }

          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v72 = objc_opt_class();
            *buf = 138543618;
            v104 = v72;
            v105 = 2114;
            v106 = v37;
            v71 = v72;
            _os_log_error_impl(&dword_229486000, v69, OS_LOG_TYPE_ERROR, "[%{public}@] faking - failed to save VO2Max with error: %{public}@", buf, 0x16u);
LABEL_21:
          }

LABEL_23:

          ++v57;
        }

        while (v90 != v57);
        v73 = [obj countByEnumeratingWithState:&v93 objects:v99 count:16];
        v90 = v73;
      }

      while (v73);
    }

    v74 = [HDHRHealthKitSyncManager alloc];
    v75 = objc_loadWeakRetained(&self->_profile);
    v76 = [(HDHRHealthKitSyncManager *)v74 initWithProfile:v75];

    [(HDHRHealthKitSyncManager *)v76 triggerImmediateSyncWithReason:@"New fake Cardio Fitness notification sample has been added" loggingCategory:*MEMORY[0x277CCC2D0]];
    v77 = v37;
    if (v77)
    {
      v78 = v77;
      v44 = v85;
      v17 = v81;
      v14 = v82;
      if (error)
      {
        v79 = v77;
        *error = v78;
      }

      else
      {
        _HKLogDroppedError();
      }

      v42 = 0;
      date = v86;
    }

    else
    {
      v42 = 1;
      v44 = v85;
      date = v86;
      v17 = v81;
      v14 = v82;
    }

    v43 = v83;
  }

  else
  {
    [(HDHRNotificationManager *)self _queue_showNotificationForHeartEvent:v29];
    v42 = 1;
    v43 = v29;
    v44 = v85;
  }

  return v42;
}

- (void)samplesAdded:(uint64_t)a1 anchor:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_4_2(a1, a2);
  *v3 = 138543362;
  *v2 = v4;
  v5 = v4;
  OUTLINED_FUNCTION_5_2(&dword_229486000, v6, v7, "[%{public}@] Detected sample inserted with non-local device source");
}

- (void)samplesAdded:(uint64_t)a1 anchor:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_4_2(a1, a2);
  *v3 = 138543362;
  *v2 = v4;
  v5 = v4;
  OUTLINED_FUNCTION_5_2(&dword_229486000, v6, v7, "[%{public}@] Detected sample inserted with local device source");
}

- (void)_queue_showNotificationForHeartEvent:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v6 = v5;
  v7 = [a2 categoryType];
  v8 = [v7 identifier];
  v9 = HKSensitiveLogItem();
  v10 = 138543618;
  v11 = v5;
  v12 = 2112;
  v13 = v9;
  _os_log_error_impl(&dword_229486000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] trying to show notification for unsupported event: %@", &v10, 0x16u);
}

- (void)_queue_showNotificationForHeartEvent:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_10(v0);
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] error archiving event: %{public}@", v4, v5, v6, v7);
}

void __64__HDHRNotificationManager__queue_showNotificationForHeartEvent___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_4();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_10(v0);
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] error requesting notification: %{public}@)", v4, v5, v6, v7);
}

- (void)_queue_fakeNotificationWithEventType:(uint64_t)a3 withData:(NSObject *)a4 .cold.1(void *a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v6 = *(*a2 + 40);
  *a3 = 138543618;
  *(a3 + 4) = a1;
  *(a3 + 12) = 2114;
  *(a3 + 14) = v6;
  v7 = a1;
  _os_log_error_impl(&dword_229486000, a4, OS_LOG_TYPE_ERROR, "[%{public}@] faking - failed to save event with error: %{public}@", a3, 0x16u);
}

void __73__HDHRNotificationManager__queue_fakeNotificationWithEventType_withData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] faking - failed to save heart rate with error: %{public}@", v4, v5, v6, v7);
}

void __73__HDHRNotificationManager__queue_fakeNotificationWithEventType_withData___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_4();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_3_4(v0);
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] faking - failed to associate heart rate with error: %{public}@", v4, v5, v6, v7);
}

- (void)_queue_fakeCardioFitnessNotificationWithData:repeat:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_1_10(v0);
  OUTLINED_FUNCTION_1_7(&dword_229486000, v2, v3, "[%{public}@] faking - failed to save event with error: %{public}@", v4, v5, v6, v7);
}

@end