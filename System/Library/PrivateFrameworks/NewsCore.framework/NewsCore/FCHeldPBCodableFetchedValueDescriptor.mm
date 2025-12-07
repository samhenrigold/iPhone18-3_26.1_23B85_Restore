@interface FCHeldPBCodableFetchedValueDescriptor
- (BOOL)isValue:(id)value equalToValue:(id)toValue;
- (FCHeldPBCodableFetchedValueDescriptor)init;
- (FCHeldPBCodableFetchedValueDescriptor)initWithCodableClass:(Class)class contentContext:(id)context resourceConfigurationManager:(id)manager;
- (id)fastCachedValue;
- (id)inputManagers;
- (void)_processFetchOperationResult:(id)result withBlock:(id)block;
- (void)fetchValueWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service completion:(id)completion;
@end

@implementation FCHeldPBCodableFetchedValueDescriptor

- (id)fastCachedValue
{
  v19[1] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__63;
  v17 = __Block_byref_object_dispose__63;
  v18 = 0;
  resourceConfigurationManager = [(FCHeldPBCodableFetchedValueDescriptor *)self resourceConfigurationManager];
  value = [resourceConfigurationManager value];

  if (value)
  {
    v5 = [FCResourcesFetchOperation alloc];
    contentContext = [(FCHeldPBCodableFetchedValueDescriptor *)self contentContext];
    resourceID = [value resourceID];
    v19[0] = resourceID;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v9 = [(FCResourcesFetchOperation *)v5 initWithContext:contentContext resourceIDs:v8 downloadAssets:0];

    [(FCFetchOperation *)v9 setCachePolicy:3];
    [(FCFetchOperation *)v9 setCanSendFetchCompletionSynchronously:1];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __56__FCHeldPBCodableFetchedValueDescriptor_fastCachedValue__block_invoke;
    v12[3] = &unk_1E7C44468;
    v12[4] = self;
    v12[5] = &v13;
    [(FCFetchOperation *)v9 setFetchCompletionBlock:v12];
    [(FCOperation *)v9 start];
    [(FCResourcesFetchOperation *)v9 waitUntilFinished];
  }

  v10 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v10;
}

uint64_t __56__FCHeldPBCodableFetchedValueDescriptor_fastCachedValue__block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__FCHeldPBCodableFetchedValueDescriptor_fastCachedValue__block_invoke_2;
  v4[3] = &unk_1E7C44440;
  v2 = *(a1 + 32);
  v4[4] = *(a1 + 40);
  return [v2 _processFetchOperationResult:a2 withBlock:v4];
}

uint64_t __56__FCHeldPBCodableFetchedValueDescriptor_fastCachedValue__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

- (id)inputManagers
{
  v5[1] = *MEMORY[0x1E69E9840];
  resourceConfigurationManager = [(FCHeldPBCodableFetchedValueDescriptor *)self resourceConfigurationManager];
  v5[0] = resourceConfigurationManager;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

- (FCHeldPBCodableFetchedValueDescriptor)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCHeldPBCodableFetchedValueDescriptor init]";
    v10 = 2080;
    v11 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v12 = 1024;
    v13 = 28;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCHeldPBCodableFetchedValueDescriptor init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCHeldPBCodableFetchedValueDescriptor)initWithCodableClass:(Class)class contentContext:(id)context resourceConfigurationManager:(id)manager
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  managerCopy = manager;
  if (!class && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "codableClass"];
    *buf = 136315906;
    v19 = "[FCHeldPBCodableFetchedValueDescriptor initWithCodableClass:contentContext:resourceConfigurationManager:]";
    v20 = 2080;
    v21 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v22 = 1024;
    v23 = 35;
    v24 = 2114;
    v25 = v14;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (contextCopy)
    {
      goto LABEL_6;
    }
  }

  else if (contextCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "contentContext"];
    *buf = 136315906;
    v19 = "[FCHeldPBCodableFetchedValueDescriptor initWithCodableClass:contentContext:resourceConfigurationManager:]";
    v20 = 2080;
    v21 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v22 = 1024;
    v23 = 36;
    v24 = 2114;
    v25 = v15;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!managerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "resourceConfigurationManager"];
    *buf = 136315906;
    v19 = "[FCHeldPBCodableFetchedValueDescriptor initWithCodableClass:contentContext:resourceConfigurationManager:]";
    v20 = 2080;
    v21 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v22 = 1024;
    v23 = 37;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v17.receiver = self;
  v17.super_class = FCHeldPBCodableFetchedValueDescriptor;
  v11 = [(FCFetchedValueDescriptor *)&v17 init];
  v12 = v11;
  if (v11)
  {
    v11->_codableClass = class;
    objc_storeStrong(&v11->_contentContext, context);
    objc_storeStrong(&v12->_resourceConfigurationManager, manager);
  }

  return v12;
}

