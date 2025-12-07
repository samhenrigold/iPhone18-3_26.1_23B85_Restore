@interface WBSParsecDSession
+ (id)_sharedSessionConfiguration;
+ (id)sharedDomainPolicyProvider;
+ (id)sharedPARSession;
+ (void)_parsecEnabledDidChange:(id)change;
+ (void)_updateAutoFillTLDsIfNeededForSession:(id)session completionHandler:(id)handler;
+ (void)_updateParsecAvailabilityInSessionConfiguration:(id)configuration;
+ (void)clearAllParsecFeedbackAndEngagedCompletions;
- (WBSParsecDSession)initWithParsecdSession:(id)session skipAutoFillDataUpdates:(BOOL)updates;
- (void)_didReceiveResponse:(id)response error:(id)error forTask:(id)task query:(id)query;
- (void)_setCurrentQuery:(id)query withKeyboardInputType:(id)type;
- (void)_simulatePARResponseFromJSON:(id)n response:(id)response task:(id)task error:(id)error;
- (void)_startUpdatingAutoFillDataInBackgroundIfPossibleForSession:(id)session;
- (void)setCurrentQuery:(id)query;
- (void)setDelegate:(id)delegate;
@end

@implementation WBSParsecDSession

+ (id)sharedPARSession
{
  _sharedSessionConfiguration = [self _sharedSessionConfiguration];
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x1E6998670] sharedPARSessionWithConfiguration:_sharedSessionConfiguration];
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__WBSParsecDSession_sharedPARSession__block_invoke;
    block[3] = &unk_1E7FB6F80;
    v6 = _sharedSessionConfiguration;
    if (+[WBSParsecDSession sharedPARSession]::onceToken != -1)
    {
      dispatch_once(&+[WBSParsecDSession sharedPARSession]::onceToken, block);
    }

    v3 = +[WBSParsecDSession sharedPARSession]::sharedSession;
  }

  return v3;
}

+ (id)_sharedSessionConfiguration
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WBSParsecDSession__sharedSessionConfiguration__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[WBSParsecDSession _sharedSessionConfiguration]::onceToken != -1)
  {
    dispatch_once(&+[WBSParsecDSession _sharedSessionConfiguration]::onceToken, block);
  }

  v2 = +[WBSParsecDSession _sharedSessionConfiguration]::configuration;

  return v2;
}

void __48__WBSParsecDSession__sharedSessionConfiguration__block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Safari/%s", "8622.2.11.10.8"];
  v2 = [objc_alloc(MEMORY[0x1E6998678]) initWithId:@"Safari" userAgent:v5];
  v3 = +[WBSParsecDSession _sharedSessionConfiguration]::configuration;
  +[WBSParsecDSession _sharedSessionConfiguration]::configuration = v2;

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:*(a1 + 32) selector:sel__parsecEnabledDidChange_ name:@"ParsecEnabledPreferenceDidChange" object:0];

  [*(a1 + 32) _updateParsecAvailabilityInSessionConfiguration:+[WBSParsecDSession _sharedSessionConfiguration]::configuration];
}

void __37__WBSParsecDSession_sharedPARSession__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E6998670] sessionWithConfiguration:*(a1 + 32)];
  v2 = +[WBSParsecDSession sharedPARSession]::sharedSession;
  +[WBSParsecDSession sharedPARSession]::sharedSession = v1;
}

+ (id)sharedDomainPolicyProvider
{
  if (+[WBSParsecDSession sharedDomainPolicyProvider]::onceToken != -1)
  {
    +[WBSParsecDSession sharedDomainPolicyProvider];
  }

  v3 = +[WBSParsecDSession sharedDomainPolicyProvider]::sharedDomainPolicyProvider;

  return v3;
}

void __47__WBSParsecDSession_sharedDomainPolicyProvider__block_invoke()
{
  v0 = [WBSFormAutoFillParsecDomainPolicyProvider alloc];
  v3 = +[WBSFormAutoFillCorrectionsSQLiteStore standardStore];
  v1 = [(WBSFormAutoFillParsecDomainPolicyProvider *)v0 initWithFeedbackAllowList:?];
  v2 = +[WBSParsecDSession sharedDomainPolicyProvider]::sharedDomainPolicyProvider;
  +[WBSParsecDSession sharedDomainPolicyProvider]::sharedDomainPolicyProvider = v1;
}

