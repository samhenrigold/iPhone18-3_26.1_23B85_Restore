@interface HDHeartRateDataAggregator
- (HDHeartRateDataAggregator)initWithDataCollectionManager:(id)manager;
- (id)configurationForCollector:(id)collector;
- (uint64_t)_shouldRequestActiveCollectionForConfiguration:(uint64_t)configuration;
- (void)dataCollector:(id)collector didCollectSensorData:(id)data device:(id)device options:(unint64_t)options;
- (void)dealloc;
- (void)setConfiguration:(id)configuration;
@end

@implementation HDHeartRateDataAggregator

- (HDHeartRateDataAggregator)initWithDataCollectionManager:(id)manager
{
  v11.receiver = self;
  v11.super_class = HDHeartRateDataAggregator;
  v3 = [(HDDataAggregator *)&v11 initWithDataCollectionManager:manager];
  if (v3)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_workoutManagerStateChanged_ name:@"HDWorkoutManagerStateDidChange" object:0];

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    features = [mEMORY[0x277CCDD30] features];
    hRCoordinator = [features HRCoordinator];

    if ((hRCoordinator & 1) == 0)
    {
      v8 = objc_alloc_init(HDHeartRateDataCollectionForwarder);
      dataForwarder = v3->_dataForwarder;
      v3->_dataForwarder = v8;
    }
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"HDWorkoutManagerStateDidChange" object:0];

  v4.receiver = self;
  v4.super_class = HDHeartRateDataAggregator;
  [(HDHeartRateDataAggregator *)&v4 dealloc];
}

