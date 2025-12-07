@interface NLTaggerAssetRequest
+ (void)checkAssetRequests;
+ (void)checkAssetRequestsTimerFired:(id)fired;
+ (void)startTimer;
- (BOOL)hasExpired;
- (BOOL)isFulfilled;
- (NLTaggerAssetRequest)initWithLanguage:(id)language assetIdentifier:(id)identifier tagScheme:(id)scheme completionHandler:(id)handler;
- (void)completeWithResult:(int64_t)result error:(id)error;
- (void)waitForFulfillment;
@end

@implementation NLTaggerAssetRequest

- (BOOL)isFulfilled
{
  if ([@"ContextualEmbedding" isEqualToString:self->_tagScheme])
  {
    v3 = [NLContextualEmbedding contextualEmbeddingWithModelIdentifier:self->_assetIdentifier];
    hasAvailableAssets = [v3 hasAvailableAssets];
  }

  else
  {
    v3 = [NLTagger availableTagSchemesForLanguage:self->_language];
    hasAvailableAssets = [v3 containsObject:self->_tagScheme];
  }

  v5 = hasAvailableAssets;

  return v5;
}

+ (void)checkAssetRequests
{
  v64 = *MEMORY[0x1E69E9840];
  if (_assetRequestQueue)
  {
    v2 = _assetRequests == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__1;
    v54 = __Block_byref_object_dispose__1;
    array = [MEMORY[0x1E695DF70] array];
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = __Block_byref_object_copy__1;
    v48 = __Block_byref_object_dispose__1;
    array2 = [MEMORY[0x1E695DF70] array];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__NLTaggerAssetRequest_checkAssetRequests__block_invoke;
    block[3] = &unk_1E7629468;
    block[4] = &v50;
    block[5] = &v44;
    block[6] = self;
    dispatch_sync(_assetRequestQueue, block);
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = v51[5];
    v4 = [obj countByEnumeratingWithState:&v39 objects:v63 count:16];
    if (v4)
    {
      v5 = *v40;
      do
      {
        v33 = v4;
        for (i = 0; i != v33; ++i)
        {
          if (*v40 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v39 + 1) + 8 * i);
          v8 = objc_autoreleasePoolPush();
          v9 = NLGetLogCategory(self);
          internal = [v9 internal];

          if (os_log_type_enabled(internal, OS_LOG_TYPE_DEFAULT))
          {
            v11 = NLGetLogIdentifier(self);
            v12 = MEMORY[0x1E696AEC0];
            tagScheme = [v7 tagScheme];
            language = [v7 language];
            v15 = [v12 stringWithFormat:@"'%@' - '%@' asset download complete", tagScheme, language];
            *buf = 138543618;
            v60 = v11;
            v61 = 2114;
            v62 = v15;
            _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v8);
          [v7 completeWithResult:0 error:0];
        }

        v4 = [obj countByEnumeratingWithState:&v39 objects:v63 count:16];
      }

      while (v4);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v30 = v45[5];
    v16 = [v30 countByEnumeratingWithState:&v35 objects:v58 count:16];
    if (v16)
    {
      v34 = *v36;
      obja = *MEMORY[0x1E696A578];
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v36 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v18 = *(*(&v35 + 1) + 8 * j);
          v19 = objc_autoreleasePoolPush();
          v20 = NLGetLogCategory(self);
          internal2 = [v20 internal];

          if (os_log_type_enabled(internal2, OS_LOG_TYPE_DEFAULT))
          {
            v22 = NLGetLogIdentifier(self);
            v23 = MEMORY[0x1E696AEC0];
            tagScheme2 = [v18 tagScheme];
            language2 = [v18 language];
            v26 = [v23 stringWithFormat:@"'%@' - '%@' asset download request timed out", tagScheme2, language2];
            *buf = 138543618;
            v60 = v22;
            v61 = 2114;
            v62 = v26;
            _os_log_impl(&dword_19D48F000, internal2, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v19);
          v27 = MEMORY[0x1E696ABC0];
          v56 = obja;
          v57 = @"Asset download request timed out";
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
          v29 = [v27 errorWithDomain:@"NLNaturalLanguageErrorDomain" code:7 userInfo:v28];
          [v18 completeWithResult:2 error:v29];
        }

        v16 = [v30 countByEnumeratingWithState:&v35 objects:v58 count:16];
      }

      while (v16);
    }

    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v50, 8);
  }
}

