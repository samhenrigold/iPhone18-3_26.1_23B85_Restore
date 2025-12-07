@interface RadioGetGenreTreeNodesRequest
- (RadioGetGenreTreeNodesRequest)initWithParentNodeID:(unint64_t)d;
- (id)_genreTreeByApplyingResponse:(id)response;
- (void)startWithCachedCompletionHandler:(id)handler networkCompletionHandler:(id)completionHandler;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation RadioGetGenreTreeNodesRequest

- (id)_genreTreeByApplyingResponse:(id)response
{
  v20 = *MEMORY[0x277D85DE8];
  radio_decompressedBodyData = [response radio_decompressedBodyData];
  if ([radio_decompressedBodyData length])
  {
    v14 = 0;
    v15 = 0;
    v5 = [radio_decompressedBodyData propertyListForRadioResponseReturningError:&v15 unparsedResponseDictionary:&v14];
    v6 = v15;
    v7 = v14;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      responseContentKey = [objc_opt_class() responseContentKey];
      v9 = [v5 objectForKey:responseContentKey];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v9 = 0;
      }

      v10 = [objc_alloc(MEMORY[0x277D69B70]) initWithStorePlatformData:v7];
      metricsConfiguration = self->_metricsConfiguration;
      self->_metricsConfiguration = v10;
      v12 = 1;
    }

    else
    {
      metricsConfiguration = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(metricsConfiguration, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v6;
        v18 = 2112;
        v19 = radio_decompressedBodyData;
        _os_log_impl(&dword_261792000, metricsConfiguration, OS_LOG_TYPE_ERROR, "Error: Unable to deserialize genre tree response (%@), data: %@", buf, 0x16u);
      }

      v9 = 0;
      v12 = 3;
    }

    [(RadioRequest *)self setStatus:v12];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestContext = [(RadioRequest *)self requestContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke;
  v8[3] = &unk_279AEABD8;
  v9 = requestContext;
  v10 = handlerCopy;
  v8[4] = self;
  v6 = requestContext;
  v7 = handlerCopy;
  [(RadioRequest *)self _loadRadioStoreBagWithCompletionHandler:v8];
}

void __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 radioConfigurationDictionary];
  v5 = [v3 baseURL];
  v6 = [objc_opt_class() requestBagKey];
  v7 = [v4 objectForKey:v6];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || v5)
  {
    v47 = @"parent-id";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(*(a1 + 32) + 72)];
    v48[0] = v11;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];

    v12 = [v4 objectForKey:@"max-protocol-version"];
    v13 = [v12 intValue];

    if (v7 && v13 >= 4)
    {
      v14 = [MEMORY[0x277CCACA8] queryStringForRadioRequestParameters:v10 protocolVersion:4 error:0];
      v15 = MEMORY[0x277CBEBC0];
      v16 = [v7 stringByAppendingString:v14];
      v17 = [v15 URLWithString:v16];

      v18 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = [v17 absoluteString];
        *buf = 138412290;
        v46 = v19;
        _os_log_impl(&dword_261792000, v18, OS_LOG_TYPE_INFO, "[RadioGetGenreTreeNodesRequest] Request URL: %@", buf, 0xCu);
      }

      v20 = [MEMORY[0x277D69BD0] newForRadioRequestURL:v17];
      [v20 setHTTPMethod:@"GET"];
    }

    else
    {
      v21 = [objc_opt_class() fallbackRequestPath];
      v14 = [v5 URLByAppendingPathComponent:v21];

      v22 = os_log_create("com.apple.amp.radio", "Requests");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = [v14 absoluteString];
        *buf = 138412290;
        v46 = v23;
        _os_log_impl(&dword_261792000, v22, OS_LOG_TYPE_INFO, "[RadioGetGenreTreeNodesRequest] Request URL: %@", buf, 0xCu);
      }

      v20 = [MEMORY[0x277D69BD0] newForRadioRequestURL:v14];
      v17 = [MEMORY[0x277CBEA90] dataForRadioRequestParameters:v10 isAsynchronousBackgroundRequest:objc_msgSend(*(a1 + 32) error:{"isAsynchronousBackgroundRequest"), 0}];
      [v20 setHTTPBody:v17];
    }

    v24 = [objc_opt_class() defaultURLCache];
    v25 = [v24 cachedConnectionResponseForRequestProperties:v20];

    if (v25 && ([v25 ssv_isExpiredResponse] & 1) == 0 && (objc_msgSend(*(a1 + 32), "_genreTreeByApplyingResponse:", v25), (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v27 = v26;
      v28 = [v25 metricsPageEvent];
      v29 = [v28 mutableCopy];
      v30 = *(a1 + 32);
      v31 = *(v30 + 96);
      *(v30 + 96) = v29;

      [*(*(a1 + 32) + 96) setCachedResponse:1];
      [*(a1 + 32) setCachedResponse:1];
      v32 = *(a1 + 48);
      if (v32)
      {
        (*(v32 + 16))(v32, v27, 0);
      }

      v33 = [MEMORY[0x277CCAB98] defaultCenter];
      [v33 postNotificationName:@"RadioRequestDidFinishNotification" object:*(a1 + 32)];
    }

    else
    {
      v34 = +[RadioNetworkObserver sharedNetworkObserver];
      [v34 beginUsingNetwork];

      v35 = [MEMORY[0x277D69C98] newRadioRequestWithRequestContext:*(a1 + 40) requestProperties:v20 storeBag:v3];
      v36 = *(a1 + 32);
      v37 = *(v36 + 80);
      *(v36 + 80) = v35;

      v38 = *(a1 + 32);
      v39 = *(v38 + 80);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_20;
      v40[3] = &unk_279AEAAE8;
      v40[4] = v38;
      v41 = v20;
      v42 = *(a1 + 48);
      [v39 startWithConnectionResponseBlock:v40];
    }
  }

  else
  {
    [*(a1 + 32) setStatus:5];
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_2;
    block[3] = &unk_279AEACF0;
    v9 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v44 = v9;
    dispatch_async(v8, block);

    v10 = v44;
  }
}

