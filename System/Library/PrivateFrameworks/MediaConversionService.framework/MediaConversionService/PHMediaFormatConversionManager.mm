@interface PHMediaFormatConversionManager
- (PHMediaFormatConversionManager)init;
- (id)jobForConversionRequest:(id)request completionHandler:(id)handler;
- (id)rootAncestorRequestForRequest:(id)request;
- (id)ut_objectsToBeDeallocatedWithReceiver;
- (void)cancellationRequestedForJob:(id)job;
- (void)configureTransferBehaviorUserPreferenceForRequest:(id)request;
- (void)enqueueConversionRequest:(id)request completionHandler:(id)handler;
- (void)invalidate;
- (void)performConversionRequest:(id)request completionHandler:(id)handler;
- (void)preflightAllRelatedRequestsForCurrentJob;
- (void)preflightConversionRequest:(id)request;
- (void)preflightConversionRequest:(id)request completionHandler:(id)handler;
- (void)processQueuedJobs;
- (void)setDirectoryForTemporaryFiles:(id)files;
- (void)setTransferBehaviorUserPreferenceOverride:(id)override;
- (void)setupConversionImplementation;
- (void)validateLivePhotoPairingIdentifierConfigurationForRequest:(id)request;
@end

@implementation PHMediaFormatConversionManager

- (id)ut_objectsToBeDeallocatedWithReceiver
{
  conversionImplementation = [(PHMediaFormatConversionManager *)self conversionImplementation];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    conversionImplementation2 = [(PHMediaFormatConversionManager *)self conversionImplementation];
    ut_objectsToBeDeallocatedWithReceiver = [conversionImplementation2 ut_objectsToBeDeallocatedWithReceiver];
  }

  else
  {
    ut_objectsToBeDeallocatedWithReceiver = 0;
  }

  return ut_objectsToBeDeallocatedWithReceiver;
}

- (void)invalidate
{
  stateQueue = [(PHMediaFormatConversionManager *)self stateQueue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__PHMediaFormatConversionManager_invalidate__block_invoke;
  v5[3] = &unk_27989B7E0;
  v5[4] = self;
  v5[5] = a2;
  dispatch_sync(stateQueue, v5);
}

void __44__PHMediaFormatConversionManager_invalidate__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) state] != 1)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"PHMediaFormatConversion.m" lineNumber:2369 description:@"Invalidate can only be called once."];
  }

  [*(a1 + 32) setState:2];
  v2 = [*(a1 + 32) currentlyProcessingJob];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 conversionRequest];
    v5 = [v4 progress];
    [v5 cancel];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [*(a1 + 32) queuedJobs];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      v11 = v3;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v3 = *(*(&v15 + 1) + 8 * v10);

        v12 = [v3 conversionRequest];
        v13 = [v12 progress];
        [v13 cancel];

        ++v10;
        v11 = v3;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }
}

- (void)cancellationRequestedForJob:(id)job
{
  jobCopy = job;
  stateQueue = [(PHMediaFormatConversionManager *)self stateQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__PHMediaFormatConversionManager_cancellationRequestedForJob___block_invoke;
  v7[3] = &unk_27989B6F0;
  v8 = jobCopy;
  selfCopy = self;
  v6 = jobCopy;
  dispatch_sync(stateQueue, v7);
}

void __62__PHMediaFormatConversionManager_cancellationRequestedForJob___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) conversionRequest];
  if ([v2 status] == 2)
  {
    [v2 markAsCancelled];
    v3 = [*(a1 + 40) queuedJobs];
    [v3 removeObject:*(a1 + 32)];

    v4 = [*(a1 + 40) callbackQueue];
    v5 = [*(a1 + 32) completionHandler];
    dispatch_async(v4, v5);

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v6 = [v2 identifier];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled queued request %@", &v7, 0xCu);
    }
  }
}

- (id)jobForConversionRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v8 = objc_opt_new();
  [v8 setConversionRequest:requestCopy];
  [v8 setCompletionHandler:handlerCopy];
  progress = [requestCopy progress];
  cancellationHandler = [progress cancellationHandler];

  objc_initWeak(&location, v8);
  objc_initWeak(&from, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __76__PHMediaFormatConversionManager_jobForConversionRequest_completionHandler___block_invoke;
  v14[3] = &unk_27989B7B8;
  objc_copyWeak(&v16, &from);
  objc_copyWeak(&v17, &location);
  v11 = cancellationHandler;
  v15 = v11;
  progress2 = [requestCopy progress];
  [progress2 setCancellationHandler:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v8;
}

void __76__PHMediaFormatConversionManager_jobForConversionRequest_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && v2)
  {
    [WeakRetained cancellationRequestedForJob:v2];
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))();
  }
}