uint64_t __42__NLTaggerAssetRequest_checkAssetRequests__block_invoke(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = _assetRequests;
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v18 = v2;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v19 + 1) + 8 * i);
        if ([v7 isFulfilled])
        {
          v8 = a1[4];
LABEL_10:
          [*(*(v8 + 8) + 40) addObject:v7];
          continue;
        }

        if ([v7 hasExpired])
        {
          v8 = a1[5];
          goto LABEL_10;
        }

        v9 = objc_autoreleasePoolPush();
        v10 = NLGetLogCategory(a1[6]);
        v11 = [v10 internal];

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = NLGetLogIdentifier(a1[6]);
          v13 = MEMORY[0x1E696AEC0];
          v14 = [v7 tagScheme];
          v15 = [v7 language];
          v16 = [v13 stringWithFormat:@"'%@' - '%@' asset is still waiting for download", v14, v15];
          *buf = 138543618;
          v24 = v12;
          v25 = 2114;
          v26 = v16;
          _os_log_impl(&dword_19D48F000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);

          v2 = v18;
        }

        objc_autoreleasePoolPop(v9);
      }

      v4 = [v2 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v4);
  }

  [_assetRequests removeObjectsInArray:*(*(a1[4] + 8) + 40)];
  return [_assetRequests removeObjectsInArray:*(*(a1[5] + 8) + 40)];
}

+ (void)startTimer
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__NLTaggerAssetRequest_startTimer__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

id __34__NLTaggerAssetRequest_startTimer__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = NLGetLogCategory(*(a1 + 32));
  v4 = [v3 internal];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NLGetLogIdentifier(*(a1 + 32));
    v6 = MEMORY[0x1E696AEC0];
    +[NLTagger assetRequestTimeoutInterval];
    v8 = [v6 stringWithFormat:@"Started timer for %f seconds", v7];
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_19D48F000, v4, OS_LOG_TYPE_DEBUG, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v9 = MEMORY[0x1E695DFF0];
  +[NLTagger assetRequestTimeoutInterval];
  return [v9 scheduledTimerWithTimeInterval:*(a1 + 32) target:sel_checkAssetRequestsTimerFired_ selector:0 userInfo:0 repeats:?];
}

+ (void)checkAssetRequestsTimerFired:(id)fired
{
  v14 = *MEMORY[0x1E69E9840];
  firedCopy = fired;
  v5 = objc_autoreleasePoolPush();
  v6 = NLGetLogCategory(self);
  internal = [v6 internal];

  if (os_log_type_enabled(internal, OS_LOG_TYPE_DEBUG))
  {
    v8 = NLGetLogIdentifier(self);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Timer fired"];
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_DEBUG, "%{public}@%{public}@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [self checkAssetRequests];
}

- (NLTaggerAssetRequest)initWithLanguage:(id)language assetIdentifier:(id)identifier tagScheme:(id)scheme completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  languageCopy = language;
  identifierCopy = identifier;
  schemeCopy = scheme;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (!languageCopy || !schemeCopy || !handlerCopy)
  {
    v17 = objc_autoreleasePoolPush();
    v22 = NLGetLogCategory(0);
    internal = [v22 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_ERROR))
    {
      v20 = NLGetLogIdentifier(0);
      v23 = "present";
      if (!v15)
      {
        v23 = "missing";
      }

      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to init NLTaggerAssetRequest, language: %@, tagScheme: %@, completion: %s", languageCopy, schemeCopy, v23];
      *buf = 138543618;
      v34 = v20;
      v35 = 2114;
      v36 = v21;
      goto LABEL_12;
    }

LABEL_13:

    objc_autoreleasePoolPop(v17);
    selfCopy = 0;
    goto LABEL_17;
  }

  v16 = [@"ContextualEmbedding" isEqualToString:self->_tagScheme];
  if (!identifierCopy && v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = NLGetLogCategory(0);
    internal = [v18 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_ERROR))
    {
      v20 = NLGetLogIdentifier(0);
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to init NLTaggerAssetRequest: missing contextual embedding model identifier"];
      *buf = 138543618;
      v34 = v20;
      v35 = 2114;
      v36 = v21;
LABEL_12:
      _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v32.receiver = self;
  v32.super_class = NLTaggerAssetRequest;
  v25 = [(NLTaggerAssetRequest *)&v32 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_language, language);
    objc_storeStrong(&v26->_assetIdentifier, identifier);
    objc_storeStrong(&v26->_tagScheme, scheme);
    v27 = MEMORY[0x19EAFC6F0](v15);
    completionHandler = v26->_completionHandler;
    v26->_completionHandler = v27;

    date = [MEMORY[0x1E695DF00] date];
    creationTime = v26->_creationTime;
    v26->_creationTime = date;
  }

  self = v26;
  selfCopy = self;
LABEL_17:

  return selfCopy;
}

