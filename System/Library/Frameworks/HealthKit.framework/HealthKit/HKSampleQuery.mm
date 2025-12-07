@interface HKSampleQuery
+ (id)sortDescriptorsForMostRecentSamples;
+ (void)configureClientInterface:(id)interface;
- (BOOL)_prepareSamplesForDelivery:(id)delivery error:(id *)error;
- (HKSampleQuery)initWithQueryDescriptors:(NSArray *)queryDescriptors limit:(NSInteger)limit sortDescriptors:(NSArray *)sortDescriptors resultsHandler:(void *)resultsHandler;
- (HKSampleQuery)initWithSampleType:(HKSampleType *)sampleType predicate:(NSPredicate *)predicate limit:(NSUInteger)limit sortDescriptors:(NSArray *)sortDescriptors resultsHandler:(void *)resultsHandler;
- (void)client_deliverSamples:(id)samples clearPendingSamples:(BOOL)pendingSamples isFinalBatch:(BOOL)batch queryUUID:(id)d;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKSampleQuery

- (HKSampleQuery)initWithSampleType:(HKSampleType *)sampleType predicate:(NSPredicate *)predicate limit:(NSUInteger)limit sortDescriptors:(NSArray *)sortDescriptors resultsHandler:(void *)resultsHandler
{
  v20[1] = *MEMORY[0x1E69E9840];
  v12 = resultsHandler;
  v13 = sortDescriptors;
  v14 = predicate;
  v15 = sampleType;
  v16 = [[HKQueryDescriptor alloc] initWithSampleType:v15 predicate:v14];

  v20[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v18 = [(HKSampleQuery *)self initWithQueryDescriptors:v17 limit:limit sortDescriptors:v13 resultsHandler:v12];

  return v18;
}

- (HKSampleQuery)initWithQueryDescriptors:(NSArray *)queryDescriptors limit:(NSInteger)limit sortDescriptors:(NSArray *)sortDescriptors resultsHandler:(void *)resultsHandler
{
  v10 = sortDescriptors;
  v11 = resultsHandler;
  v18.receiver = self;
  v18.super_class = HKSampleQuery;
  v12 = [(HKQuery *)&v18 initWithQueryDescriptors:queryDescriptors];
  if (v12)
  {
    v13 = [(NSArray *)v10 copy];
    v14 = v12->_sortDescriptors;
    v12->_sortDescriptors = v13;

    v12->_limit = limit;
    v15 = _Block_copy(v11);
    resultHandler = v12->_resultHandler;
    v12->_resultHandler = v15;

    v12->_includeAutomaticTimeZones = 0;
  }

  return v12;
}

- (BOOL)_prepareSamplesForDelivery:(id)delivery error:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  deliveryCopy = delivery;
  v6 = [deliveryCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(deliveryCopy);
        }

        if (![*(*(&v12 + 1) + 8 * i) prepareForDelivery:{error, v12}])
        {
          v10 = 0;
          goto LABEL_11;
        }
      }

      v7 = [deliveryCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)client_deliverSamples:(id)samples clearPendingSamples:(BOOL)pendingSamples isFinalBatch:(BOOL)batch queryUUID:(id)d
{
  samplesCopy = samples;
  dCopy = d;
  queue = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __82__HKSampleQuery_client_deliverSamples_clearPendingSamples_isFinalBatch_queryUUID___block_invoke;
  v15[3] = &unk_1E7379FC0;
  v15[4] = self;
  v16 = dCopy;
  v17 = samplesCopy;
  pendingSamplesCopy = pendingSamples;
  batchCopy = batch;
  v13 = samplesCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __82__HKSampleQuery_client_deliverSamples_clearPendingSamples_isFinalBatch_queryUUID___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = _Block_copy(*(*(a1 + 32) + 192));
  if (v2)
  {
    v3 = [*(a1 + 32) hasQueryUUID:*(a1 + 40)];
    if (v3)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 48);
      v32 = 0;
      v7 = [v5 _prepareSamplesForDelivery:v6 error:&v32];
      v8 = v32;
      v9 = *(a1 + 32);
      if (v7)
      {
        v10 = v9[22];
        if (v10 && *(a1 + 56) != 1)
        {
          [v10 addObjectsFromArray:*(a1 + 48)];
        }

        else
        {
          v11 = [*(a1 + 48) mutableCopy];
          v12 = *(a1 + 32);
          v13 = *(v12 + 176);
          *(v12 + 176) = v11;
        }

        if (*(a1 + 57) != 1)
        {
          goto LABEL_14;
        }

        v21 = *(*(a1 + 32) + 176);
        v22 = *(a1 + 32);
        v23 = *(v22 + 176);
        *(v22 + 176) = 0;

        v24 = *(a1 + 32);
        v25 = *(a1 + 40);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __82__HKSampleQuery_client_deliverSamples_clearPendingSamples_isFinalBatch_queryUUID___block_invoke_2;
        v26[3] = &unk_1E7376618;
        v27 = v21;
        v28 = v2;
        v26[4] = *(a1 + 32);
        v20 = v21;
        [v24 queue_dispatchToClientForUUID:v25 shouldDeactivate:1 block:v26];
      }

      else
      {
        v17 = *(a1 + 40);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __82__HKSampleQuery_client_deliverSamples_clearPendingSamples_isFinalBatch_queryUUID___block_invoke_5;
        v29[3] = &unk_1E7376618;
        v18 = v2;
        v19 = *(a1 + 32);
        v31 = v18;
        v29[4] = v19;
        v30 = v8;
        [v9 queue_dispatchToClientForUUID:v17 shouldDeactivate:1 block:v29];

        v20 = v31;
      }

LABEL_14:
      goto LABEL_15;
    }

    _HKInitializeLogging(v3, v4);
    v14 = HKLogQuery;
    if (os_log_type_enabled(HKLogQuery, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 138543618;
      v34 = v15;
      v35 = 2114;
      v36 = v16;
      _os_log_impl(&dword_19197B000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: Not delivering samples, invalid query UUID %{public}@", buf, 0x16u);
    }
  }

LABEL_15:
}

