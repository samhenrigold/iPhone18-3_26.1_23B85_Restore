@interface RCURLFetchOperation
- (BOOL)validateOperation;
- (void)URLSession:(id)session didCreateTask:(id)task;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)_reportNetworkEventsForTask:(id)task response:(id)response error:(id)error;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
- (void)resetForRetry;
- (void)setRelativePriority:(int64_t)priority;
- (void)validateOperation;
@end

@implementation RCURLFetchOperation

- (void)setRelativePriority:(int64_t)priority
{
  requestTask = [(RCURLFetchOperation *)self requestTask];
  [requestTask setRelativePriority:priority];

  v6.receiver = self;
  v6.super_class = RCURLFetchOperation;
  [(RCOperation *)&v6 setRelativePriority:priority];
}

- (BOOL)validateOperation
{
  v2 = [(RCURLFetchOperation *)self URL];

  if (!v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RCURLFetchOperation validateOperation];
  }

  return v2 != 0;
}

- (void)performOperation
{
  v89 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAB70]);
  v4 = [(RCURLFetchOperation *)self URL];
  v5 = [v3 initWithURL:v4];

  hTTPMethod = [(RCURLFetchOperation *)self HTTPMethod];
  v7 = hTTPMethod;
  if (hTTPMethod)
  {
    v8 = hTTPMethod;
  }

  else
  {
    v8 = @"GET";
  }

  [v5 setHTTPMethod:v8];

  hTTPBody = [(RCURLFetchOperation *)self HTTPBody];
  [v5 setHTTPBody:hTTPBody];

  v10 = [(RCURLFetchOperation *)self URL];
  absoluteString = [v10 absoluteString];
  [(RCURLFetchOperation *)self setUrlString:absoluteString];

  backgroundFetchConfiguration = [(RCURLFetchOperation *)self backgroundFetchConfiguration];
  taskIdentifier = [backgroundFetchConfiguration taskIdentifier];
  v14 = taskIdentifier;
  if (taskIdentifier)
  {
    uUIDString = taskIdentifier;
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
  }

  [v5 addValue:uUIDString forHTTPHeaderField:@"X-Request-ID"];
  v17 = RCSharedLog([(RCURLFetchOperation *)self setRequestUUID:uUIDString]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    shortOperationDescription = [(RCOperation *)self shortOperationDescription];
    urlString = [(RCURLFetchOperation *)self urlString];
    requestUUID = [(RCURLFetchOperation *)self requestUUID];
    *buf = 138543874;
    v78 = shortOperationDescription;
    v79 = 2112;
    v80 = urlString;
    v81 = 2112;
    v82 = requestUUID;
    _os_log_impl(&dword_2179FC000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ will perform operation to fetch config from URL: %@ with X-Request-ID: %@", buf, 0x20u);
  }

  [(RCURLFetchOperation *)self URLRequestTimeoutDuration];
  if (v21 > 0.0)
  {
    [(RCURLFetchOperation *)self URLRequestTimeoutDuration];
    if (v22 != 1.79769313e308)
    {
      [(RCURLFetchOperation *)self URLRequestTimeoutDuration];
      v23 = RCSharedLog([v5 setTimeoutInterval:?]);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        shortOperationDescription2 = [(RCOperation *)self shortOperationDescription];
        [(RCURLFetchOperation *)self URLRequestTimeoutDuration];
        *buf = 138543618;
        v78 = shortOperationDescription2;
        v79 = 2048;
        v80 = v25;
        _os_log_impl(&dword_2179FC000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ applying URLRequestTimeoutDuration: %.1f", buf, 0x16u);
      }
    }
  }

  [v5 setCachePolicy:1];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  additionalRequestHTTPHeaders = [(RCURLFetchOperation *)self additionalRequestHTTPHeaders];
  v27 = additionalRequestHTTPHeaders == 0;

  if (!v27)
  {
    additionalRequestHTTPHeaders2 = [(RCURLFetchOperation *)self additionalRequestHTTPHeaders];
    [dictionary addEntriesFromDictionary:additionalRequestHTTPHeaders2];
  }

  [v5 setAllHTTPHeaderFields:dictionary];
  v71 = 0;
  v72 = &v71;
  v73 = 0x3032000000;
  v74 = __Block_byref_object_copy__5;
  v75 = __Block_byref_object_dispose__5;
  v76 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__RCURLFetchOperation_performOperation__block_invoke;
  aBlock[3] = &unk_278230048;
  v70 = &v71;
  aBlock[4] = self;
  v64 = uUIDString;
  v69 = v64;
  v65 = _Block_copy(aBlock);
  backgroundFetchConfiguration2 = [(RCURLFetchOperation *)self backgroundFetchConfiguration];

  if (backgroundFetchConfiguration2)
  {
    backgroundFetchConfiguration3 = [(RCURLFetchOperation *)self backgroundFetchConfiguration];
    v67 = 0;
    v31 = [RCURLSession backgroundSessionForFetchConfig:backgroundFetchConfiguration3 delegateReference:&v67];
    v32 = v67;
    v33 = [v31 downloadTaskWithRequest:v5];
    v34 = v72[5];
    v72[5] = v33;

    requestUUID2 = [(RCURLFetchOperation *)self requestUUID];
    [v72[5] setTaskDescription:requestUUID2];

    earliestBeginDate = [backgroundFetchConfiguration3 earliestBeginDate];
    [v72[5] setEarliestBeginDate:earliestBeginDate];

    requestUUID3 = [(RCURLFetchOperation *)self requestUUID];
    [v32 observeCompletionOfTaskWithIdentifier:requestUUID3 completion:v65];
  }

  else
  {
    v38 = +[RCURLSession sharedForegroundSession];
    v39 = [v38 dataTaskWithRequest:v5 completionHandler:v65];
    v40 = v72[5];
    v72[5] = v39;

    backgroundFetchConfiguration3 = [(RCURLFetchOperation *)self requestUUID];
    [v72[5] setTaskDescription:backgroundFetchConfiguration3];
  }

  [(RCURLFetchOperation *)self setRequestTask:v72[5]];
  relativePriority = [(RCOperation *)self relativePriority];
  [v72[5] setRelativePriority:relativePriority];
  [(RCOperation *)self associateChildOperation:v72[5]];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v42 = [(RCURLFetchOperation *)self setTaskStartTime:?];
  if (backgroundFetchConfiguration2)
  {
    v43 = RCSharedLog(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      shortOperationDescription3 = [(RCOperation *)self shortOperationDescription];
      loggingKey = [(RCURLFetchOperation *)self loggingKey];
      requestUUID4 = [(RCURLFetchOperation *)self requestUUID];
      urlString2 = [(RCURLFetchOperation *)self urlString];
      backgroundFetchConfiguration4 = [(RCURLFetchOperation *)self backgroundFetchConfiguration];
      earliestBeginDate2 = [backgroundFetchConfiguration4 earliestBeginDate];
      rc_stringForLogging = [earliestBeginDate2 rc_stringForLogging];
      v49 = rc_stringForLogging;
      if (rc_stringForLogging)
      {
        v50 = rc_stringForLogging;
      }

      else
      {
        v50 = @"<nil>";
      }

      backgroundFetchConfiguration5 = [(RCURLFetchOperation *)self backgroundFetchConfiguration];
      [backgroundFetchConfiguration5 timeout];
      *buf = 138544642;
      v78 = shortOperationDescription3;
      v79 = 2112;
      v80 = loggingKey;
      v81 = 2112;
      v82 = requestUUID4;
      v83 = 2112;
      v84 = urlString2;
      v85 = 2114;
      v86 = v50;
      v87 = 2048;
      v88 = v52;
      _os_log_impl(&dword_2179FC000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ will send background request for configuration: %@ with UUID: %@, URL: %@, earliestBeginDate: %{public}@, timeout: %.2f.", buf, 0x3Eu);
    }
  }

  else
  {
    v43 = RCSharedLog(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      shortOperationDescription4 = [(RCOperation *)self shortOperationDescription];
      loggingKey2 = [(RCURLFetchOperation *)self loggingKey];
      requestUUID5 = [(RCURLFetchOperation *)self requestUUID];
      urlString3 = [(RCURLFetchOperation *)self urlString];
      *buf = 138544130;
      v78 = shortOperationDescription4;
      v79 = 2112;
      v80 = loggingKey2;
      v81 = 2112;
      v82 = requestUUID5;
      v83 = 2112;
      v84 = urlString3;
      _os_log_impl(&dword_2179FC000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ will send foreground request for configuration: %@ with UUID: %@, URL: %@", buf, 0x2Au);
    }
  }

  v58 = RCSharedLog(v57);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    longOperationDescription = [v72[5] longOperationDescription];
    *buf = 138543362;
    v78 = longOperationDescription;
    _os_log_impl(&dword_2179FC000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ started", buf, 0xCu);
  }

  networkActivity = [(RCURLFetchOperation *)self networkActivity];

  if (networkActivity)
  {
    [v72[5] setDelegate:self];
    networkActivity2 = [(RCURLFetchOperation *)self networkActivity];
    [networkActivity2 attachActivityToTask:v72[5]];
  }

  [v72[5] resume];

  _Block_object_dispose(&v71, 8);
}

void __39__RCURLFetchOperation_performOperation__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v41 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = RCSharedLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(*(*(a1 + 48) + 8) + 40) shortOperationDescription];
    *buf = 138543362;
    v38 = v11;
    _os_log_impl(&dword_2179FC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ finished", buf, 0xCu);
  }

  [*(a1 + 32) _reportNetworkEventsForTask:*(*(*(a1 + 48) + 8) + 40) response:v8 error:v9];
  v12 = objc_opt_class();
  v13 = RCDynamicCast(v12, v8);
  v14 = v13;
  if (v13 && ([v13 statusCode] < 200 || objc_msgSend(v14, "statusCode") >= 300) && objc_msgSend(v14, "statusCode") != 304)
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v16 = [*(a1 + 32) urlString];
    [v15 setObject:v16 forKeyedSubscript:@"RCErrorHTTPURL"];

    [v15 setObject:*(a1 + 40) forKeyedSubscript:@"RCErrorHTTPRequestUUID"];
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "statusCode")}];
    [v15 setObject:v17 forKeyedSubscript:@"RCErrorHTTPStatusCode"];

    v18 = [v14 allHeaderFields];

    if (v18)
    {
      v19 = [v14 allHeaderFields];
      [v15 setObject:v19 forKeyedSubscript:@"RCErrorHTTPResponseHeaders"];
    }

    if ([v14 statusCode] >= 500 && objc_msgSend(v14, "statusCode") <= 598)
    {
      v20 = [v14 allHeaderFields];
      v21 = [v20 objectForKeyedSubscript:@"Retry-After"];

      if (v21)
      {
        v22 = [v21 integerValue];
        if (v22)
        {
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:v22];
          if (v23)
          {
            v24 = v23;
            [v15 setObject:v23 forKeyedSubscript:@"RCErrorRetryAfter"];
            [v15 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"NSErrorRCAdditionsShouldRetry"];
          }
        }
      }
    }

    v25 = MEMORY[0x277CCA9B8];
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"URL request failed with status code %lu", objc_msgSend(v14, "statusCode")];
    v27 = [v25 rc_errorWithCode:3 description:v26 additionalUserInfo:v15];

    v9 = v27;
  }

  v28 = [v14 allHeaderFields];
  v29 = [v28 objectForKeyedSubscript:@"Cache-Control"];
  v30 = [v29 rc_numberFollowingString:@"max-age="];

  if (!v30 || (v31 = [v30 doubleValue], v32 == 0.0))
  {
    v33 = RCSharedLog(v31);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = [*(a1 + 32) shortOperationDescription];
      v35 = [*(a1 + 32) urlString];
      *buf = 138543618;
      v38 = v34;
      v39 = 2112;
      v40 = v35;
      _os_log_impl(&dword_2179FC000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ max-age missing from Cache-Control header for URL: %@", buf, 0x16u);
    }

    v30 = 0;
  }

  [*(a1 + 32) setMaxAge:v30];
  if (!v9)
  {
    [*(a1 + 32) setResponseData:v7];
  }

  [*(a1 + 32) setHttpResponse:v14];
  [*(a1 + 32) setResponseSize:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "countOfBytesReceived")}];
  v36 = [v8 MIMEType];
  [*(a1 + 32) setResponseMIMEType:v36];

  [*(a1 + 32) setError:v9];
  [*(a1 + 32) finishedPerformingOperationWithError:v9];
}

