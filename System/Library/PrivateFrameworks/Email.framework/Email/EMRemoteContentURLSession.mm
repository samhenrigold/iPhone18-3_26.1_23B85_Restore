@interface EMRemoteContentURLSession
+ (NSDictionary)genericHTTPHeaderFields;
- (EMRemoteContentURLSession)initWithCache:(id)cache sourceBundleIdentifier:(id)identifier;
- (id)_configurationWithCache:(void *)cache sourceBundleIdentifier:;
- (id)dataTaskWithRequest:(id)request isSynthetic:(BOOL)synthetic allowProxying:(BOOL)proxying failOpen:(BOOL)open background:(BOOL)background completionHandler:(id)handler;
- (id)syntheticDataTaskWithRequest:(id)request failOpen:(BOOL)open background:(BOOL)background completionHandler:(id)handler;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)_createURLSession;
- (void)abortTask:(id)task;
- (void)invalidateAndCancel:(BOOL)cancel;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation EMRemoteContentURLSession

void ___ef_log_EMRemoteContentURLSession_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EMRemoteContentURLSession");
  v1 = _ef_log_EMRemoteContentURLSession_log;
  _ef_log_EMRemoteContentURLSession_log = v0;
}

+ (NSDictionary)genericHTTPHeaderFields
{
  if (genericHTTPHeaderFields_onceToken != -1)
  {
    +[EMRemoteContentURLSession genericHTTPHeaderFields];
  }

  v3 = genericHTTPHeaderFields_sHeaderFields;

  return v3;
}

void __52__EMRemoteContentURLSession_genericHTTPHeaderFields__block_invoke()
{
  v0 = genericHTTPHeaderFields_sHeaderFields;
  genericHTTPHeaderFields_sHeaderFields = &unk_1F461CF10;
}

- (EMRemoteContentURLSession)initWithCache:(id)cache sourceBundleIdentifier:(id)identifier
{
  cacheCopy = cache;
  identifierCopy = identifier;
  v22.receiver = self;
  v22.super_class = EMRemoteContentURLSession;
  v9 = [(EMRemoteContentURLSession *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cache, cache);
    objc_storeStrong(&v10->_sourceBundleIdentifier, identifier);
    v11 = objc_alloc(MEMORY[0x1E699B7F0]);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v13 = [v11 initWithObject:dictionary];
    activeTasks = v10->_activeTasks;
    v10->_activeTasks = v13;

    v15 = objc_alloc(MEMORY[0x1E699B7F0]);
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v17 = [v15 initWithObject:weakObjectsHashTable];
    observers = v10->_observers;
    v10->_observers = v17;

    v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    delegateQueue = v10->_delegateQueue;
    v10->_delegateQueue = v19;

    [(NSOperationQueue *)v10->_delegateQueue setMaxConcurrentOperationCount:1];
    v10->_sessionLock._os_unfair_lock_opaque = 0;
    [(EMRemoteContentURLSession *)v10 _createURLSession];
  }

  return v10;
}

- (id)_configurationWithCache:(void *)cache sourceBundleIdentifier:
{
  v5 = a2;
  cacheCopy = cache;
  if (self)
  {
    ephemeralSessionConfiguration = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
    self = ephemeralSessionConfiguration;
    if (v5)
    {
      [ephemeralSessionConfiguration setRequestCachePolicy:2];
      [self setURLCache:v5];
    }

    [self set_sourceApplicationBundleIdentifier:cacheCopy];
    [self setHTTPShouldSetCookies:0];
    [self setHTTPCookieAcceptPolicy:1];
    [self setHTTPCookieStorage:0];
  }

  return self;
}

