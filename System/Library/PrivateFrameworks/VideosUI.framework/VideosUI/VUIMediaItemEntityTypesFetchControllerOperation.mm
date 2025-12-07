@interface VUIMediaItemEntityTypesFetchControllerOperation
+ (id)_changeSetFromMediaItemEntityTypes:(id)types toMediaItemEntityTypes:(id)entityTypes;
- (VUIMediaItemEntityTypesFetchControllerOperation)initWithMediaLibrary:(id)library;
- (VUIMediaItemEntityTypesFetchControllerOperation)initWithMediaLibrary:(id)library fetchReason:(int64_t)reason;
- (void)executionDidBegin;
@end

@implementation VUIMediaItemEntityTypesFetchControllerOperation

- (VUIMediaItemEntityTypesFetchControllerOperation)initWithMediaLibrary:(id)library
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The %@ initializer is not available.", v6}];

  return 0;
}

- (VUIMediaItemEntityTypesFetchControllerOperation)initWithMediaLibrary:(id)library fetchReason:(int64_t)reason
{
  v6.receiver = self;
  v6.super_class = VUIMediaItemEntityTypesFetchControllerOperation;
  result = [(VUIMediaLibraryOperation *)&v6 initWithMediaLibrary:library];
  if (result)
  {
    result->_fetchReason = reason;
  }

  return result;
}

- (void)executionDidBegin
{
  objc_initWeak(&location, self);
  mediaLibrary = [(VUIMediaLibraryOperation *)self mediaLibrary];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __68__VUIMediaItemEntityTypesFetchControllerOperation_executionDidBegin__block_invoke;
  v8 = &unk_1E87325F8;
  objc_copyWeak(&v9, &location);
  v4 = [mediaLibrary enqueueMediaItemEntityTypesFetchWithCompletionHandler:&v5];

  [(VUIMediaLibraryOperation *)self setAsyncWorkToken:v4, v5, v6, v7, v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __68__VUIMediaItemEntityTypesFetchControllerOperation_executionDidBegin__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained isCancelled];
    if ((v9 & 1) == 0)
    {
      if (v5)
      {
        v10 = [v8 currentFetchResponse];
        if (v10)
        {
          v11 = [v5 mediaItemEntityTypes];
          v12 = [v10 mediaItemEntityTypes];
          v13 = [v12 array];

          v14 = [v11 array];
          v15 = [objc_opt_class() _changeSetFromMediaItemEntityTypes:v13 toMediaItemEntityTypes:v14];
          v16 = -[VUIMediaItemEntityTypesFetchResponseChanges initWithMediaItemEntityTypesChangeSet:localMediaItemsAvailableDidChange:]([VUIMediaItemEntityTypesFetchResponseChanges alloc], "initWithMediaItemEntityTypesChangeSet:localMediaItemsAvailableDidChange:", v15, [v10 areLocalMediaItemsAvailable] ^ objc_msgSend(v5, "areLocalMediaItemsAvailable"));
        }

        else
        {
          v16 = 0;
        }

        v18 = -[VUIMediaItemEntityTypesFetchControllerResult initWithFetchReason:fetchResponse:]([VUIMediaItemEntityTypesFetchControllerResult alloc], "initWithFetchReason:fetchResponse:", [v8 fetchReason], v5);
        [(VUIMediaItemEntityTypesFetchControllerResult *)v18 setFetchChanges:v16];
        [v8 setResult:v18];
      }

      else
      {
        v17 = VUIDefaultLogObject(v9);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v6;
          _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "Media item entity types fetch failed with error (%@)", &v19, 0xCu);
        }

        [v8 setError:v6];
      }

      [v8 finishExecutionIfPossible];
    }
  }
}

+ (id)_changeSetFromMediaItemEntityTypes:(id)types toMediaItemEntityTypes:(id)entityTypes
{
  v5 = MEMORY[0x1E69DF6B0];
  entityTypesCopy = entityTypes;
  typesCopy = types;
  v8 = objc_alloc_init(v5);
  v9 = [v8 changeSetFromObjects:typesCopy toObjects:entityTypesCopy identifierBlock:&__block_literal_global_80 isEqualBlock:0];

  return v9;
}

@end