- (void)operationWillFinishWithError:(id)error
{
  v69 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  [(RCURLFetchOperation *)self setRequestTask:0];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = v5;
  taskStartTime = [(RCURLFetchOperation *)self taskStartTime];
  if (errorCopy)
  {
    rc_isCancellationError = [errorCopy rc_isCancellationError];
    if (rc_isCancellationError)
    {
      v10 = RCSharedLog(rc_isCancellationError);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      shortOperationDescription = [(RCOperation *)self shortOperationDescription];
      loggingKey = [(RCURLFetchOperation *)self loggingKey];
      *buf = 138543618;
      v62 = shortOperationDescription;
      v63 = 2112;
      v64 = loggingKey;
      _os_log_impl(&dword_2179FC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ cancelled configuration request %@", buf, 0x16u);

      goto LABEL_5;
    }

    userInfo = [errorCopy userInfo];
    v18 = [userInfo objectForKeyedSubscript:@"RCErrorHTTPStatusCode"];

    v10 = RCSharedLog(v19);
    v20 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        shortOperationDescription = [(RCOperation *)self shortOperationDescription];
        loggingKey2 = [(RCURLFetchOperation *)self loggingKey];
        userInfo2 = [errorCopy userInfo];
        v23 = [userInfo2 objectForKeyedSubscript:@"RCErrorHTTPStatusCode"];
        *buf = 138543874;
        v62 = shortOperationDescription;
        v63 = 2114;
        v64 = loggingKey2;
        v65 = 2114;
        v66 = v23;
        _os_log_error_impl(&dword_2179FC000, v10, OS_LOG_TYPE_ERROR, "%{public}@ failed to request configuration %{public}@ with response status code: %{public}@", buf, 0x20u);

LABEL_5:
      }
    }

    else if (v20)
    {
      [(RCURLFetchOperation *)self operationWillFinishWithError:errorCopy, v10];
    }
  }

  else
  {
    v13 = v8;
    v10 = RCSharedLog(taskStartTime);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      shortOperationDescription2 = [(RCOperation *)self shortOperationDescription];
      loggingKey3 = [(RCURLFetchOperation *)self loggingKey];
      v16 = [MEMORY[0x277CCA8E8] stringFromByteCount:-[RCURLFetchOperation responseSize](self countStyle:{"responseSize"), 0}];
      *buf = 138544130;
      v62 = shortOperationDescription2;
      v63 = 2114;
      v64 = loggingKey3;
      v65 = 2112;
      v66 = v16;
      v67 = 2048;
      v68 = v6 - v13;
      _os_log_impl(&dword_2179FC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully received configuration %{public}@ with size: %@, total time: %f", buf, 0x2Au);
    }
  }

