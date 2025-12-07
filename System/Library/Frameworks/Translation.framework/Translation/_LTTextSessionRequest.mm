@interface _LTTextSessionRequest
- (NSLocale)resolvedSourceLocale;
- (NSLocale)resolvedTargetLocale;
- (id)_initWithBatch:(id)batch sourceLocale:(id)locale targetLocale:(id)targetLocale isForDownloadRequest:(BOOL)request itemHandler:(id)handler completionHandler:(id)completionHandler;
- (id)initForDownloadRequestWithSourceLocale:(id)locale targetLocale:(id)targetLocale completionHandler:(id)handler;
- (void)_cleanUp;
- (void)_invocationEndedWithErrorSELFLogging:(id)logging;
- (void)didComplete;
- (void)didReceiveError:(id)error forInput:(id)input;
- (void)didReceiveInterruptionFromHandler:(id)handler;
- (void)didStartTranslating;
- (void)didTranslateInput:(id)input withResult:(id)result;
- (void)setResolvedSourceLocale:(id)locale;
- (void)setResolvedTargetLocale:(id)locale;
@end

@implementation _LTTextSessionRequest

- (id)initForDownloadRequestWithSourceLocale:(id)locale targetLocale:(id)targetLocale completionHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __95___LTTextSessionRequest_initForDownloadRequestWithSourceLocale_targetLocale_completionHandler___block_invoke;
  v12[3] = &unk_278B6D6E0;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [(_LTTextSessionRequest *)self _initWithBatch:MEMORY[0x277CBEBF8] sourceLocale:locale targetLocale:targetLocale isForDownloadRequest:1 itemHandler:0 completionHandler:v12];

  return v10;
}

- (id)_initWithBatch:(id)batch sourceLocale:(id)locale targetLocale:(id)targetLocale isForDownloadRequest:(BOOL)request itemHandler:(id)handler completionHandler:(id)completionHandler
{
  batchCopy = batch;
  localeCopy = locale;
  targetLocaleCopy = targetLocale;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v47.receiver = self;
  v47.super_class = _LTTextSessionRequest;
  v19 = [(_LTTextSessionRequest *)&v47 init];
  if (v19)
  {
    v20 = +[_LTTextSession synchronizationQueue];
    queue = v19->_queue;
    v19->_queue = v20;

    v22 = [batchCopy copy];
    batch = v19->_batch;
    v19->_batch = v22;

    v24 = [localeCopy copy];
    resolvedSourceLocale = v19->_resolvedSourceLocale;
    v19->_resolvedSourceLocale = v24;

    v26 = [targetLocaleCopy copy];
    resolvedTargetLocale = v19->_resolvedTargetLocale;
    v19->_resolvedTargetLocale = v26;

    v19->_isForDownloadRequest = request;
    v28 = [handlerCopy copy];
    itemHandler = v19->_itemHandler;
    v19->_itemHandler = v28;

    v30 = [completionHandlerCopy copy];
    completionHandler = v19->_completionHandler;
    v19->_completionHandler = v30;

    v32 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(batchCopy, "count")}];
    resultMap = v19->_resultMap;
    v19->_resultMap = v32;

    uUID = [MEMORY[0x277CCAD78] UUID];
    logIdentifier = v19->_logIdentifier;
    v19->_logIdentifier = uUID;

    v38 = _LTOSLogTextAPI(v36, v37);
    v39 = os_signpost_id_generate(v38);
    v19->_signpostID = v39;
    v41 = _LTOSLogTextAPI(v39, v40);
    v42 = v41;
    signpostID = v19->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *v46 = 0;
      _os_signpost_emit_with_name_impl(&dword_23AAF5000, v42, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "PreflightChecks", "", v46, 2u);
    }

    v44 = v19;
  }

  return v19;
}