+ (void)_parsecEnabledDidChange:(id)change
{
  _sharedSessionConfiguration = [self _sharedSessionConfiguration];
  [self _updateParsecAvailabilityInSessionConfiguration:?];
}

+ (void)_updateParsecAvailabilityInSessionConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy setParsecEnabled:{+[WBSSharedFeatureAvailability areSiriSearchSuggestionsEnabled](WBSSharedFeatureAvailability, "areSiriSearchSuggestionsEnabled")}];
}

+ (void)clearAllParsecFeedbackAndEngagedCompletions
{
  sharedPARSession = [objc_opt_class() sharedPARSession];
  if (objc_opt_respondsToSelector())
  {
    [sharedPARSession clearSafariFeedback:&__block_literal_global_27_3];
  }

  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v3 = [MEMORY[0x1E695DF00] now];
  [sharedPARSession clearEngagementsFromDate:distantPast toDate:v3];
}

void __64__WBSParsecDSession_clearAllParsecFeedbackAndEngagedCompletions__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(a1, a2);
  v4 = v3;
  if (a2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__WBSParsecDSession_clearAllParsecFeedbackAndEngagedCompletions__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BB6F3000, v4, OS_LOG_TYPE_DEFAULT, "Successfully cleared Parsec feedback.", v5, 2u);
  }
}

- (WBSParsecDSession)initWithParsecdSession:(id)session skipAutoFillDataUpdates:(BOOL)updates
{
  sessionCopy = session;
  v13.receiver = self;
  v13.super_class = WBSParsecDSession;
  v7 = [(WBSParsecDSession *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_parsecdSession, session);
    [(PARSession *)v8->_parsecdSession setDelegate:v8];
    if ([WBSParsecDSession initWithParsecdSession:skipAutoFillDataUpdates:]::onceToken != -1)
    {
      [WBSParsecDSession initWithParsecdSession:skipAutoFillDataUpdates:];
    }

    v9 = [[WBSParsecDFeedbackDispatcher alloc] initWithSession:sessionCopy];
    feedbackDispatcher = v8->_feedbackDispatcher;
    v8->_feedbackDispatcher = v9;

    v11 = v8;
  }

  return v8;
}

void __68__WBSParsecDSession_initWithParsecdSession_skipAutoFillDataUpdates___block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.SafariShared.WBSParsecDSession.requestProcessingQueue", v2);
  v1 = _requestProcessingQueue;
  _requestProcessingQueue = v0;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = _requestProcessingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__WBSParsecDSession_setDelegate___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_async(v5, v7);
}

- (void)setCurrentQuery:(id)query
{
  queryCopy = query;
  v5 = _requestProcessingQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__WBSParsecDSession_setCurrentQuery___block_invoke;
  v7[3] = &unk_1E7FB7F10;
  v7[4] = self;
  v8 = queryCopy;
  v6 = queryCopy;
  dispatch_async(v5, v7);
}

void __37__WBSParsecDSession_setCurrentQuery___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = *(a1 + 32);
  if (v2)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __37__WBSParsecDSession_setCurrentQuery___block_invoke_2;
    v4[3] = &unk_1E7FCA470;
    v4[4] = v3;
    v5 = *(a1 + 40);
    [v2 currentKeyboardIdentifierWithLayoutsForSession:v3 completionHandler:v4];
  }

  else
  {
    [*(a1 + 32) _setCurrentQuery:*(a1 + 40) withKeyboardInputType:0];
  }
}

- (void)_setCurrentQuery:(id)query withKeyboardInputType:(id)type
{
  queryCopy = query;
  typeCopy = type;
  v8 = _requestProcessingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WBSParsecDSession__setCurrentQuery_withKeyboardInputType___block_invoke;
  block[3] = &unk_1E7FB7DD0;
  block[4] = self;
  v12 = queryCopy;
  v13 = typeCopy;
  v9 = typeCopy;
  v10 = queryCopy;
  dispatch_async(v8, block);
}