LABEL_13:

  completionQueue = [(RCURLFetchOperation *)self completionQueue];
  v25 = completionQueue;
  if (completionQueue)
  {
    v26 = completionQueue;
  }

  else
  {
    v26 = RCDispatchQueueForQualityOfService([(RCURLFetchOperation *)self qualityOfService]);
  }

  v27 = v26;

  configurationDictionaryCompletionHandler = [(RCURLFetchOperation *)self configurationDictionaryCompletionHandler];

  if (configurationDictionaryCompletionHandler)
  {
    responseData = [(RCURLFetchOperation *)self responseData];
    rc_gzipInflate = [responseData rc_gzipInflate];

    if (rc_gzipInflate)
    {
      responseData2 = rc_gzipInflate;
    }

    else
    {
      responseData2 = [(RCURLFetchOperation *)self responseData];
    }

    v33 = responseData2;
    v60 = 0;
    v34 = [MEMORY[0x277CBEAC0] rc_dictionaryFromData:responseData2 error:&v60];
    v35 = v60;
    v36 = [(RCURLFetchOperation *)self setResponseData:0];
    if (v35)
    {
      v53 = v34;
      v37 = RCSharedLog(v36);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [(RCURLFetchOperation *)self operationWillFinishWithError:v35, v37];
      }

      v38 = objc_opt_class();
      userInfo3 = [v35 userInfo];
      v40 = [userInfo3 objectForKey:@"NSJSONSerializationErrorIndex"];
      v41 = RCDynamicCast(v38, v40);

      if (v41)
      {
        unsignedIntegerValue = [v41 unsignedIntegerValue];
        v43 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v33 encoding:4];
        if ([v43 length])
        {
          v44 = [v43 length];
          v45 = v44 - 1;
          v46 = unsignedIntegerValue - 200;
          if (unsignedIntegerValue < 0xC8)
          {
            v46 = 0;
          }

          if (v46 >= v45)
          {
            v47 = v44 - 1;
          }

          else
          {
            v47 = v46;
          }

          if (unsignedIntegerValue + 200 < v45)
          {
            v45 = unsignedIntegerValue + 200;
          }

          v51 = v45;
          [v43 substringWithRange:{v47, v45 - v47}];
          v52 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          v48 = RCSharedLog(*&v52);
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            shortOperationDescription3 = [(RCOperation *)self shortOperationDescription];
            *buf = 138544130;
            v62 = shortOperationDescription3;
            v63 = 2048;
            v64 = v47;
            v65 = 2048;
            v66 = v51;
            v67 = 2114;
            v68 = v52;
            _os_log_error_impl(&dword_2179FC000, v48, OS_LOG_TYPE_ERROR, "%{public}@ JSON parsing failure response substring startIndex=%lu endIndex=%lu excerpt='%{public}@'", buf, 0x2Au);
          }
        }
      }

      v34 = v53;
    }

    configurationDictionaryCompletionHandler2 = [(RCURLFetchOperation *)self configurationDictionaryCompletionHandler];

    if (configurationDictionaryCompletionHandler2)
    {
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __52__RCURLFetchOperation_operationWillFinishWithError___block_invoke;
      v56[3] = &unk_278230070;
      v56[4] = self;
      v57 = v34;
      v58 = v35;
      v59 = errorCopy;
      dispatch_async(v27, v56);
    }
  }

  else
  {
    configurationCompletionHandler = [(RCURLFetchOperation *)self configurationCompletionHandler];

    if (configurationCompletionHandler)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__RCURLFetchOperation_operationWillFinishWithError___block_invoke_2;
      block[3] = &unk_27822F130;
      block[4] = self;
      v55 = errorCopy;
      dispatch_async(v27, block);
    }
  }
}