- (id)dataTaskWithRequest:(id)request isSynthetic:(BOOL)synthetic allowProxying:(BOOL)proxying failOpen:(BOOL)open background:(BOOL)background completionHandler:(id)handler
{
  backgroundCopy = background;
  openCopy = open;
  proxyingCopy = proxying;
  syntheticCopy = synthetic;
  v55 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  handlerCopy = handler;
  os_unfair_lock_lock(&self->_sessionLock);
  v17 = self->_session;
  os_unfair_lock_unlock(&self->_sessionLock);
  if (!v17)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMRemoteContentURLSession.m" lineNumber:170 description:@"New data tasks cannot be created on EMRemoteContentURLSession after it's been invalidated."];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [requestCopy mutableCopy];

    requestCopy = v18;
  }

  v19 = requestCopy;
  if (!proxyingCopy || ([MEMORY[0x1E695E000] em_userDefaults], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "integerForKey:", @"LoadRemoteContent-v2"), v20, (v21 & 4) != 0))
  {
    v22 = 0;
  }

  else
  {
    [v19 _setKnownTracker:1];
    v22 = 1;
    if (!openCopy)
    {
      [v19 _setPrivacyProxyFailClosed:1];
    }
  }

  [v19 _setNonAppInitiated:1];
  genericHTTPHeaderFields = [objc_opt_class() genericHTTPHeaderFields];
  [v19 setAllHTTPHeaderFields:genericHTTPHeaderFields];

  [v19 setCachePolicy:2];
  if (backgroundCopy)
  {
    [v19 setNetworkServiceType:3];
  }

  v24 = [v19 URL];
  if ([EMInternalPreferences preferenceEnabled:10])
  {
    absoluteString = [v24 absoluteString];
  }

  else
  {
    v26 = MEMORY[0x1E699B858];
    absoluteString2 = [v24 absoluteString];
    absoluteString = [v26 fullyRedactedStringForString:absoluteString2];
  }

  v29 = _ef_log_EMRemoteContentURLSession(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    allHTTPHeaderFields = [v19 allHTTPHeaderFields];
    *buf = 134218498;
    selfCopy2 = self;
    v51 = 2114;
    v52 = absoluteString;
    v53 = 2114;
    v54 = allHTTPHeaderFields;
    _os_log_impl(&dword_1C6655000, v29, OS_LOG_TYPE_INFO, "[%p][Request] URL: %{public}@\nHeaders: %{public}@", buf, 0x20u);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __113__EMRemoteContentURLSession_dataTaskWithRequest_isSynthetic_allowProxying_failOpen_background_completionHandler___block_invoke;
  aBlock[3] = &__block_descriptor_34_e15___NSString_8__0l;
  v47 = v22;
  v48 = openCopy;
  v31 = _Block_copy(aBlock);
  v32 = _ef_log_EMRemoteContentURLSession(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = v31[2](v31);
    *buf = 134218498;
    selfCopy2 = self;
    v51 = 2112;
    v52 = v33;
    v53 = 2114;
    v54 = absoluteString;
    _os_log_impl(&dword_1C6655000, v32, OS_LOG_TYPE_DEFAULT, "[%p][Proxy] %@ URL: %{public}@", buf, 0x20u);
  }

  v34 = [(NSURLSession *)v17 dataTaskWithRequest:v19];
  [v34 ec_setActivityWithDomain:21 type:23];
  v35 = [[_EMRemoteContentDataTaskInfo alloc] initWithDataTask:v34 isSynthetic:syntheticCopy failOpen:openCopy completion:handlerCopy];
  activeTasks = self->_activeTasks;
  v41 = MEMORY[0x1E69E9820];
  v42 = 3221225472;
  v43 = __113__EMRemoteContentURLSession_dataTaskWithRequest_isSynthetic_allowProxying_failOpen_background_completionHandler___block_invoke_140;
  v44 = &unk_1E826CA58;
  v37 = v35;
  v45 = v37;
  [(EFLocked *)activeTasks performWhileLocked:&v41];
  v38 = [(_EMRemoteContentDataTaskInfo *)v37 dataTask:v41];

  return v38;
}

__CFString *__113__EMRemoteContentURLSession_dataTaskWithRequest_isSynthetic_allowProxying_failOpen_background_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) != 1)
  {
    return @"Not proxying";
  }

  if (*(a1 + 33))
  {
    return @"Proxying (fail-open)";
  }

  return @"Proxying";
}