- (void)fetchValueWithCachePolicy:(unint64_t)policy qualityOfService:(int64_t)service completion:(id)completion
{
  v24[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (policy)
  {
    v9 = policy == 1;
  }

  else
  {
    v9 = 5;
  }

  resourceConfigurationManager = [(FCHeldPBCodableFetchedValueDescriptor *)self resourceConfigurationManager];
  value = [resourceConfigurationManager value];

  v12 = [FCResourcesFetchOperation alloc];
  contentContext = [(FCHeldPBCodableFetchedValueDescriptor *)self contentContext];
  resourceID = [value resourceID];
  v24[0] = resourceID;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v16 = [(FCResourcesFetchOperation *)v12 initWithContext:contentContext resourceIDs:v15 downloadAssets:1];

  [(FCOperation *)v16 setQualityOfService:service];
  [(FCFetchOperation *)v16 setCachePolicy:v9];
  -[FCFetchOperation setMaximumCachedAge:](v16, "setMaximumCachedAge:", [value refreshRate]);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __95__FCHeldPBCodableFetchedValueDescriptor_fetchValueWithCachePolicy_qualityOfService_completion___block_invoke;
  v21 = &unk_1E7C37B98;
  selfCopy = self;
  v23 = completionCopy;
  v17 = completionCopy;
  [(FCFetchOperation *)v16 setFetchCompletionBlock:&v18];
  [(FCOperation *)v16 start:v18];
}

- (BOOL)isValue:(id)value equalToValue:(id)toValue
{
  v21 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  toValueCopy = toValue;
  if (!valueCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "left"];
    *buf = 136315906;
    v14 = "[FCHeldPBCodableFetchedValueDescriptor isValue:equalToValue:]";
    v15 = 2080;
    v16 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v17 = 1024;
    v18 = 121;
    v19 = 2114;
    v20 = v11;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (toValueCopy)
    {
      goto LABEL_6;
    }
  }

  else if (toValueCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "right"];
    *buf = 136315906;
    v14 = "[FCHeldPBCodableFetchedValueDescriptor isValue:equalToValue:]";
    v15 = 2080;
    v16 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v17 = 1024;
    v18 = 122;
    v19 = 2114;
    v20 = v12;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  first = [valueCopy first];
  first2 = [toValueCopy first];
  v9 = [first isEqual:first2];

  return v9;
}

- (void)_processFetchOperationResult:(id)result withBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  blockCopy = block;
  if (!resultCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "result"];
    *buf = 136315906;
    v21 = "[FCHeldPBCodableFetchedValueDescriptor _processFetchOperationResult:withBlock:]";
    v22 = 2080;
    v23 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v24 = 1024;
    v25 = 130;
    v26 = 2114;
    v27 = v18;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (blockCopy)
    {
      goto LABEL_6;
    }
  }

  else if (blockCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block"];
    *buf = 136315906;
    v21 = "[FCHeldPBCodableFetchedValueDescriptor _processFetchOperationResult:withBlock:]";
    v22 = 2080;
    v23 = "FCHeldPBCodableFetchedValueDescriptor.m";
    v24 = 1024;
    v25 = 131;
    v26 = 2114;
    v27 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  error = [resultCopy error];
  if (error)
  {
    blockCopy[2](blockCopy, 0, error);
  }

  else
  {
    fetchedObject = [resultCopy fetchedObject];
    fc_onlyObject = [fetchedObject fc_onlyObject];
    v11 = objc_alloc(MEMORY[0x1E695DEF0]);
    fileURL = [fc_onlyObject fileURL];
    v13 = [v11 initWithContentsOfURL:fileURL];

    v14 = [objc_alloc(-[FCHeldPBCodableFetchedValueDescriptor codableClass](self "codableClass"))];
    v15 = [FCShallowCopyPair alloc];
    assetHandle = [fc_onlyObject assetHandle];
    v17 = [(FCPair *)v15 initWithFirst:v14 second:assetHandle];

    (blockCopy)[2](blockCopy, v17, 0);
  }
}

@end