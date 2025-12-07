@interface HDStatisticsCollectionCalculatorDefaultDataSource
+ (uint64_t)_addValueForQuantitySample:(void *)sample calculator:(uint64_t)calculator error:;
- (BOOL)addValuesForQuantitySamples:(id)samples calculator:(id)calculator includeSeries:(BOOL)series error:(id *)error;
- (BOOL)collectionCalculator:(id)calculator queryForInterval:(id)interval error:(id *)error sampleHandler:(id)handler mergeHandler:(id)mergeHandler;
- (HDProfile)profile;
- (id)initForProfile:(id)profile categoryType:(id)type predicate:(id)predicate restrictedSourceEntities:(id)entities;
- (id)initForProfile:(id)profile quantityType:(id)type predicate:(id)predicate restrictedSourceEntities:(id)entities;
- (uint64_t)_addValuesForQuantitySamples:(void *)samples calculator:(char)calculator requiresSeriesValues:(void *)values transaction:(uint64_t)transaction error:;
- (void)_updateFullPredicate;
- (void)setPredicate:(id)predicate;
- (void)setRestrictedSourceEntities:(id)entities;
@end

@implementation HDStatisticsCollectionCalculatorDefaultDataSource

- (id)initForProfile:(id)profile quantityType:(id)type predicate:(id)predicate restrictedSourceEntities:(id)entities
{
  profileCopy = profile;
  typeCopy = type;
  predicateCopy = predicate;
  entitiesCopy = entities;
  v25.receiver = self;
  v25.super_class = HDStatisticsCollectionCalculatorDefaultDataSource;
  v14 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)&v25 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_profile, profileCopy);
    v16 = objc_msgSend_copy(typeCopy);
    v17 = *(v15 + 32);
    *(v15 + 32) = v16;

    v18 = objc_msgSend_copy(predicateCopy);
    v19 = *(v15 + 40);
    *(v15 + 40) = v18;

    v20 = objc_msgSend_copy(entitiesCopy);
    v21 = *(v15 + 48);
    *(v15 + 48) = v20;

    *(v15 + 16) = 1;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      underlyingSampleType = [*(v15 + 32) underlyingSampleType];
      v23 = [MEMORY[0x277CCD830] _quantityTypeWithCode:{objc_msgSend(underlyingSampleType, "code")}];
      *(v15 + 16) = v23 != 0;
    }

    [(HDStatisticsCollectionCalculatorDefaultDataSource *)v15 _updateFullPredicate];
  }

  return v15;
}

- (void)_updateFullPredicate
{
  if (self)
  {
    v8 = *(self + 32);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      underlyingSampleType = [v8 underlyingSampleType];

      v8 = underlyingSampleType;
    }

    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = HDSampleEntityPredicateForDataType(v8);
    [v3 addObject:v4];

    if ([*(self + 48) count])
    {
      v5 = HDDataEntityPredicateForSourceEntitySet(7, *(self + 48));
      [v3 addObject:v5];
    }

    if (*(self + 40))
    {
      [v3 addObject:?];
    }

    v6 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v3];
    v7 = *(self + 8);
    *(self + 8) = v6;
  }
}

- (id)initForProfile:(id)profile categoryType:(id)type predicate:(id)predicate restrictedSourceEntities:(id)entities
{
  v10 = MEMORY[0x277CCDAB0];
  entitiesCopy = entities;
  predicateCopy = predicate;
  typeCopy = type;
  profileCopy = profile;
  countUnit = [v10 countUnit];
  v16 = [_HDStatisticsSyntheticQuantityType syntheticQuantityTypeWithUnderlyingSampleType:typeCopy aggregationStyle:1 canonicalUnit:countUnit];

  v17 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self initForProfile:profileCopy quantityType:v16 predicate:predicateCopy restrictedSourceEntities:entitiesCopy];
  return v17;
}

- (void)setRestrictedSourceEntities:(id)entities
{
  v4 = objc_msgSend_copy(entities, a2);
  restrictedSourceEntities = self->_restrictedSourceEntities;
  self->_restrictedSourceEntities = v4;

  [(HDStatisticsCollectionCalculatorDefaultDataSource *)self _updateFullPredicate];
}