void __113__EMRemoteContentURLSession_dataTaskWithRequest_isSynthetic_allowProxying_failOpen_background_completionHandler___block_invoke_140(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  v4 = [v3 dataTask];
  [v5 setObject:v3 forKeyedSubscript:v4];
}

- (id)syntheticDataTaskWithRequest:(id)request failOpen:(BOOL)open background:(BOOL)background completionHandler:(id)handler
{
  v6 = [(EMRemoteContentURLSession *)self dataTaskWithRequest:request isSynthetic:1 allowProxying:1 failOpen:open background:background completionHandler:handler];

  return v6;
}

- (void)abortTask:(id)task
{
  taskCopy = task;
  activeTasks = self->_activeTasks;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__EMRemoteContentURLSession_abortTask___block_invoke;
  v7[3] = &unk_1E826CA58;
  v6 = taskCopy;
  v8 = v6;
  [(EFLocked *)activeTasks performWhileLocked:v7];
  [v6 cancel];
}

- (void)_createURLSession
{
  cache = [(EMRemoteContentURLSession *)self cache];
  sourceBundleIdentifier = [(EMRemoteContentURLSession *)self sourceBundleIdentifier];
  v9 = [(EMRemoteContentURLSession *)self _configurationWithCache:cache sourceBundleIdentifier:sourceBundleIdentifier];

  v5 = MEMORY[0x1E695AC78];
  delegateQueue = [(EMRemoteContentURLSession *)self delegateQueue];
  v7 = [v5 sessionWithConfiguration:v9 delegate:self delegateQueue:delegateQueue];
  session = self->_session;
  self->_session = v7;
}

- (void)invalidateAndCancel:(BOOL)cancel
{
  cancelCopy = cancel;
  os_unfair_lock_lock(&self->_sessionLock);
  v5 = self->_session;
  os_unfair_lock_unlock(&self->_sessionLock);
  if (cancelCopy)
  {
    [(NSURLSession *)v5 invalidateAndCancel];
  }

  else
  {
    [(NSURLSession *)v5 finishTasksAndInvalidate];
  }
}

- (void)URLSession:(id)session didBecomeInvalidWithError:(id)error
{
  v16 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  sessionCopy = session;
  os_unfair_lock_lock(&self->_sessionLock);
  session = self->_session;

  if (session != sessionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EMRemoteContentURLSession.m" lineNumber:267 description:{@"NSURLSession was invalidated, but was not our NSURLSession!"}];

    if (errorCopy)
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = self->_session;
    self->_session = 0;

    goto LABEL_8;
  }

  if (!errorCopy)
  {
    goto LABEL_7;
  }

LABEL_3:
  v11 = _ef_log_EMRemoteContentURLSession(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    ef_publicDescription = [errorCopy ef_publicDescription];
    [(EMRemoteContentURLSession *)self URLSession:ef_publicDescription didBecomeInvalidWithError:v15, v11];
  }

  [(EMRemoteContentURLSession *)self _createURLSession];
LABEL_8:
  os_unfair_lock_unlock(&self->_sessionLock);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__12;
  v21 = __Block_byref_object_dispose__12;
  v22 = 0;
  activeTasks = self->_activeTasks;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __64__EMRemoteContentURLSession_URLSession_dataTask_didReceiveData___block_invoke;
  v14 = &unk_1E826DD58;
  v16 = &v17;
  v10 = taskCopy;
  v15 = v10;
  [(EFLocked *)activeTasks performWhileLocked:&v11];
  [v18[5] receiveData:{dataCopy, v11, v12, v13, v14}];

  _Block_object_dispose(&v17, 8);
}