- (id)configurationForCollector:(id)collector
{
  v35 = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  allCollectors = [(HDDataAggregator *)self allCollectors];
  configuration = [(HDDataAggregator *)self configuration];
  if (([(HDHeartRateDataAggregator *)self _shouldRequestActiveCollectionForConfiguration:configuration]& 1) == 0)
  {
    v11 = [HDDataCollectorConfiguration configurationWithType:1 aggregatorConfiguration:configuration];
    _HKInitializeLogging();
    v12 = *MEMORY[0x277CCC298];
    if (!os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
  features = [mEMORY[0x277CCDD30] features];
  hRCoordinator = [features HRCoordinator];

  if (hRCoordinator)
  {
    v10 = 2;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = allCollectors;
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
      v10 = 2;
      v23 = allCollectors;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          collector = [v18 collector];

          if (collector == collectorCopy)
          {
            goto LABEL_18;
          }

          state = [v18 state];
          collectionType = [state collectionType];

          if (collectionType == 2)
          {
            v10 = 1;
LABEL_18:
            allCollectors = v23;
            goto LABEL_19;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
        allCollectors = v23;
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 2;
    }

LABEL_19:
  }

  v11 = [HDDataCollectorConfiguration configurationWithType:v10 aggregatorConfiguration:configuration];
  _HKInitializeLogging();
  v12 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
LABEL_21:
    *buf = 138543874;
    selfCopy = self;
    v31 = 2114;
    v32 = collectorCopy;
    v33 = 2114;
    v34 = v11;
    _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Configuration for collector %{public}@: %{public}@", buf, 0x20u);
  }

LABEL_22:

  return v11;
}

- (uint64_t)_shouldRequestActiveCollectionForConfiguration:(uint64_t)configuration
{
  v3 = a2;
  if (configuration)
  {
    dataCollectionManager = [configuration dataCollectionManager];
    profile = [dataCollectionManager profile];
    workoutManager = [profile workoutManager];
    isInHeartRateRecovery = [workoutManager isInHeartRateRecovery];

    if (isInHeartRateRecovery)
    {
LABEL_3:
      configuration = 1;
      goto LABEL_15;
    }

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isRealityDevice = [mEMORY[0x277CCDD30] isRealityDevice];

    if (isRealityDevice)
    {
      if ([v3 hasBackgroundObserver] & 1) != 0 || (objc_msgSend(v3, "hasForegroundObserver"))
      {
        configuration = 0;
        goto LABEL_15;
      }
    }

    else
    {
      mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
      isAppleWatch = [mEMORY[0x277CCDD30]2 isAppleWatch];

      if (isAppleWatch)
      {
        if ([v3 hasActiveWorkout])
        {
          goto LABEL_3;
        }

        hasForegroundObserver = [v3 hasForegroundObserver];
LABEL_14:
        configuration = hasForegroundObserver;
        goto LABEL_15;
      }
    }

    if ([v3 hasForegroundObserver] & 1) != 0 || (objc_msgSend(v3, "hasActiveWorkout"))
    {
      goto LABEL_3;
    }

    hasForegroundObserver = [v3 hasBackgroundObserver];
    goto LABEL_14;
  }

LABEL_15:

  return configuration;
}

- (void)dataCollector:(id)collector didCollectSensorData:(id)data device:(id)device options:(unint64_t)options
{
  optionsCopy = options;
  v93[1] = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  dataCopy = data;
  v88.receiver = self;
  v88.super_class = HDHeartRateDataAggregator;
  deviceCopy = device;
  [HDDataAggregator dataCollector:sel_dataCollector_didCollectSensorData_device_options_ didCollectSensorData:collectorCopy device:dataCopy options:?];
  if ((optionsCopy & 1) == 0)
  {
    v12 = [collectorCopy sourceForDataAggregator:self];
    v13 = v12;
    if (v12)
    {
      v54 = v12;
      v56 = collectorCopy;
      v63 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
      canonicalUnit = [v63 canonicalUnit];
      v62 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v84 = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v55 = dataCopy;
      v15 = dataCopy;
      v16 = [v15 countByEnumeratingWithState:&v84 objects:v92 count:16];
      if (!v16)
      {
        LOBYTE(v18) = 0;
        goto LABEL_39;
      }

      v17 = v16;
      v18 = 0;
      v19 = *v85;
      v66 = *MEMORY[0x277CCE030];
      v57 = *MEMORY[0x277CCE028];
      v58 = canonicalUnit;
      v59 = *v85;
      v60 = v15;
      selfCopy = self;
      while (1)
      {
        v20 = 0;
        v65 = v17;
        do
        {
          if (*v85 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v84 + 1) + 8 * v20);
          if (![(HDDataAggregator *)self doesDatumPredateDatabaseObliteration:v21])
          {
            quantity = [v21 quantity];
            if ([quantity isCompatibleWithUnit:canonicalUnit])
            {
              [quantity doubleValueForUnit:canonicalUnit];
              if (v24 >= 0.0)
              {
                v74 = v18;
                metadata = [v21 metadata];
                v31 = [metadata valueForKey:v66];

                v73 = v31;
                v72 = [v31 integerValue] == 10;
                v67 = MEMORY[0x277CCD800];
                quantity2 = [v21 quantity];
                dateInterval = [v21 dateInterval];
                startDate = [dateInterval startDate];
                dateInterval2 = [v21 dateInterval];
                endDate = [dateInterval2 endDate];
                if (self)
                {
                  v33 = MEMORY[0x277CBEB38];
                  metadata2 = [v21 metadata];
                  v35 = [v33 dictionaryWithDictionary:metadata2];

                  [v35 removeObjectForKey:v57];
                  v36 = [v35 valueForKey:v66];
                  v37 = v36;
                  if (v36)
                  {
                    v38 = [v36 integerValue] != 9;
                  }

                  else
                  {
                    v38 = 1;
                  }

                  dataCollectionManager = [(HDDataAggregator *)self dataCollectionManager];
                  profile = [dataCollectionManager profile];
                  workoutManager = [profile workoutManager];

                  currentWorkoutConfiguration = [workoutManager currentWorkoutConfiguration];

                  if (currentWorkoutConfiguration && v38)
                  {
                    v93[0] = v66;
                    *buf = &unk_283CB4278;
                    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v93 count:1];
                    [v35 addEntriesFromDictionary:v43];
                  }

                  canonicalUnit = v58;
                }

                else
                {
                  v35 = 0;
                }

                v44 = [v67 _quantitySamplesEnforcingDurationWithType:v63 quantity:quantity2 startDate:startDate endDate:endDate device:deviceCopy metadata:v35];

                datumIdentifier = [v21 datumIdentifier];
                v15 = v60;
                self = selfCopy;
                if (datumIdentifier)
                {
                  v46 = datumIdentifier;
                  v47 = [v44 count];

                  if (v47)
                  {
                    v48 = [v44 objectAtIndexedSubscript:0];
                    datumIdentifier2 = [v21 datumIdentifier];
                    [v48 _setUUID:datumIdentifier2];
                  }
                }

                v18 = v72 | v74;
                [v62 addObjectsFromArray:v44];

                v19 = v59;
                v17 = v65;
              }

              else
              {
                v25 = v24;
                _HKInitializeLogging();
                v26 = *MEMORY[0x277CCC298];
                if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  *&buf[4] = quantity;
                  v90 = 2048;
                  v91 = v25;
                  v27 = v26;
                  v28 = "Rejecting heart rate quantity %@ because it's value (%f) is less than 0.0";
                  goto LABEL_17;
                }
              }
            }

            else
            {
              _HKInitializeLogging();
              v29 = *MEMORY[0x277CCC298];
              if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = quantity;
                v90 = 2114;
                v91 = *&canonicalUnit;
                v27 = v29;
                v28 = "Rejecting heart rate quantity %@ because it is not compatible with canonical unit %{public}@";
LABEL_17:
                _os_log_error_impl(&dword_228986000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0x16u);
              }
            }

            goto LABEL_31;
          }

          _HKInitializeLogging();
          v22 = *MEMORY[0x277CCC298];
          if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = self;
            _os_log_debug_impl(&dword_228986000, v22, OS_LOG_TYPE_DEBUG, "%{public}@: Rejecting sensor datum from pre-obliteration", buf, 0xCu);
          }

LABEL_31:
          ++v20;
        }

        while (v17 != v20);
        v50 = [v15 countByEnumeratingWithState:&v84 objects:v92 count:16];
        v17 = v50;
        if (!v50)
        {
LABEL_39:

          v13 = v54;
          [(HDDataCollectionForwarder *)self->_dataForwarder insertSamples:v62 device:deviceCopy source:v54];
          dataCollectionManager2 = [(HDDataAggregator *)self dataCollectionManager];
          v77[0] = MEMORY[0x277D85DD0];
          v77[1] = 3221225472;
          v77[2] = __79__HDHeartRateDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke;
          v77[3] = &unk_27862FC38;
          v77[4] = self;
          v78 = v62;
          v79 = v15;
          collectorCopy = v56;
          v80 = v56;
          v81 = v54;
          v82 = deviceCopy;
          v83 = v18 & 1;
          v75[0] = MEMORY[0x277D85DD0];
          v75[1] = 3221225472;
          v75[2] = __79__HDHeartRateDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke_2;
          v75[3] = &unk_2786130B0;
          v76 = v78;
          v53 = v78;
          [dataCollectionManager2 performSaveWithMaximumLatency:v77 block:v75 completion:1.0];

          dataCopy = v55;
          goto LABEL_40;
        }
      }
    }

    _HKInitializeLogging();
    v51 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = collectorCopy;
      _os_log_error_impl(&dword_228986000, v51, OS_LOG_TYPE_ERROR, "Collector %{public}@ failed to provide a source", buf, 0xCu);
    }

