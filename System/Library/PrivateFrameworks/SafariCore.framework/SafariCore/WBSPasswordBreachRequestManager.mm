@interface WBSPasswordBreachRequestManager
- (WBSPasswordBreachRequestManager)initWithContext:(id)context;
- (void)_buildRequestWithURL:(id)l headers:(id)headers completionHandler:(id)handler;
- (void)_fetchBucketAtURL:(id)l withClientBlindedHash:(id)hash completionHandler:(id)handler;
- (void)fetchHighFrequencyBucketWithCompletionHandler:(id)handler;
- (void)fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes:(id)hashes completionHandler:(id)handler;
@end

@implementation WBSPasswordBreachRequestManager

- (WBSPasswordBreachRequestManager)initWithContext:(id)context
{
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = WBSPasswordBreachRequestManager;
  v6 = [(WBSPasswordBreachRequestManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
    v8 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    fetchOperationQueue = v7->_fetchOperationQueue;
    v7->_fetchOperationQueue = v8;

    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.SafariShared.%@.%p.operationQueue", objc_opt_class(), v7];
    [(NSOperationQueue *)v7->_fetchOperationQueue setName:v10];

    v11 = MEMORY[0x1E695AC78];
    configuration = [contextCopy configuration];
    urlSessionConfiguration = [configuration urlSessionConfiguration];
    v14 = [v11 sessionWithConfiguration:urlSessionConfiguration delegate:0 delegateQueue:v7->_fetchOperationQueue];
    session = v7->_session;
    v7->_session = v14;

    v16 = v7;
  }

  return v7;
}

- (void)_fetchBucketAtURL:(id)l withClientBlindedHash:(id)hash completionHandler:(id)handler
{
  v17[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  hashCopy = hash;
  handlerCopy = handler;
  if ([hashCopy length])
  {
    v16 = @"x-req-p";
    v11 = [MEMORY[0x1E696AEC0] safari_stringAsHexWithData:hashCopy];
    v17[0] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v12 = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke;
  v14[3] = &unk_1E7CF32A0;
  v14[4] = self;
  v15 = handlerCopy;
  v13 = handlerCopy;
  [(WBSPasswordBreachRequestManager *)self _buildRequestWithURL:lCopy headers:v12 completionHandler:v14];
}

void __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2;
  v5[3] = &unk_1E7CF3278;
  v6 = *(a1 + 40);
  v4 = [v3 downloadTaskWithRequest:a2 completionHandler:v5];
  [v4 resume];
}

void __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v11 = v9;
    v12 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v9, v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_1(v12, v11);
    }

    goto LABEL_4;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v11 = v8;
    v15 = [v11 safari_statusCodeGroup];
    if (v15 == 2)
    {
      v52 = 0;
      v17 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v7 options:1 error:&v52];
      v18 = v52;
      v20 = v18;
      if (v17)
      {
        v22 = [[WBSPasswordBreachBloomFilter alloc] initWithSerializedRepresentation:v17];
        if (v22)
        {
          v23 = [v11 valueForHTTPHeaderField:@"x-res-p"];
          if ([v23 length])
          {
            v24 = [MEMORY[0x1E695DEF0] safari_dataWithHexString:v23];
            if (![v24 length])
            {
              v26 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v25);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_4(v26, v27, v28, v29, v30, v31, v32, v33);
              }
            }

            (*(*(a1 + 32) + 16))();
          }

          else
          {
            (*(*(a1 + 32) + 16))();
          }
        }

        else
        {
          v44 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(0, v21);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_5(v44, v45, v46, v47, v48, v49, v50, v51);
          }

          (*(*(a1 + 32) + 16))();
        }
      }

      else
      {
        v43 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v18, v19);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_6(v43, v20);
        }

        (*(*(a1 + 32) + 16))();
      }

      goto LABEL_5;
    }

    v42 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v15, v16);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_3(v42, v11);
    }

LABEL_4:
    (*(*(a1 + 32) + 16))();
LABEL_5:

    goto LABEL_6;
  }

  v34 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(isKindOfClass, v14);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_2(v34, v35, v36, v37, v38, v39, v40, v41);
  }

  (*(*(a1 + 32) + 16))();
LABEL_6:
}

- (void)_buildRequestWithURL:(id)l headers:(id)headers completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  headersCopy = headers;
  handlerCopy = handler;
  v9 = [MEMORY[0x1E695AC18] requestWithURL:l];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = headersCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v17 + 1) + 8 * i);
        v16 = [v10 objectForKeyedSubscript:{v15, v17}];
        [v9 setValue:v16 forHTTPHeaderField:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  handlerCopy[2](handlerCopy, v9);
}

- (void)fetchHighFrequencyBucketWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  configuration = [(WBSPasswordBreachContext *)self->_context configuration];
  highFrequencyBucketURL = [configuration highFrequencyBucketURL];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__WBSPasswordBreachRequestManager_fetchHighFrequencyBucketWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7CF32C8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(WBSPasswordBreachRequestManager *)self _fetchBucketAtURL:highFrequencyBucketURL withClientBlindedHash:0 completionHandler:v8];
}

- (void)fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes:(id)hashes completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  hashesCopy = hashes;
  handlerCopy = handler;
  v7 = dispatch_group_create();
  v31 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(hashesCopy, "count")}];
  configuration = [(WBSPasswordBreachContext *)self->_context configuration];
  verboseSensitiveLoggingEnabled = [configuration verboseSensitiveLoggingEnabled];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = hashesCopy;
  v32 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v32)
  {
    v30 = *v40;
    do
    {
      v10 = 0;
      do
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v39 + 1) + 8 * v10);
        v12 = v7;
        dispatch_group_enter(v7);
        v13 = [obj objectForKeyedSubscript:v11];
        v15 = v13;
        if (verboseSensitiveLoggingEnabled)
        {
          v16 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v13, v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v22 = MEMORY[0x1E696AEC0];
            v23 = v16;
            second = [v15 second];
            v25 = [v22 safari_stringAsHexWithData:second];
            first = [v15 first];
            *buf = 138740483;
            v44 = v11;
            v45 = 2117;
            v46 = v25;
            v47 = 2117;
            v48 = first;
            _os_log_debug_impl(&dword_1B8447000, v23, OS_LOG_TYPE_DEBUG, "Looking up password with UUID %{sensitive}@, client-blinded hash %{sensitive}@ in bucket %{sensitive}@", buf, 0x20u);
          }
        }

        configuration2 = [(WBSPasswordBreachContext *)self->_context configuration];
        lowFrequencyBucketURL = [configuration2 lowFrequencyBucketURL];
        first2 = [v15 first];
        v20 = [lowFrequencyBucketURL URLByAppendingPathComponent:first2];

        second2 = [v15 second];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __120__WBSPasswordBreachRequestManager_fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes_completionHandler___block_invoke;
        v34[3] = &unk_1E7CF32F0;
        v38 = verboseSensitiveLoggingEnabled;
        v35 = v31;
        v36 = v11;
        v7 = v12;
        v37 = v12;
        [(WBSPasswordBreachRequestManager *)self _fetchBucketAtURL:v20 withClientBlindedHash:second2 completionHandler:v34];

        ++v10;
      }

      while (v32 != v10);
      v32 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v32);
  }

  configuration3 = [(WBSPasswordBreachContext *)self->_context configuration];
  v28 = dispatch_time(0, 1000000000 * [configuration3 lowFrequencyBucketFetchTimeout]);
  dispatch_group_wait(v7, v28);

  handlerCopy[2](handlerCopy, v31);
}

void __120__WBSPasswordBreachRequestManager_fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (*(a1 + 56) == 1)
  {
    v8 = [v6 length];
    if (v8)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        __120__WBSPasswordBreachRequestManager_fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes_completionHandler___block_invoke_cold_1(v10, v7);
      }
    }
  }

  v11 = [[WBSPair alloc] initWithFirst:v5 second:v7];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:*(a1 + 40)];

  dispatch_group_leave(*(a1 + 48));
}

void __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_3(void *a1, void *a2)
{
  v3 = a1;
  [a2 statusCode];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 8u);
}

void __93__WBSPasswordBreachRequestManager__fetchBucketAtURL_withClientBlindedHash_completionHandler___block_invoke_2_cold_6(void *a1, void *a2)
{
  v3 = a1;
  v9 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __120__WBSPasswordBreachRequestManager_fetchLowFrequencyBucketsForBucketIdentifiersAndClientBlindedHashes_completionHandler___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a1;
  v5 = [v3 safari_stringAsHexWithData:a2];
  v6 = 138739971;
  v7 = v5;
  _os_log_debug_impl(&dword_1B8447000, v4, OS_LOG_TYPE_DEBUG, "\tReceived server-client-blinded hash %{sensitive}@", &v6, 0xCu);
}

@end