void __64__EMRemoteContentURLSession_URLSession_dataTask_didReceiveData___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  taskCopy = task;
  metricsCopy = metrics;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__12;
  v31 = __Block_byref_object_dispose__12;
  v32 = 0;
  activeTasks = self->_activeTasks;
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke;
  v24[3] = &unk_1E826DD58;
  v26 = &v27;
  v10 = taskCopy;
  v25 = v10;
  [(EFLocked *)activeTasks performWhileLocked:v24];
  if (v28[5])
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    calendarIdentifier = [currentCalendar calendarIdentifier];
    v13 = [calendarIdentifier isEqualToString:*MEMORY[0x1E695D850]];

    date = [MEMORY[0x1E695DF00] date];
    v15 = [currentCalendar components:8760 fromDate:date];

    transactionMetrics = [metricsCopy transactionMetrics];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_2;
    v18[3] = &unk_1E826F750;
    v22 = &v27;
    v23 = v13;
    v17 = v15;
    v19 = v17;
    v20 = v10;
    selfCopy = self;
    [transactionMetrics enumerateObjectsUsingBlock:v18];
  }

  _Block_object_dispose(&v27, 8);
}

void __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(*(*(a1 + 40) + 8) + 40) setDidCollectMetrics:1];
  if ([*(*(*(a1 + 40) + 8) + 40) didComplete])
  {
    [v6 setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

void __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_2(uint64_t a1, void *a2)
{
  v68[13] = *MEMORY[0x1E69E9840];
  v50 = a2;
  v3 = [v50 _privacyStance];
  v67[0] = @"isSynthetic";
  v68[0] = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "isSynthetic")}];
  v67[1] = @"metrics_resourceFetchType";
  v48 = v68[0];
  v45 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v50, "resourceFetchType")}];
  v68[1] = v45;
  v67[2] = @"metrics_privacyStance";
  v46 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
  v68[2] = v46;
  v67[3] = @"metrics_isCellular";
  v44 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v50, "isCellular")}];
  v68[3] = v44;
  v67[4] = @"metrics_isExpensive";
  v43 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v50, "isExpensive")}];
  v68[4] = v43;
  v67[5] = @"metrics_isConstrained";
  v42 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v50, "isConstrained")}];
  v68[5] = v42;
  v67[6] = @"metrics_countOfResponseBodyBytesAfterDecoding";
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v50, "countOfResponseBodyBytesAfterDecoding")}];
  v68[6] = v4;
  v67[7] = @"time_isGregorian";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 64)];
  v68[7] = v5;
  v67[8] = @"time_hour";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "hour")}];
  v68[8] = v6;
  v67[9] = @"time_month";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "month")}];
  v68[9] = v7;
  v67[10] = @"time_day";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "day")}];
  v68[10] = v8;
  v67[11] = @"time_weekOfYear";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "weekOfYear")}];
  v68[11] = v9;
  v67[12] = @"time_dayOfWeek";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "weekday")}];
  v68[12] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:13];

  v55 = MEMORY[0x1E69E9820];
  v56 = 3221225472;
  v57 = __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_3;
  v58 = &unk_1E826CA30;
  v47 = v11;
  v59 = v47;
  AnalyticsSendEventLazy();
  v12 = [*(a1 + 40) originalRequest];
  v13 = [v12 URL];
  if ([EMInternalPreferences preferenceEnabled:10])
  {
    v49 = [v13 absoluteString];
  }

  else
  {
    v14 = MEMORY[0x1E699B858];
    v15 = [v13 absoluteString];
    v49 = [v14 fullyRedactedStringForString:v15];
  }

  v17 = _ef_log_EMRemoteContentURLSession(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v40 = *(a1 + 48);
    *buf = 134218498;
    v62 = v40;
    v63 = 2114;
    v64 = v49;
    v65 = 2114;
    v66 = v47;
    _os_log_debug_impl(&dword_1C6655000, v17, OS_LOG_TYPE_DEBUG, "[%p][Analytics] URL: %{public}@\n%{public}@", buf, 0x20u);
  }

  if (v3 == 1)
  {
    v28 = [*(a1 + 40) originalRequest];
    if (![v28 _isKnownTracker])
    {
LABEL_35:

      goto LABEL_36;
    }

    v29 = [*(*(*(a1 + 56) + 8) + 40) failOpen];

    if ((v29 & 1) == 0)
    {
      v21 = _ef_log_EMRemoteContentURLSession(v30);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 48);
        *buf = 134218242;
        v62 = v31;
        v63 = 2114;
        v64 = v49;
        _os_log_impl(&dword_1C6655000, v21, OS_LOG_TYPE_DEFAULT, "[%p][Proxy] Used VPN for URL: %{public}@", buf, 0x16u);
      }

      v27 = 2;
      goto LABEL_27;
    }
  }

  else if (v3 == 3)
  {
    v18 = [*(a1 + 40) error];
    v19 = [v18 ef_underlyingError];
    v20 = [v19 userInfo];
    v21 = [v20 objectForKeyedSubscript:*MEMORY[0x1E695AD00]];

    v22 = nw_path_copy_parameters();
    v23 = v22;
    if (v22)
    {
      v24 = nw_parameters_copy_effective_proxy_config();
      if (v24)
      {
        if (nw_proxy_config_is_privacy_proxy())
        {

          v26 = _ef_log_EMRemoteContentURLSession(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_2_cold_1(a1, v49, v26);
          }

          v27 = 0;
LABEL_26:

LABEL_27:
          [*(*(a1 + 48) + 24) getObject];
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v28 = v52 = 0u;
          v33 = [v28 countByEnumeratingWithState:&v51 objects:v60 count:16];
          if (v33)
          {
            v34 = *v52;
            do
            {
              for (i = 0; i != v33; ++i)
              {
                if (*v52 != v34)
                {
                  objc_enumerationMutation(v28);
                }

                v36 = *(*(&v51 + 1) + 8 * i);
                v37 = *(a1 + 48);
                v38 = [v50 request];
                v39 = [v38 URL];
                [v36 remoteContentURLSession:v37 failedToProxyURL:v39 failureReason:v27];
              }

              v33 = [v28 countByEnumeratingWithState:&v51 objects:v60 count:16];
            }

            while (v33);
          }

          goto LABEL_35;
        }

        v32 = @"effective proxy config is not privacy proxy";
      }

      else
      {
        v32 = @"no effective proxy config";
      }
    }

    else
    {
      v32 = @"no path parameters";
    }

    v26 = _ef_log_EMRemoteContentURLSession(v22);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 48);
      *buf = 134218498;
      v62 = v41;
      v63 = 2114;
      v64 = v32;
      v65 = 2114;
      v66 = v49;
      _os_log_error_impl(&dword_1C6655000, v26, OS_LOG_TYPE_ERROR, "[%p][Proxy] Unavailable for URL (%{public}@): %{public}@", buf, 0x20u);
    }

    v27 = 1;
    goto LABEL_26;
  }