- (void)setPredicate:(id)predicate
{
  v4 = objc_msgSend_copy(predicate, a2);
  predicate = self->_predicate;
  self->_predicate = v4;

  [(HDStatisticsCollectionCalculatorDefaultDataSource *)self _updateFullPredicate];
}

- (BOOL)collectionCalculator:(id)calculator queryForInterval:(id)interval error:(id *)error sampleHandler:(id)handler mergeHandler:(id)mergeHandler
{
  v52[3] = *MEMORY[0x277D85DE8];
  calculatorCopy = calculator;
  intervalCopy = interval;
  handlerCopy = handler;
  mergeHandlerCopy = mergeHandler;
  v13 = self->_fullPredicate;
  if (intervalCopy)
  {
    quantityType = self->_quantityType;
    startDate = [intervalCopy startDate];
    v16 = [(HKQuantityType *)quantityType _earliestAllowedStartDateForSampleOverlappingDate:startDate];

    endDate = [intervalCopy endDate];
    v18 = HDSampleEntityPredicateForStartDate(3, endDate);

    startDate2 = [intervalCopy startDate];
    v20 = HDSampleEntityPredicateForEndDate(6, startDate2);

    v52[0] = self->_fullPredicate;
    v52[1] = v18;
    v52[2] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:3];
    if (v16)
    {
      v22 = HDSampleEntityPredicateForStartDate(6, v16);
      v23 = [v21 arrayByAddingObject:v22];

      v21 = v23;
    }

    v24 = [MEMORY[0x277D10B20] predicateMatchingAllPredicates:v21];

    v13 = v24;
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x2020000000;
  v47[3] = 0;
  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x2020000000;
  v46[3] = -1;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  database = [WeakRetained database];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __124__HDStatisticsCollectionCalculatorDefaultDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke;
  v39[3] = &unk_27862EF70;
  v39[4] = self;
  v27 = v13;
  v40 = v27;
  v43 = v47;
  v44 = &v48;
  v45 = v46;
  v28 = mergeHandlerCopy;
  v41 = v28;
  v29 = handlerCopy;
  v42 = v29;
  v30 = [(HDHealthEntity *)HDSampleEntity performReadTransactionWithHealthDatabase:database error:error block:v39];

  if (v30)
  {
    anchor = self->_anchor;
    if (!anchor || (v32 = v49[3], v32 > [(NSNumber *)anchor longLongValue]))
    {
      v33 = [MEMORY[0x277CCABB0] numberWithLongLong:v49[3]];
      v34 = self->_anchor;
      self->_anchor = v33;
    }
  }

  _Block_object_dispose(v46, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v48, 8);

  return v30;
}

