@interface GEONetworkServiceRequesterOperation
- (id)_fullURL;
- (void)_cleanup;
- (void)_recordNetworkEventDataForTask;
- (void)dealloc;
- (void)start;
@end

@implementation GEONetworkServiceRequesterOperation

- (void)start
{
  v3 = +[GEORequestCounter sharedCounter];
  v4 = [v3 requestCounterTicketForType:-[GEOServiceRequestConfiguring dataRequestKindForRequest:traits:](self->_config auditToken:"dataRequestKindForRequest:traits:" traits:{self->_request, self->_traits), self->_auditToken, self->_traits}];

  v5 = +[GEOProtobufSession sharedDelegateQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__GEONetworkServiceRequesterOperation_start__block_invoke;
  v7[3] = &unk_1E70614F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  GEOWaitForURLsFromManifestAndThenOnQueue(v5, v7);
}

- (id)_fullURL
{
  url = self->_url;
  if (url)
  {
    v3 = url;
  }

  else
  {
    v5 = GEOGetURLWithSource([(GEOServiceRequestConfiguring *)self->_config urlType], 0);
    if (v5)
    {
      v6 = [MEMORY[0x1E696AF20] componentsWithURL:v5 resolvingAgainstBaseURL:1];
      additionalURLQueryItems = [(GEOServiceRequestConfiguring *)self->_config additionalURLQueryItems];
      if ([additionalURLQueryItems count])
      {
        v8 = [additionalURLQueryItems mutableCopy];
        queryItems = [v6 queryItems];
        v10 = [queryItems count];

        if (v10)
        {
          queryItems2 = [v6 queryItems];
          [v8 addObjectsFromArray:queryItems2];
        }

        [v6 setQueryItems:v8];
      }

      v12 = [(GEOServiceRequestConfiguring *)self->_config dataRequestKindForRequest:self->_request traits:self->_traits];
      v13 = +[GEOExperimentConfiguration sharedConfiguration];
      [v13 updateURLComponents:v6 forRequestKind:v12];

      v14 = [v6 URL];
      v15 = self->_url;
      self->_url = v14;

      v3 = self->_url;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void __44__GEONetworkServiceRequesterOperation_start__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[16] == 1)
  {
    v3 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-2];
    v2 = *(a1 + 32);
  }

  else
  {
    v3 = 0;
  }

  v31 = [v2 _fullURL];
  if (v31)
  {
    if (v3)
    {
LABEL_6:
      [*(a1 + 40) requestCompleted:v3];
      v4 = *(a1 + 32);
      v5 = v4[7];
      if (v5)
      {
        (*(v5 + 16))(v4[7], 0, v3);
        v4 = *(a1 + 32);
      }

      [v4 _cleanup];
      goto LABEL_27;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-4];

    v3 = v6;
    if (v6)
    {
      goto LABEL_6;
    }
  }

  v7 = GEOURLNeedsAuthForURLType([*(*(a1 + 32) + 72) urlType]);
  if (GEOURLSupportsMPTCP([*(*(a1 + 32) + 72) urlType]) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v30 = [*(*(a1 + 32) + 72) multipathServiceType];
  }

  else
  {
    v30 = 0;
  }

  v8 = (a1 + 32);
  if (v7)
  {
    v9 = *(*(a1 + 32) + 128) | 8;
  }

  else
  {
    v9 = *(*(a1 + 32) + 128);
  }

  v10 = [GEODataRequest alloc];
  v11 = *v8;
  v12 = *(*v8 + 24);
  v13 = [*(*v8 + 72) additionalHTTPHeaders];
  v14 = -[GEODataRequest initWithKind:protobufRequest:URL:additionalHTTPHeaders:auditToken:timeoutInterval:traits:requestCounterTicket:multipathServiceType:multipathAlternatePort:throttleToken:options:](v10, "initWithKind:protobufRequest:URL:additionalHTTPHeaders:auditToken:timeoutInterval:traits:requestCounterTicket:multipathServiceType:multipathAlternatePort:throttleToken:options:", *(v11 + 96), v12, v31, v13, *(*v8 + 88), *(*v8 + 104), *(*v8 + 112), *(a1 + 40), v30, GEOURLMultipathAlternatePort([*(*v8 + 72) urlType]), *(*v8 + 120), v9);

  v15 = +[GEOProtobufSession sharedProtobufSession];
  v16 = +[GEOProtobufSession sharedDelegateQueue];
  v17 = [v15 taskWithRequest:v14 requestTypeCode:objc_msgSend(*(*v8 + 24) responseClass:"requestTypeCode") delegate:objc_msgSend(*(*v8 + 24) delegateQueue:{"responseClass"), *v8, v16}];
  v18 = *(a1 + 32);
  v19 = *(v18 + 8);
  *(v18 + 8) = v17;

  if ([*(*(a1 + 32) + 32) length])
  {
    v20 = GEOFindOrCreateLog("com.apple.Maps.RequestResponse", [*(*(a1 + 32) + 32) UTF8String]);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = *(*(a1 + 32) + 8);
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = [(GEODataRequest *)v14 publicLogDescription];
      *buf = 138412802;
      v33 = v21;
      v34 = 2114;
      v35 = v23;
      v36 = 2114;
      v37 = v24;
      _os_log_impl(&dword_18660C000, v20, OS_LOG_TYPE_INFO, "Request with task %@, RequestType: %{public}@, dataRequest: %{public}@", buf, 0x20u);
    }

    v25 = *(*(a1 + 32) + 8);
    v26 = [(GEODataRequest *)v14 URL];
    _GEORequestResponseLogRequest(v20, v25, v26, *(*(a1 + 32) + 24));
  }

  v27 = *(*(a1 + 32) + 8);
  if (v27)
  {
    [v27 start];
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-13];
    [*(a1 + 40) requestCompleted:v3];
    v28 = *(a1 + 32);
    v29 = v28[7];
    if (v29)
    {
      (*(v29 + 16))(v28[7], 0, v3);
      v28 = *(a1 + 32);
    }

    [v28 _cleanup];
  }

