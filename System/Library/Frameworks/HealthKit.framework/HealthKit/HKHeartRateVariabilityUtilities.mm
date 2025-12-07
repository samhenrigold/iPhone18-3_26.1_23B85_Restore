@interface HKHeartRateVariabilityUtilities
+ (id)instantaneousBPMsForHeartbeatSeriesSample:(id)sample;
+ (void)deleteHRVSample:(id)sample healthStore:(id)store predicate:(id)predicate options:(unint64_t)options completion:(id)completion;
+ (void)deleteHRVSamplesFromStartDate:(id)date endDate:(id)endDate predicate:(id)predicate options:(unint64_t)options healthStore:(id)store completion:(id)completion;
+ (void)queryForParentSequenceOfHRV:(id)v healthStore:(id)store completion:(id)completion;
@end

@implementation HKHeartRateVariabilityUtilities

+ (void)queryForParentSequenceOfHRV:(id)v healthStore:(id)store completion:(id)completion
{
  v35[3] = *MEMORY[0x1E69E9840];
  vCopy = v;
  storeCopy = store;
  completionCopy = completion;
  quantityType = [vCopy quantityType];
  _hrvType = [self _hrvType];
  v14 = [quantityType isEqual:_hrvType];

  if ((v14 & 1) == 0)
  {
    [HKHeartRateVariabilityUtilities queryForParentSequenceOfHRV:a2 healthStore:self completion:?];
  }

  sourceRevision = [vCopy sourceRevision];
  source = [sourceRevision source];
  _isAppleWatch = [source _isAppleWatch];

  if (_isAppleWatch)
  {
    v18 = MEMORY[0x1E696AE18];
    startDate = [vCopy startDate];
    v20 = [v18 predicateWithFormat:@"startDate >= %@", startDate];

    v21 = MEMORY[0x1E696AE18];
    endDate = [vCopy endDate];
    v23 = [v21 predicateWithFormat:@"endDate <= %@", endDate];

    sourceRevision2 = [vCopy sourceRevision];
    source2 = [sourceRevision2 source];
    v26 = [HKQuery predicateForObjectsFromSource:source2];

    v27 = MEMORY[0x1E696AB28];
    v35[0] = v20;
    v35[1] = v23;
    v35[2] = v26;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:3];
    v29 = [v27 andPredicateWithSubpredicates:v28];

    v30 = +[HKSeriesType heartbeatSeriesType];
    v31 = [HKSampleQuery alloc];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __86__HKHeartRateVariabilityUtilities_queryForParentSequenceOfHRV_healthStore_completion___block_invoke;
    v33[3] = &unk_1E7385510;
    v34 = completionCopy;
    v32 = [(HKSampleQuery *)v31 initWithSampleType:v30 predicate:v29 limit:1 sortDescriptors:0 resultsHandler:v33];
    [storeCopy executeQuery:v32];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __86__HKHeartRateVariabilityUtilities_queryForParentSequenceOfHRV_healthStore_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = [a3 firstObject];
  (*(*(a1 + 32) + 16))();
}

+ (void)deleteHRVSample:(id)sample healthStore:(id)store predicate:(id)predicate options:(unint64_t)options completion:(id)completion
{
  sampleCopy = sample;
  storeCopy = store;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke;
  aBlock[3] = &unk_1E7385560;
  v14 = storeCopy;
  v28 = v14;
  v29 = sampleCopy;
  optionsCopy = options;
  selfCopy = self;
  v15 = completionCopy;
  v30 = v15;
  v16 = sampleCopy;
  v17 = _Block_copy(aBlock);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_37;
  v21[3] = &unk_1E73855B0;
  v22 = v14;
  v23 = v17;
  optionsCopy2 = options;
  selfCopy2 = self;
  v24 = v15;
  v18 = v15;
  v19 = v17;
  v20 = v14;
  [self queryForParentSequenceOfHRV:v16 healthStore:v20 completion:v21];
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2;
  v4[3] = &unk_1E7385538;
  v3 = *(a1 + 56);
  v6 = *(a1 + 64);
  v5 = *(a1 + 48);
  [v1 deleteObject:v2 options:v3 withCompletion:v4];
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging(v5, v6);
    if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_ERROR))
    {
      __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_cold_1();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, a2, v7);
  }
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_37(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 56);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_38;
    v9[3] = &unk_1E7385588;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 64);
    v10 = v6;
    v12 = v7;
    v11 = *(a1 + 48);
    [v5 deleteObject:a2 options:v4 withCompletion:v9];
  }

  else
  {
    v8 = *(*(a1 + 40) + 16);

    v8();
  }
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_38(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    _HKInitializeLogging(v5, v6);
    if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_ERROR))
    {
      __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_38_cold_1();
    }

    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, 0, v7);
    }
  }
}

