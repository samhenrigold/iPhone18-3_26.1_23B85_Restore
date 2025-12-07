@interface AMMotionDetectionTriggerManager
- (AMMotionDetectionTriggerManager)init;
- (AMMotionDetectionTriggerManager)initWithAWClientOverride:(id)override;
- (BOOL)isMotionDetectionEnabled;
- (double)watchdogTimeout;
- (id)_firstOrderLowPassArray:(id)array last:(id)last dt:(float)dt tau:(float)tau;
- (id)_subtractArrayX:(id)x andY:(id)y;
- (id)_unitIntervalClipArray:(id)array;
- (unint64_t)_computeThresholdMaskFromMotionData:(id)data filtered:(BOOL)filtered;
- (unint64_t)triggerState;
- (void)_accessQueue_setPublishedTriggers:(unint64_t)triggers;
- (void)_accessQueue_updatePublishedTriggers;
- (void)_handleMotionDataSample:(id)sample;
- (void)_handleMotionDetectBoolean:(BOOL)boolean;
- (void)_injectSyntheticMotionData:(id)data timestampSeconds:(double)seconds;
- (void)_injectSyntheticMotionDetectBoolean:(BOOL)boolean timestamp:(double)timestamp;
- (void)_notifyObserversUpdateMotionDetectionTriggerState:(unint64_t)state;
- (void)_setEnabledTriggers:(unint64_t)triggers;
- (void)_setMotionDetectionMonitoringEnabled:(BOOL)enabled;
- (void)_updateFilteredMotionDensity:(id)density;
- (void)_updateMotionDetectionTriggerMaskWithDataSample:(id)sample andFilteredDataSample:(id)dataSample;
- (void)_updateWatchdogTimer;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)removeObserver:(id)observer;
- (void)setMotionDetectionEnabled:(BOOL)enabled;
- (void)setWatchdogTimeout:(double)timeout;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation AMMotionDetectionTriggerManager

- (AMMotionDetectionTriggerManager)initWithAWClientOverride:(id)override
{
  overrideCopy = override;
  v6 = [(AMMotionDetectionTriggerManager *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_awClientOverride, override);
  }

  return v7;
}

- (AMMotionDetectionTriggerManager)init
{
  v14.receiver = self;
  v14.super_class = AMMotionDetectionTriggerManager;
  v2 = [(AMMotionDetectionTriggerManager *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Ambient.MotionDetectionQueue", 0);
    accessQueue = v2->_accessQueue;
    v2->_accessQueue = v3;

    v5 = +[AMMotionDetectionDomain rootSettings];
    settings = v2->_settings;
    v2->_settings = v5;

    [(PTSettings *)v2->_settings addKeyObserver:v2];
    v2->_enabledTriggers = [(AMMotionDetectionSettings *)v2->_settings enabledTriggers];
    v7 = [_AMMotionDetectionDataSample zeroMotionDataWithTimestamp:0.0];
    dataSample = v2->_dataSample;
    v2->_dataSample = v7;

    v9 = [_AMMotionDetectionDataSample zeroMotionDataWithTimestamp:0.0];
    filteredMotionDensity = v2->_filteredMotionDensity;
    v2->_filteredMotionDensity = v9;

    v11 = [_AMMotionDetectionDataSample zeroMotionDataWithTimestamp:0.0];
    motionDensityBackground = v2->_motionDensityBackground;
    v2->_motionDensityBackground = v11;

    v2->_watchdogTimeout = 10.0;
  }

  return v2;
}

- (BOOL)isMotionDetectionEnabled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__AMMotionDetectionTriggerManager_isMotionDetectionEnabled__block_invoke;
  v5[3] = &unk_278C73728;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setMotionDetectionEnabled:(BOOL)enabled
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __61__AMMotionDetectionTriggerManager_setMotionDetectionEnabled___block_invoke;
  v4[3] = &unk_278C73750;
  v4[4] = self;
  enabledCopy = enabled;
  dispatch_sync(accessQueue, v4);
}

