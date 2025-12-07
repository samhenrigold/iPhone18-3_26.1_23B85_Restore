@interface RadioRecentStationsRequest
- (RadioRecentStationsRequest)initWithCurrentStation:(id)station;
- (RadioRecentStationsRequest)initWithCurrentStationStringID:(id)d;
- (id)_newRecentStationsURLRequestPropertiesWithBaseURL:(id)l;
- (id)_recentStationsResponseWithConnectionResponse:(id)response returningError:(id *)error;
- (void)_configureRequestPropertiesForCaching:(id)caching returningCacheKey:(id *)key;
- (void)cancel;
- (void)getCachedRecentStationsResponseWithCompletionHandler:(id)handler;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation RadioRecentStationsRequest

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = RadioRecentStationsRequest;
  [(RadioRequest *)&v3 cancel];
  [(SSURLConnectionRequest *)self->_request cancel];
}

- (id)_recentStationsResponseWithConnectionResponse:(id)response returningError:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  radio_decompressedBodyData = [response radio_decompressedBodyData];
  if (![radio_decompressedBodyData length])
  {
    v11 = 0;
    v10 = 0;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v17 = 0;
  v18 = 0;
  v7 = [radio_decompressedBodyData propertyListForRadioResponseReturningError:&v18 unparsedResponseDictionary:&v17];
  v8 = v18;
  v9 = v17;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [[RadioRecentStationsResponse alloc] initWithResponseDictionary:v7];
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v11 = v8;
    v13 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_261792000, v13, OS_LOG_TYPE_ERROR, "Error: Unable to deserialize get stations response (%@)", buf, 0xCu);
    }

    v10 = 0;
    v12 = 3;
  }

  [(RadioRequest *)self setStatus:v12];

  if (error)
  {
LABEL_10:
    v14 = v11;
    *error = v11;
  }

LABEL_11:
  v15 = v10;

  return v10;
}

- (id)_newRecentStationsURLRequestPropertiesWithBaseURL:(id)l
{
  lCopy = l;
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  if (self->_stationCount)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v5 setObject:v6 forKey:@"count"];
  }

  if (!self->_shouldGroupResponses)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v5 setObject:v7 forKey:@"flatten"];
  }

  v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  stationStringID = [(RadioStation *)self->_currentStation stationStringID];
  if (stationStringID)
  {
    v10 = stationStringID;
  }

  else
  {
    v10 = self->_currentStationStringID;
    if (!v10)
    {
      goto LABEL_9;
    }
  }

  [v8 setObject:v10 forKey:@"radio-station-id"];
LABEL_9:
  stationID = [(RadioStation *)self->_currentStation stationID];
  if (stationID)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:stationID];
    [v8 setObject:v12 forKey:@"station-id"];
  }

  stationHash = [(RadioStation *)self->_currentStation stationHash];
  if (stationHash)
  {
    [v8 setObject:stationHash forKey:@"station-hash"];
  }

  if ([v8 count])
  {
    [v5 setObject:v8 forKey:@"station-info"];
  }

  v14 = [lCopy URLByAppendingPathComponent:@"recentStations"];
  v15 = [MEMORY[0x277D69BD0] newForRadioRequestURL:v14];
  v16 = [MEMORY[0x277CBEA90] dataForRadioRequestParameters:v5 isAsynchronousBackgroundRequest:-[RadioRequest isAsynchronousBackgroundRequest](self error:{"isAsynchronousBackgroundRequest"), 0}];
  [v15 setHTTPBody:v16];

  return v15;
}

- (void)_configureRequestPropertiesForCaching:(id)caching returningCacheKey:(id *)key
{
  cachingCopy = caching;
  [cachingCopy setHTTPMethod:@"GET"];
  if (key)
  {
    hTTPBody = [cachingCopy HTTPBody];
    [hTTPBody bytes];
    [hTTPBody length];
    v6 = ISMD5StringForBytes();
    v7 = v6;
    if (!v6)
    {
      v6 = &stru_287401C08;
    }

    *key = v6;
  }

  [cachingCopy setHTTPBody:0];
}