LABEL_36:
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  v56 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  errorCopy = error;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__12;
  v46 = __Block_byref_object_dispose__12;
  v47 = 0;
  activeTasks = self->_activeTasks;
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke;
  v39[3] = &unk_1E826DD58;
  v41 = &v42;
  v10 = taskCopy;
  v40 = v10;
  [(EFLocked *)activeTasks performWhileLocked:v39];
  if (!v43[5])
  {
    goto LABEL_25;
  }

  originalRequest = [v10 originalRequest];
  v12 = [originalRequest URL];
  if ([EMInternalPreferences preferenceEnabled:10])
  {
    absoluteString = [v12 absoluteString];
  }

  else
  {
    v14 = MEMORY[0x1E699B858];
    absoluteString2 = [v12 absoluteString];
    absoluteString = [v14 fullyRedactedStringForString:absoluteString2];
  }

  response = [v10 response];
  v17 = response;
  if (errorCopy)
  {
    v18 = _ef_log_EMRemoteContentURLSession(response);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      ef_publicDescription = [errorCopy ef_publicDescription];
      *buf = 134218498;
      selfCopy3 = self;
      v50 = 2114;
      v51 = absoluteString;
      v52 = 2114;
      v53 = ef_publicDescription;
      _os_log_impl(&dword_1C6655000, v18, OS_LOG_TYPE_INFO, "[%p][Error] URL: %{public}@\nError: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v20 = objc_opt_respondsToSelector();
    v21 = v20;
    v22 = _ef_log_EMRemoteContentURLSession(v20);
    v18 = v22;
    if ((v21 & 1) == 0)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        selfCopy3 = self;
        v50 = 2114;
        v51 = absoluteString;
        _os_log_impl(&dword_1C6655000, v18, OS_LOG_TYPE_INFO, "[%p][Response] URL: %{public}@", buf, 0x16u);
      }

      goto LABEL_15;
    }

    v18 = v22;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      statusCode = [v17 statusCode];
      _allHTTPHeaderFieldsAsArrays = [v17 _allHTTPHeaderFieldsAsArrays];
      *buf = 134218754;
      selfCopy3 = self;
      v50 = 2114;
      v51 = absoluteString;
      v52 = 2048;
      v53 = statusCode;
      v54 = 2114;
      v55 = _allHTTPHeaderFieldsAsArrays;
      _os_log_impl(&dword_1C6655000, v18, OS_LOG_TYPE_INFO, "[%p][Response] URL: %{public}@\nStatus Code: %ld\nHeaders: %{public}@", buf, 0x2Au);
    }
  }

