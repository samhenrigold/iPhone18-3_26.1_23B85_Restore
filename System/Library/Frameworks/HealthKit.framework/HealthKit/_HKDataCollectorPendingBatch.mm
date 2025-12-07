@interface _HKDataCollectorPendingBatch
- (_HKDataCollectorPendingBatch)init;
- (_HKDataCollectorPendingBatch)initWithIdentifier:(id)identifier data:(id)data metadata:(id)metadata device:(id)device options:(unint64_t)options completion:(id)completion;
- (_HKDataCollectorPendingBatch)initWithIdentifier:(id)identifier data:(id)data metadata:(id)metadata device:(id)device options:(unint64_t)options completions:(id)completions;
- (id)batchByAddingData:(id)data completion:(id)completion;
- (id)description;
- (void)callCompletionsWithSuccess:(BOOL)success error:(id)error;
@end

@implementation _HKDataCollectorPendingBatch

- (_HKDataCollectorPendingBatch)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (_HKDataCollectorPendingBatch)initWithIdentifier:(id)identifier data:(id)data metadata:(id)metadata device:(id)device options:(unint64_t)options completion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  metadataCopy = metadata;
  dataCopy = data;
  identifierCopy = identifier;
  if (completion)
  {
    v18 = _Block_copy(completion);
    v24[0] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
    v20 = [(_HKDataCollectorPendingBatch *)self initWithIdentifier:identifierCopy data:dataCopy metadata:metadataCopy device:deviceCopy options:options completions:v19];

    v21 = v20;
  }

  else
  {
    v22 = [(_HKDataCollectorPendingBatch *)self initWithIdentifier:identifierCopy data:dataCopy metadata:metadataCopy device:deviceCopy options:options completions:MEMORY[0x1E695E0F0]];

    v21 = v22;
  }

  return v21;
}

- (_HKDataCollectorPendingBatch)initWithIdentifier:(id)identifier data:(id)data metadata:(id)metadata device:(id)device options:(unint64_t)options completions:(id)completions
{
  identifierCopy = identifier;
  dataCopy = data;
  metadataCopy = metadata;
  deviceCopy = device;
  completionsCopy = completions;
  v31.receiver = self;
  v31.super_class = _HKDataCollectorPendingBatch;
  v19 = [(_HKDataCollectorPendingBatch *)&v31 init];
  if (v19)
  {
    v20 = [identifierCopy copy];
    batchUUID = v19->_batchUUID;
    v19->_batchUUID = v20;

    v22 = [dataCopy copy];
    data = v19->_data;
    v19->_data = v22;

    v24 = [metadataCopy copy];
    metadata = v19->_metadata;
    v19->_metadata = v24;

    v26 = [deviceCopy copy];
    device = v19->_device;
    v19->_device = v26;

    v19->_options = options;
    v28 = [completionsCopy copy];
    completions = v19->_completions;
    v19->_completions = v28;
  }

  return v19;
}

- (id)batchByAddingData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v8 = [_HKDataCollectorPendingBatch alloc];
  batchUUID = self->_batchUUID;
  v10 = [(NSArray *)self->_data arrayByAddingObjectsFromArray:dataCopy];

  metadata = self->_metadata;
  device = self->_device;
  options = self->_options;
  completions = self->_completions;
  if (completionCopy)
  {
    v15 = _Block_copy(completionCopy);
    v16 = [(NSArray *)completions arrayByAddingObject:v15];
    v17 = [(_HKDataCollectorPendingBatch *)v8 initWithIdentifier:batchUUID data:v10 metadata:metadata device:device options:options completions:v16];
  }

  else
  {
    v17 = [(_HKDataCollectorPendingBatch *)v8 initWithIdentifier:batchUUID data:v10 metadata:metadata device:device options:options completions:completions];
  }

  return v17;
}

- (void)callCompletionsWithSuccess:(BOOL)success error:(id)error
{
  v29 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v6 = [(NSArray *)self->_completions count];
  if (v6)
  {
    _HKInitializeLogging(v6, v7);
    v8 = HKLogDataCollection;
    if (os_log_type_enabled(HKLogDataCollection, OS_LOG_TYPE_INFO))
    {
      batchUUID = self->_batchUUID;
      v10 = v8;
      v11 = HKDiagnosticStringFromUUID(batchUUID);
      v12 = [(NSArray *)self->_completions count];
      *buf = 138543874;
      selfCopy = self;
      v25 = 2114;
      v26 = v11;
      v27 = 2048;
      v28 = v12;
      _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_INFO, "%{public}@: Batch %{public}@: Calling %ld completions from client.", buf, 0x20u);
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v13 = [(NSArray *)self->_completions copy];
    v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v19;
      do
      {
        v17 = 0;
        do
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(v13);
          }

          (*(*(*(&v18 + 1) + 8 * v17++) + 16))();
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v15);
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = HKDiagnosticStringFromUUID(self->_batchUUID);
  v6 = [v3 stringWithFormat:@"<%@:%p %@ datums={%lu count} metadata={%lu values} device=%@>", v4, self, v5, -[NSArray count](self->_data, "count"), -[NSDictionary count](self->_metadata, "count"), self->_device];

  return v6;
}

@end