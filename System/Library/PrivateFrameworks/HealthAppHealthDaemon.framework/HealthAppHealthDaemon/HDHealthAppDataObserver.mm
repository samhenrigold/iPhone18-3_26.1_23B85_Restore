@interface HDHealthAppDataObserver
- (HDHealthAppDataObserver)initWithProfile:(id)profile debounceTime:(double)time;
- (HDProfile)profile;
- (id)alertSampleTypes;
- (void)dealloc;
- (void)debounceRunBackgroundGeneration;
- (void)observeForAlertSampleTypes;
- (void)runBackgroundGeneration;
- (void)samplesAdded:(id)added anchor:(id)anchor;
- (void)start;
@end

@implementation HDHealthAppDataObserver

- (HDHealthAppDataObserver)initWithProfile:(id)profile debounceTime:(double)time
{
  profileCopy = profile;
  v24.receiver = self;
  v24.super_class = HDHealthAppDataObserver;
  v7 = [(HDHealthAppDataObserver *)&v24 init];
  v8 = v7;
  if (v7)
  {
    v9 = objc_storeWeak(&v7->_profile, profileCopy);
    dataManager = [profileCopy dataManager];
    dataManager = v8->_dataManager;
    v8->_dataManager = dataManager;

    v12 = objc_alloc_init(HDHAHealthPluginHostFeedGenerator);
    feedGenerator = v8->_feedGenerator;
    v8->_feedGenerator = v12;

    v14 = HKCreateSerialDispatchQueue();
    debounceQueue = v8->_debounceQueue;
    v8->_debounceQueue = v14;

    objc_initWeak(&location, v8);
    v16 = objc_alloc(MEMORY[0x277CCDD98]);
    debounceQueue = [(HDHealthAppDataObserver *)v8 debounceQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __56__HDHealthAppDataObserver_initWithProfile_debounceTime___block_invoke;
    v21[3] = &unk_278658190;
    objc_copyWeak(&v22, &location);
    v18 = [v16 initWithMode:1 queue:debounceQueue delay:v21 block:time];
    delayedOperation = v8->_delayedOperation;
    v8->_delayedOperation = v18;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __56__HDHealthAppDataObserver_initWithProfile_debounceTime___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained runBackgroundGeneration];
}

- (void)dealloc
{
  [(_HKDelayedOperation *)self->_delayedOperation invalidate];
  v3.receiver = self;
  v3.super_class = HDHealthAppDataObserver;
  [(HDHealthAppDataObserver *)&v3 dealloc];
}

- (void)start
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [WeakRetained cloudSyncManager];
  [cloudSyncManager addObserver:self queue:self->_debounceQueue];

  [(HDHealthAppDataObserver *)self observeForAlertSampleTypes];
}