- (void)startWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  requestContext = [(RadioRequest *)self requestContext];
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RadioRecentStationsRequest_startWithCompletionHandler___block_invoke;
  block[3] = &unk_279AEAC00;
  v10 = requestContext;
  v11 = handlerCopy;
  block[4] = self;
  v7 = requestContext;
  v8 = handlerCopy;
  dispatch_async(v6, block);
}

void __57__RadioRecentStationsRequest_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__RadioRecentStationsRequest_startWithCompletionHandler___block_invoke_2;
  v3[3] = &unk_279AEABD8;
  v3[4] = v2;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  [v2 _loadRadioStoreBagWithCompletionHandler:v3];
}

void __57__RadioRecentStationsRequest_startWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 baseURL];
  v5 = *(a1 + 32);
  if (!v4)
  {
    [v5 setStatus:5];
    v30 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__RadioRecentStationsRequest_startWithCompletionHandler___block_invoke_3;
    block[3] = &unk_279AEACF0;
    v31 = *(a1 + 48);
    block[4] = *(a1 + 32);
    v45 = v31;
    dispatch_async(v30, block);

    v6 = v45;
    goto LABEL_10;
  }

  v6 = [v5 _newRecentStationsURLRequestPropertiesWithBaseURL:v4];
  v7 = [MEMORY[0x277D69C98] newRadioRequestWithRequestContext:*(a1 + 40) requestProperties:v6 storeBag:v3];
  v8 = [v7 requestProperties];
  v9 = [v8 mutableCopy];

  v10 = *(a1 + 32);
  v43 = 0;
  [v10 _configureRequestPropertiesForCaching:v9 returningCacheKey:&v43];
  v11 = v43;
  v12 = [objc_opt_class() defaultURLCache];
  v42 = 0;
  v13 = [v12 cachedConnectionResponseForRequestProperties:v9 cachedResponse:&v42];
  v36 = v42;

  if (v13)
  {
    if (([v13 ssv_isExpiredResponse] & 1) == 0)
    {
      v14 = [v36 userInfo];
      [v14 objectForKey:@"com.apple.Radio.RadioRecentStationsRequest.bodyMD5"];
      v35 = v9;
      v15 = v13;
      v16 = v4;
      v17 = v3;
      v18 = v7;
      v19 = v6;
      v21 = v20 = v11;
      v22 = [v21 isEqual:v20];

      v11 = v20;
      v6 = v19;
      v7 = v18;
      v3 = v17;
      v4 = v16;
      v13 = v15;
      v9 = v35;

      if (v22)
      {
        v23 = *(a1 + 32);
        v41 = 0;
        v24 = [v23 _recentStationsResponseWithConnectionResponse:v13 returningError:&v41];
        v25 = v41;
        if (!v25)
        {
          [*(a1 + 32) setCachedResponse:1];
          v32 = *(a1 + 48);
          if (v32)
          {
            (*(v32 + 16))(v32, v24, 0);
          }

          [MEMORY[0x277CCAB98] defaultCenter];
          v34 = v33 = v24;
          [v34 postNotificationName:@"RadioRequestDidFinishNotification" object:*(a1 + 32)];

          goto LABEL_8;
        }

        v26 = v25;
      }
    }
  }

  v27 = +[RadioNetworkObserver sharedNetworkObserver];
  [v27 beginUsingNetwork];

  objc_storeStrong((*(a1 + 32) + 72), v7);
  v28 = *(a1 + 32);
  v29 = *(v28 + 72);
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __57__RadioRecentStationsRequest_startWithCompletionHandler___block_invoke_4;
  v37[3] = &unk_279AEABB0;
  v37[4] = v28;
  v38 = v9;
  v39 = v11;
  v40 = *(a1 + 48);
  [v29 startWithConnectionResponseBlock:v37];

LABEL_8:
LABEL_10:
}

void __57__RadioRecentStationsRequest_startWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"RadioRequestErrorDomain" code:0 userInfo:0];
    (*(v2 + 16))(v2, 0, v3);
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"RadioRequestDidFinishNotification" object:*(a1 + 32)];
}