- (void)queue_populateConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = HKSampleQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v6 queue_populateConfiguration:configurationCopy];
  [configurationCopy setSortDescriptors:{self->_sortDescriptors, v6.receiver, v6.super_class}];
  [configurationCopy setLimit:self->_limit];
  [configurationCopy setIncludeAutomaticTimeZones:self->_includeAutomaticTimeZones];
  [configurationCopy setIncludeContributorInformation:self->_includeContributorInformation];
  queryDescriptors = [(HKQuery *)self queryDescriptors];
  [configurationCopy setQueryDescriptors:queryDescriptors];
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_resultHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__HKSampleQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)queue_validate
{
  v28 = *MEMORY[0x1E69E9840];
  v26.receiver = self;
  v26.super_class = HKSampleQuery;
  [(HKQuery *)&v26 queue_validate];
  if (!self->_resultHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ resultsHandler cannot be nil", objc_opt_class()}];
  }

  queryDescriptors = [(HKQuery *)self queryDescriptors];
  v4 = [queryDescriptors count];

  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be non-nil", objc_opt_class()}];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  obj = [(HKQuery *)self queryDescriptors];
  v7 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        sampleType = [v11 sampleType];

        if (!sampleType)
        {
          [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be non-nil", objc_opt_class()}];
        }

        sampleType2 = [v11 sampleType];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v15 = MEMORY[0x1E695DF30];
          v16 = objc_opt_class();
          [v15 raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be of class %@", v16, objc_opt_class()}];
        }

        sampleType3 = [v11 sampleType];
        [v5 addObject:sampleType3];
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v18 = [v5 count];
  queryDescriptors2 = [(HKQuery *)selfCopy queryDescriptors];
  v20 = [queryDescriptors2 count];

  if (v18 != v20)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ cannot provide the same sample type in more than one HKQueryDescriptor", objc_opt_class()}];
  }
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKSampleQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  resultHandler = self->_resultHandler;
  self->_resultHandler = 0;
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___HKSampleQuery;
  objc_msgSendSuper2(&v6, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setArrayOfClass:objc_opt_class() forSelector:sel_client_deliverSamples_clearPendingSamples_isFinalBatch_queryUUID_ argumentIndex:0 ofReply:0];
}

+ (id)sortDescriptorsForMostRecentSamples
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"endDate" ascending:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"HKObjectSortIdentifierDataID" ascending:0];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

@end