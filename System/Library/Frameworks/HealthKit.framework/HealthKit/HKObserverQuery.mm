@interface HKObserverQuery
+ (void)configureClientInterface:(id)interface;
- (HKObserverQuery)initWithQueryDescriptors:(NSArray *)queryDescriptors updateHandler:(void *)updateHandler;
- (HKObserverQuery)initWithSampleType:(HKSampleType *)sampleType predicate:(NSPredicate *)predicate updateHandler:(void *)updateHandler;
- (void)_validateAndRaiseExceptionIfNeeded:(id)needed;
- (void)client_dataUpdatedInDatabaseForTypes:(id)types withAnchor:(id)anchor query:(id)query;
- (void)queue_deliverError:(id)error;
- (void)queue_populateConfiguration:(id)configuration;
- (void)queue_queryDidDeactivate:(id)deactivate;
- (void)queue_validate;
@end

@implementation HKObserverQuery

- (HKObserverQuery)initWithSampleType:(HKSampleType *)sampleType predicate:(NSPredicate *)predicate updateHandler:(void *)updateHandler
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = updateHandler;
  v9 = predicate;
  v10 = sampleType;
  v11 = [[HKQueryDescriptor alloc] initWithSampleType:v10 predicate:v9];

  [(HKQuery *)self setShouldSuppressDataCollection:1];
  v18[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __62__HKObserverQuery_initWithSampleType_predicate_updateHandler___block_invoke;
  v16[3] = &unk_1E737B710;
  v17 = v8;
  v13 = v8;
  v14 = [(HKObserverQuery *)self initWithQueryDescriptors:v12 updateHandler:v16];

  return v14;
}

void __62__HKObserverQuery_initWithSampleType_predicate_updateHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a5;
  v10 = a4;
  _HKInitializeLogging(v10, v11);
  v12 = HKLogBackgroundUpdates;
  if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = v8;
    _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "Returning back the update handler after success for query %{public}@", &v13, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

- (HKObserverQuery)initWithQueryDescriptors:(NSArray *)queryDescriptors updateHandler:(void *)updateHandler
{
  v6 = updateHandler;
  v7 = queryDescriptors;
  [(HKObserverQuery *)self _validateAndRaiseExceptionIfNeeded:v7];
  v12.receiver = self;
  v12.super_class = HKObserverQuery;
  v8 = [(HKQuery *)&v12 initWithQueryDescriptors:v7];

  if (v8)
  {
    v9 = [v6 copy];
    v10 = v8->_updateHandler;
    v8->_updateHandler = v9;

    [(HKQuery *)v8 setShouldSuppressDataCollection:1];
  }

  return v8;
}

- (void)client_dataUpdatedInDatabaseForTypes:(id)types withAnchor:(id)anchor query:(id)query
{
  typesCopy = types;
  anchorCopy = anchor;
  queryCopy = query;
  queue = [(HKQuery *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __73__HKObserverQuery_client_dataUpdatedInDatabaseForTypes_withAnchor_query___block_invoke;
  v15[3] = &unk_1E737B738;
  v15[4] = self;
  v16 = queryCopy;
  v17 = anchorCopy;
  v18 = typesCopy;
  v12 = typesCopy;
  v13 = anchorCopy;
  v14 = queryCopy;
  dispatch_async(queue, v15);
}

void __73__HKObserverQuery_client_dataUpdatedInDatabaseForTypes_withAnchor_query___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = _Block_copy(*(*(a1 + 32) + 160));
  v4 = v2;
  if (v2)
  {
    _HKInitializeLogging(v2, v3);
    v5 = HKLogBackgroundUpdates;
    if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138543362;
      v18 = v6;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "client dataUpdatedInDatabase was fired for query UUID %{public}@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __73__HKObserverQuery_client_dataUpdatedInDatabaseForTypes_withAnchor_query___block_invoke_6;
    v13[3] = &unk_1E737B760;
    v9 = *(a1 + 48);
    v10 = *(a1 + 40);
    *&v11 = *(a1 + 56);
    *(&v11 + 1) = *(a1 + 32);
    *&v12 = v9;
    *(&v12 + 1) = v10;
    v14 = v12;
    v15 = v11;
    v16 = v4;
    [v7 queue_dispatchToClientForUUID:v8 shouldDeactivate:0 block:v13];
  }
}

void __73__HKObserverQuery_client_dataUpdatedInDatabaseForTypes_withAnchor_query___block_invoke_6(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__HKObserverQuery_client_dataUpdatedInDatabaseForTypes_withAnchor_query___block_invoke_2;
  v8[3] = &unk_1E737B738;
  v2 = (a1 + 56);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v5 = *(a1 + 48);
  *(&v5 + 1) = *v2;
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v9 = v6;
  v10 = v5;
  v7 = _Block_copy(v8);
  (*(*(a1 + 64) + 16))(*(a1 + 64), *(a1 + 56), *(a1 + 48), v7);
}

void __73__HKObserverQuery_client_dataUpdatedInDatabaseForTypes_withAnchor_query___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    _HKInitializeLogging(a1, a2);
    v3 = HKLogBackgroundUpdates;
    if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = *(a1 + 32);
      v9 = 138543874;
      v10 = v5;
      v11 = 2114;
      v12 = v4;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEFAULT, "client called completionHandler for query UUID %{public}@, forTypes: %{public}@, anchor: %{public}@", &v9, 0x20u);
    }

    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:time(0)];
    v8 = [*(a1 + 56) delegate];
    [v8 closeTransactionForTypes:*(a1 + 48) anchor:*(a1 + 32) ackTime:v7 query:*(a1 + 56)];
  }
}