void __57__RadioRecentStationsRequest_startWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
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
    v40 = v8;
    _os_log_impl(&dword_261792000, v11, OS_LOG_TYPE_INFO, "[RadioRecentStationsRequest] Status code: %lli", buf, 0xCu);
  }

  if ((v8 - 300) <= 0xFFFFFFFFFFFFFF9BLL)
  {
    v12 = os_log_create("com.apple.amp.radio", "Requests");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v40 = v6;
      _os_log_impl(&dword_261792000, v12, OS_LOG_TYPE_ERROR, "Error: Unable to get recent stations (%@)", buf, 0xCu);
    }

    v13 = v6;
    if (!v6)
    {
      v14 = MEMORY[0x277CCA9B8];
      v15 = *MEMORY[0x277D6A110];
      v37 = *MEMORY[0x277D6A118];
      v16 = [MEMORY[0x277CCABB0] numberWithInteger:v8];
      v38 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      v13 = [v14 errorWithDomain:v15 code:109 userInfo:v17];
    }

    if (v8 <= 399)
    {
      v18 = 1;
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
          v18 = 2;
          goto LABEL_22;
        case 400:
LABEL_15:
          v18 = 4;
LABEL_22:
          [*(a1 + 32) setStatus:v18];
          v20 = 0;
          goto LABEL_23;
      }
    }

    v18 = 3;
    goto LABEL_22;
  }

  v19 = *(a1 + 32);
  v34 = v6;
  v20 = [v19 _recentStationsResponseWithConnectionResponse:v5 returningError:&v34];
  v13 = v34;

  if (v20)
  {
    v21 = [objc_opt_class() defaultURLCache];
    v23 = *(a1 + 40);
    v22 = *(a1 + 48);
    v35 = @"com.apple.Radio.RadioRecentStationsRequest.bodyMD5";
    v36 = v22;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    [v21 storeConnectionResponse:v5 forRequestProperties:v23 userInfo:v24];
  }

LABEL_23:
  v25 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__RadioRecentStationsRequest_startWithCompletionHandler___block_invoke_11;
  block[3] = &unk_279AEAB88;
  v26 = *(a1 + 56);
  v30 = v20;
  v31 = v13;
  v32 = *(a1 + 32);
  v33 = v26;
  v27 = v13;
  v28 = v20;
  dispatch_async(v25, block);
}

void __57__RadioRecentStationsRequest_startWithCompletionHandler___block_invoke_11(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], a1[5]);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 postNotificationName:@"RadioRequestDidFinishNotification" object:a1[6]];
}

- (void)getCachedRecentStationsResponseWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__RadioRecentStationsRequest_getCachedRecentStationsResponseWithCompletionHandler___block_invoke;
  v6[3] = &unk_279AEAB60;
  v6[4] = self;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [(RadioRequest *)self _loadRadioStoreBagWithCompletionHandler:v6];
}

void __83__RadioRecentStationsRequest_getCachedRecentStationsResponseWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 baseURL];
  if (v3)
  {
    v4 = [*(a1 + 32) _newRecentStationsURLRequestPropertiesWithBaseURL:v3];
    v5 = [objc_opt_class() defaultURLCache];
    v6 = [v5 cachedConnectionResponseForRequestProperties:v4];

    if (v6)
    {
      v8 = [*(a1 + 32) _recentStationsResponseWithConnectionResponse:v6 returningError:0];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8);
  }
}

- (RadioRecentStationsRequest)initWithCurrentStationStringID:(id)d
{
  dCopy = d;
  v5 = [(RadioRequest *)self init];
  if (v5)
  {
    v6 = [dCopy copy];
    currentStationStringID = v5->_currentStationStringID;
    v5->_currentStationStringID = v6;
  }

  return v5;
}

- (RadioRecentStationsRequest)initWithCurrentStation:(id)station
{
  stationCopy = station;
  v6 = [(RadioRequest *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentStation, station);
  }

  return v7;
}

@end