uint64_t __124__HDStatisticsCollectionCalculatorDefaultDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v64[3] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v6 = [WeakRetained database];
  v54 = 0;
  v7 = [(HDHealthEntity *)HDSampleEntity maxRowIDForPredicate:0 healthDatabase:v6 error:&v54];
  v8 = v54;

  if (v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (!v9)
  {
    if (a3)
    {
      v28 = v8;
      v25 = 0;
      *a3 = v8;
    }

    else
    {
      _HKLogDroppedError();
      v25 = 0;
    }

    goto LABEL_22;
  }

  v47 = a3;
  v10 = *(a1 + 32);
  if (!*(v10 + 64))
  {
    goto LABEL_9;
  }

  v11 = [v7 longLongValue];
  if (v11 > [*(*(a1 + 32) + 64) longLongValue])
  {
    v10 = *(a1 + 32);
LABEL_9:
    objc_storeStrong((v10 + 64), v7);
  }

  v48 = v7;
  v12 = objc_loadWeakRetained((*(a1 + 32) + 24));
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(v13 + 32);
  v16 = *(v13 + 88);
  v17 = *(v13 + 16);
  v18 = *(v13 + 17);
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __124__HDStatisticsCollectionCalculatorDefaultDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke_2;
  v49[3] = &unk_27862EF48;
  v49[4] = v13;
  v52 = *(a1 + 64);
  v53 = *(a1 + 80);
  v50 = *(a1 + 48);
  v51 = *(a1 + 56);
  v19 = v15;
  v20 = v16;
  v21 = v49;
  v22 = v14;
  v23 = v12;
  objc_opt_self();
  if (v17 == 1)
  {
    if (v18)
    {
      v24 = 5;
    }

    else
    {
      v24 = 1;
    }

    v55 = MEMORY[0x277D85DD0];
    v56 = 3221225472;
    v57 = __154__HDStatisticsCollectionCalculatorDefaultDataSource__enumerateWithProfile_quantityType_predicate_filter_isQuantityType_includeUnfrozenSeries_error_block___block_invoke;
    v58 = &unk_27862EF98;
    v59 = v20;
    v60 = v21;
    v25 = [HDQuantitySampleValueEnumerator orderedQuantityValuesBySeriesForPredicate:v22 profile:v23 options:v24 error:v47 handler:&v55];

    v26 = v59;
    v27 = v21;
    v7 = v48;
  }

  else
  {
    v26 = v23;
    v44 = v21;
    v42 = v21;
    v43 = v22;
    v46 = v19;
    v29 = v19;
    objc_opt_self();
    v64[0] = @"data_provenances.source_id";
    v64[1] = @"start_date";
    v64[2] = @"end_date";
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:3];
    v41 = [v30 indexOfObject:@"data_provenances.source_id"];
    v40 = [v30 indexOfObject:@"start_date"];
    v31 = [v30 indexOfObject:@"end_date"];
    v32 = [v29 dataObjectClass];

    v33 = [objc_msgSend(v32 "hd_dataEntityClass")];
    v34 = [v33 syntheticQuantityColumnName];
    v45 = v23;
    if (v34)
    {
      v35 = [v30 arrayByAddingObject:v34];

      v30 = v35;
    }

    v7 = v48;
    v36 = [v26 database];
    v55 = MEMORY[0x277D85DD0];
    v56 = 3221225472;
    v57 = __120__HDStatisticsCollectionCalculatorDefaultDataSource__enumerateSampleTypeWithProfile_quantityType_predicate_error_block___block_invoke;
    v58 = &unk_27862EFC0;
    v61 = v40;
    v62 = v31;
    v63 = v41;
    v59 = v34;
    v60 = v42;
    v37 = v42;
    v38 = v34;
    v25 = [v33 enumerateProperties:v30 withPredicate:v43 healthDatabase:v36 error:v47 enumerationHandler:&v55];

    v19 = v46;
    v27 = v44;
    v23 = v45;
  }

LABEL_22:
  return v25;
}

uint64_t __124__HDStatisticsCollectionCalculatorDefaultDataSource_collectionCalculator_queryForInterval_error_sampleHandler_mergeHandler___block_invoke_2(void *a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = a5.n128_u64[0];
  v13 = a3.n128_f64[0];
  v16 = a1[4];
  v17 = *(v16 + 72);
  if (v17 >= 1)
  {
    v18 = *(v16 + 80);
    if (v18)
    {
      v19 = *(a1[7] + 8);
      v20 = *(v19 + 24);
      if (v20 >= v17)
      {
        result = (*(v18 + 16))(v18, a10, a8, a9, a3, a4);
        *(*(a1[7] + 8) + 24) = 0;
        ++*(*(a1[7] + 8) + 24);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        *(v19 + 24) = v20 + 1;
      }
    }
  }

  v22 = *(a1[8] + 8);
  if (*(v22 + 24) < a2)
  {
    *(v22 + 24) = a2;
  }

  v23 = *(a1[9] + 8);
  if (*(v23 + 24) != a2)
  {
    if (v13 != a6)
    {
      (*(a1[5] + 16))(v13, a4);
      v23 = *(a1[9] + 8);
    }

    *(v23 + 24) = a2;
  }

  v24 = *(a1[6] + 16);
  a3.n128_u64[0] = v12;
  a4.n128_f64[0] = a6;
  a5.n128_f64[0] = a7;

  return v24(a3, a4, a5);
}

uint64_t __154__HDStatisticsCollectionCalculatorDefaultDataSource__enumerateWithProfile_quantityType_predicate_filter_isQuantityType_includeUnfrozenSeries_error_block___block_invoke(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  if (![MEMORY[0x277CCDDB8] filter:*(a1 + 32) acceptsDataObjectWithStartTimestamp:a5 endTimestamp:a6 valueInCanonicalUnit:?])
  {
    return 1;
  }

  v17 = *(*(a1 + 40) + 16);
  v12.n128_f64[0] = a2;
  v13.n128_f64[0] = a3;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;
  v16.n128_f64[0] = a6;

  return v17(v12, v13, v14, v15, v16);
}