- (void)didStartTranslating
{
  v3 = _LTOSLogTextAPI(self, a2);
  v4 = v3;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_23AAF5000, v4, OS_SIGNPOST_INTERVAL_END, signpostID, "PreflightChecks", "", buf, 2u);
  }

  v8 = _LTOSLogTextAPI(v6, v7);
  v9 = v8;
  v10 = self->_signpostID;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *v17 = 0;
    _os_signpost_emit_with_name_impl(&dword_23AAF5000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "TranslationFirstItem", "", v17, 2u);
  }

  v13 = _LTOSLogTextAPI(v11, v12);
  v14 = v13;
  v15 = self->_signpostID;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_23AAF5000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Translation", "", v16, 2u);
  }
}

- (void)didReceiveError:(id)error forInput:(id)input
{
  v26 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_completionHandler)
  {
    v8 = [(_LTTextSessionRequest *)self _invocationEndedWithErrorSELFLogging:errorCopy];
    v10 = _LTOSLogTextAPI(v8, v9);
    v11 = v10;
    signpostID = self->_signpostID;
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v24) = 0;
      _os_signpost_emit_with_name_impl(&dword_23AAF5000, v11, OS_SIGNPOST_INTERVAL_END, signpostID, "Translation", "Translation finished with error", &v24, 2u);
    }

    v15 = _LTOSLogTextAPI(v13, v14);
    v16 = v15;
    v17 = self->_signpostID;
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
    {
      LOWORD(v24) = 0;
      _os_signpost_emit_with_name_impl(&dword_23AAF5000, v16, OS_SIGNPOST_INTERVAL_END, v17, "PreflightChecks", "Finished preflight checks with error", &v24, 2u);
    }

    if (!self->_hasReceivedFirstItem)
    {
      self->_hasReceivedFirstItem = 1;
      v20 = _LTOSLogTextAPI(v18, v19);
      v21 = v20;
      v22 = self->_signpostID;
      if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        LOWORD(v24) = 0;
        _os_signpost_emit_with_name_impl(&dword_23AAF5000, v21, OS_SIGNPOST_INTERVAL_END, v22, "TranslationFirstItem", "Translating first item finished with error", &v24, 2u);
      }
    }

    (*(self->_completionHandler + 2))();
    [(_LTTextSessionRequest *)self _cleanUp];
  }

  else
  {
    v23 = _LTOSLogTextAPI(v6, v7);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = errorCopy;
      _os_log_impl(&dword_23AAF5000, v23, OS_LOG_TYPE_INFO, "Text request received error, but already called completion handler so ignoring new error: %@", &v24, 0xCu);
    }
  }
}

- (void)didTranslateInput:(id)input withResult:(id)result
{
  v22 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  queue = self->_queue;
  inputCopy = input;
  dispatch_assert_queue_V2(queue);
  v9 = [(NSArray *)self->_batch indexOfObject:inputCopy];

  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = _LTOSLogTextAPI(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_LTTextSessionRequest didTranslateInput:v12 withResult:?];
    }
  }

  else if (self->_completionHandler)
  {
    if (!self->_hasReceivedFirstItem)
    {
      self->_hasReceivedFirstItem = 1;
      v13 = _LTOSLogTextAPI(v10, v11);
      v14 = v13;
      signpostID = self->_signpostID;
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
      {
        LOWORD(v20) = 0;
        _os_signpost_emit_with_name_impl(&dword_23AAF5000, v14, OS_SIGNPOST_INTERVAL_END, signpostID, "TranslationFirstItem", "Successfully translated first item", &v20, 2u);
      }
    }

    resultMap = self->_resultMap;
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
    [(NSMutableDictionary *)resultMap setObject:resultCopy forKeyedSubscript:v17];

    itemHandler = self->_itemHandler;
    if (itemHandler)
    {
      itemHandler[2](itemHandler, resultCopy, 0);
    }
  }

  else
  {
    v19 = _LTOSLogTextAPI(v10, v11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = 134217984;
      v21 = v9;
      _os_log_impl(&dword_23AAF5000, v19, OS_LOG_TYPE_INFO, "Received result for input item %zu after completion handler was already called, likely because an error previously occurred; early returning", &v20, 0xCu);
    }
  }
}