void __52__RCURLFetchOperation_operationWillFinishWithError___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) configurationDictionaryCompletionHandler];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) maxAge];
  v5 = [*(a1 + 32) httpResponse];
  v6[2](v6, v3, v2, v4, v5, *(a1 + 56));
}

void __52__RCURLFetchOperation_operationWillFinishWithError___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) configurationCompletionHandler];
  v2 = [*(a1 + 32) responseData];
  v3 = [*(a1 + 32) maxAge];
  v4 = [*(a1 + 32) httpResponse];
  v5[2](v5, v2, v3, v4, *(a1 + 40));
}

- (void)resetForRetry
{
  [(RCURLFetchOperation *)self setTaskStartTime:0.0];
  [(RCURLFetchOperation *)self setResponseData:0];
  [(RCURLFetchOperation *)self setHttpResponse:0];
  [(RCURLFetchOperation *)self setResponseSize:0];
  [(RCURLFetchOperation *)self setError:0];

  [(RCURLFetchOperation *)self setMaxAge:0];
}

- (void)_reportNetworkEventsForTask:(id)task response:(id)response error:(id)error
{
  v47 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke;
    v43[3] = &unk_27822FE40;
    v43[4] = self;
    v44 = taskCopy;
    v45 = errorCopy;
    __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke(v43);
  }

  else
  {
    selfCopy = self;
    v11 = objc_opt_class();
    v12 = RCDynamicCast(v11, responseCopy);

    if (v12)
    {
      v13 = objc_opt_class();
      v14 = RCDynamicCast(v13, responseCopy);
      if ([v14 statusCode] >= 200 && objc_msgSend(v14, "statusCode") < 300 || objc_msgSend(v14, "statusCode") == 304)
      {
        v33 = v14;
        v31 = responseCopy;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        _incompleteTaskMetrics = [taskCopy _incompleteTaskMetrics];
        transactionMetrics = [_incompleteTaskMetrics transactionMetrics];

        obj = transactionMetrics;
        v17 = [transactionMetrics countByEnumeratingWithState:&v36 objects:v46 count:16];
        v18 = selfCopy;
        if (v17)
        {
          v19 = v17;
          v20 = *v37;
          v32 = taskCopy;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v37 != v20)
              {
                objc_enumerationMutation(obj);
              }

              v22 = *(*(&v36 + 1) + 8 * i);
              if ([v22 resourceFetchType] != 3)
              {
                networkEventHandler = [(RCURLFetchOperation *)v18 networkEventHandler];

                if (networkEventHandler)
                {
                  networkEventHandler2 = [(RCURLFetchOperation *)v18 networkEventHandler];
                  v25 = [RCNetworkEvent alloc];
                  originalRequest = [taskCopy originalRequest];
                  fetchStartDate = [v22 fetchStartDate];
                  operationID = [(RCOperation *)v18 operationID];
                  requestUUID = [(RCURLFetchOperation *)v18 requestUUID];
                  v30 = [(RCNetworkEvent *)v25 initWithResultType:0 request:originalRequest startDate:fetchStartDate operationID:operationID requestID:requestUUID response:v33 metrics:v22 error:0];
                  (networkEventHandler2)[2](networkEventHandler2, v30);

                  v18 = selfCopy;
                  taskCopy = v32;
                }
              }
            }

            v19 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
          }

          while (v19);
        }

        errorCopy = 0;
        responseCopy = v31;
        v14 = v33;
      }

      else
      {
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke_3;
        v40[3] = &unk_27822FE40;
        v40[4] = selfCopy;
        v41 = taskCopy;
        v42 = v14;
        __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke_3(v40);
      }
    }
  }
}