void *__61__AMMotionDetectionTriggerManager_setMotionDetectionEnabled___block_invoke(void *result)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*(result[4] + 56) != *(result + 40))
  {
    v1 = result;
    v2 = AMLogMotion(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(v1 + 40);
      v4[0] = 67109120;
      v4[1] = v3;
      _os_log_impl(&dword_23EE48000, v2, OS_LOG_TYPE_DEFAULT, "Ambient motion detection enabled : %{BOOL}d", v4, 8u);
    }

    *(v1[4] + 56) = *(v1 + 40);
    return [v1[4] _setMotionDetectionMonitoringEnabled:?];
  }

  return result;
}

- (unint64_t)triggerState
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__AMMotionDetectionTriggerManager_triggerState__block_invoke;
  v5[3] = &unk_278C73728;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)addObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__AMMotionDetectionTriggerManager_addObserver_queue___block_invoke;
  block[3] = &unk_278C73778;
  v12 = observerCopy;
  v13 = queueCopy;
  selfCopy = self;
  v9 = queueCopy;
  v10 = observerCopy;
  dispatch_sync(accessQueue, block);
}

void __53__AMMotionDetectionTriggerManager_addObserver_queue___block_invoke(void *a1)
{
  v2 = [[_AMMotionDetectionTriggerManagerObserverContext alloc] initWithObserver:a1[4] queue:a1[5]];
  v3 = *(a1[6] + 64);
  v7 = v2;
  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v5 = a1[6];
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;

    v2 = v7;
    v3 = *(a1[6] + 64);
  }

  [v3 addObject:v2];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  accessQueue = self->_accessQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__AMMotionDetectionTriggerManager_removeObserver___block_invoke;
  v7[3] = &unk_278C73688;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(accessQueue, v7);
}

void __50__AMMotionDetectionTriggerManager_removeObserver___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(*(a1 + 32) + 64);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 observer];
        v10 = *(a1 + 40);

        if (v9 == v10)
        {
          if (!v5)
          {
            v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
          }

          [v5 addObject:v8];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  if ([v5 count])
  {
    [*(*(a1 + 32) + 64) removeObjectsInArray:v5];
    if (![*(*(a1 + 32) + 64) count])
    {
      v11 = *(a1 + 32);
      v12 = *(v11 + 64);
      *(v11 + 64) = 0;
    }
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  settings = self->_settings;
  if (settings == settings)
  {
    enabledTriggers = [(AMMotionDetectionSettings *)settings enabledTriggers];

    [(AMMotionDetectionTriggerManager *)self _setEnabledTriggers:enabledTriggers];
  }
}

- (void)_injectSyntheticMotionData:(id)data timestampSeconds:(double)seconds
{
  dataCopy = data;
  v7 = objc_alloc_init(_AMMotionDetectionDataSample);
  [(_AMMotionDetectionDataSample *)v7 setData:dataCopy];

  [(_AMMotionDetectionDataSample *)v7 setTimestampSeconds:seconds];
  accessQueue = self->_accessQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __79__AMMotionDetectionTriggerManager__injectSyntheticMotionData_timestampSeconds___block_invoke;
  v10[3] = &unk_278C73688;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(accessQueue, v10);
}

- (void)_injectSyntheticMotionDetectBoolean:(BOOL)boolean timestamp:(double)timestamp
{
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __81__AMMotionDetectionTriggerManager__injectSyntheticMotionDetectBoolean_timestamp___block_invoke;
  v5[3] = &unk_278C73750;
  v5[4] = self;
  booleanCopy = boolean;
  dispatch_async(accessQueue, v5);
}

- (double)watchdogTimeout
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__AMMotionDetectionTriggerManager_watchdogTimeout__block_invoke;
  v5[3] = &unk_278C73728;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

double __50__AMMotionDetectionTriggerManager_watchdogTimeout__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 104);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setWatchdogTimeout:(double)timeout
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __54__AMMotionDetectionTriggerManager_setWatchdogTimeout___block_invoke;
  v4[3] = &unk_278C737A0;
  v4[4] = self;
  *&v4[5] = timeout;
  dispatch_sync(accessQueue, v4);
}

double __54__AMMotionDetectionTriggerManager_setWatchdogTimeout___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 104) = result;
  return result;
}