- (id)rootAncestorRequestForRequest:(id)request
{
  requestCopy = request;
  parentRequest = [requestCopy parentRequest];
  if (parentRequest)
  {
    parentRequest2 = parentRequest;
    do
    {
      v6 = parentRequest2;

      parentRequest2 = [v6 parentRequest];

      requestCopy = v6;
    }

    while (parentRequest2);
  }

  else
  {
    v6 = requestCopy;
  }

  return v6;
}

- (void)preflightAllRelatedRequestsForCurrentJob
{
  currentlyProcessingJob = [(PHMediaFormatConversionManager *)self currentlyProcessingJob];
  conversionRequest = [currentlyProcessingJob conversionRequest];
  v6 = [(PHMediaFormatConversionManager *)self rootAncestorRequestForRequest:conversionRequest];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__PHMediaFormatConversionManager_preflightAllRelatedRequestsForCurrentJob__block_invoke;
  v9[3] = &unk_27989B790;
  v9[4] = self;
  v10 = currentlyProcessingJob;
  v11 = conversionRequest;
  v12 = a2;
  v7 = conversionRequest;
  v8 = currentlyProcessingJob;
  [(PHMediaFormatConversionManager *)self preflightConversionRequest:v6 completionHandler:v9];
}

void __74__PHMediaFormatConversionManager_preflightAllRelatedRequestsForCurrentJob__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) stateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__PHMediaFormatConversionManager_preflightAllRelatedRequestsForCurrentJob__block_invoke_2;
  block[3] = &unk_27989B790;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v3;
  v5 = *(a1 + 48);
  v4 = v5;
  v8 = v5;
  dispatch_async(v2, block);
}

uint64_t __74__PHMediaFormatConversionManager_preflightAllRelatedRequestsForCurrentJob__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentlyProcessingJob];
  v3 = [v2 isEqual:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = *(a1 + 56);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = [v12 currentlyProcessingJob];
    [v10 handleFailureInMethod:v11 object:v12 file:@"PHMediaFormatConversion.m" lineNumber:2287 description:{@"Current job mismatch: %@/%@", v13, v14}];
  }

  if ([*(a1 + 48) status] != 3)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    v16 = *(a1 + 32);
    v17 = *(a1 + 56);
    v18 = [*(a1 + 48) statusString];
    [v15 handleFailureInMethod:v17 object:v16 file:@"PHMediaFormatConversion.m" lineNumber:2288 description:{@"Current job request state mismatch: %@", v18}];
  }

  v4 = [*(a1 + 48) progress];
  v5 = [v4 isCancelled];

  if (v5)
  {
    [*(a1 + 48) markAsCancelled];
  }

  if ([*(a1 + 48) status] == 3 && objc_msgSend(*(a1 + 48), "preflighted"))
  {
    [*(a1 + 48) setStatus:2];
    v6 = [*(a1 + 32) queuedJobs];
    [v6 insertObject:*(a1 + 40) atIndex:0];
  }

  else
  {
    v6 = [*(a1 + 32) callbackQueue];
    v7 = [*(a1 + 40) completionHandler];
    dispatch_async(v6, v7);
  }

  [*(a1 + 32) setCurrentlyProcessingJob:0];
  v8 = *(a1 + 32);

  return [v8 processQueuedJobs];
}

- (void)validateLivePhotoPairingIdentifierConfigurationForRequest:(id)request
{
  requestCopy = request;
  if (([requestCopy livePhotoPairingIdentifierBehavior] - 3) <= 1)
  {
    livePhotoPairingIdentifier = [requestCopy livePhotoPairingIdentifier];

    if (!livePhotoPairingIdentifier)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2271 description:@"Unexpected nil pairing identifier"];
    }
  }
}