void __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) networkEventHandler];

  if (v2)
  {
    v11 = [*(a1 + 32) networkEventHandler];
    v3 = [RCNetworkEvent alloc];
    v4 = [*(a1 + 40) originalRequest];
    v5 = [*(a1 + 40) _incompleteTaskMetrics];
    v6 = [v5 taskInterval];
    v7 = [v6 startDate];
    v8 = [*(a1 + 32) operationID];
    v9 = [*(a1 + 32) requestUUID];
    v10 = [(RCNetworkEvent *)v3 initWithResultType:2 request:v4 startDate:v7 operationID:v8 requestID:v9 response:0 metrics:0 error:*(a1 + 48)];
    v11[2](v11, v10);
  }
}

void __66__RCURLFetchOperation__reportNetworkEventsForTask_response_error___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) networkEventHandler];

  if (v2)
  {
    v10 = [*(a1 + 32) networkEventHandler];
    v3 = [RCNetworkEvent alloc];
    v4 = [*(a1 + 40) originalRequest];
    v5 = [*(a1 + 40) _incompleteCurrentTaskTransactionMetrics];
    v6 = [v5 fetchStartDate];
    v7 = [*(a1 + 32) operationID];
    v8 = [*(a1 + 32) requestUUID];
    v9 = [(RCNetworkEvent *)v3 initWithResultType:1 request:v4 startDate:v6 operationID:v7 requestID:v8 response:*(a1 + 48) metrics:0 error:0];
    v10[2](v10, v9);
  }
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  v18 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  networkActivity = [(RCURLFetchOperation *)self networkActivity];

  if (networkActivity)
  {
    error = [taskCopy error];

    networkActivity2 = [(RCURLFetchOperation *)self networkActivity];
    v10 = networkActivity2;
    if (error)
    {
      [networkActivity2 completeActivityWithSuccess:0];

      v12 = RCSharedLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        networkActivity3 = [(RCURLFetchOperation *)self networkActivity];
        v16 = 67109120;
        label = [networkActivity3 label];
        v14 = "Did finish network activity with success=NO (label=%d)";
LABEL_7:
        _os_log_impl(&dword_2179FC000, v12, OS_LOG_TYPE_DEFAULT, v14, &v16, 8u);
      }
    }

    else
    {
      [networkActivity2 completeActivityWithSuccess:1];

      v12 = RCSharedLog(v15);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        networkActivity3 = [(RCURLFetchOperation *)self networkActivity];
        v16 = 67109120;
        label = [networkActivity3 label];
        v14 = "Did finish network activity with success=YES (label=%d)";
        goto LABEL_7;
      }
    }
  }
}