void __60__WBSParsecDSession__setCurrentQuery_withKeyboardInputType___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 16);
  if (v3 != v2 && ([v3 isEqual:?] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
    v4 = [*(*(a1 + 32) + 16) queryString];
    v5 = [v4 length];

    if (v5)
    {
      v8 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(v6, v7);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
      if (v9)
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v8, OS_LOG_TYPE_INFO, "Initiating ParsecD query", buf, 2u);
      }

      v11 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = [*(*(a1 + 32) + 16) queryString];
        __60__WBSParsecDSession__setCurrentQuery_withKeyboardInputType___block_invoke_cold_1(v12, v40, v11);
      }

      v13 = MEMORY[0x1E6998648];
      v14 = [*(*(a1 + 32) + 16) queryString];
      v15 = [v13 searchRequestWithString:v14 triggerEvent:objc_msgSend(*(a1 + 40) queryId:{"triggerEvent"), objc_msgSend(*(a1 + 40), "queryID")}];

      if (v15)
      {
        v16 = [*(a1 + 40) queryItems];
        if ([v16 count])
        {
          [v15 setQueryItems:v16];
        }

        v17 = +[WBSTrialManager shared];
        v18 = [v17 identifiers];

        v19 = [v18 experimentId];
        [v15 setExperimentId:v19];

        v20 = [v18 namespaceName];
        [v15 setExperimentNamespaceId:v20];

        v21 = [v18 treatmentId];
        [v15 setTreatmentId:v21];

        [v15 setScale:*(*(a1 + 32) + 48)];
        [v15 setKeyboardInputMode:*(a1 + 48)];
        v22 = [*(*(a1 + 32) + 16) querySuggestions];
        v23 = [*(*(a1 + 32) + 16) queryString];
        *buf = MEMORY[0x1E69E9820];
        v36 = 3221225472;
        v37 = ___ZL37searchSuggestionsFromQuerySuggestionsP7NSArrayIP18WBSQuerySuggestionEP8NSString_block_invoke;
        v38 = &unk_1E7FCA580;
        v39 = v23;
        v24 = [v22 safari_mapObjectsUsingBlock:buf];

        [v15 setLocalContextualSuggestions:v24];
        v26 = *(a1 + 32);
        v25 = *(a1 + 40);
        v27 = *(v26 + 56);
        v29 = MEMORY[0x1E69E9820];
        v30 = 3221225472;
        v31 = __60__WBSParsecDSession__setCurrentQuery_withKeyboardInputType___block_invoke_38;
        v32 = &unk_1E7FCA498;
        v33 = v26;
        v34 = v25;
        v28 = [v27 taskWithRequest:v15 completion:&v29];
        [v28 resume];
        [*(a1 + 32) setCurrentQueryID:{objc_msgSend(v28, "queryId")}];
      }
    }
  }
}

void __60__WBSParsecDSession__setCurrentQuery_withKeyboardInputType___block_invoke_38(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _requestProcessingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__WBSParsecDSession__setCurrentQuery_withKeyboardInputType___block_invoke_2;
  block[3] = &unk_1E7FC7D58;
  v11 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v16 = v11;
  v17 = v8;
  v18 = v7;
  v19 = v9;
  v12 = v9;
  v13 = v7;
  v14 = v8;
  dispatch_async(v10, block);
}

uint64_t __60__WBSParsecDSession__setCurrentQuery_withKeyboardInputType___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x1E695E000] safari_browserDefaults];
  if ([v2 BOOLForKey:@"EnablePegasusResponseFuzzing"])
  {
    v3 = [MEMORY[0x1E69C8880] isInternalInstall];

    if (v3)
    {
      v4 = a1[4];
      v5 = a1[5];
      v6 = a1[6];
      v7 = a1[7];
      v8 = a1[8];

      return [v4 _simulatePARResponseFromJSON:v5 response:v6 task:v7 error:v8];
    }
  }

  else
  {
  }

  v11 = a1[7];
  v10 = a1[8];
  v13 = a1[5];
  v12 = a1[6];
  v14 = a1[4];

  return [v14 _didReceiveResponse:v12 error:v10 forTask:v11 query:v13];
}

