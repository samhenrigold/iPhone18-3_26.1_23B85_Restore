@interface HDSeriesQuantityDataAggregator
- (BOOL)requiresNewSeriesForDatum:(id)datum lastDatum:(id)lastDatum seriesLength:(int64_t)length currentSeries:(id)series configuration:(id)configuration aggregationInterval:(double)interval;
- (id)_codableDatumsFromData:(id)data;
- (id)aggregateForState:(id)state collector:(id)collector device:(id)device requestedAggregationDate:(id)date mode:(int64_t)mode options:(unint64_t)options error:(id *)error;
- (id)initForQuantityType:(id)type dataCollectionManager:(id)manager;
- (id)initialAggregationState;
- (uint64_t)_successForPersistenceError:(void *)error series:(void *)series error:;
@end

@implementation HDSeriesQuantityDataAggregator

- (id)initForQuantityType:(id)type dataCollectionManager:(id)manager
{
  v5.receiver = self;
  v5.super_class = HDSeriesQuantityDataAggregator;
  result = [(HDActiveQuantityDataAggregator *)&v5 initForQuantityType:type dataCollectionManager:manager];
  if (result)
  {
    *(result + 26) = 0;
  }

  return result;
}

- (uint64_t)_successForPersistenceError:(void *)error series:(void *)series error:
{
  v7 = a2;
  errorCopy = error;
  if (self)
  {
    v9 = [v7 hk_isHealthKitErrorWithCode:3];
    if (v9)
    {
      uUID = [errorCopy UUID];
      os_unfair_lock_lock((self + 104));
      v11 = *(self + 112);
      if (!v11)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v13 = *(self + 112);
        *(self + 112) = v12;

        v11 = *(self + 112);
      }

      [v11 addObject:uUID];
      os_unfair_lock_unlock((self + 104));
    }

    else
    {
      uUID = v7;
      if (uUID)
      {
        if (series)
        {
          v14 = uUID;
          *series = uUID;
        }

        else
        {
          _HKLogDroppedError();
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)requiresNewSeriesForDatum:(id)datum lastDatum:(id)lastDatum seriesLength:(int64_t)length currentSeries:(id)series configuration:(id)configuration aggregationInterval:(double)interval
{
  datumCopy = datum;
  lastDatumCopy = lastDatum;
  seriesCopy = series;
  configurationCopy = configuration;
  uUID = [seriesCopy UUID];
  if (self)
  {
    v19 = uUID;
    os_unfair_lock_lock(&self->_lock);
    v20 = [(NSMutableSet *)self->_lock_failedSeriesUUIDs containsObject:v19];

    os_unfair_lock_unlock(&self->_lock);
    if (v20)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  if (!lastDatumCopy)
  {
    if (length > 288)
    {
      goto LABEL_3;
    }

    goto LABEL_15;
  }

  metadata = [lastDatumCopy metadata];
  metadata2 = [datumCopy metadata];
  v24 = metadata2;
  if (metadata == metadata2)
  {
  }

  else
  {
    metadata3 = [datumCopy metadata];
    if (!metadata3)
    {

      goto LABEL_3;
    }

    v26 = metadata3;
    metadata4 = [lastDatumCopy metadata];
    metadata5 = [datumCopy metadata];
    v46 = [metadata4 isEqual:metadata5];

    if (!v46)
    {
LABEL_3:
      v21 = 1;
      goto LABEL_16;
    }
  }

  dateInterval = [datumCopy dateInterval];
  startDate = [dateInterval startDate];
  [startDate timeIntervalSinceReferenceDate];
  v32 = v31;
  dateInterval2 = [lastDatumCopy dateInterval];
  endDate = [dateInterval2 endDate];
  [endDate timeIntervalSinceReferenceDate];
  v36 = v35;

  v21 = 1;
  if (length <= 288 && v32 - v36 <= fmax(interval, 120.0))
  {
LABEL_15:
    dateInterval3 = [datumCopy dateInterval];
    endDate2 = [dateInterval3 endDate];
    [endDate2 timeIntervalSinceReferenceDate];
    v40 = v39;
    startDate2 = [seriesCopy startDate];
    [startDate2 timeIntervalSinceReferenceDate];
    v43 = v40 - v42;

    [configurationCopy maximumSeriesDuration];
    v21 = v43 > v44;
  }

LABEL_16:

  return v21;
}

- (id)_codableDatumsFromData:(id)data
{
  dataCopy = data;
  if (data)
  {
    v3 = a2;
    quantityType = [dataCopy quantityType];
    canonicalUnit = [quantityType canonicalUnit];

    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__HDSeriesQuantityDataAggregator__codableDatumsFromData___block_invoke;
    v8[3] = &unk_278614928;
    v9 = canonicalUnit;
    v6 = canonicalUnit;
    dataCopy = [v3 hk_map:v8];
  }

  return dataCopy;
}

id __57__HDSeriesQuantityDataAggregator__codableDatumsFromData___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCD180];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  v6 = [v4 dateInterval];
  [v6 duration];
  *&v7 = v7;
  [v5 setDuration:v7];

  v8 = [v4 dateInterval];
  v9 = [v8 startDate];
  [v9 timeIntervalSinceReferenceDate];
  [v5 setTimeInterval:?];

  v10 = [v4 quantity];

  [v10 doubleValueForUnit:*(a1 + 32)];
  [v5 setValue:?];

  return v5;
}

- (id)aggregateForState:(id)state collector:(id)collector device:(id)device requestedAggregationDate:(id)date mode:(int64_t)mode options:(unint64_t)options error:(id *)error
{
  v158 = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  deviceCopy = device;
  dateCopy = date;
  stateCopy = state;
  selfCopy = self;
  if (self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      openSeries = [stateCopy openSeries];
      if (openSeries && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        _HKInitializeLogging();
        v17 = *MEMORY[0x277CCC298];
        v18 = os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT);
        v19 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
        if (v18)
        {
          v84 = v17;
          v85 = objc_opt_class();
          v86 = NSStringFromClass(v85);
          *buf = 138543874;
          *&buf[4] = selfCopy;
          *&buf[12] = 2114;
          *&buf[14] = openSeries;
          *&buf[22] = 2114;
          v155 = v86;
          _os_log_fault_impl(&dword_228986000, v84, OS_LOG_TYPE_FAULT, "%{public}@: Saved state has unexpected open series %{public}@ (expected class %{public}@); resetting state.", buf, 0x20u);

          v19 = &OBJC_IVAR____HDStatisticsSyntheticQuantityType__overriddenAggregationStyle;
        }

        v20 = objc_alloc((v19 + 964));
        unaggregatedSensorData = [stateCopy unaggregatedSensorData];
        v97 = [v20 initWithRemainingSensorData:unaggregatedSensorData];
      }

      else
      {
        v97 = stateCopy;
      }
    }

    else
    {
      if (([(HDSeriesQuantityDataAggregator *)self isMemberOfClass:objc_opt_class()]& 1) == 0)
      {
        _HKInitializeLogging();
        v15 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_FAULT))
        {
          v79 = v15;
          v80 = objc_opt_class();
          v81 = NSStringFromClass(v80);
          v82 = objc_opt_class();
          v83 = NSStringFromClass(v82);
          *buf = 138543874;
          *&buf[4] = selfCopy;
          *&buf[12] = 2114;
          *&buf[14] = v81;
          *&buf[22] = 2114;
          v155 = v83;
          _os_log_fault_impl(&dword_228986000, v79, OS_LOG_TYPE_FAULT, "%{public}@: Received unexpected state object %{public}@ (expected class %{public}@); resetting state.", buf, 0x20u);
        }
      }

      v16 = [_HDSeriesQuantityDataAggregationState alloc];
      openSeries = [stateCopy unaggregatedSensorData];
      v97 = [(HDDataAggregationState *)v16 initWithRemainingSensorData:openSeries];
    }
  }

  else
  {
    v97 = 0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v155 = __Block_byref_object_copy__9;
  v156 = __Block_byref_object_dispose__9;
  openSeries2 = [(HDDataAggregationState *)v97 openSeries];
  v147 = 0;
  v148 = &v147;
  v149 = 0x3032000000;
  v150 = __Block_byref_object_copy__9;
  v151 = __Block_byref_object_dispose__9;
  lastDatum = [(_HDSeriesQuantityDataAggregationState *)v97 lastDatum];
  v141 = 0;
  v142 = &v141;
  v143 = 0x3032000000;
  v144 = __Block_byref_object_copy__9;
  v145 = __Block_byref_object_dispose__9;
  [(_HDSeriesQuantityDataAggregationState *)v97 lastDatum];
  v146 = v22 = selfCopy;
  v137 = 0;
  v138 = &v137;
  v139 = 0x2020000000;
  v140 = [(_HDSeriesQuantityDataAggregationState *)v97 length];
  if (*(*&buf[8] + 40))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"HDSeriesQuantityDataAggregator.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"currentSeries == nil || [currentSeries isKindOfClass:[HKQuantitySample class]]"}];

      v22 = selfCopy;
    }
  }

  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(HDActiveDataAggregator *)v22 aggregationIntervalForCollector:collectorCopy];
  v25 = v24;
  configuration = [(HDDataAggregator *)v22 configuration];
  v131 = 0;
  v132 = &v131;
  v133 = 0x3032000000;
  v134 = __Block_byref_object_copy__9;
  v135 = __Block_byref_object_dispose__9;
  v136 = 0;
  dataCollectionManager = [(HDDataAggregator *)v22 dataCollectionManager];
  profile = [dataCollectionManager profile];
  dataManager = [profile dataManager];
  quantitySeriesManager = [dataManager quantitySeriesManager];

  v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke;
  aBlock[3] = &unk_278614978;
  v92 = v30;
  v122 = v92;
  v123 = selfCopy;
  v126 = &v131;
  v127 = &v137;
  v128 = &v141;
  v129 = buf;
  v130 = &v147;
  v91 = v23;
  v124 = v91;
  v90 = quantitySeriesManager;
  v125 = v90;
  v31 = _Block_copy(aBlock);
  if ([(HDSeriesQuantityDataAggregator *)selfCopy shouldAggregateToSeriesForState:v97 collector:collectorCopy device:deviceCopy requestedAggregationDate:dateCopy mode:mode options:options])
  {
    v116[0] = MEMORY[0x277D85DD0];
    v116[1] = 3221225472;
    v116[2] = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_313;
    v116[3] = &unk_2786149C8;
    v116[4] = selfCopy;
    v117 = deviceCopy;
    v119 = buf;
    v89 = v91;
    v118 = v89;
    v99 = _Block_copy(v116);
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    unaggregatedSensorData2 = [(HDDataAggregationState *)v97 unaggregatedSensorData];
    v33 = [unaggregatedSensorData2 countByEnumeratingWithState:&v112 objects:v153 count:16];
    if (v33)
    {
      v34 = *v113;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v113 != v34)
          {
            objc_enumerationMutation(unaggregatedSensorData2);
          }

          v36 = *(*(&v112 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"HDSeriesQuantityDataAggregator.m" lineNumber:270 description:{@"Invalid parameter not satisfying: %@", @"[datum isKindOfClass:[HDQuantityDatum class]]"}];
          }

          if (*(*&buf[8] + 40))
          {
            v37 = v148[5];
            v38 = v138[3];
            v39 = [v132[5] count];
            if ([(HDSeriesQuantityDataAggregator *)selfCopy requiresNewSeriesForDatum:v36 lastDatum:v37 seriesLength:v39 + v38 currentSeries:*(*&buf[8] + 40) configuration:configuration aggregationInterval:v25])
            {
              v31[2](v31);
            }
          }

          if (!*(*&buf[8] + 40))
          {
            v99[2](v99, v36);
          }

          v40 = v132[5];
          if (!v40)
          {
            v41 = objc_alloc_init(MEMORY[0x277CBEB18]);
            v42 = v132[5];
            v132[5] = v41;

            v40 = v132[5];
          }

          [(HDSeriesQuantityDataAggregator *)selfCopy addDatum:v36 toAccumulatedData:v40];
          objc_storeStrong(v148 + 5, v36);
          v43 = v138[3];
          if ([v132[5] count] + v43 == 289)
          {
            v31[2](v31);
          }
        }

        v33 = [unaggregatedSensorData2 countByEnumeratingWithState:&v112 objects:v153 count:16];
      }

      while (v33);
    }

    v45 = selfCopy;
    if ([v132[5] count])
    {
      date = [MEMORY[0x277CBEAA8] date];
      [configuration collectionLatency];
      v48 = v47;
      for (j = 0; j < [v132[5] count]; ++j)
      {
        v50 = [v132[5] objectAtIndexedSubscript:j];
        dateInterval = [v50 dateInterval];
        v52 = dateInterval;
        if (dateCopy && (([dateInterval endDate], v53 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend(v53, "hk_isBeforeOrEqualToDate:", dateCopy), v53, (v54 & 1) != 0) || !mode && (objc_msgSend(v52, "startDate"), v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "hk_isBeforeOrEqualToDate:", dateCopy), v55, (v56 & 1) != 0)))
        {
        }

        else
        {
          endDate = [v52 endDate];
          [date timeIntervalSinceDate:endDate];
          v59 = v58 < v48;

          if (v59)
          {
            break;
          }
        }
      }

      if (j)
      {
        v61 = [v132[5] subarrayWithRange:{0, j}];
        [v92 addObjectsFromArray:v61];
        lastObject = [v61 lastObject];
        v63 = v142[5];
        v142[5] = lastObject;

        v64 = [(HDSeriesQuantityDataAggregator *)selfCopy _codableDatumsFromData:v61];
        [v132[5] removeObjectsInRange:{0, j}];
        v138[3] += j;
        v65 = *(*&buf[8] + 40);
        if (!v65)
        {
          firstObject = [v61 firstObject];
          v99[2](v99, firstObject);

          v65 = *(*&buf[8] + 40);
        }

        v67 = v65;
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_3;
        v107[3] = &unk_2786149F0;
        v108 = v90;
        v68 = v64;
        v109 = v68;
        v69 = v67;
        v110 = v69;
        v111 = selfCopy;
        v70 = objc_msgSend_copy(v107);
        v71 = _Block_copy(v70);
        [v89 addObject:v71];
      }

      v45 = selfCopy;
    }

    if ((options & 2) != 0)
    {
      v31[2](v31);
    }

    v72 = *(*&buf[8] + 40);
    if (v72 && [(HDSeriesQuantityDataAggregator *)v45 shouldFreezeCurrentSeries:v72 lastDatum:v148[5] seriesLength:v138[3] configuration:configuration aggregationInterval:v25])
    {
      v31[2](v31);
    }

    v73 = [_HDSeriesQuantityDataAggregationState alloc];
    v74 = v132[5];
    v75 = v74;
    if (!v74)
    {
      v75 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v76 = [(_HDSeriesQuantityDataAggregationState *)v73 initWithRemainingSensorData:v75 currentSeries:*(*&buf[8] + 40) lastDatum:v142[5] length:v138[3]];
    if (!v74)
    {
    }

    if ([v89 count])
    {
      v77 = [HDDataAggregationResult alloc];
      v102[0] = MEMORY[0x277D85DD0];
      v102[1] = 3221225472;
      v102[2] = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_4;
      v102[3] = &unk_278614A18;
      v103 = v89;
      v104 = selfCopy;
      v106 = &v141;
      v105 = collectorCopy;
      v60 = [(HDDataAggregationResult *)v77 initWithResultingAggregationState:v76 consumedSensorData:v92 persistenceHandler:v102];
    }

    else
    {
      v60 = [[HDDataAggregationResult alloc] initWithResultingAggregationState:v76 consumedSensorData:0 persistenceHandler:0];
    }
  }

  else
  {
    v31[2](v31);
    v120.receiver = selfCopy;
    v120.super_class = HDSeriesQuantityDataAggregator;
    v60 = [(HDActiveQuantityDataAggregator *)&v120 aggregateForState:v97 collector:collectorCopy device:deviceCopy requestedAggregationDate:dateCopy mode:mode options:options error:error];
  }

  _Block_object_dispose(&v131, 8);
  _Block_object_dispose(&v137, 8);
  _Block_object_dispose(&v141, 8);

  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(buf, 8);

  return v60;
}