- (BOOL)hasExpired
{
  v21 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_creationTime];
  v5 = v4;

  +[NLTagger assetRequestTimeoutInterval];
  v7 = v6;
  if (v5 >= v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = NLGetLogCategory(self);
    internal = [v9 internal];

    if (os_log_type_enabled(internal, OS_LOG_TYPE_DEBUG))
    {
      v11 = NLGetLogIdentifier(self);
      v12 = MEMORY[0x1E696AEC0];
      tagScheme = [(NLTaggerAssetRequest *)self tagScheme];
      language = [(NLTaggerAssetRequest *)self language];
      v15 = [v12 stringWithFormat:@"Asset '%@' -'%@' expired after %f seconds", tagScheme, language, *&v5];
      *buf = 138543618;
      v18 = v11;
      v19 = 2114;
      v20 = v15;
      _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_DEBUG, "%{public}@%{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  return v5 >= v7;
}

- (void)completeWithResult:(int64_t)result error:(id)error
{
  v32 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (result)
  {
    goto LABEL_8;
  }

  tagScheme = [(NLTaggerAssetRequest *)self tagScheme];
  if (([@"ContextualEmbedding" isEqualToString:tagScheme] & 1) == 0)
  {

    goto LABEL_8;
  }

  assetIdentifier = [(NLTaggerAssetRequest *)self assetIdentifier];
  v9 = [NLContextualEmbedding contextualEmbeddingWithModelIdentifier:assetIdentifier];
  requiresCompilation = [v9 requiresCompilation];

  if ((requiresCompilation & 1) == 0)
  {
LABEL_8:
    (*(self->_completionHandler + 2))();
    goto LABEL_9;
  }

  assetIdentifier2 = [(NLTaggerAssetRequest *)self assetIdentifier];
  v12 = [NLContextualEmbedding contextualEmbeddingWithModelIdentifier:assetIdentifier2];

  v13 = objc_autoreleasePoolPush();
  v14 = NLGetLogCategory(self);
  internal = [v14 internal];

  if (os_log_type_enabled(internal, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NLGetLogIdentifier(self);
    v17 = MEMORY[0x1E696AEC0];
    language = [(NLTaggerAssetRequest *)self language];
    assetIdentifier3 = [(NLTaggerAssetRequest *)self assetIdentifier];
    v20 = [v17 stringWithFormat:@"Requested compilation for embedding model '%@' - '%@'", language, assetIdentifier3];
    *buf = 138543618;
    v29 = v16;
    v30 = 2114;
    v31 = v20;
    _os_log_impl(&dword_19D48F000, internal, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  assetIdentifier4 = [(NLTaggerAssetRequest *)self assetIdentifier];
  v22 = MEMORY[0x19EAFC6F0](self->_completionHandler);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __49__NLTaggerAssetRequest_completeWithResult_error___block_invoke;
  v25[3] = &unk_1E7629490;
  v26 = assetIdentifier4;
  v27 = v22;
  v23 = v22;
  v24 = assetIdentifier4;
  [v12 requestModelCompilationWithCompletionHandler:v25];

LABEL_9:
}

void __49__NLTaggerAssetRequest_completeWithResult_error___block_invoke(uint64_t a1, int a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = NLGetLogCategory(0);
  v8 = [v7 internal];

  if (a2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NLGetLogIdentifier(0);
      v10 = MEMORY[0x1E696AEC0];
      v11 = *(a1 + 32);
      v12 = [MEMORY[0x1E696AAE8] mainBundle];
      v13 = [v12 bundleIdentifier];
      v14 = [v10 stringWithFormat:@"Compilation of '%@' model succeeded. Caller bundle id: '%@'", v11, v13];
      *buf = 138543618;
      v22 = v9;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_19D48F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v15 = NLGetLogIdentifier(0);
    v16 = MEMORY[0x1E696AEC0];
    v17 = *(a1 + 32);
    v18 = [MEMORY[0x1E696AAE8] mainBundle];
    v19 = [v18 bundleIdentifier];
    v20 = [v16 stringWithFormat:@"Compilation of '%@' model failed:%@\nCaller bundle id: '%@'", v17, v5, v19];
    *buf = 138543618;
    v22 = v15;
    v23 = 2114;
    v24 = v20;
    _os_log_impl(&dword_19D48F000, v8, OS_LOG_TYPE_ERROR, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  (*(*(a1 + 40) + 16))();
}

- (void)waitForFulfillment
{
  if (waitForFulfillment_onceToken != -1)
  {
    [NLTaggerAssetRequest waitForFulfillment];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__NLTaggerAssetRequest_waitForFulfillment__block_invoke_2;
  block[3] = &unk_1E7628FC8;
  block[4] = self;
  dispatch_sync(_assetRequestQueue, block);
}

uint64_t __42__NLTaggerAssetRequest_waitForFulfillment__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.NaturalLanguage.AssetRequest", 0);
  v1 = _assetRequestQueue;
  _assetRequestQueue = v0;

  _assetRequests = objc_alloc_init(MEMORY[0x1E695DF70]);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t __42__NLTaggerAssetRequest_waitForFulfillment__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = NLGetLogCategory(*(a1 + 32));
  v4 = [v3 internal];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NLGetLogIdentifier(*(a1 + 32));
    v6 = MEMORY[0x1E696AEC0];
    v7 = [*(a1 + 32) tagScheme];
    v8 = [*(a1 + 32) language];
    v9 = [v6 stringWithFormat:@"Adding '%@' - '%@' to fulfillment queue", v7, v8];
    *buf = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v9;
    _os_log_impl(&dword_19D48F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@%{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  return [_assetRequests addObject:*(a1 + 32)];
}

@end