LABEL_15:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v10;
    if (errorCopy || !v17)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A978]])
      {
        v29 = [errorCopy code] == -999;

        if (v29)
        {
          cache = [(EMRemoteContentURLSession *)self cache];
          v31 = MEMORY[0x1E69E9820];
          v32 = 3221225472;
          v33 = __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke_208;
          v34 = &unk_1E826F778;
          selfCopy4 = self;
          v36 = absoluteString;
          [cache storeCancelationIfNeededForDataTask:v25 completionHandler:&v31];
        }
      }

      else
      {
      }
    }

    else
    {
      cache2 = [(EMRemoteContentURLSession *)self cache];
      data = [v43[5] data];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke_206;
      v37[3] = &unk_1E826F778;
      v37[4] = self;
      v38 = absoluteString;
      [cache2 storeResponseIfNeeded:v17 withData:data forDataTask:v25 completionHandler:v37];
    }
  }

  [v43[5] finishWithError:{errorCopy, v31, v32, v33, v34, selfCopy4}];

LABEL_25:
  _Block_object_dispose(&v42, 8);
}

void __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 objectForKeyedSubscript:*(a1 + 32)];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  [*(*(*(a1 + 40) + 8) + 40) setDidComplete:1];
  if ([*(*(*(a1 + 40) + 8) + 40) didCollectMetrics])
  {
    [v6 setObject:0 forKeyedSubscript:*(a1 + 32)];
  }
}

void __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke_206(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = _ef_log_EMRemoteContentURLSession(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 134218242;
      v7 = v4;
      v8 = 2114;
      v9 = v5;
      _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_INFO, "[%p][Cache] Forced caching of response for URL: %{public}@", &v6, 0x16u);
    }
  }
}

void __66__EMRemoteContentURLSession_URLSession_task_didCompleteWithError___block_invoke_208(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = _ef_log_EMRemoteContentURLSession(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v6 = 134218242;
      v7 = v4;
      v8 = 2114;
      v9 = v5;
      _os_log_impl(&dword_1C6655000, v3, OS_LOG_TYPE_INFO, "[%p][Cache] Forced caching of cancelation for URL: %{public}@", &v6, 0x16u);
    }
  }
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__EMRemoteContentURLSession_registerObserver___block_invoke;
  v7[3] = &unk_1E826CE90;
  v8 = observerCopy;
  v6 = observerCopy;
  [(EFLocked *)observers performWhileLocked:v7];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__EMRemoteContentURLSession_unregisterObserver___block_invoke;
  v7[3] = &unk_1E826CE90;
  v8 = observerCopy;
  v6 = observerCopy;
  [(EFLocked *)observers performWhileLocked:v7];
}

- (void)URLSession:(uint8_t *)buf didBecomeInvalidWithError:(os_log_t)log .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "[%p][Session] Session was invalidated with error: %{public}@", buf, 0x16u);
}

void __72__EMRemoteContentURLSession_URLSession_task_didFinishCollectingMetrics___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = 134218242;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1C6655000, log, OS_LOG_TYPE_ERROR, "[%p][Proxy] Failed for URL: %{public}@", &v4, 0x16u);
}

@end