- (void)performConversionRequest:(id)request completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (requestCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2238 description:{@"Invalid parameter not satisfying: %@", @"request"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2239 description:{@"Invalid parameter not satisfying: %@", @"completionHandler"}];

LABEL_3:
  if ([requestCopy isCompositeRequest])
  {
LABEL_16:
    v9[2](v9);
    goto LABEL_17;
  }

  backwardsCompatibilityStatus = [requestCopy backwardsCompatibilityStatus];
  v11 = MEMORY[0x277CE1CB8];
  source = [requestCopy source];
  fileType = [source fileType];
  v14 = [v11 typeWithIdentifier:fileType];

  if (![requestCopy requiresPassthroughConversion])
  {
LABEL_10:
    if (backwardsCompatibilityStatus == 2)
    {
      goto LABEL_11;
    }

LABEL_12:
    if ([requestCopy backwardsCompatibilityStatus] != 1)
    {
LABEL_15:

      goto LABEL_16;
    }

    [requestCopy setStatus:4];
    source2 = [requestCopy source];
    v19 = [PHMediaFormatConversionDestination destinationForConversionReturningUnchangedSource:source2];
    [requestCopy setDestination:v19];
LABEL_14:

    goto LABEL_15;
  }

  source3 = [requestCopy source];
  if ([source3 mediaType] != 1)
  {

    goto LABEL_10;
  }

  v16 = [v14 isEqual:*MEMORY[0x277CE1E40]];

  if (backwardsCompatibilityStatus != 2)
  {
    goto LABEL_12;
  }

  if ((v16 & 1) == 0)
  {
    [requestCopy setStatus:5];
    v17 = MEMORY[0x277CCA9B8];
    v23 = *MEMORY[0x277CCA450];
    v24[0] = @"Passthrough video conversion is only available for QuickTime input format";
    source2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v19 = [v17 errorWithDomain:@"PHMediaFormatConversionErrorDomain" code:4 userInfo:source2];
    [requestCopy setError:v19];
    goto LABEL_14;
  }

LABEL_11:
  [(PHMediaFormatConversionManager *)self validateLivePhotoPairingIdentifierConfigurationForRequest:requestCopy];
  conversionImplementation = [(PHMediaFormatConversionManager *)self conversionImplementation];
  [conversionImplementation performConversionRequest:requestCopy completionHandler:v9];

LABEL_17:
}

- (void)processQueuedJobs
{
  v27 = *MEMORY[0x277D85DE8];
  stateQueue = [(PHMediaFormatConversionManager *)self stateQueue];
  dispatch_assert_queue_V2(stateQueue);

  if ([(PHMediaFormatConversionManager *)self state]!= 1)
  {
    goto LABEL_4;
  }

  currentlyProcessingJob = [(PHMediaFormatConversionManager *)self currentlyProcessingJob];
  if (currentlyProcessingJob)
  {

    goto LABEL_4;
  }

  queuedJobs = [(PHMediaFormatConversionManager *)self queuedJobs];
  v12 = [queuedJobs count];

  if (!v12)
  {
LABEL_4:
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      state = [(PHMediaFormatConversionManager *)self state];
      currentlyProcessingJob2 = [(PHMediaFormatConversionManager *)self currentlyProcessingJob];
      conversionRequest = [currentlyProcessingJob2 conversionRequest];
      identifier = [conversionRequest identifier];
      queuedJobs2 = [(PHMediaFormatConversionManager *)self queuedJobs];
      *buf = 134218498;
      v22 = state;
      v23 = 2112;
      v24 = identifier;
      v25 = 2048;
      v26 = [queuedJobs2 count];
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Process queued jobs: not starting job, state: %ld, current request: %@, queued job count: %lu", buf, 0x20u);
    }

    return;
  }

  firstObject = [(NSMutableArray *)self->_queuedJobs firstObject];
  queuedJobs3 = [(PHMediaFormatConversionManager *)self queuedJobs];
  [queuedJobs3 removeObjectAtIndex:0];

  [(PHMediaFormatConversionManager *)self setCurrentlyProcessingJob:firstObject];
  conversionRequest2 = [firstObject conversionRequest];
  if ([conversionRequest2 status] != 2)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    statusString = [conversionRequest2 statusString];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2203 description:{@"Unexpected request state %@", statusString}];
  }

  [conversionRequest2 setStatus:3];
  if ([conversionRequest2 preflighted])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      identifier2 = [conversionRequest2 identifier];
      *buf = 138543618;
      v22 = firstObject;
      v23 = 2114;
      v24 = identifier2;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Process queued jobs: starting job %{public}@ for request %{public}@", buf, 0x16u);
    }

    objc_initWeak(buf, firstObject);
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke;
    v19[3] = &unk_27989B768;
    objc_copyWeak(v20, buf);
    v20[1] = a2;
    v19[4] = self;
    [(PHMediaFormatConversionManager *)self performConversionRequest:conversionRequest2 completionHandler:v19];
    objc_destroyWeak(v20);
    objc_destroyWeak(buf);
  }

  else
  {
    [(PHMediaFormatConversionManager *)self preflightAllRelatedRequestsForCurrentJob];
  }
}

