@interface HDPassiveDataAggregator
- (Class)sensorDatumClass;
- (id)dataObjectsFromSensorDatum:(id)datum error:(id *)error;
- (void)dataCollector:(id)collector didCollectSensorData:(id)data device:(id)device options:(unint64_t)options;
@end

@implementation HDPassiveDataAggregator

- (Class)sensorDatumClass
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)dataObjectsFromSensorDatum:(id)datum error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

- (void)dataCollector:(id)collector didCollectSensorData:(id)data device:(id)device options:(unint64_t)options
{
  v60 = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  dataCopy = data;
  deviceCopy = device;
  v50.receiver = self;
  v50.super_class = HDPassiveDataAggregator;
  [(HDDataAggregator *)&v50 dataCollector:collectorCopy didCollectSensorData:dataCopy device:deviceCopy options:options];
  if ((options & 1) == 0)
  {
    v13 = [(HDPassiveDataAggregator *)collectorCopy sourceForDataAggregator:self];
    v14 = v13;
    if (v13)
    {
      v39 = v13;
      v40 = deviceCopy;
      v42 = collectorCopy;
      [(HDPassiveDataAggregator *)self sensorDatumClass];
      v43 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v41 = dataCopy;
      v15 = dataCopy;
      v16 = [v15 countByEnumeratingWithState:&v46 objects:v59 count:16];
      v17 = MEMORY[0x277CCC298];
      if (v16)
      {
        v18 = v16;
        v19 = *v47;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v47 != v19)
            {
              objc_enumerationMutation(v15);
            }

            v21 = *(*(&v46 + 1) + 8 * i);
            if (objc_opt_isKindOfClass())
            {
              if ([(HDDataAggregator *)self doesDatumPredateDatabaseObliteration:v21])
              {
                _HKInitializeLogging();
                v22 = *v17;
                if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  selfCopy = self;
                  _os_log_debug_impl(&dword_228986000, v22, OS_LOG_TYPE_DEBUG, "%{public}@: Rejecting sensor datum from pre-obliteration", buf, 0xCu);
                }
              }

              else
              {
                v45 = 0;
                v29 = [(HDPassiveDataAggregator *)self dataObjectsFromSensorDatum:v21 error:&v45];
                v30 = v45;
                if (v29)
                {
                  [(HDPassiveDataAggregator *)v43 addObjectsFromArray:v29];
                }

                else
                {
                  _HKInitializeLogging();
                  v31 = *v17;
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    v32 = v31;
                    v33 = objc_opt_class();
                    *buf = 138412802;
                    selfCopy = v21;
                    v53 = 2114;
                    v54 = v33;
                    v55 = 2114;
                    v56 = v30;
                    v34 = v33;
                    _os_log_error_impl(&dword_228986000, v32, OS_LOG_TYPE_ERROR, "Failed to produce objects from sensor datum %@ (%{public}@): %{public}@", buf, 0x20u);
                  }
                }

                v17 = MEMORY[0x277CCC298];
              }
            }

            else
            {
              _HKInitializeLogging();
              v23 = *v17;
              if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
              {
                v24 = v23;
                v25 = objc_opt_class();
                v26 = v25;
                sensorDatumClass = [(HDPassiveDataAggregator *)self sensorDatumClass];
                *buf = 138543618;
                selfCopy = v25;
                v53 = 2114;
                v54 = sensorDatumClass;
                v28 = sensorDatumClass;
                _os_log_error_impl(&dword_228986000, v24, OS_LOG_TYPE_ERROR, "Rejecting sensor datum of unexpected class %{public}@ (expected %{public}@)", buf, 0x16u);
              }
            }
          }

          v18 = [v15 countByEnumeratingWithState:&v46 objects:v59 count:16];
        }

        while (v18);
      }

      v44 = 0;
      collectorCopy = v42;
      v14 = v39;
      deviceCopy = v40;
      v35 = [(HDDataAggregator *)self persistObjects:v43 usedDatums:v15 collector:v42 source:v39 device:v40 resolveAssociations:0 error:&v44];
      v36 = v44;
      if (!v35)
      {
        _HKInitializeLogging();
        v37 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          selfCopy = v43;
          v53 = 2114;
          v54 = v15;
          v55 = 2114;
          v56 = v42;
          v57 = 2114;
          v58 = v36;
          _os_log_error_impl(&dword_228986000, v37, OS_LOG_TYPE_ERROR, "Failed to persist %@ through %{public}@ from %{public}@: %{public}@", buf, 0x2Au);
        }
      }

      dataCopy = v41;
    }

    else
    {
      _HKInitializeLogging();
      v38 = *MEMORY[0x277CCC298];
      if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy = collectorCopy;
        _os_log_error_impl(&dword_228986000, v38, OS_LOG_TYPE_ERROR, "Collector %{public}@ failed to provide a source", buf, 0xCu);
      }
    }
  }
}

@end