- (void)_simulatePARResponseFromJSON:(id)n response:(id)response task:(id)task error:(id)error
{
  v34 = *MEMORY[0x1E69E9840];
  nCopy = n;
  taskCopy = task;
  errorCopy = error;
  v12 = +[WBSPegasusResponseFuzzer sharedFuzzer];
  queryString = [(WBSCompletionQuery *)self->_currentQuery queryString];
  v14 = [v12 responseForQuery:queryString];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  results = [v14 results];
  v16 = [results countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = *v30;
    do
    {
      v18 = 0;
      do
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(results);
        }

        [*(*(&v29 + 1) + 8 * v18++) setQueryId:{objc_msgSend(nCopy, "queryID")}];
      }

      while (v16 != v18);
      v16 = [results countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  v19 = _requestProcessingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__WBSParsecDSession__simulatePARResponseFromJSON_response_task_error___block_invoke;
  block[3] = &unk_1E7FC7D58;
  block[4] = self;
  v25 = v14;
  v26 = errorCopy;
  v27 = taskCopy;
  v28 = nCopy;
  v20 = nCopy;
  v21 = taskCopy;
  v22 = errorCopy;
  v23 = v14;
  dispatch_async(v19, block);
}

- (void)_didReceiveResponse:(id)response error:(id)error forTask:(id)task query:(id)query
{
  v82 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  taskCopy = task;
  queryCopy = query;
  queryId = [taskCopy queryId];
  currentQueryID = [(WBSParsecDSession *)self currentQueryID];
  if (queryId == currentQueryID)
  {
    selfCopy = self;
    if (errorCopy)
    {
      v13 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(currentQueryID, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        safari_privacyPreservingDescription = [errorCopy safari_privacyPreservingDescription];
        *buf = 134218498;
        v77 = taskCopy;
        v78 = 2048;
        v79 = responseCopy;
        v80 = 2114;
        v81 = safari_privacyPreservingDescription;
        _os_log_error_impl(&dword_1BB6F3000, v13, OS_LOG_TYPE_ERROR, "Response to task %p was %p with error %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v17 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(currentQueryID, v12);
      v14 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (v14)
      {
        *buf = 134218240;
        v77 = taskCopy;
        v78 = 2048;
        v79 = responseCopy;
        _os_log_impl(&dword_1BB6F3000, v17, OS_LOG_TYPE_INFO, "Response to task %p was %p", buf, 0x16u);
      }
    }

    v18 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(v14, v15);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [WBSParsecDSession _didReceiveResponse:taskCopy error:responseCopy forTask:v18 query:?];
    }

    [responseCopy results];
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    obj = v71 = 0u;
    v19 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
    if (v19)
    {
      v20 = *v71;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v71 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v70 + 1) + 8 * i);
          serverCompletion = [responseCopy serverCompletion];
          [v22 setServerCompletion:serverCompletion];
        }

        v19 = [obj countByEnumeratingWithState:&v70 objects:v75 count:16];
      }

      while (v19);
    }

    if ([MEMORY[0x1E69C8880] isSearchEvaluationLoggingEnabled])
    {
      string = [MEMORY[0x1E696AD60] string];
      v68 = 0u;
      v69 = 0u;
      v67 = 0u;
      v66 = 0u;
      v25 = obj;
      v26 = [v25 countByEnumeratingWithState:&v66 objects:v74 count:16];
      if (v26)
      {
        v27 = *v67;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v67 != v27)
            {
              objc_enumerationMutation(v25);
            }

            v29 = *(*(&v66 + 1) + 8 * j);
            uuidString = [v29 uuidString];
            v31 = [v29 url];
            absoluteString = [v31 absoluteString];
            safari_urlHashesOfComponents = [absoluteString safari_urlHashesOfComponents];
            [string appendFormat:@" %@ <%@>, ", uuidString, safari_urlHashesOfComponents];
          }

          v26 = [v25 countByEnumeratingWithState:&v66 objects:v74 count:16];
        }

        while (v26);
      }

      v36 = WBS_LOG_CHANNEL_PREFIXParsec(v34, v35);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        [WBSParsecDSession _didReceiveResponse:string error:v36 forTask:? query:?];
      }
    }

    corrections = [responseCopy corrections];
    firstObject = [corrections firstObject];
    suggestion = [firstObject suggestion];
    [queryCopy setRewrittenQueryStringFromParsec:suggestion];

    suggestions = [responseCopy suggestions];
    v41 = [suggestions safari_setByApplyingBlock:&__block_literal_global_49_1];

    querySuggestions = [queryCopy querySuggestions];
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __61__WBSParsecDSession__didReceiveResponse_error_forTask_query___block_invoke_2;
    v64[3] = &unk_1E7FCA4E0;
    v43 = v41;
    v65 = v43;
    v44 = [querySuggestions safari_filterObjectsUsingBlock:v64];
    [queryCopy setQuerySuggestions:v44];

    v45 = selfCopy->_delegate;
    rewrittenQueryStringFromParsec = [queryCopy rewrittenQueryStringFromParsec];
    v47 = [rewrittenQueryStringFromParsec copy];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__WBSParsecDSession__didReceiveResponse_error_forTask_query___block_invoke_3;
    block[3] = &unk_1E7FCA508;
    block[4] = selfCopy;
    v59 = v47;
    v60 = taskCopy;
    v61 = v45;
    v62 = obj;
    v63 = queryCopy;
    v48 = obj;
    v49 = v45;
    v50 = v47;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v16 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(currentQueryID, v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v77 = taskCopy;
      _os_log_impl(&dword_1BB6F3000, v16, OS_LOG_TYPE_INFO, "Ignoring response to stale task %p", buf, 0xCu);
    }
  }
}