LABEL_40:
  }
}

void __79__HDHeartRateDataAggregator_dataCollector_didCollectSensorData_device_options___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    v6 = *MEMORY[0x277CCC298];
    if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412546;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_error_impl(&dword_228986000, v6, OS_LOG_TYPE_ERROR, "Failed to persist heart rate samples '%@': %{public}@", &v8, 0x16u);
    }
  }
}

- (void)setConfiguration:(id)configuration
{
  v18 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  _HKInitializeLogging();
  v5 = *MEMORY[0x277CCC298];
  if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v16 = 2114;
    v17 = configurationCopy;
    _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting configuration update to %{public}@", buf, 0x16u);
  }

  if ([(HDHeartRateDataAggregator *)self _shouldRequestActiveCollectionForConfiguration:configurationCopy])
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    features = [mEMORY[0x277CCDD30] features];
    if ([features HRCoordinator])
    {
      mEMORY[0x277CCDD30]2 = [MEMORY[0x277CCDD30] sharedBehavior];
      isRealityDevice = [mEMORY[0x277CCDD30]2 isRealityDevice];

      if (!isRealityDevice)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v10 = MEMORY[0x277CBEB98];
    v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    v12 = [v10 setWithObject:v11];
    [HDActiveDataCollectionObserverServer launchObservingProcessesForTypes:v12];
  }

LABEL_9:
  v13.receiver = self;
  v13.super_class = HDHeartRateDataAggregator;
  [(HDDataAggregator *)&v13 setConfiguration:configurationCopy];
}

@end