- (void)_updateMotionDetectionTriggerMaskWithDataSample:(id)sample andFilteredDataSample:(id)dataSample
{
  v17 = *MEMORY[0x277D85DE8];
  accessQueue = self->_accessQueue;
  dataSampleCopy = dataSample;
  sampleCopy = sample;
  dispatch_assert_queue_V2(accessQueue);
  v9 = [(AMMotionDetectionTriggerManager *)self _computeThresholdMaskFromMotionData:sampleCopy filtered:0];

  v10 = [(AMMotionDetectionTriggerManager *)self _computeThresholdMaskFromMotionData:dataSampleCopy filtered:1];
  v12 = v10 | v9;
  if (v12 != self->_triggerState)
  {
    self->_triggerState = v12;
    v13 = AMLogMotion(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109376;
      v14[1] = v12 != 0;
      v15 = 2048;
      v16 = v12;
      _os_log_impl(&dword_23EE48000, v13, OS_LOG_TYPE_DEFAULT, "Ambient motion detect : %{BOOL}d : 0x%04llx", v14, 0x12u);
    }

    [(AMMotionDetectionTriggerManager *)self _accessQueue_updatePublishedTriggers];
  }
}

- (void)_setEnabledTriggers:(unint64_t)triggers
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__AMMotionDetectionTriggerManager__setEnabledTriggers___block_invoke;
  v4[3] = &unk_278C737A0;
  v4[4] = self;
  v4[5] = triggers;
  dispatch_async(accessQueue, v4);
}

- (void)_accessQueue_updatePublishedTriggers
{
  dispatch_assert_queue_V2(self->_accessQueue);
  triggerState = self->_triggerState;
  if (triggerState == 0x8000000000000000)
  {
    v4 = 0x8000000000000000;
  }

  else
  {
    v4 = self->_enabledTriggers & triggerState;
  }

  [(AMMotionDetectionTriggerManager *)self _accessQueue_setPublishedTriggers:v4];
}

- (void)_accessQueue_setPublishedTriggers:(unint64_t)triggers
{
  dispatch_assert_queue_V2(self->_accessQueue);
  if (self->_publishedTriggers != triggers)
  {
    self->_publishedTriggers = triggers;

    [(AMMotionDetectionTriggerManager *)self _notifyObserversUpdateMotionDetectionTriggerState:triggers];
  }
}

- (void)_notifyObserversUpdateMotionDetectionTriggerState:(unint64_t)state
{
  v24 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_accessQueue);
  v5 = [(NSMutableArray *)self->_observerContexts copy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        observer = [v10 observer];
        queue = [v10 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __85__AMMotionDetectionTriggerManager__notifyObserversUpdateMotionDetectionTriggerState___block_invoke;
        block[3] = &unk_278C737C8;
        v16 = observer;
        selfCopy = self;
        stateCopy = state;
        v13 = observer;
        dispatch_async(queue, block);
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }
}

- (unint64_t)_computeThresholdMaskFromMotionData:(id)data filtered:(BOOL)filtered
{
  filteredCopy = filtered;
  v46 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v28 = 0x3E4CCCCD3DCCCCCDLL;
  v29 = xmmword_23EE4FC50;
  v30 = 0;
  v31 = 0x3E99999A3E19999ALL;
  v32 = vdupq_n_s64(4uLL);
  v33 = 0;
  v34 = 0x3F19999A3F000000;
  v35 = xmmword_23EE4FC60;
  v36 = 0;
  v37 = 0x3E4CCCCD3DCCCCCDLL;
  v38 = xmmword_23EE4FC70;
  v39 = 1;
  v40 = 0x3E99999A3E19999ALL;
  v41 = xmmword_23EE4FC80;
  v42 = 1;
  v43 = 0x3F19999A3F000000;
  v44 = xmmword_23EE4FC90;
  v45 = 1;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:0 ascending:0 selector:sel_compare_];
  v26 = dataCopy;
  data = [dataCopy data];
  v27 = v6;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v9 = [data sortedArrayUsingDescriptors:v8];

  v10 = [v9 objectAtIndexedSubscript:0];
  [v10 floatValue];
  v12 = v11;

  v13 = 0;
  for (i = 0; i != 6; ++i)
  {
    v15 = (&v28 + 4 * i);
    if (*(v15 + 24) == filteredCopy)
    {
      v16 = *(v15 + 1);
      v17 = [v9 count];
      if (v16 >= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        v19 = 0;
        v20 = 0.0;
        do
        {
          v21 = [v9 objectAtIndexedSubscript:v19];
          [v21 floatValue];
          v20 = v20 + v22;

          ++v19;
          v23 = [v9 count];
          if (v16 >= v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = v16;
          }
        }

        while (v19 < v24);
      }

      else
      {
        v20 = 0.0;
      }

      if (v20 >= v15[1] || v12 >= *v15)
      {
        v13 |= *(v15 + 2);
      }
    }
  }

  return v13;
}

