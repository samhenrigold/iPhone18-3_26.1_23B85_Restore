@interface HDQuantitySeriesSampleQueryServer
- (HDQuantitySeriesSampleQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_clientProxy;
- (uint64_t)_deliverEnumerationResults:(void *)results latestUUID:(void *)d latestSampleStartTime:(unsigned int)time sampleIDsToLookup:(uint64_t)lookup isFinal:(double)final error:;
- (void)_deliverEnumerationResults:(uint64_t)results isFinal:;
- (void)_deliverError:(void *)error;
- (void)_deliverQuantitySeries:(uint64_t)series seriesAnchor:(uint64_t)anchor isFinal:;
- (void)_queue_start;
@end

@implementation HDQuantitySeriesSampleQueryServer

- (HDQuantitySeriesSampleQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = HDQuantitySeriesSampleQueryServer;
  v11 = [(HDQueryServer *)&v21 initWithUUID:d configuration:configurationCopy client:client delegate:delegate];
  if (v11)
  {
    quantitySample = [configurationCopy quantitySample];
    sample = v11->_sample;
    v11->_sample = quantitySample;

    v11->_lastDatumIndex = [configurationCopy seriesAnchor];
    v11->_mode = [configurationCopy mode];
    v11->_options = [configurationCopy options];
    maximumStartDate = [configurationCopy maximumStartDate];
    maximumDeliveredStartDate = v11->_maximumDeliveredStartDate;
    v11->_maximumDeliveredStartDate = maximumStartDate;

    latestUUID = [configurationCopy latestUUID];
    latestDeliveredUUID = v11->_latestDeliveredUUID;
    v11->_latestDeliveredUUID = latestUUID;

    latestSampleStartDate = [configurationCopy latestSampleStartDate];
    latestDeliveredSampleStartDate = v11->_latestDeliveredSampleStartDate;
    v11->_latestDeliveredSampleStartDate = latestSampleStartDate;

    v11->_batchThreshold = 400;
  }

  return v11;
}

- (void)_queue_start
{
  v93 = *MEMORY[0x277D85DE8];
  v63.receiver = self;
  v63.super_class = HDQuantitySeriesSampleQueryServer;
  [(HDQueryServer *)&v63 _queue_start];
  quantityType = [(HDQueryServer *)self quantityType];
  v62 = 0;
  v4 = [(HDQueryServer *)self authorizationStatusRecordForType:quantityType error:&v62];
  v5 = v62;

  if (!v4)
  {
    [(HDQuantitySeriesSampleQueryServer *)self _deliverError:v5];
    goto LABEL_43;
  }

  if ([v4 canRead])
  {
    mode = self->_mode;
    if (mode != 1)
    {
      if (!mode)
      {
        if ([(HKQuantitySample *)self->_sample count]== 1)
        {
          v7 = objc_alloc_init(MEMORY[0x277CCD178]);
          v8 = objc_alloc_init(MEMORY[0x277CCD180]);
          quantity = [(HKQuantitySample *)self->_sample quantity];
          quantity2 = [(HKQuantitySample *)self->_sample quantity];
          _unit = [quantity2 _unit];
          [quantity doubleValueForUnit:_unit];
          [v8 setValue:?];

          startDate = [(HKQuantitySample *)self->_sample startDate];
          [startDate timeIntervalSinceReferenceDate];
          [v8 setTimeInterval:?];

          [v7 addValues:v8];
          [(HDQuantitySeriesSampleQueryServer *)&self->super.super.isa _deliverQuantitySeries:v7 seriesAnchor:self->_lastDatumIndex isFinal:1];
        }

        else
        {
          v70 = 0;
          v71 = &v70;
          v72 = 0x2020000000;
          v73 = 1;
          v66 = 0;
          v67 = &v66;
          v68 = 0x2020000000;
          v69 = 0;
          v87 = 0;
          v88 = &v87;
          v89 = 0x3032000000;
          v90 = __Block_byref_object_copy__137;
          v91 = __Block_byref_object_dispose__137;
          v92 = objc_alloc_init(MEMORY[0x277CCD178]);
          uUID = [(HKQuantitySample *)self->_sample UUID];
          profile = [(HDQueryServer *)self profile];
          v74 = 0;
          v75 = MEMORY[0x277D85DD0];
          v76 = 3221225472;
          v77 = __65__HDQuantitySeriesSampleQueryServer__queue_startSingleSeriesMode__block_invoke;
          v78 = &unk_278625FE8;
          selfCopy2 = self;
          v80 = &v70;
          v81 = &v66;
          v82 = &v87;
          v30 = [HDQuantitySampleSeriesEntity enumerateDataWithIdentifier:uUID profile:profile error:&v74 handler:&v75];
          v7 = v74;

          if (v30)
          {
            if (*(v71 + 24) == 1)
            {
              v31 = *(v67 + 3);
              self->_lastDatumIndex = v31;
              [(HDQuantitySeriesSampleQueryServer *)&self->super.super.isa _deliverQuantitySeries:v31 seriesAnchor:1 isFinal:?];
            }
          }

          else
          {
            [(HDQuantitySeriesSampleQueryServer *)self _deliverError:v7];
          }

          _Block_object_dispose(&v87, 8);

          _Block_object_dispose(&v66, 8);
          _Block_object_dispose(&v70, 8);
        }

        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v74 = 0;
    v14 = MEMORY[0x277CBEB18];
    quantityType2 = [(HDQueryServer *)self quantityType];
    v16 = HDSampleEntityPredicateForDataType(quantityType2);
    v17 = [v14 arrayWithObject:v16];

    filter = [(HDQueryServer *)self filter];
    profile2 = [(HDQueryServer *)self profile];
    v20 = [filter predicateWithProfile:profile2];

    if (v20)
    {
      [v17 addObject:v20];
    }

    client = [(HDQueryServer *)self client];
    authorizationOracle = [client authorizationOracle];
    objectType = [(HDQueryServer *)self objectType];
    v24 = [authorizationOracle additionalAuthorizationPredicateForObjectType:objectType error:&v74];

    if (!v24)
    {
      [MEMORY[0x277CCA9B8] hk_assignError:&v74 code:3 description:@"Unable to determine authorization status."];
      v60 = 0;
LABEL_27:

      v41 = v74;
      if (v60)
      {
        v70 = 0;
        v71 = &v70;
        v72 = 0x2020000000;
        v73 = 1;
        options = self->_options;
        v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v44 = objc_alloc_init(MEMORY[0x277CCD190]);
        v87 = 0;
        v88 = &v87;
        v89 = 0x3032000000;
        v90 = __Block_byref_object_copy__137;
        v91 = __Block_byref_object_dispose__137;
        v92 = 0;
        v66 = 0;
        v67 = &v66;
        v68 = 0x2020000000;
        v69 = 0;
        profile3 = [(HDQueryServer *)self profile];
        v46 = options & 1;
        v47 = options & 2;
        v65 = v41;
        v75 = MEMORY[0x277D85DD0];
        v76 = 3221225472;
        v77 = __64__HDQuantitySeriesSampleQueryServer__queue_startEnumerationMode__block_invoke;
        v78 = &unk_278626010;
        selfCopy2 = self;
        v82 = &v70;
        v85 = v47 >> 1;
        v48 = v44;
        v80 = v48;
        v83 = &v87;
        v84 = &v66;
        v59 = v43;
        v81 = v59;
        v86 = v46;
        v49 = &v75;
        v50 = profile3;
        v51 = v60;
        objc_opt_self();
        if (v47)
        {
          v52 = [HDQuantitySampleValueEnumerator orderedQuantityValuesBySeriesForPredicate:v51 profile:v50 options:3 error:&v65 handler:v49];
        }

        else
        {
          v52 = [HDQuantitySampleValueEnumerator orderedQuantityValuesForPredicate:v51 profile:v50 options:0 error:&v65 handler:v49];
        }

        v53 = v52;

        v54 = v65;
        if (!v53)
        {
          [(HDQuantitySeriesSampleQueryServer *)self _deliverError:v54];
        }

        if (*(v71 + 24) == 1)
        {
          v55 = v88[5];
          v56 = v67[3];
          v64 = v54;
          v57 = [(HDQuantitySeriesSampleQueryServer *)self _deliverEnumerationResults:v48 latestUUID:v55 latestSampleStartTime:v59 sampleIDsToLookup:1u isFinal:&v64 error:v56];
          v41 = v64;

          if ((v57 & 1) == 0)
          {
            [(HDQuantitySeriesSampleQueryServer *)self _deliverError:v41];
          }
        }

        else
        {
          v41 = v54;
        }

        _Block_object_dispose(&v66, 8);
        _Block_object_dispose(&v87, 8);

        _Block_object_dispose(&v70, 8);
      }

      else
      {
        [(HDQuantitySeriesSampleQueryServer *)self _deliverError:v41];
      }

      goto LABEL_43;
    }

    [v17 addObject:v24];
    v25 = 0x277D10000;
    if ((self->_options & 2) != 0)
    {
      latestDeliveredSampleStartDate = self->_latestDeliveredSampleStartDate;
      if (latestDeliveredSampleStartDate)
      {
        v27 = HDSampleEntityPredicateForStartDate(1, latestDeliveredSampleStartDate);
        v33 = MEMORY[0x277D10B18];
        v34 = _HDSQLiteValueForUUID();
        v61 = [v33 predicateWithProperty:@"uuid" greaterThanOrEqualToValue:v34];

        v35 = MEMORY[0x277D10B20];
        v75 = v27;
        v76 = v61;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:2];
        v58 = [v35 predicateMatchingAllPredicates:v36];

        v37 = HDSampleEntityPredicateForStartDate(5, self->_latestDeliveredSampleStartDate);
        v38 = MEMORY[0x277D10B20];
        v87 = v37;
        v88 = v58;
        v39 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:2];
        v40 = [v38 predicateMatchingAnyPredicates:v39];

        [v17 addObject:v40];
        goto LABEL_25;
      }
    }

    else
    {
      maximumDeliveredStartDate = self->_maximumDeliveredStartDate;
      if (maximumDeliveredStartDate)
      {
        v27 = HDSampleEntityPredicateForEndDate(6, maximumDeliveredStartDate);
        [v17 addObject:v27];
LABEL_25:

        v25 = 0x277D10000uLL;
      }
    }

    v60 = [*(v25 + 2848) predicateMatchingAllPredicates:v17];
    goto LABEL_27;
  }

  if (self)
  {
    v13 = self->_mode;
    if (v13 == 1)
    {
      v7 = objc_alloc_init(MEMORY[0x277CCD190]);
      [(HDQuantitySeriesSampleQueryServer *)&self->super.super.isa _deliverEnumerationResults:v7 isFinal:1];
    }

    else
    {
      if (v13)
      {
        goto LABEL_43;
      }

      v7 = objc_alloc_init(MEMORY[0x277CCD178]);
      [(HDQuantitySeriesSampleQueryServer *)&self->super.super.isa _deliverQuantitySeries:v7 seriesAnchor:self->_lastDatumIndex isFinal:1];
    }

LABEL_42:
  }

LABEL_43:
}

- (void)_deliverError:(void *)error
{
  if (error)
  {
    v3 = a2;
    _clientProxy = [(HDQuantitySeriesSampleQueryServer *)error _clientProxy];
    queryUUID = [error queryUUID];
    [_clientProxy client_deliverError:v3 forQuery:queryUUID];
  }
}

- (id)_clientProxy
{
  client = [self client];
  connection = [client connection];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HDQuantitySeriesSampleQueryServer__clientProxy__block_invoke;
  v6[3] = &unk_2786138D0;
  v6[4] = self;
  v4 = [connection remoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (void)_deliverQuantitySeries:(uint64_t)series seriesAnchor:(uint64_t)anchor isFinal:
{
  v7 = a2;
  if (self)
  {
    v12 = v7;
    _clientProxy = [(HDQuantitySeriesSampleQueryServer *)self _clientProxy];
    queryUUID = [self queryUUID];
    v10 = _Block_copy(self[34]);
    v11 = v10;
    if (v10)
    {
      (*(v10 + 2))(v10, self);
    }

    [_clientProxy client_deliverQuantitySeries:v12 seriesAnchor:series isFinal:anchor query:queryUUID];

    v7 = v12;
  }
}

- (void)_deliverEnumerationResults:(uint64_t)results isFinal:
{
  v9 = a2;
  _clientProxy = [(HDQuantitySeriesSampleQueryServer *)self _clientProxy];
  queryUUID = [self queryUUID];
  v7 = _Block_copy(self[34]);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, self);
  }

  [_clientProxy client_deliverEnumerationResults:v9 isFinal:results query:queryUUID];
}

void __49__HDQuantitySeriesSampleQueryServer__clientProxy__block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC308];
  if (os_log_type_enabled(*MEMORY[0x277CCC308], OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_228986000, v4, OS_LOG_TYPE_ERROR, "%{public}@: Error during XPC call to client proxy: %{public}@", &v6, 0x16u);
  }
}

