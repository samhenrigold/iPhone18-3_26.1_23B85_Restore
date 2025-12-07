@interface VUIMediaEntitiesFetchControllerOperation
- (VUIMediaEntitiesFetchControllerOperation)initWithMediaLibrary:(id)library fetchReason:(int64_t)reason requests:(id)requests;
- (id)_resultWithResponses:(id)responses;
- (void)_handleCompletdFetchWithResponses:(id)responses error:(id)error;
- (void)_startChangesOperationWithMediaEntityFetchResponses:(id)responses currentFetchResponses:(id)fetchResponses;
- (void)_startMediaLibraryFetchOperation;
- (void)cancel;
@end

@implementation VUIMediaEntitiesFetchControllerOperation

- (VUIMediaEntitiesFetchControllerOperation)initWithMediaLibrary:(id)library fetchReason:(int64_t)reason requests:(id)requests
{
  libraryCopy = library;
  requestsCopy = requests;
  v16.receiver = self;
  v16.super_class = VUIMediaEntitiesFetchControllerOperation;
  v11 = [(VUIMediaEntitiesFetchControllerOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_mediaLibrary, library);
    v12->_fetchReason = reason;
    vui_deepCopy = [requestsCopy vui_deepCopy];
    requests = v12->_requests;
    v12->_requests = vui_deepCopy;
  }

  return v12;
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = VUIMediaEntitiesFetchControllerOperation;
  [(VUIMediaEntitiesFetchControllerOperation *)&v4 cancel];
  currentSubOperation = [(VUIMediaEntitiesFetchControllerOperation *)self currentSubOperation];
  [currentSubOperation cancel];

  [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
}

- (void)_startMediaLibraryFetchOperation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    mediaLibrary = [(VUIMediaEntitiesFetchControllerOperation *)self mediaLibrary];
    identifier = [mediaLibrary identifier];
    mediaLibrary2 = [(VUIMediaEntitiesFetchControllerOperation *)self mediaLibrary];
    title = [mediaLibrary2 title];
    *buf = 138412546;
    v19 = identifier;
    v20 = 2112;
    v21 = title;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUIMediaEntitiesFetchControllerOperation:: start fetch with media library id %@ # title %@", buf, 0x16u);
  }

  mediaLibrary3 = [(VUIMediaEntitiesFetchControllerOperation *)self mediaLibrary];
  v9 = mediaLibrary3 == 0;

  if (v9)
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"VUIMediaEntitiesFetchControllerOperationDomain" code:0 userInfo:0];
    [(VUIMediaEntitiesFetchControllerOperation *)self _handleCompletdFetchWithResponses:0 error:v13];
  }

  else
  {
    v10 = [VUIMediaLibraryFetchMediaEntitiesOperation alloc];
    mediaLibrary4 = [(VUIMediaEntitiesFetchControllerOperation *)self mediaLibrary];
    requests = [(VUIMediaEntitiesFetchControllerOperation *)self requests];
    v13 = [(VUIMediaLibraryFetchMediaEntitiesOperation *)v10 initWithMediaLibrary:mediaLibrary4 requests:requests];

    objc_initWeak(buf, v13);
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __76__VUIMediaEntitiesFetchControllerOperation__startMediaLibraryFetchOperation__block_invoke;
    v14[3] = &unk_1E872EFE8;
    objc_copyWeak(&v15, &location);
    objc_copyWeak(&v16, buf);
    [(VUIMediaLibraryFetchMediaEntitiesOperation *)v13 setCompletionBlock:v14];
    [(VUIMediaEntitiesFetchControllerOperation *)self setCurrentSubOperation:v13];
    [(VUIAsynchronousOperation *)v13 start];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }
}

void __76__VUIMediaEntitiesFetchControllerOperation__startMediaLibraryFetchOperation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2 && ([v2 isCancelled] & 1) == 0)
  {
    v3 = [v2 responses];
    v4 = [v2 error];
    [WeakRetained _handleCompletdFetchWithResponses:v3 error:v4];
  }
}

- (void)_handleCompletdFetchWithResponses:(id)responses error:(id)error
{
  v17 = *MEMORY[0x1E69E9840];
  responsesCopy = responses;
  errorCopy = error;
  v8 = errorCopy;
  if (responsesCopy)
  {
    currentFetchResponses = [(VUIMediaEntitiesFetchControllerOperation *)self currentFetchResponses];
    if (currentFetchResponses)
    {
      [(VUIMediaEntitiesFetchControllerOperation *)self _startChangesOperationWithMediaEntityFetchResponses:responsesCopy currentFetchResponses:currentFetchResponses];
    }

    else
    {
      v12 = [(VUIMediaEntitiesFetchControllerOperation *)self _resultWithResponses:responsesCopy];
      [(VUIMediaEntitiesFetchControllerOperation *)self setResult:v12];
      [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
    }
  }

  else
  {
    v10 = VUIDefaultLogObject(errorCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      requests = [(VUIMediaEntitiesFetchControllerOperation *)self requests];
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = requests;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "Media entity fetch failed with error (%@) for requests: %@", &v13, 0x16u);
    }

    [(VUIMediaEntitiesFetchControllerOperation *)self setError:v8];
    [(VUIAsynchronousOperation *)self finishExecutionIfPossible];
  }
}

- (void)_startChangesOperationWithMediaEntityFetchResponses:(id)responses currentFetchResponses:(id)fetchResponses
{
  responsesCopy = responses;
  fetchResponsesCopy = fetchResponses;
  v8 = [(VUIMediaEntitiesFetchControllerOperation *)self _resultWithResponses:responsesCopy];
  v9 = [[VUIMediaEntityFetchResponseChangesOperation alloc] initWithLatestFetchResponses:responsesCopy currentFetchResponses:fetchResponsesCopy];
  objc_initWeak(&location, v9);
  objc_initWeak(&from, self);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __118__VUIMediaEntitiesFetchControllerOperation__startChangesOperationWithMediaEntityFetchResponses_currentFetchResponses___block_invoke;
  v11[3] = &unk_1E8730290;
  objc_copyWeak(&v13, &from);
  objc_copyWeak(&v14, &location);
  v10 = v8;
  v12 = v10;
  [(VUIMediaEntityFetchResponseChangesOperation *)v9 setCompletionBlock:v11];
  [(VUIMediaEntitiesFetchControllerOperation *)self setCurrentSubOperation:v9];
  [(VUIAsynchronousOperation *)v9 start];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __118__VUIMediaEntitiesFetchControllerOperation__startChangesOperationWithMediaEntityFetchResponses_currentFetchResponses___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && v2 && ([v2 isCancelled] & 1) == 0)
  {
    v3 = *(a1 + 32);
    v4 = [v2 fetchResponseChanges];
    [v3 setFetchResponseChanges:v4];

    [WeakRetained setResult:*(a1 + 32)];
    [WeakRetained finishExecutionIfPossible];
  }
}

- (id)_resultWithResponses:(id)responses
{
  responsesCopy = responses;
  v5 = [[VUIMediaEntitiesFetchControllerResult alloc] initWithFetchReason:[(VUIMediaEntitiesFetchControllerOperation *)self fetchReason] fetchResponses:responsesCopy];

  return v5;
}

@end