- (id)_firstOrderLowPassArray:(id)array last:(id)last dt:(float)dt tau:(float)tau
{
  arrayCopy = array;
  lastCopy = last;
  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  v12 = 0;
  v13 = dt / (dt + tau);
  LODWORD(v14) = 1.0;
  do
  {
    v15 = [arrayCopy objectAtIndexedSubscript:{v12, v14}];
    v16 = [lastCopy objectAtIndexedSubscript:v12];
    [v15 floatValue];
    v18 = v17;
    [v16 floatValue];
    *&v20 = ((1.0 - v13) * v19) + (v13 * v18);
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    [v11 setObject:v21 atIndexedSubscript:v12];

    ++v12;
  }

  while (v12 != 16);

  return v11;
}

- (id)_subtractArrayX:(id)x andY:(id)y
{
  xCopy = x;
  yCopy = y;
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  for (i = 0; i != 16; ++i)
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [xCopy objectAtIndexedSubscript:i];
    [v10 floatValue];
    v12 = v11;
    v13 = [yCopy objectAtIndexedSubscript:i];
    [v13 floatValue];
    *&v15 = v12 - v14;
    v16 = [v9 numberWithFloat:v15];
    [v7 setObject:v16 atIndexedSubscript:i];
  }

  return v7;
}

- (id)_unitIntervalClipArray:(id)array
{
  arrayCopy = array;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
  for (i = 0; i != 16; ++i)
  {
    v6 = [arrayCopy objectAtIndexedSubscript:i];
    [v6 floatValue];
    v8 = &unk_285177C08;
    if (v7 >= 0.0)
    {
      v8 = &unk_285177C18;
      if (v7 <= 1.0)
      {
        v8 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      }
    }

    [v4 setObject:v8 atIndexedSubscript:i];
  }

  return v4;
}

- (void)_updateFilteredMotionDensity:(id)density
{
  densityCopy = density;
  [(_AMMotionDetectionDataSample *)self->_dataSample timestampSeconds];
  v5 = v4;
  [densityCopy timestampSeconds];
  v7 = v6;
  v8 = v6 - v5;
  if (v5 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0.0)
  {
    data = [densityCopy data];
    data2 = [(_AMMotionDetectionDataSample *)self->_motionDensityBackground data];
    v12 = [(AMMotionDetectionTriggerManager *)self _subtractArrayX:data andY:data2];
    v13 = [(AMMotionDetectionTriggerManager *)self _unitIntervalClipArray:v12];

    filteredMotionDensity = self->_filteredMotionDensity;
    data3 = [(_AMMotionDetectionDataSample *)filteredMotionDensity data];
    v16 = v9;
    LODWORD(v17) = 1045220557;
    *&v18 = v16;
    v19 = [(AMMotionDetectionTriggerManager *)self _firstOrderLowPassArray:v13 last:data3 dt:v18 tau:v17];
    [(_AMMotionDetectionDataSample *)filteredMotionDensity setData:v19];

    [(_AMMotionDetectionDataSample *)self->_filteredMotionDensity setTimestampSeconds:v7];
    motionDensityBackground = self->_motionDensityBackground;
    data4 = [densityCopy data];
    data5 = [(_AMMotionDetectionDataSample *)self->_motionDensityBackground data];
    LODWORD(v23) = 1120403456;
    *&v24 = v16;
    v25 = [(AMMotionDetectionTriggerManager *)self _firstOrderLowPassArray:data4 last:data5 dt:v24 tau:v23];
    [(_AMMotionDetectionDataSample *)motionDensityBackground setData:v25];

    [(_AMMotionDetectionDataSample *)self->_motionDensityBackground setTimestampSeconds:v7];
  }
}