void __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke(uint64_t a1)
{
  [*(a1 + 32) addObjectsFromArray:*(*(*(a1 + 64) + 8) + 40)];
  v2 = [(HDSeriesQuantityDataAggregator *)*(a1 + 40) _codableDatumsFromData:?];
  v3 = *(*(*(a1 + 72) + 8) + 24);
  v4 = [v2 count];
  v5 = [*(a1 + 32) lastObject];
  v6 = *(*(a1 + 80) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 88) + 8) + 40);
  v9 = *(*(*(a1 + 96) + 8) + 40);
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = 0;

  v12 = *(*(a1 + 88) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = 0;

  v14 = *(*(a1 + 96) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;

  *(*(*(a1 + 72) + 8) + 24) = 0;
  if (v8)
  {
    v16 = v4 + v3;
    v17 = *(a1 + 48);
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_2;
    v25 = &unk_278614950;
    v26 = v2;
    v27 = *(a1 + 56);
    v18 = v8;
    v19 = *(a1 + 40);
    v28 = v18;
    v29 = v19;
    v30 = v9;
    v31 = v16;
    v20 = objc_msgSend_copy(&v22);
    v21 = _Block_copy(v20);
    [v17 addObject:{v21, v22, v23, v24, v25}];
  }
}

uint64_t __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v91 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if ([*(a1 + 32) count])
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = *(a1 + 48);
    v82 = 0;
    v9 = [v6 insertValues:v7 series:v8 error:&v82];
    v10 = v82;
    v11 = v10;
    if (!v9)
    {
      v50 = [(HDSeriesQuantityDataAggregator *)*(a1 + 56) _successForPersistenceError:v10 series:*(a1 + 48) error:a3];
      goto LABEL_33;
    }
  }

  v79 = a3;
  v12 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = [*(a1 + 56) dataCollectionManager];
  v15 = [v14 profile];
  v16 = v13;
  v80 = v12;
  v17 = v5;
  v18 = v15;
  v78 = objc_opt_self();
  v19 = [v18 daemon];
  v20 = [v19 behavior];
  LOBYTE(v12) = [v20 isAppleInternalInstall];
  v21 = _HDIsUnitTesting;

  v22 = MEMORY[0x277CCC298];
  if ((v12 & 1) != 0 || v21)
  {
    v23 = [v16 sampleType];
    if ([v23 code] == 173)
    {
LABEL_26:

      goto LABEL_27;
    }

    v24 = [v16 sampleType];
    v25 = [v24 code];

    v26 = v25 == 172;
    v22 = MEMORY[0x277CCC298];
    if (!v26)
    {
      v83 = 0;
      v27 = v16;
      v74 = v17;
      v76 = v18;
      v28 = v80;
      objc_opt_self();
      v29 = MEMORY[0x277CBEAA8];
      v77 = v27;
      [v27 _startTimestamp];
      v31 = [v29 dateWithTimeIntervalSinceReferenceDate:v30 + 1.0];
      v32 = [v28 dateInterval];

      v33 = [v32 endDate];
      v34 = [v33 dateByAddingTimeInterval:-1.0];

      v35 = v76;
      v36 = 0;
      if (([v31 hk_isAfterOrEqualToDate:v34] & 1) == 0)
      {
        v72 = v31;
        v37 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v31 endDate:v34];
        v38 = [v77 quantityType];
        v71 = v37;
        v39 = v37;
        v35 = v76;
        v73 = HDSampleEntityPredicateForDateInterval(v39, v38);

        v40 = [v76 dataProvenanceManager];
        v41 = [v40 provenanceEntityForProvenance:v74 error:&v83];

        v42 = v41;
        if (v41)
        {
          v70 = v34;
          v43 = MEMORY[0x277D10B18];
          v69 = v41;
          v44 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v41, "persistentID")}];
          v45 = [v43 predicateWithProperty:@"provenance" equalToValue:v44];

          v46 = [MEMORY[0x277D10B70] compoundPredicateWithPredicate:v73 otherPredicate:v45];
          v47 = [v77 quantityType];
          *buf = 0;
          v68 = v46;
          v36 = [HDSampleEntity anySampleOfType:v47 profile:v76 encodingOptions:0 predicate:v46 error:buf];
          v48 = *buf;

          if (v36)
          {
            v49 = v36;
          }

          else if (v48)
          {
            v51 = v48;
            v83 = v48;
          }

          v35 = v76;
          v31 = v72;
          v42 = v69;
          v34 = v70;
        }

        else
        {
          v36 = 0;
          v31 = v72;
        }
      }

      v23 = v83;
      if (v36)
      {
        v75 = v17;
        _HKInitializeLogging();
        v52 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          *&buf[4] = v78;
          v85 = 2114;
          v86 = v77;
          v87 = 2114;
          v88 = v36;
          _os_log_impl(&dword_228986000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@: new series %{public}@ overlaps with %{public}@", buf, 0x20u);
        }

        [v76 daemon];
        v54 = v53 = v36;
        v55 = [v54 autoBugCaptureReporter];
        v56 = [v77 quantityType];
        [v55 reportDataCollectionSeriesProblem:@"overlap" quantityType:v56];

        v36 = v53;
        v17 = v75;
      }

      if (v23)
      {
        _HKInitializeLogging();
        v57 = *MEMORY[0x277CCC298];
        if (os_log_type_enabled(*MEMORY[0x277CCC298], OS_LOG_TYPE_INFO))
        {
          *buf = 138543874;
          *&buf[4] = v78;
          v85 = 2114;
          v86 = v77;
          v87 = 2114;
          v88 = v23;
          _os_log_impl(&dword_228986000, v57, OS_LOG_TYPE_INFO, "%{public}@: error checking for overlap with %{public}@: %{public}@", buf, 0x20u);
        }
      }

      v22 = MEMORY[0x277CCC298];
      goto LABEL_26;
    }
  }