- (void)queue_populateConfiguration:(id)configuration
{
  v6.receiver = self;
  v6.super_class = HKObserverQuery;
  configurationCopy = configuration;
  [(HKQuery *)&v6 queue_populateConfiguration:configurationCopy];
  [configurationCopy setObserveUnfrozenSeries:{self->_observeUnfrozenSeries, v6.receiver, v6.super_class}];
  queryDescriptors = [(HKQuery *)self queryDescriptors];
  [configurationCopy setQueryDescriptors:queryDescriptors];
}

+ (void)configureClientInterface:(id)interface
{
  interfaceCopy = interface;
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___HKObserverQuery;
  objc_msgSendSuper2(&v7, sel_configureClientInterface_, interfaceCopy);
  v5 = [interfaceCopy hk_setSetOfClass:objc_opt_class() forSelector:sel_client_dataUpdatedInDatabaseForTypes_withAnchor_query_ argumentIndex:0 ofReply:0];
  v6 = [interfaceCopy hk_setSetOfClass:objc_opt_class() forSelector:sel_client_dataUpdatedInDatabaseForTypes_withAnchor_query_ argumentIndex:1 ofReply:0];
}

- (void)queue_queryDidDeactivate:(id)deactivate
{
  v5.receiver = self;
  v5.super_class = HKObserverQuery;
  [(HKQuery *)&v5 queue_queryDidDeactivate:deactivate];
  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;
}

- (void)queue_validate
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = HKObserverQuery;
  [(HKQuery *)&v20 queue_validate];
  queryDescriptors = [(HKQuery *)self queryDescriptors];
  v4 = [queryDescriptors count];

  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be non-nil", objc_opt_class()}];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  queryDescriptors2 = [(HKQuery *)self queryDescriptors];
  v6 = [queryDescriptors2 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(queryDescriptors2);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        sampleType = [v10 sampleType];

        if (!sampleType)
        {
          [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be non-nil", objc_opt_class()}];
        }

        sampleType2 = [v10 sampleType];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v14 = MEMORY[0x1E695DF30];
          v15 = objc_opt_class();
          [v14 raise:@"HKQueryValidationFailureException" format:{@"%@ data type must be of class %@", v15, objc_opt_class()}];
        }
      }

      v7 = [queryDescriptors2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v7);
  }

  if (!self->_updateHandler)
  {
    [MEMORY[0x1E695DF30] raise:@"HKQueryValidationFailureException" format:{@"%@ updateHandler must not be nil", objc_opt_class()}];
  }
}

- (void)queue_deliverError:(id)error
{
  errorCopy = error;
  v5 = _Block_copy(self->_updateHandler);
  if (v5)
  {
    clientQueue = [(HKQuery *)self clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__HKObserverQuery_queue_deliverError___block_invoke;
    block[3] = &unk_1E7376618;
    v9 = v5;
    block[4] = self;
    v8 = errorCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)_validateAndRaiseExceptionIfNeeded:(id)needed
{
  if ([needed hk_containsObjectPassingTest:&__block_literal_global_82])
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = objc_opt_class();
    v5 = +[(HKObjectType *)HKPrescriptionType];
    [v3 raise:@"HKQueryValidationFailureException" format:{@"%@ Cannot initialize Observer Query with unsupported type %@.", v4, v5}];
  }
}

uint64_t __54__HKObserverQuery__validateAndRaiseExceptionIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 sampleType];
  v3 = +[(HKObjectType *)HKPrescriptionType];
  v4 = [v2 isEqual:v3];

  return v4;
}

@end