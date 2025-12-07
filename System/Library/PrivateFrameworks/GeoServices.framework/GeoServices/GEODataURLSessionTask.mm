@interface GEODataURLSessionTask
- (BOOL)failedDueToCancel;
- (GEOClientMetrics)clientMetrics;
- (GEODataURLSessionTaskDelegate)delegate;
- (GEORequestCounterTicket)requestCounterTicket;
- (NSError)error;
- (NSHTTPURLResponse)response;
- (NSString)entityTag;
- (NSURL)originalRequestURL;
- (id)createURLRequest;
- (id)description;
- (int64_t)HTTPStatusCode;
- (unint64_t)outgoingPayloadSize;
- (unint64_t)receivedDataLength;
- (void)_start;
- (void)cancel;
- (void)start;
@end

@implementation GEODataURLSessionTask

- (void)start
{
  GEOMachAbsoluteTimeGetCurrent();
  v4 = v3;
  v5 = qos_class_self();
  v6 = voucher_copy();
  voucher = self->_voucher;
  self->_voucher = v6;

  sessionIsolation = self->_sessionIsolation;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__GEODataURLSessionTask_start__block_invoke;
  block[3] = &unk_1E7058178;
  block[4] = self;
  block[5] = v4;
  v11 = v5;
  v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  dispatch_async(sessionIsolation, v9);
}

- (id)createURLRequest
{
  request = [(GEODataURLSessionTask *)self request];
  newURLRequest = [request newURLRequest];

  return newURLRequest;
}

void __30__GEODataURLSessionTask_start__block_invoke(uint64_t a1)
{
  v6.opaque[0] = 0;
  v6.opaque[1] = 0;
  os_activity_scope_enter(*(*(a1 + 32) + 120), &v6);
  *(*(a1 + 32) + 72) = *(a1 + 40);
  v2 = *(a1 + 32);
  if (!*(v2 + 128))
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = *(a1 + 32);
    v5 = *(v4 + 128);
    *(v4 + 128) = v3;

    v2 = *(a1 + 32);
  }

  *(v2 + 112) = *(a1 + 48);
  [*(a1 + 32) _start];
  os_activity_scope_leave(&v6);
}

- (void)_start
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = self->_voucher;
  voucher_adopt();
  v4 = GEOGetDataSessionURLLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);

  if (v5)
  {
    request = [(GEODataURLSessionTask *)self request];
    additionalHTTPHeaders = [request additionalHTTPHeaders];
    v8 = [additionalHTTPHeaders mutableCopy];

    [v8 removeObjectForKey:@"Maps-Auth-Token"];
    [v8 removeObjectForKey:@"Proxy-Authorization"];
    [v8 removeObjectForKey:@"X-Env-Sec-Mat"];
  }

  else
  {
    v8 = 0;
  }

  backingTask = self->_backingTask;
  v10 = [v8 count];
  v11 = GEOGetDataSessionURLLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (!backingTask)
  {
    if (v10)
    {
      if (v12)
      {
        v23 = 138412547;
        selfCopy4 = self;
        v25 = 2113;
        v26 = v8;
        v16 = "Will resume task upon creation %@ %{private}@";
        v17 = v11;
        v18 = 22;
LABEL_17:
        _os_log_impl(&dword_18660C000, v17, OS_LOG_TYPE_INFO, v16, &v23, v18);
      }
    }

    else if (v12)
    {
      v23 = 138412290;
      selfCopy4 = self;
      v16 = "Will resume task upon creation %@";
      v17 = v11;
      v18 = 12;
      goto LABEL_17;
    }

    self->_backingTaskNeedsResume = 1;
    goto LABEL_19;
  }

  if (v10)
  {
    if (v12)
    {
      v23 = 138412547;
      selfCopy4 = self;
      v25 = 2113;
      v26 = v8;
      v13 = "Starting task %@ %{private}@";
      v14 = v11;
      v15 = 22;
LABEL_13:
      _os_log_impl(&dword_18660C000, v14, OS_LOG_TYPE_INFO, v13, &v23, v15);
    }
  }

  else if (v12)
  {
    v23 = 138412290;
    selfCopy4 = self;
    v13 = "Starting task %@";
    v14 = v11;
    v15 = 12;
    goto LABEL_13;
  }

  request2 = [(GEODataURLSessionTask *)self request];
  requestCounterTicket = [request2 requestCounterTicket];
  [requestCounterTicket startingRequestWithTask:self->_backingTask];

  [(NSURLSessionTask *)self->_backingTask resume];
LABEL_19:
  v21 = voucher_adopt();
  voucher = self->_voucher;
  self->_voucher = v21;
}