id __61__WBSParsecDSession__didReceiveResponse_error_forTask_query___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 suggestion];

  return v2;
}

uint64_t __61__WBSParsecDSession__didReceiveResponse_error_forTask_query___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 title];
  v4 = [v2 containsObject:v3];

  return v4;
}

void *__61__WBSParsecDSession__didReceiveResponse_error_forTask_query___block_invoke_3(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
  v2 = [*(a1 + 32) currentQueryID];
  result = [*(a1 + 48) queryId];
  if (v2 == result)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);

    return [v5 session:v4 didReceiveResults:v6 forQuery:v7];
  }

  return result;
}

- (void)_startUpdatingAutoFillDataInBackgroundIfPossibleForSession:(id)session
{
  sessionCopy = session;
  v5 = sessionCopy;
  if (!self->_skipAutoFillDataUpdates)
  {
    v6 = [sessionCopy bag];

    if (v6)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke;
      v7[3] = &unk_1E7FB7F10;
      v7[4] = self;
      v8 = v5;
      if ([WBSParsecDSession _startUpdatingAutoFillDataInBackgroundIfPossibleForSession:]::onceToken != -1)
      {
        dispatch_once(&[WBSParsecDSession _startUpdatingAutoFillDataInBackgroundIfPossibleForSession:]::onceToken, v7);
      }
    }
  }
}

void __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v3 = dispatch_queue_create("com.apple.SafariShared.WBSParsecDSession.initialAutofillDataUpdateQueue", v2);

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_2;
  block[3] = &unk_1E7FB7DD0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v7 = v4;
  v8 = v3;
  v5 = v3;
  dispatch_async(v5, block);
}

void __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_2(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D70]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CF8]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x1E69E9C98], *MEMORY[0x1E69E9CC8]);
  xpc_dictionary_set_int64(v2, *MEMORY[0x1E69E9C68], 0);
  v3 = objc_opt_class();
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_3;
  handler[3] = &unk_1E7FCA530;
  v7 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  xpc_activity_register("com.apple.safarishared.WBSParsecDSession.autoFillDataUpdate", v2, handler);
}

void __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    v4 = xpc_activity_set_state(v3, 4);
    if (v4)
    {
      v6 = WBS_LOG_CHANNEL_PREFIXParsec(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BB6F3000, v6, OS_LOG_TYPE_DEFAULT, "Beginning remote data update", buf, 2u);
      }

      v7 = dispatch_group_create();
      dispatch_group_enter(v7);
      v8 = a1[6];
      v9 = a1[4];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_53;
      v29[3] = &unk_1E7FB6F80;
      v30 = v7;
      v10 = v7;
      [v8 _updateAutoFillTLDsIfNeededForSession:v9 completionHandler:v29];
      *buf = 0;
      v26 = buf;
      v27 = 0x2020000000;
      v28 = 0;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_54;
      v22[3] = &unk_1E7FB8798;
      v24 = buf;
      v23 = v3;
      v11 = MEMORY[0x1BFB13CE0](v22);
      v12 = a1[5];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_55;
      block[3] = &unk_1E7FB7B80;
      v13 = v11;
      v21 = v13;
      dispatch_group_notify(v10, v12, block);
      v14 = dispatch_time(0, 1800000000000);
      v15 = a1[5];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_2_56;
      v18[3] = &unk_1E7FB7B80;
      v19 = v13;
      v16 = v13;
      dispatch_after(v14, v15, v18);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v17 = WBS_LOG_CHANNEL_PREFIXParsec(v4, v5);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_3_cold_1();
      }
    }
  }
}