- (void)_handleMotionDataSample:(id)sample
{
  sampleCopy = sample;
  dispatch_assert_queue_V2(self->_accessQueue);
  data = [sampleCopy data];
  v7 = [data count];

  data2 = [sampleCopy data];
  v9 = [data2 objectAtIndexedSubscript:0];
  [v9 floatValue];

  if (v7 == 16)
  {
    v11 = AMLogMotion(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(AMMotionDetectionTriggerManager *)sampleCopy _handleMotionDataSample:v11];
    }

    [(AMMotionDetectionTriggerManager *)self _updateFilteredMotionDensity:sampleCopy];
    [(AMMotionDetectionTriggerManager *)self _updateMotionDetectionTriggerMaskWithDataSample:sampleCopy andFilteredDataSample:self->_filteredMotionDensity];
    objc_storeStrong(&self->_dataSample, sample);
    [(AMMotionDetectionTriggerManager *)self _updateWatchdogTimer];
  }
}

- (void)_handleMotionDetectBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  v11 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_accessQueue);
  if (booleanCopy)
  {
    enabledTriggers = self->_enabledTriggers;
  }

  else
  {
    enabledTriggers = 0;
  }

  if (self->_triggerState != enabledTriggers)
  {
    self->_triggerState = enabledTriggers;
    v7 = AMLogMotion(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109376;
      v8[1] = enabledTriggers != 0;
      v9 = 2048;
      v10 = enabledTriggers;
      _os_log_impl(&dword_23EE48000, v7, OS_LOG_TYPE_DEFAULT, "Ambient motion detect : %{BOOL}d : 0x%04llx", v8, 0x12u);
    }

    [(AMMotionDetectionTriggerManager *)self _accessQueue_updatePublishedTriggers];
    [(AMMotionDetectionTriggerManager *)self _updateWatchdogTimer];
  }
}

- (void)_setMotionDetectionMonitoringEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  dispatch_assert_queue_V2(self->_accessQueue);
  self->_triggerState = 0x8000000000000000;
  self->_publishedTriggers = 0x8000000000000000;
  if (enabledCopy)
  {
    watchdogTimer = objc_alloc_init(MEMORY[0x277CEF768]);
    [(NSTimer *)watchdogTimer setIdentifier:@"com.apple.Ambient.MotionDetectionManager"];
    [(NSTimer *)watchdogTimer setEventMask:128];
    [(NSTimer *)watchdogTimer setSamplingInterval:2.0];
    [(NSTimer *)watchdogTimer setActivateMotionDetect:1];
    [(NSTimer *)watchdogTimer setAttentionLostTimeout:0.1];
    [(NSTimer *)watchdogTimer setSampleWhileAbsent:1];
    awClientOverride = self->_awClientOverride;
    if (awClientOverride)
    {
      v7 = awClientOverride;
    }

    else
    {
      v7 = objc_alloc_init(MEMORY[0x277CEF760]);
    }

    awClient = self->_awClient;
    self->_awClient = v7;

    [(AWAttentionAwarenessClient *)self->_awClient setConfiguration:watchdogTimer];
    objc_initWeak(&location, self);
    accessQueue = self->_accessQueue;
    v12 = self->_awClient;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __72__AMMotionDetectionTriggerManager__setMotionDetectionMonitoringEnabled___block_invoke;
    v19[3] = &unk_278C737F0;
    objc_copyWeak(&v20, &location);
    [(AWAttentionAwarenessClient *)v12 setEventHandlerWithQueue:accessQueue block:v19];
    v14 = self->_awClient;
    v18 = 0;
    [(AWAttentionAwarenessClient *)v14 resumeWithError:&v18];
    v9 = v18;
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  else
  {
    v8 = self->_awClient;
    v17 = 0;
    [(AWAttentionAwarenessClient *)v8 invalidateWithError:&v17];
    v9 = v17;
    v10 = self->_awClient;
    self->_awClient = 0;

    [(NSTimer *)self->_watchdogTimer invalidate];
    watchdogTimer = self->_watchdogTimer;
    self->_watchdogTimer = 0;
  }

  if (v9)
  {
    v16 = AMLogMotion(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(AMMotionDetectionTriggerManager *)enabledCopy _setMotionDetectionMonitoringEnabled:v9, v16];
    }
  }
}