void __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 0);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:*(a1 + 32)];
}

void __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_20(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[RadioNetworkObserver sharedNetworkObserver];
  [v7 endUsingNetwork];

  if (v5)
  {
    v8 = [v5 statusCode];
  }

  else
  {
    v9 = [v6 userInfo];
    v10 = [v9 objectForKey:*MEMORY[0x277D6A118]];
    v8 = [v10 integerValue];
  }

  v11 = os_log_create("com.apple.amp.radio", "Requests");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v36 = v8;
    _os_log_impl(&dword_261792000, v11, OS_LOG_TYPE_INFO, "[RadioGetGenreTreeNodesRequest] Status code: %lli", buf, 0xCu);
  }

  if ((v8 - 300) <= 0xFFFFFFFFFFFFFF9BLL)
  {
    v12 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v6;
      _os_log_impl(&dword_261792000, v12, OS_LOG_TYPE_ERROR, "Error: Unable to get genre tree (%@)", buf, 0xCu);
    }

    if (!v6)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D6A110];
      v33 = *MEMORY[0x277D6A118];
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      v34 = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v6 = [v13 errorWithDomain:v14 code:109 userInfo:v16];
    }

    if (v8 <= 399)
    {
      v17 = 1;
      if (v8 == 200 || v8 == 204)
      {
        goto LABEL_22;
      }
    }

    else
    {
      switch(v8)
      {
        case 404:
          goto LABEL_15;
        case 401:
          v17 = 2;
          goto LABEL_22;
        case 400:
LABEL_15:
          v17 = 4;
LABEL_22:
          [*(a1 + 32) setStatus:v17];
          v18 = 0;
          goto LABEL_23;
      }
    }

    v17 = 3;
    goto LABEL_22;
  }

  v18 = [*(a1 + 32) _genreTreeByApplyingResponse:v5];
  if (v18)
  {
    v19 = [objc_opt_class() defaultURLCache];
    [v19 storeConnectionResponse:v5 forRequestProperties:*(a1 + 40)];
  }

LABEL_23:
  v20 = [v5 metricsPageEvent];
  v21 = [v20 mutableCopy];
  v22 = *(a1 + 32);
  v23 = *(v22 + 96);
  *(v22 + 96) = v21;

  v24 = dispatch_get_global_queue(0, 0);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_22;
  v28[3] = &unk_279AEAB88;
  v25 = *(a1 + 48);
  v29 = v18;
  v30 = v6;
  v31 = *(a1 + 32);
  v32 = v25;
  v26 = v6;
  v27 = v18;
  dispatch_async(v24, v28);
}

void __60__RadioGetGenreTreeNodesRequest_startWithCompletionHandler___block_invoke_22(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:a1[6]];
}

- (void)startWithCachedCompletionHandler:(id)handler networkCompletionHandler:(id)completionHandler
{
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__RadioGetGenreTreeNodesRequest_startWithCachedCompletionHandler_networkCompletionHandler___block_invoke;
  v10[3] = &unk_279AEAAC0;
  v11 = handlerCopy;
  v12 = completionHandlerCopy;
  v8 = completionHandlerCopy;
  v9 = handlerCopy;
  [(RadioGetGenreTreeNodesRequest *)self startWithCompletionHandler:v10];
}

void __91__RadioGetGenreTreeNodesRequest_startWithCachedCompletionHandler_networkCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v8);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

- (RadioGetGenreTreeNodesRequest)initWithParentNodeID:(unint64_t)d
{
  v5.receiver = self;
  v5.super_class = RadioGetGenreTreeNodesRequest;
  result = [(RadioRequest *)&v5 init];
  if (result)
  {
    result->_parentNodeID = d;
  }

  return result;
}

@end