- (void)observeForAlertSampleTypes
{
  v19 = *MEMORY[0x277D85DE8];
  alertSampleTypes = [(HDHealthAppDataObserver *)self alertSampleTypes];
  _HKInitializeLogging();
  v4 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = alertSampleTypes;
    _os_log_impl(&dword_22939E000, v4, OS_LOG_TYPE_DEFAULT, "Observing samples %@", buf, 0xCu);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  alertSampleTypes2 = [(HDHealthAppDataObserver *)self alertSampleTypes];
  v6 = [alertSampleTypes2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(alertSampleTypes2);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        dataManager = [(HDHealthAppDataObserver *)self dataManager];
        [dataManager addSynchronousObserver:self forSampleType:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [alertSampleTypes2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (id)alertSampleTypes
{
  v15[11] = *MEMORY[0x277D85DE8];
  atrialFibrillationEventType = [MEMORY[0x277CCD720] atrialFibrillationEventType];
  v15[0] = atrialFibrillationEventType;
  environmentalAudioExposureEventType = [MEMORY[0x277CCD720] environmentalAudioExposureEventType];
  v15[1] = environmentalAudioExposureEventType;
  headphoneAudioExposureEventType = [MEMORY[0x277CCD720] headphoneAudioExposureEventType];
  v15[2] = headphoneAudioExposureEventType;
  bradycardiaType = [MEMORY[0x277CCD720] bradycardiaType];
  v15[3] = bradycardiaType;
  tachycardiaType = [MEMORY[0x277CCD720] tachycardiaType];
  v15[4] = tachycardiaType;
  workoutType = [MEMORY[0x277CCD720] workoutType];
  v15[5] = workoutType;
  lowCardioFitnessEventType = [MEMORY[0x277CCD720] lowCardioFitnessEventType];
  v15[6] = lowCardioFitnessEventType;
  electrocardiogramType = [MEMORY[0x277CCD3A8] electrocardiogramType];
  v15[7] = electrocardiogramType;
  v8 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:250];
  v15[8] = v8;
  hypertensionEventType = [MEMORY[0x277CCD0C0] hypertensionEventType];
  v15[9] = hypertensionEventType;
  v10 = [MEMORY[0x277CCD0C0] _categoryTypeWithCode:276];
  v15[10] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:11];

  return v11;
}

- (void)samplesAdded:(id)added anchor:(id)anchor
{
  addedCopy = added;
  _HKInitializeLogging();
  v6 = HKLogWellnessDashboard();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 0;
    _os_log_impl(&dword_22939E000, v6, OS_LOG_TYPE_DEFAULT, "HDHealthAppDataObserver received notification for an observed sample type", v10, 2u);
  }

  firstObject = [addedCopy firstObject];
  sampleType = [firstObject sampleType];

  if (sampleType)
  {
    [(HDHealthAppDataObserver *)self debounceRunBackgroundGeneration];
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [HDHealthAppDataObserver samplesAdded:addedCopy anchor:v9];
    }
  }
}

- (void)debounceRunBackgroundGeneration
{
  debounceQueue = [(HDHealthAppDataObserver *)self debounceQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDHealthAppDataObserver_debounceRunBackgroundGeneration__block_invoke;
  block[3] = &unk_2786581B8;
  block[4] = self;
  dispatch_async(debounceQueue, block);
}

void __58__HDHealthAppDataObserver_debounceRunBackgroundGeneration__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) delayedOperation];
  [v1 execute];
}

- (void)runBackgroundGeneration
{
  v18 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_debounceQueue);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  cloudSyncManager = [WeakRetained cloudSyncManager];
  v15 = 0;
  v5 = [cloudSyncManager restoreCompletionDateWithError:&v15];
  v6 = v15;

  if (v5)
  {
LABEL_6:
    v9 = objc_loadWeakRetained(&self->_profile);
    profileType = [v9 profileType];
    v11 = profileType != 1;

    _HKInitializeLogging();
    v12 = HKLogWellnessDashboard();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = "false";
      if (profileType == 1)
      {
        v13 = "true";
      }

      *buf = 136315138;
      v17 = v13;
      _os_log_impl(&dword_22939E000, v12, OS_LOG_TYPE_DEFAULT, "HDHealthAppDataObserver running background generation with commitUrgentTransaction %s", buf, 0xCu);
    }

    v14 = profileType == 1;

    feedGenerator = [(HDHealthAppDataObserver *)self feedGenerator];
    [feedGenerator runBackgroundGenerationForPluginIdentifiers:MEMORY[0x277CBEBF8] commitUrgentTransaction:v14 feedItemsOnly:v11];
    goto LABEL_11;
  }

  _HKInitializeLogging();
  v7 = HKLogWellnessDashboard();
  feedGenerator = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HDHealthAppDataObserver *)feedGenerator runBackgroundGeneration];
    }

    goto LABEL_6;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_22939E000, feedGenerator, OS_LOG_TYPE_DEFAULT, "HDHealthAppDataObserver skipping generation because cloud sync restore is not yet complete.", buf, 2u);
  }

LABEL_11:
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (void)samplesAdded:(void *)a1 anchor:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 firstObject];
  v4 = 138477827;
  v5 = v3;
  _os_log_error_impl(&dword_22939E000, a2, OS_LOG_TYPE_ERROR, "Failed to get sample type for sample %{private}@", &v4, 0xCu);
}

@end