uint64_t __65__HDQuantitySeriesSampleQueryServer__queue_startSingleSeriesMode__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) != 0 || objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    v4 = 0;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    if (++*(*(*(a1 + 48) + 8) + 24) >= *(*(a1 + 32) + 224))
    {
      v5 = [*(*(*(a1 + 56) + 8) + 40) values];
      v6 = [v5 count];
      v7 = *(*(a1 + 32) + 216);

      if (v6 >= v7)
      {
        *(*(a1 + 32) + 224) = *(*(*(a1 + 48) + 8) + 24);
        [(HDQuantitySeriesSampleQueryServer *)*(a1 + 32) _deliverQuantitySeries:*(*(a1 + 32) + 224) seriesAnchor:0 isFinal:?];
        v8 = objc_alloc_init(MEMORY[0x277CCD178]);
        v9 = *(*(a1 + 56) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;
      }

      [*(*(*(a1 + 56) + 8) + 40) addValues:v3];
    }

    v4 = 1;
  }

  return v4;
}

uint64_t __64__HDQuantitySeriesSampleQueryServer__queue_startEnumerationMode__block_invoke(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (([*(a1 + 32) _shouldStopProcessingQuery] & 1) == 0 && !objc_msgSend(*(a1 + 32), "_shouldSuspendQuery"))
  {
    v25 = MEMORY[0x277CCDDB8];
    v26 = [*(a1 + 32) filter];
    LODWORD(v25) = [v25 filter:v26 acceptsDataObjectWithStartTimestamp:a6 endTimestamp:a7 valueInCanonicalUnit:a5];

    if (!v25)
    {
      return 1;
    }

    v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:a9];
    v28 = *(a1 + 32);
    v29 = *(v28 + 248);
    v30 = *(v28 + 256);
    v31 = *(a1 + 80);
    obj = v27;
    v32 = v27;
    v33 = v29;
    v34 = v30;
    objc_opt_self();
    if (v33)
    {
      [v33 timeIntervalSinceReferenceDate];
      v36 = v35;
      if (v31)
      {
LABEL_8:
        if (v36 < a6 || ([v32 isEqual:v34] & 1) == 0)
        {
LABEL_18:

          v40 = [*(a1 + 40) results];
          v41 = [v40 count];
          v42 = *(*(a1 + 32) + 216);

          if (v41 >= v42)
          {
            v43 = [(HDQuantitySeriesSampleQueryServer *)*(a1 + 32) _deliverEnumerationResults:*(*(*(a1 + 64) + 8) + 40) latestUUID:*(a1 + 48) latestSampleStartTime:0 sampleIDsToLookup:a13 isFinal:*(*(*(a1 + 72) + 8) + 24) error:?];
            v23 = 0;
            if (!v43)
            {
LABEL_28:

              return v23;
            }

            [*(a1 + 48) removeAllObjects];
            v44 = [*(a1 + 40) results];
            [v44 removeAllObjects];

            v45 = *(*(a1 + 64) + 8);
            v46 = *(v45 + 40);
            *(v45 + 40) = 0;
          }

          objc_storeStrong((*(*(a1 + 64) + 8) + 40), obj);
          *(*(*(a1 + 72) + 8) + 24) = a3;
          if (*(a1 + 81))
          {
            v47 = v32;
          }

          else
          {
            v47 = 0;
          }

          v39 = [MEMORY[0x277CCD188] resultWithID:a2 UUID:v47 value:a11 count:a12 startTime:a5 endTime:a6 seriesIndex:a7];
          [*(a1 + 40) addResults:v39];
          if (*(a1 + 81) != 1)
          {
LABEL_27:

            v23 = 1;
            goto LABEL_28;
          }

          v48 = *(a1 + 48);
          v33 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
          [v48 addObject:v33];
LABEL_26:

          goto LABEL_27;
        }

LABEL_14:

        v39 = v32;
        goto LABEL_26;
      }
    }

    else
    {
      v37 = [MEMORY[0x277CBEAA8] distantPast];
      [v37 timeIntervalSinceReferenceDate];
      v36 = v38;

      if (v31)
      {
        goto LABEL_8;
      }
    }

    if (v36 <= a6 && (!v34 || v36 != a6 || [v32 hk_compare:v34] == 1))
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v23 = 0;
  *(*(*(a1 + 56) + 8) + 24) = 0;
  return v23;
}