LABEL_27:

  _HKInitializeLogging();
  v58 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
  {
    v60 = *(a1 + 48);
    v59 = *(a1 + 56);
    v62 = *(a1 + 64);
    v61 = *(a1 + 72);
    *buf = 138544130;
    *&buf[4] = v59;
    v85 = 2112;
    v86 = v60;
    v87 = 2048;
    v88 = v61;
    v89 = 2112;
    v90 = v62;
    _os_log_impl(&dword_228986000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@: Freezing series %@, length %ld, with final datum %@", buf, 0x2Au);
  }

  v63 = *(a1 + 40);
  v64 = *(a1 + 48);
  v65 = [*(a1 + 64) metadata];
  v81 = 0;
  v66 = [v63 freezeSeries:v64 metadata:v65 endDate:0 error:&v81];
  v11 = v81;

  if (v66)
  {
    v50 = 1;
  }

  else
  {
    v50 = [(HDSeriesQuantityDataAggregator *)*(a1 + 56) _successForPersistenceError:v11 series:*(a1 + 48) error:v79];
  }

LABEL_33:
  return v50;
}

void __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_313(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v5 = MEMORY[0x277CCD800];
    v6 = *(a1 + 40);
    v7 = a2;
    v8 = [v3 quantityType];
    v9 = [v7 quantity];
    v10 = [v7 dateInterval];

    v11 = [v10 startDate];
    v3 = [v5 _unfrozenQuantitySampleWithQuantityType:v8 quantity:v9 startDate:v11 device:v6];
  }

  objc_storeStrong((*(*(a1 + 56) + 8) + 40), v3);
  v12 = *(a1 + 48);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_2_314;
  v19 = &unk_2786149A0;
  v20 = *(a1 + 32);
  v21 = v3;
  v13 = v3;
  v14 = objc_msgSend_copy(&v16);
  v15 = _Block_copy(v14);
  [v12 addObject:{v15, v16, v17, v18, v19, v20}];
}