+ (void)deleteHRVSamplesFromStartDate:(id)date endDate:(id)endDate predicate:(id)predicate options:(unint64_t)options healthStore:(id)store completion:(id)completion
{
  v34[2] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  storeCopy = store;
  completionCopy = completion;
  v17 = [HKQuery predicateForSamplesWithStartDate:date endDate:endDate options:0];
  v18 = v17;
  if (predicateCopy)
  {
    v19 = MEMORY[0x1E696AB28];
    v34[0] = predicateCopy;
    v34[1] = v17;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v21 = [v19 andPredicateWithSubpredicates:v20];

    v18 = v21;
  }

  _sequenceType = [self _sequenceType];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke;
  v27[3] = &unk_1E7385600;
  v28 = storeCopy;
  v29 = v18;
  selfCopy = self;
  optionsCopy = options;
  v30 = predicateCopy;
  v31 = completionCopy;
  v23 = predicateCopy;
  v24 = v18;
  v25 = storeCopy;
  v26 = completionCopy;
  [v25 deleteObjectsOfType:_sequenceType predicate:v24 options:options withCompletion:v27];
}

void __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = v6;
  if (a2)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 64) _hrvType];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_40;
    v14[3] = &unk_1E73855D8;
    v11 = *(a1 + 72);
    v17 = *(a1 + 64);
    v12 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    [v9 deleteObjectsOfType:v10 predicate:v12 options:v11 withCompletion:v14];
  }

  else
  {
    _HKInitializeLogging(v6, v7);
    if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_ERROR))
    {
      __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_cold_1();
    }

    v13 = *(a1 + 56);
    if (v13)
    {
      (*(v13 + 16))(v13, 0, v8);
    }
  }
}

void __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = v6;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging(v6, v7);
    if (os_log_type_enabled(HKLogHeartRate, OS_LOG_TYPE_ERROR))
    {
      __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_40_cold_1();
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v8);
  }
}

+ (id)instantaneousBPMsForHeartbeatSeriesSample:(id)sample
{
  sampleCopy = sample;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  startDate = [sampleCopy startDate];
  [startDate timeIntervalSinceReferenceDate];
  v7 = v6;

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v17[3] = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 1;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__HKHeartRateVariabilityUtilities_instantaneousBPMsForHeartbeatSeriesSample___block_invoke;
  v10[3] = &unk_1E7385628;
  v12 = v15;
  v13 = v17;
  v14 = v7;
  v8 = v4;
  v11 = v8;
  [sampleCopy _enumerateHeartbeatDataWithBlock:v10];

  _Block_object_dispose(v15, 8);
  _Block_object_dispose(v17, 8);

  return v8;
}

uint64_t __77__HKHeartRateVariabilityUtilities_instantaneousBPMsForHeartbeatSeriesSample___block_invoke(uint64_t a1, char a2, double a3)
{
  if ((a2 & 1) == 0 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = [[HKBeatToBeatInstantaneousBPM alloc] initWithBPM:1.0 / ((a3 - *(*(*(a1 + 48) + 8) + 24)) / 60.0) time:*(a1 + 56) + a3];
    [*(a1 + 32) addObject:v5];
  }

  *(*(*(a1 + 40) + 8) + 24) = 0;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  return 1;
}

+ (void)queryForParentSequenceOfHRV:(uint64_t)a1 healthStore:(uint64_t)a2 completion:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKHeartRateVariabilityUtilities.m" lineNumber:52 description:@"Should only query for parents sequence for HRV samples"];
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __92__HKHeartRateVariabilityUtilities_deleteHRVSample_healthStore_predicate_options_completion___block_invoke_2_38_cold_1()
{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __114__HKHeartRateVariabilityUtilities_deleteHRVSamplesFromStartDate_endDate_predicate_options_healthStore_completion___block_invoke_40_cold_1()
{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end