void __72__AMMotionDetectionTriggerManager__setMotionDetectionMonitoringEnabled___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_opt_self();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v6 = v9;
    if ([v6 motionResult])
    {
      [WeakRetained _handleMotionDetectBoolean:{objc_msgSend(v6, "motionResult") == 2}];
    }

    else
    {
      v7 = objc_alloc_init(_AMMotionDetectionDataSample);
      v8 = [v6 motionData];
      [(_AMMotionDetectionDataSample *)v7 setData:v8];

      [v6 timestamp];
      [(_AMMotionDetectionDataSample *)v7 setTimestampSeconds:?];
      [WeakRetained _handleMotionDataSample:v7];
    }
  }
}

- (void)_updateWatchdogTimer
{
  dispatch_assert_queue_V2(self->_accessQueue);
  [(NSTimer *)self->_watchdogTimer invalidate];
  watchdogTimer = self->_watchdogTimer;
  self->_watchdogTimer = 0;

  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__AMMotionDetectionTriggerManager__updateWatchdogTimer__block_invoke;
  v4[3] = &unk_278C735B0;
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x277D85CD0], v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __55__AMMotionDetectionTriggerManager__updateWatchdogTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __55__AMMotionDetectionTriggerManager__updateWatchdogTimer__block_invoke_2;
    v5[3] = &unk_278C73868;
    v5[4] = WeakRetained;
    objc_copyWeak(&v6, (a1 + 32));
    dispatch_sync(v4, v5);
    objc_destroyWeak(&v6);
  }
}

void __55__AMMotionDetectionTriggerManager__updateWatchdogTimer__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 72))
  {
    v3 = MEMORY[0x277CBEBB8];
    v4 = *(v1 + 104);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__AMMotionDetectionTriggerManager__updateWatchdogTimer__block_invoke_3;
    v10[3] = &unk_278C73840;
    objc_copyWeak(&v11, (a1 + 40));
    v5 = [v3 scheduledTimerWithTimeInterval:0 repeats:v10 block:v4];
    v6 = *(a1 + 32);
    v7 = *(v6 + 112);
    *(v6 + 112) = v5;

    if (!*(*(a1 + 32) + 112))
    {
      v9 = AMLogMotion(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __55__AMMotionDetectionTriggerManager__updateWatchdogTimer__block_invoke_2_cold_1(v9);
      }
    }

    objc_destroyWeak(&v11);
  }
}

void __55__AMMotionDetectionTriggerManager__updateWatchdogTimer__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__AMMotionDetectionTriggerManager__updateWatchdogTimer__block_invoke_4;
    block[3] = &unk_278C73818;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void *__55__AMMotionDetectionTriggerManager__updateWatchdogTimer__block_invoke_4(void *result)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = result[4];
  if (*(v1 + 72))
  {
    v2 = result;
    *(v1 + 72) = 0;
    v3 = AMLogMotion(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v2[4] + 72);
      v5[0] = 67109376;
      v5[1] = v4 != 0;
      v6 = 2048;
      v7 = v4;
      _os_log_impl(&dword_23EE48000, v3, OS_LOG_TYPE_DEFAULT, "Ambient motion detect (watchdog) : %{BOOL}d : 0x%04llx", v5, 0x12u);
    }

    return [v2[4] _accessQueue_updatePublishedTriggers];
  }

  return result;
}

- (void)_handleMotionDataSample:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_23EE48000, a2, OS_LOG_TYPE_DEBUG, "Handling motion data sample: %@", &v2, 0xCu);
}

- (void)_setMotionDetectionMonitoringEnabled:(NSObject *)a3 .cold.1(char a1, void *a2, NSObject *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = [a2 localizedDescription];
  v6[0] = 67109378;
  v6[1] = a1 & 1;
  v7 = 2112;
  v8 = v5;
  _os_log_error_impl(&dword_23EE48000, a3, OS_LOG_TYPE_ERROR, "Ambient motion detection monitoring: %{BOOL}d failed : %@", v6, 0x12u);
}

@end