uint64_t __120__HDStatisticsCollectionCalculatorDefaultDataSource__enumerateSampleTypeWithProfile_quantityType_predicate_error_block___block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x22AAC6C50](a4, a1[6], a3);
  v7 = MEMORY[0x22AAC6C50](a4, a1[7]);
  HDSQLiteColumnAsInt64();
  if (a1[4])
  {
    HDSQLiteColumnWithNameAsDouble();
    v10.n128_u64[0] = v8.n128_u64[0];
  }

  else
  {
    v10.n128_u64[0] = 0;
  }

  v13 = *(a1[5] + 16);
  v8.n128_f64[0] = v6;
  v9.n128_f64[0] = v7;
  v11.n128_f64[0] = v6;
  v12.n128_f64[0] = v7;

  return v13(v8, v9, v10, v11, v12);
}

- (BOOL)addValuesForQuantitySamples:(id)samples calculator:(id)calculator includeSeries:(BOOL)series error:(id *)error
{
  seriesCopy = series;
  samplesCopy = samples;
  calculatorCopy = calculator;
  if (seriesCopy && (v20[0] = MEMORY[0x277D85DD0], v20[1] = 3221225472, v20[2] = __112__HDStatisticsCollectionCalculatorDefaultDataSource_addValuesForQuantitySamples_calculator_includeSeries_error___block_invoke, v20[3] = &unk_27862EFE8, v20[4] = self, [samplesCopy hk_firstObjectPassingTest:v20], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    WeakRetained = objc_loadWeakRetained(&self->_profile);
    database = [WeakRetained database];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __112__HDStatisticsCollectionCalculatorDefaultDataSource_addValuesForQuantitySamples_calculator_includeSeries_error___block_invoke_2;
    v17[3] = &unk_278615D40;
    v17[4] = self;
    v18 = samplesCopy;
    v19 = calculatorCopy;
    v15 = [(HDHealthEntity *)HDQuantitySampleEntity performReadTransactionWithHealthDatabase:database error:error block:v17];
  }

  else
  {
    v15 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)self _addValuesForQuantitySamples:samplesCopy calculator:calculatorCopy requiresSeriesValues:0 transaction:0 error:error];
  }

  return v15;
}