- (GEODataURLSessionTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (NSError)error
{
  error = [(NSURLSessionTask *)self->_backingTask error];
  nonBackingTaskError = error;
  if (!error)
  {
    nonBackingTaskError = self->_nonBackingTaskError;
  }

  v5 = nonBackingTaskError;

  return nonBackingTaskError;
}

- (BOOL)failedDueToCancel
{
  error = [(GEODataURLSessionTask *)self error];
  v3 = error;
  if (error)
  {
    domain = [error domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A978]])
    {
      v5 = [v3 code] == -999;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSHTTPURLResponse)response
{
  response = [(NSURLSessionTask *)self->_backingTask response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = response;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (unint64_t)receivedDataLength
{
  receivedData = self->_receivedData;
  if (receivedData)
  {

    return [(NSMutableData *)receivedData length];
  }

  else if (self->_downloadedFileURL)
  {
    result = self->_cachedDownloadFileSize;
    if (!result)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [(NSURL *)self->_downloadedFileURL path];
      v7 = [defaultManager attributesOfItemAtPath:path error:0];
      self->_cachedDownloadFileSize = [v7 fileSize];

      return self->_cachedDownloadFileSize;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

- (unint64_t)outgoingPayloadSize
{
  originalRequest = [(NSURLSessionTask *)self->_backingTask originalRequest];
  hTTPBody = [originalRequest HTTPBody];
  v4 = [hTTPBody length];

  return v4;
}

- (GEOClientMetrics)clientMetrics
{
  v34 = *MEMORY[0x1E69E9840];
  _geo_clientMetrics = [(NSURLSessionTaskMetrics *)self->_urlTaskMetrics _geo_clientMetrics];
  v4 = _geo_clientMetrics;
  if (_geo_clientMetrics)
  {
    v5 = _geo_clientMetrics;
  }

  else
  {
    v5 = objc_alloc_init(GEOClientMetrics);
  }

  v6 = v5;

  [(NSDate *)self->_originalStartDate timeIntervalSince1970];
  v8 = v7;
  networkMetrics = [(GEOClientMetrics *)v6 networkMetrics];
  [networkMetrics setRequestStart:v8];

  v10 = 1;
  if (![(GEODataURLSessionTask *)self failedDueToCancel])
  {
    error = [(GEODataURLSessionTask *)self error];

    if (error)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }
  }

  [(GEOClientMetrics *)v6 setResponseSource:v10];
  countOfBytesSent = [(NSURLSessionTask *)self->_backingTask countOfBytesSent];
  networkMetrics2 = [(GEOClientMetrics *)v6 networkMetrics];
  [networkMetrics2 setRequestDataSize:countOfBytesSent];

  _countOfBytesReceivedEncoded = [(NSURLSessionTask *)self->_backingTask _countOfBytesReceivedEncoded];
  networkMetrics3 = [(GEOClientMetrics *)v6 networkMetrics];
  [networkMetrics3 setResponseDataSize:_countOfBytesReceivedEncoded];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  networkMetrics4 = [(GEOClientMetrics *)v6 networkMetrics];
  transactionMetrics = [networkMetrics4 transactionMetrics];

  v18 = [transactionMetrics countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v30;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(transactionMetrics);
        }

        v22 = *(*(&v29 + 1) + 8 * i);
        request = [(GEODataURLSessionTask *)self request];
        v24 = [request multipathServiceType] - 1;
        if (v24 < 3)
        {
          v25 = (v24 + 1);
        }

        else
        {
          v25 = 0;
        }

        [v22 setMultipathServiceType:v25];
      }

      v19 = [transactionMetrics countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v19);
  }

  receivedRNFNotification = [(GEODataURLSessionTask *)self receivedRNFNotification];
  networkMetrics5 = [(GEOClientMetrics *)v6 networkMetrics];
  [networkMetrics5 setRnfTriggered:receivedRNFNotification];

  return v6;
}

- (int64_t)HTTPStatusCode
{
  response = [(GEODataURLSessionTask *)self response];
  statusCode = [response statusCode];

  return statusCode;
}

- (NSString)entityTag
{
  response = [(GEODataURLSessionTask *)self response];
  allHeaderFields = [response allHeaderFields];
  v4 = [allHeaderFields objectForKeyedSubscript:@"ETag"];

  return v4;
}

void __31__GEODataURLSessionTask_cancel__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 109) & 1) == 0)
  {
    v5.opaque[0] = 0;
    v5.opaque[1] = 0;
    os_activity_scope_enter(*(v1 + 120), &v5);
    *(*(a1 + 32) + 109) = 1;
    v3 = GEOGetDataSessionURLLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 32);
      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_DEBUG, "Cancelled task %@", buf, 0xCu);
    }

    [*(*(a1 + 32) + 32) cancel];
    os_activity_scope_leave(&v5);
  }
}

- (GEORequestCounterTicket)requestCounterTicket
{
  request = [(GEODataURLSessionTask *)self request];
  requestCounterTicket = [request requestCounterTicket];

  return requestCounterTicket;
}

- (NSURL)originalRequestURL
{
  originalURLRequest = [(GEODataURLSessionTask *)self originalURLRequest];
  v3 = [originalURLRequest URL];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  originalRequestURL = [(GEODataURLSessionTask *)self originalRequestURL];
  backingTask = [(GEODataURLSessionTask *)self backingTask];
  requestCounterTicket = [(GEODataURLSessionTask *)self requestCounterTicket];
  v7 = [v3 stringWithFormat:@"<DUT %p URL: %@ Backing: %@ ticket: %@>", self, originalRequestURL, backingTask, requestCounterTicket];

  return v7;
}

- (void)cancel
{
  sessionIsolation = self->_sessionIsolation;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__GEODataURLSessionTask_cancel__block_invoke;
  block[3] = &unk_1E7071900;
  block[4] = self;
  dispatch_async(sessionIsolation, block);
}

@end