LABEL_27:
}

- (void)dealloc
{
  [(GEONetworkServiceRequesterOperation *)self _cleanup];
  v3.receiver = self;
  v3.super_class = GEONetworkServiceRequesterOperation;
  [(GEONetworkServiceRequesterOperation *)&v3 dealloc];
}

- (void)_recordNetworkEventDataForTask
{
  serviceTypeNumber = [(GEOServiceRequestConfiguring *)self->_config serviceTypeNumber];

  if (serviceTypeNumber)
  {
    if (objc_opt_respondsToSelector())
    {
      additionalStatesForNetworkEvent = [(GEOServiceRequestConfiguring *)self->_config additionalStatesForNetworkEvent];
    }

    else
    {
      additionalStatesForNetworkEvent = 0;
    }

    if (objc_opt_respondsToSelector())
    {
      v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[GEOServiceRequestConfiguring usesBackgroundURL](self->_config, "usesBackgroundURL")}];
    }

    else
    {
      v4 = 0;
    }

    v5 = [(GEOServiceRequestConfiguring *)self->_config dataRequestKindForRequest:self->_request traits:self->_traits];
    if (objc_opt_respondsToSelector())
    {
      v6 = [(GEOServiceRequestConfiguring *)self->_config analyticNetworkServiceTypeForRequest:self->_request traits:self->_traits];
      appIdentifier = self->_appIdentifier;
      appMajorVersion = [(GEOMapServiceTraits *)self->_traits appMajorVersion];
      appMinorVersion = [(GEOMapServiceTraits *)self->_traits appMinorVersion];
      error = [(GEOProtobufSessionTask *)self->_task error];
      clientMetrics = [(GEOProtobufSessionTask *)self->_task clientMetrics];
      [GEONetworkEventDataRecorder recordNetworkEventDataForDataRequestKind:v5 networkService:v6 usedBackgroundURL:v4 requestAppIdentifier:appIdentifier appMajorVersion:appMajorVersion appMinorVersion:appMinorVersion error:error clientMetrics:clientMetrics additionalStates:additionalStatesForNetworkEvent];
    }

    else
    {
      v12 = self->_appIdentifier;
      appMajorVersion = [(GEOMapServiceTraits *)self->_traits appMajorVersion];
      appMinorVersion = [(GEOMapServiceTraits *)self->_traits appMinorVersion];
      error = [(GEOProtobufSessionTask *)self->_task error];
      clientMetrics = [(GEOProtobufSessionTask *)self->_task clientMetrics];
      [GEONetworkEventDataRecorder recordNetworkEventDataForDataRequestKind:v5 usedBackgroundURL:v4 requestAppIdentifier:v12 appMajorVersion:appMajorVersion appMinorVersion:appMinorVersion error:error clientMetrics:clientMetrics additionalStates:additionalStatesForNetworkEvent];
    }
  }
}

- (void)_cleanup
{
  [(GEOProtobufSessionTask *)self->_task cancel];
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  task = self->_task;
  self->_task = 0;
}

@end