BOOL __112__HDStatisticsCollectionCalculatorDefaultDataSource_addValuesForQuantitySamples_calculator_includeSeries_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 quantityType];
  if ([v4 isEqual:*(*(a1 + 32) + 32)])
  {
    v5 = [v3 count] > 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (uint64_t)_addValuesForQuantitySamples:(void *)samples calculator:(char)calculator requiresSeriesValues:(void *)values transaction:(uint64_t)transaction error:
{
  v11 = a2;
  samplesCopy = samples;
  valuesCopy = values;
  if (self)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __132__HDStatisticsCollectionCalculatorDefaultDataSource__addValuesForQuantitySamples_calculator_requiresSeriesValues_transaction_error___block_invoke;
    v16[3] = &unk_27862F010;
    v17 = v11;
    selfCopy = self;
    calculatorCopy = calculator;
    v19 = samplesCopy;
    v20 = valuesCopy;
    v14 = [v19 performAddSampleTransaction:v16 error:transaction];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __132__HDStatisticsCollectionCalculatorDefaultDataSource__addValuesForQuantitySamples_calculator_requiresSeriesValues_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v49 count:16];
  v26 = 1;
  if (!v4)
  {
    goto LABEL_27;
  }

  v5 = *v29;
  while (2)
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v29 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = *(*(&v28 + 1) + 8 * i);
      v8 = [v7 quantityType];
      v9 = [v8 isEqual:*(*(a1 + 40) + 32)];

      if (!v9)
      {
        continue;
      }

      v10 = *(a1 + 48);
      if (*(a1 + 64) != 1)
      {
        if (![HDStatisticsCollectionCalculatorDefaultDataSource _addValueForQuantitySample:v7 calculator:*(a1 + 48) error:a2])
        {
          goto LABEL_26;
        }

        continue;
      }

      v11 = *(a1 + 56);
      v12 = v7;
      v13 = v10;
      v14 = v11;
      v15 = objc_opt_self();
      if ([v12 count] == 1)
      {
        v16 = [(HDStatisticsCollectionCalculatorDefaultDataSource *)v15 _addValueForQuantitySample:v12 calculator:v13 error:a2];

        goto LABEL_22;
      }

      v43 = 0;
      v44 = &v43;
      v45 = 0x3032000000;
      v46 = __Block_byref_object_copy__201;
      v47 = __Block_byref_object_dispose__201;
      v48 = 0;
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 1;
      v38[0] = 0;
      v38[1] = v38;
      v38[2] = 0x2020000000;
      [v12 _startTimestamp];
      v38[3] = v17;
      v18 = [v12 UUID];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __115__HDStatisticsCollectionCalculatorDefaultDataSource__addValueForQuantitySeriesSample_calculator_transaction_error___block_invoke;
      v32[3] = &unk_27862F038;
      v35 = v38;
      v36 = &v39;
      v19 = v13;
      v33 = v19;
      v20 = v12;
      v34 = v20;
      v37 = &v43;
      v21 = [HDQuantitySampleSeriesEntity enumerateDataWithIdentifier:v18 transaction:v14 error:a2 handler:v32];

      if (!v21)
      {
        goto LABEL_20;
      }

      if ((v40[3] & 1) == 0)
      {
        v22 = v44[5];
        v23 = v22;
        if (v22)
        {
          if (a2)
          {
            v24 = v22;
            *a2 = v23;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_20:
        v16 = 0;
        goto LABEL_21;
      }

      v16 = 1;
LABEL_21:

      _Block_object_dispose(v38, 8);
      _Block_object_dispose(&v39, 8);
      _Block_object_dispose(&v43, 8);

LABEL_22:
      if ((v16 & 1) == 0)
      {
LABEL_26:
        v26 = 0;
        goto LABEL_27;
      }
    }

    v4 = [v3 countByEnumeratingWithState:&v28 objects:v49 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

  v26 = 1;
LABEL_27:

  return v26;
}

+ (uint64_t)_addValueForQuantitySample:(void *)sample calculator:(uint64_t)calculator error:
{
  sampleCopy = sample;
  v7 = a2;
  objc_opt_self();
  quantity = [v7 quantity];
  quantityType = [v7 quantityType];
  canonicalUnit = [quantityType canonicalUnit];
  [quantity doubleValueForUnit:canonicalUnit];
  v12 = v11;

  startDate = [v7 startDate];
  [startDate timeIntervalSinceReferenceDate];
  v15 = v14;
  endDate = [v7 endDate];
  [endDate timeIntervalSinceReferenceDate];
  v18 = v17;
  sourceRevision = [v7 sourceRevision];

  source = [sourceRevision source];
  _sourceID = [source _sourceID];
  v22 = [sampleCopy addSampleValue:objc_msgSend(_sourceID startTime:"longLongValue") endTime:calculator sourceID:v12 error:{v15, v18}];

  return v22;
}

uint64_t __115__HDStatisticsCollectionCalculatorDefaultDataSource__addValueForQuantitySeriesSample_calculator_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasDuration])
  {
    [v3 timeInterval];
    v5 = v4;
  }

  else
  {
    v5 = *(*(*(a1 + 48) + 8) + 24);
  }

  v6 = [v3 hasDuration];
  [v3 timeInterval];
  v8 = v7;
  if (v6)
  {
    [v3 duration];
    v8 = v8 + v9;
  }

  *(*(*(a1 + 48) + 8) + 24) = v8;
  v10 = *(a1 + 32);
  [v3 value];
  v12 = v11;
  v13 = [*(a1 + 40) sourceRevision];
  v14 = [v13 source];
  v15 = [v14 _sourceID];
  v16 = [v15 longLongValue];
  v17 = *(*(a1 + 64) + 8);
  obj = *(v17 + 40);
  LOBYTE(v10) = [v10 addSampleValue:v16 startTime:&obj endTime:v12 sourceID:v5 error:v8];
  objc_storeStrong((v17 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v10;

  v18 = *(*(*(a1 + 56) + 8) + 24);
  return v18;
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

@end