void __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"PHMediaFormatConversion.m" lineNumber:2216 description:@"Current job went away unexpectedly"];
  }

  v3 = [WeakRetained conversionRequest];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v4 = [v3 identifier];
    v5 = [v3 statusString];
    v6 = [v3 error];
    *buf = 138543874;
    v16 = v4;
    v17 = 2114;
    v18 = v5;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Process queued jobs: completed request %{public}@, status = %{public}@, error = %@", buf, 0x20u);
  }

  [v3 didFinishProcessing];
  v7 = [*(a1 + 32) callbackQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke_871;
  block[3] = &unk_27989B740;
  v8 = *(a1 + 32);
  v12 = WeakRetained;
  v13 = v8;
  v14 = *(a1 + 48);
  v9 = WeakRetained;
  dispatch_async(v7, block);
}

void __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke_871(uint64_t a1)
{
  v2 = [*(a1 + 32) completionHandler];
  v2[2]();

  v3 = [*(a1 + 40) stateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke_2;
  block[3] = &unk_27989B740;
  v5 = *(a1 + 32);
  v4 = v5.i64[0];
  v7 = vextq_s8(v5, v5, 8uLL);
  v8 = *(a1 + 48);
  dispatch_async(v3, block);
}

uint64_t __51__PHMediaFormatConversionManager_processQueuedJobs__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) currentlyProcessingJob];
  v3 = [v2 isEqual:*(a1 + 40)];

  if ((v3 & 1) == 0)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v8 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9 = *(a1 + 32);
    v10 = [v9 currentlyProcessingJob];
    [v6 handleFailureInMethod:v7 object:v9 file:@"PHMediaFormatConversion.m" lineNumber:2228 description:{@"Current job mismatch: %@/%@", v8, v10}];
  }

  [*(a1 + 32) setCurrentlyProcessingJob:0];
  v4 = *(a1 + 32);

  return [v4 processQueuedJobs];
}

- (void)setDirectoryForTemporaryFiles:(id)files
{
  filesCopy = files;
  path = [(NSURL *)filesCopy path];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v15 = 0;
  v8 = [defaultManager fileExistsAtPath:path isDirectory:&v15];
  v9 = [defaultManager isWritableFileAtPath:path];
  v10 = v9;
  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2186 description:{@"Invalid temporary directory URL parameter '%@' not satisfying exists && isDirectory && isWritable (%d/%d/%d)", filesCopy, 0, v15, v10}];

LABEL_6:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2187 description:{@"Invalid parameter not satisfying: %@", @"exists && isDirectory && isWritable"}];

    goto LABEL_3;
  }

  if ((v15 & v9 & 1) == 0)
  {
    currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2186 description:{@"Invalid temporary directory URL parameter '%@' not satisfying exists && isDirectory && isWritable (%d/%d/%d)", filesCopy, 1, v15, v10}];

    if ((v15 & v10 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_3:
  directoryForTemporaryFiles = self->_directoryForTemporaryFiles;
  self->_directoryForTemporaryFiles = filesCopy;
}

- (void)setTransferBehaviorUserPreferenceOverride:(id)override
{
  self->_transferBehaviorUserPreferenceOverride = MEMORY[0x259C84340](override, a2);

  MEMORY[0x2821F96F8]();
}

- (void)configureTransferBehaviorUserPreferenceForRequest:(id)request
{
  v13 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  conversionImplementation = [(PHMediaFormatConversionManager *)self conversionImplementation];
  transferBehaviorUserPreference = [conversionImplementation transferBehaviorUserPreference];

  transferBehaviorUserPreferenceOverride = self->_transferBehaviorUserPreferenceOverride;
  if (transferBehaviorUserPreferenceOverride)
  {
    v8 = transferBehaviorUserPreferenceOverride[2](transferBehaviorUserPreferenceOverride, requestCopy);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = 134218240;
      v10 = transferBehaviorUserPreference;
      v11 = 2048;
      v12 = v8;
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Media conversion transfer user preference overridden from %ld to %ld", &v9, 0x16u);
    }
  }

  else
  {
    v8 = transferBehaviorUserPreference;
  }

  [requestCopy setTransferBehaviorUserPreference:v8];
}

- (void)preflightConversionRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  preflightQueue = [(PHMediaFormatConversionManager *)self preflightQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__PHMediaFormatConversionManager_preflightConversionRequest_completionHandler___block_invoke;
  block[3] = &unk_27989B718;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(preflightQueue, block);
}

void __79__PHMediaFormatConversionManager_preflightConversionRequest_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) preflightConversionRequest:*(a1 + 40)];
  v2 = [*(a1 + 32) callbackQueue];
  dispatch_async(v2, *(a1 + 48));
}