- (void)didComplete
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_completionHandler)
  {
    v5 = [(NSArray *)self->_batch count];
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5];
    v8 = v6;
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        resultMap = self->_resultMap;
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        v12 = [(NSMutableDictionary *)resultMap objectForKeyedSubscript:v11];

        if (v12)
        {
          [v8 addObject:v12];
        }
      }
    }

    v13 = _LTOSLogTextAPI(v6, v7);
    v14 = v13;
    signpostID = self->_signpostID;
    if (signpostID - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v13))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_23AAF5000, v14, OS_SIGNPOST_INTERVAL_END, signpostID, "Translation", "Translation finished successfully", v19, 2u);
    }

    completionHandler = self->_completionHandler;
    v17 = [v8 copy];
    completionHandler[2](completionHandler, v17, 0);

    [(_LTTextSessionRequest *)self _cleanUp];
  }

  else
  {
    v18 = _LTOSLogTextAPI(v3, v4);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23AAF5000, v18, OS_LOG_TYPE_INFO, "Request was reported as being finished, but completion handler was already called so ignoring update", buf, 2u);
    }
  }
}

- (NSLocale)resolvedSourceLocale
{
  dispatch_assert_queue_V2(self->_queue);
  resolvedSourceLocale = self->_resolvedSourceLocale;

  return resolvedSourceLocale;
}

- (NSLocale)resolvedTargetLocale
{
  dispatch_assert_queue_V2(self->_queue);
  resolvedTargetLocale = self->_resolvedTargetLocale;

  return resolvedTargetLocale;
}

- (void)setResolvedSourceLocale:(id)locale
{
  queue = self->_queue;
  localeCopy = locale;
  dispatch_assert_queue_V2(queue);
  v6 = [localeCopy copy];

  resolvedSourceLocale = self->_resolvedSourceLocale;
  self->_resolvedSourceLocale = v6;

  v10 = _LTOSLogTextAPI(v8, v9);
  v11 = v10;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_23AAF5000, v11, OS_SIGNPOST_EVENT, signpostID, "ResolvedSourceLocale", "", v13, 2u);
  }
}

- (void)setResolvedTargetLocale:(id)locale
{
  queue = self->_queue;
  localeCopy = locale;
  dispatch_assert_queue_V2(queue);
  v6 = [localeCopy copy];

  resolvedTargetLocale = self->_resolvedTargetLocale;
  self->_resolvedTargetLocale = v6;

  v10 = _LTOSLogTextAPI(v8, v9);
  v11 = v10;
  signpostID = self->_signpostID;
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_23AAF5000, v11, OS_SIGNPOST_EVENT, signpostID, "ResolvedTargetLocale", "", v13, 2u);
  }
}

- (void)_cleanUp
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  itemHandler = self->_itemHandler;
  self->_itemHandler = 0;

  resultMap = self->_resultMap;

  [(NSMutableDictionary *)resultMap removeAllObjects];
}

- (void)didReceiveInterruptionFromHandler:(id)handler
{
  objc_initWeak(&location, self);
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59___LTTextSessionRequest_didReceiveInterruptionFromHandler___block_invoke;
  v5[3] = &unk_278B6CD30;
  objc_copyWeak(&v6, &location);
  dispatch_async(queue, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)_invocationEndedWithErrorSELFLogging:(id)logging
{
  loggingCopy = logging;
  dispatch_assert_queue_V2(self->_queue);
  if (![(_LTTextSessionRequest *)self isForDownloadRequest])
  {
    logIdentifier = [(_LTTextSessionRequest *)self logIdentifier];
    [_LTTranslator selfLoggingInvocationDidError:loggingCopy invocationId:logIdentifier];
  }
}

@end