uint64_t __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_2_314(uint64_t a1, void *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 dataCollectionManager];
  v8 = [v7 profile];
  v9 = [v8 dataManager];
  v13[0] = *(a1 + 40);
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v11 = [v9 insertDataObjects:v10 withProvenance:v6 creationDate:1 skipInsertionFilter:a3 error:CFAbsoluteTimeGetCurrent()];

  return v11;
}

uint64_t __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_3(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v12 = 0;
  v8 = [v5 insertValues:v6 series:v7 error:&v12];
  v9 = v12;
  if (v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = [(HDSeriesQuantityDataAggregator *)a1[7] _successForPersistenceError:v9 series:a1[6] error:a3];
  }

  return v10;
}

uint64_t __113__HDSeriesQuantityDataAggregator_aggregateForState_collector_device_requestedAggregationDate_mode_options_error___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    v9 = MEMORY[0x277CCC298];
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = (*(*(*(&v19 + 1) + 8 * v10) + 16))();
        v12 = 0;
        if ((v11 & 1) == 0)
        {
          _HKInitializeLogging();
          v13 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            v14 = *(a1 + 40);
            *buf = 138543618;
            v24 = v14;
            v25 = 2114;
            v26 = v12;
            _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "%{public}@: Ignoring failed persistence: %{public}@", buf, 0x16u);
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v7);
  }

  v15 = *(*(*(a1 + 56) + 8) + 40);
  if (v15)
  {
    v16 = [*(a1 + 40) didPersistObjects:0 lastDatum:v15 collector:*(a1 + 48) error:a3];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (id)initialAggregationState
{
  v2 = [_HDSeriesQuantityDataAggregationState alloc];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = [(_HDSeriesQuantityDataAggregationState *)v2 initWithRemainingSensorData:v3 currentSeries:0 lastDatum:0 length:0];

  return v4;
}

@end