- (void)preflightConversionRequest:(id)request
{
  requestCopy = request;
  [(PHMediaFormatConversionManager *)self configureTransferBehaviorUserPreferenceForRequest:requestCopy];
  [requestCopy setDirectoryForTemporaryFiles:self->_directoryForTemporaryFiles];
  [requestCopy preflightWithConversionManager:self];
}

- (void)enqueueConversionRequest:(id)request completionHandler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  if ([requestCopy status] != 1)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2102 description:{@"Invalid parameter not satisfying: %@", @"conversionRequest.status == PHMediaFormatRequestStatusInitialized"}];
  }

  if ([requestCopy isCompositeRequest])
  {
    [requestCopy enqueueSubrequestsOnConversionManager:self];
  }

  source = [requestCopy source];
  renderOriginatingSignature = [source renderOriginatingSignature];

  if (renderOriginatingSignature == @"PHMediaFormatConversionUnknownFutureIdentifierPlaceholder")
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PHMediaFormatConversion.m" lineNumber:2109 description:@"Invalid attempt to enqueue a request using an identifier placeholder. The placeholder may only be used for preflight."];
  }

  if (![requestCopy requiresSinglePassVideoConversion])
  {
    goto LABEL_10;
  }

  v11 = objc_opt_new();
  [v11 setMediaType:1];
  [v11 generateTemporaryOutputFileURLForRequest:requestCopy];
  [v11 enableSinglePassVideoConversionWithTargetLength:{objc_msgSend(requestCopy, "estimatedOutputFileLength")}];
  v20 = 0;
  v12 = [v11 createTemporaryOutputDirectoryWithError:&v20];
  v13 = v20;
  if (v12)
  {
    [requestCopy setDestination:v11];

LABEL_10:
    stateQueue = [(PHMediaFormatConversionManager *)self stateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__PHMediaFormatConversionManager_enqueueConversionRequest_completionHandler___block_invoke;
    block[3] = &unk_27989B718;
    block[4] = self;
    v18 = requestCopy;
    v19 = handlerCopy;
    dispatch_sync(stateQueue, block);

    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = v13;
    _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Unable to create format conversion output temporary directory: %@", buf, 0xCu);
  }

  [requestCopy setError:v13];
  [requestCopy setStatus:5];
  handlerCopy[2](handlerCopy);

LABEL_14:
}

void __77__PHMediaFormatConversionManager_enqueueConversionRequest_completionHandler___block_invoke(id *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if ([a1[4] state] == 1)
  {
    v2 = [a1[4] jobForConversionRequest:a1[5] completionHandler:a1[6]];
    [a1[5] setStatus:2];
    v3 = [a1[4] queuedJobs];
    [v3 addObject:v2];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v4 = [a1[5] identifier];
      v5 = [a1[4] queuedJobs];
      v7 = 138412546;
      v8 = v4;
      v9 = 2048;
      v10 = [v5 count];
      _os_log_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Enqueued request %@, enqueued count now %lu", &v7, 0x16u);
    }

    [a1[4] processQueuedJobs];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = [a1[5] identifier];
      v7 = 138412290;
      v8 = v6;
      _os_log_error_impl(&dword_2585D9000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Rejecting conversion request %@ enqueued to manager not in running state", &v7, 0xCu);
    }

    [a1[5] markAsCancelled];
    v2 = [a1[4] callbackQueue];
    dispatch_async(v2, a1[6]);
  }
}

- (void)setupConversionImplementation
{
  v3 = objc_opt_new();
  [(PHMediaFormatConversionManager *)self setConversionImplementation:v3];
}

- (PHMediaFormatConversionManager)init
{
  v16.receiver = self;
  v16.super_class = PHMediaFormatConversionManager;
  v2 = [(PHMediaFormatConversionManager *)&v16 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    queuedJobs = v2->_queuedJobs;
    v2->_queuedJobs = array;

    v5 = dispatch_queue_create("com.apple.photos.mediaformatconversion.state", 0);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v5;

    v7 = dispatch_queue_create("com.apple.photos.mediaformatconversion.callback", 0);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v7;

    v9 = dispatch_queue_create("com.apple.photos.mediaformatconversion.preflight", 0);
    preflightQueue = v2->_preflightQueue;
    v2->_preflightQueue = v9;

    v2->_state = 1;
    v11 = MEMORY[0x277CBEBC0];
    v12 = NSTemporaryDirectory();
    v13 = [v11 fileURLWithPath:v12 isDirectory:1];
    directoryForTemporaryFiles = v2->_directoryForTemporaryFiles;
    v2->_directoryForTemporaryFiles = v13;

    [(PHMediaFormatConversionManager *)v2 setupConversionImplementation];
  }

  return v2;
}

@end