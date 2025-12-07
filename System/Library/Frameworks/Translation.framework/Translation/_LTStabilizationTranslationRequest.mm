@interface _LTStabilizationTranslationRequest
+ (id)_synchronizationQueue;
- (_LTStabilizationTranslationRequest)initWithLocalePair:(id)pair completion:(id)completion;
- (id)requestContext;
- (void)_startTranslationWithService:(id)service done:(id)done;
- (void)_translationFailedWithError:(id)error;
@end

@implementation _LTStabilizationTranslationRequest

+ (id)_synchronizationQueue
{
  if (_synchronizationQueue_onceToken != -1)
  {
    +[_LTStabilizationTranslationRequest _synchronizationQueue];
  }

  v3 = _synchronizationQueue_synchronizationQueue;

  return v3;
}

- (_LTStabilizationTranslationRequest)initWithLocalePair:(id)pair completion:(id)completion
{
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = _LTStabilizationTranslationRequest;
  v7 = [(_LTTranslationRequest *)&v14 initWithLocalePair:pair];
  if (v7)
  {
    _synchronizationQueue = [objc_opt_class() _synchronizationQueue];
    queue = v7->_queue;
    v7->_queue = _synchronizationQueue;

    [(_LTTranslationRequest *)v7 setForcedOfflineTranslation:1];
    v10 = [completionCopy copy];
    completionHandler = v7->_completionHandler;
    v7->_completionHandler = v10;

    v12 = v7;
  }

  return v7;
}

- (void)_startTranslationWithService:(id)service done:(id)done
{
  serviceCopy = service;
  doneCopy = done;
  v9 = _LTOSLogTranslationEngine(doneCopy, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23AAF5000, v9, OS_LOG_TYPE_INFO, "Stabilization Text Translation: start with service", buf, 2u);
  }

  objc_initWeak(buf, self);
  input = [(_LTStabilizationTranslationRequest *)self input];
  requestContext = [(_LTStabilizationTranslationRequest *)self requestContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72___LTStabilizationTranslationRequest__startTranslationWithService_done___block_invoke;
  v13[3] = &unk_278B6D660;
  objc_copyWeak(&v15, buf);
  v12 = doneCopy;
  v14 = v12;
  [serviceCopy translateStreamingInput:input withContext:requestContext completion:v13];

  objc_destroyWeak(&v15);
  objc_destroyWeak(buf);
}

- (void)_translationFailedWithError:(id)error
{
  errorCopy = error;
  v6 = _LTOSLogSpeech(errorCopy, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(_LTStabilizationTranslationRequest *)errorCopy _translationFailedWithError:v6];
  }

  objc_initWeak(&location, self);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66___LTStabilizationTranslationRequest__translationFailedWithError___block_invoke;
  block[3] = &unk_278B6CD08;
  objc_copyWeak(&v11, &location);
  v10 = errorCopy;
  v8 = errorCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (id)requestContext
{
  v4.receiver = self;
  v4.super_class = _LTStabilizationTranslationRequest;
  requestContext = [(_LTTranslationRequest *)&v4 requestContext];
  [requestContext setEnableOfflineStreamStabilizer:1];

  return requestContext;
}

- (void)_translationFailedWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_23AAF5000, a2, OS_LOG_TYPE_ERROR, "Failed stabilization request with error: %@", &v2, 0xCu);
}

@end