- (void)URLSession:(id)session didCreateTask:(id)task
{
  v14 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  networkActivity = [(RCURLFetchOperation *)self networkActivity];

  if (networkActivity)
  {
    networkActivity2 = [(RCURLFetchOperation *)self networkActivity];
    [networkActivity2 attachActivityToTask:taskCopy];

    v9 = RCSharedLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      originalRequest = [taskCopy originalRequest];
      v11 = [originalRequest URL];
      v12 = 138543362;
      v13 = v11;
      _os_log_impl(&dword_2179FC000, v9, OS_LOG_TYPE_DEFAULT, "Did assign network activity to task (%{public}@)", &v12, 0xCu);
    }
  }
}

- (void)validateOperation
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"the fetch operation must have valid URL"];
  v1 = 136315906;
  v2 = "[RCURLFetchOperation validateOperation]";
  v3 = 2080;
  v4 = "/Library/Caches/com.apple.xbs/Sources/RemoteConfiguration/RemoteConfiguration/RCURLFetchOperation.m";
  v5 = 1024;
  v6 = 71;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&dword_2179FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure: %s %s:%d %{public}@", &v1, 0x26u);
}

- (void)operationWillFinishWithError:(NSObject *)a3 .cold.1(void *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = [a1 shortOperationDescription];
  v7 = [a1 loggingKey];
  v8 = [a2 localizedDescription];
  v9 = 138543874;
  v10 = v6;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = v8;
  _os_log_error_impl(&dword_2179FC000, a3, OS_LOG_TYPE_ERROR, "%{public}@ failed to request configuration %{public}@ with error: %{public}@", &v9, 0x20u);
}

- (void)operationWillFinishWithError:(NSObject *)a3 .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a1 shortOperationDescription];
  v6 = 138543618;
  v7 = v5;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_2179FC000, a3, OS_LOG_TYPE_ERROR, "%{public}@ operationWillFinishWithError - JSON parsing failed with error: %{public}@", &v6, 0x16u);
}

@end