- (uint64_t)_deliverEnumerationResults:(void *)results latestUUID:(void *)d latestSampleStartTime:(unsigned int)time sampleIDsToLookup:(uint64_t)lookup isFinal:(double)final error:
{
  v11 = a2;
  resultsCopy = results;
  dCopy = d;
  if (self && ((v14 = MEMORY[0x277CBEAA8], [v11 results], v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "lastObject"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "startTime"), objc_msgSend(v14, "dateWithTimeIntervalSinceReferenceDate:"), v17 = objc_claimAutoreleasedReturnValue(), v18 = *(self + 248), *(self + 248) = v17, v18, v16, v15, objc_storeStrong((self + 256), results), objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceReferenceDate:", final), v19 = objc_claimAutoreleasedReturnValue(), v20 = *(self + 264), *(self + 264) = v19, v20, objc_msgSend(resultsCopy, "hk_dataForUUIDBytes"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "results"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "lastObject"), v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "setUuid:", v21), v23, v22, v21, objc_msgSend(v11, "setLatestSampleStartTime:", final), !objc_msgSend(dCopy, "count")) || (v28 = dCopy, v29 = v11, v24 = HKWithAutoreleasePool(), v29, v28, v24)))
  {
    [(HDQuantitySeriesSampleQueryServer *)self _deliverEnumerationResults:v11 isFinal:time];
    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t __129__HDQuantitySeriesSampleQueryServer__deliverEnumerationResults_latestUUID_latestSampleStartTime_sampleIDsToLookup_isFinal_error___block_invoke(id *a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [a1[4] newDataEntityEnumerator];
  v5 = [a1[5] allObjects];
  v6 = HDDataEntityPredicateForRowIDs(v5);
  [v4 setPredicate:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __129__HDQuantitySeriesSampleQueryServer__deliverEnumerationResults_latestUUID_latestSampleStartTime_sampleIDsToLookup_isFinal_error___block_invoke_2;
  v27[3] = &unk_2786204C8;
  v22 = v7;
  v28 = v22;
  if ([v4 enumerateWithError:a2 handler:v27])
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = [a1[6] results];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v21 = v4;
      v12 = *v24;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          v15 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v14, "persistentID")}];
          if (([v8 containsObject:v15] & 1) == 0)
          {
            [v8 addObject:v15];
            v16 = [v22 objectForKeyedSubscript:v15];
            v17 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:a2];
            if (!v17)
            {

              v19 = 0;
              goto LABEL_15;
            }

            v18 = v17;
            [v14 setQuantitySample:v17];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

      v19 = 1;
LABEL_15:
      v4 = v21;
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

uint64_t __129__HDQuantitySeriesSampleQueryServer__deliverEnumerationResults_latestUUID_latestSampleStartTime_sampleIDsToLookup_isFinal_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithLongLong:a3];
  [v4 setObject:v6 forKeyedSubscript:v7];

  return 1;
}

@end