void __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_53(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXParsec(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1BB6F3000, v3, OS_LOG_TYPE_DEFAULT, "Completed update of domain list", v4, 2u);
  }

  dispatch_group_leave(*(a1 + 32));
}

void __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_54(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v2 = xpc_activity_set_state(*(result + 32), 5);
    if (!v2)
    {
      v4 = WBS_LOG_CHANNEL_PREFIXParsec(v2, v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __80__WBSParsecDSession__startUpdatingAutoFillDataInBackgroundIfPossibleForSession___block_invoke_54_cold_1();
      }
    }

    *(*(*(result + 40) + 8) + 24) = 1;
  }
}

+ (void)_updateAutoFillTLDsIfNeededForSession:(id)session completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  sharedDomainPolicyProvider = [self sharedDomainPolicyProvider];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__WBSParsecDSession__updateAutoFillTLDsIfNeededForSession_completionHandler___block_invoke;
  v12[3] = &unk_1E7FC5960;
  v9 = sessionCopy;
  v13 = v9;
  v10 = handlerCopy;
  v14 = sharedDomainPolicyProvider;
  v15 = v10;
  v11 = sharedDomainPolicyProvider;
  [v11 getLastPolicyRetrievalURLStringWithResultHandler:v12];
}

void __77__WBSParsecDSession__updateAutoFillTLDsIfNeededForSession_completionHandler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] bag];
  v5 = [v4 rawBag];
  v6 = [v5 objectForKeyedSubscript:@"autofill_tld_whitelist_url"];

  v7 = [v3 isEqualToString:v6];
  if (v7)
  {
LABEL_6:
    (*(a1[6] + 2))();
    goto LABEL_7;
  }

  if (!v6)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXParsec(v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __77__WBSParsecDSession__updateAutoFillTLDsIfNeededForSession_completionHandler___block_invoke_cold_1();
    }

    goto LABEL_6;
  }

  v9 = a1[4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__WBSParsecDSession__updateAutoFillTLDsIfNeededForSession_completionHandler___block_invoke_59;
  v11[3] = &unk_1E7FCA558;
  v14 = a1[6];
  v12 = a1[5];
  v13 = v6;
  [v9 fileHandleAndAttributesForResource:@"autofill_tld_whitelist_url" completion:v11];

LABEL_7:
}

void __77__WBSParsecDSession__updateAutoFillTLDsIfNeededForSession_completionHandler___block_invoke_59(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = MEMORY[0x1BFB13CE0](*(a1 + 48));
  v14 = v8;
  if (v7)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXParsec(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v7 safari_privacyPreservingDescription];
      __77__WBSParsecDSession__updateAutoFillTLDsIfNeededForSession_completionHandler___block_invoke_59_cold_1(v11, buf, v10);
    }
  }

  else
  {
    v10 = [v6 readDataToEndOfFile];
    if (v10)
    {
      [*(a1 + 32) setPoliciesWithJSONData:v10 retrievalURLString:*(a1 + 40)];
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXParsec(0, v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __77__WBSParsecDSession__updateAutoFillTLDsIfNeededForSession_completionHandler___block_invoke_59_cold_2();
      }
    }
  }

  SafariShared::ScopeExitHandler::~ScopeExitHandler(&v14);
}

void __60__WBSParsecDSession__setCurrentQuery_withKeyboardInputType___block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Initiating ParsecD query: %{private}@", buf, 0xCu);
}

- (void)_didReceiveResponse:(os_log_t)log error:forTask:query:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138478083;
  v4 = a1;
  v5 = 2113;
  v6 = a2;
  _os_log_debug_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_DEBUG, "Response to task %{private}@ was %{private}@", &v3, 0x16u);
}

- (void)_didReceiveResponse:(uint64_t)a1 error:(NSObject *)a2 forTask:query:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_DEBUG, "Parsec Results: [%{public}@]", &v2, 0xCu);
}

void __77__WBSParsecDSession__updateAutoFillTLDsIfNeededForSession_completionHandler___block_invoke_59_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1BB6F3000, log, OS_LOG_TYPE_ERROR, "Unable to read TLD whitelist: %{public}@", buf, 0xCu);
}

@end