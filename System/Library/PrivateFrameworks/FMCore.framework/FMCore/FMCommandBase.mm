@interface FMCommandBase
- (BOOL)isTransactionCompleteWithError:(id)error;
- (BOOL)wasSuccessful;
- (FMCommandBase)init;
- (FMServerInteractionController)serverInteractionController;
- (id)authHeaders;
- (id)headers;
- (id)valueForResponseHTTPHeader:(id)header;
- (void)_dataTaskCompletionHandlerWithData:(id)data response:(id)response error:(id)error;
- (void)cancel;
- (void)sendRequest;
@end

@implementation FMCommandBase

- (FMCommandBase)init
{
  v13 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = FMCommandBase;
  v2 = [(FMCommandBase *)&v8 init];
  v3 = v2;
  if (v2)
  {
    [(FMCommandBase *)v2 setTimeout:120.0];
    v4 = LogCategory_Networking([(FMCommandBase *)v3 setCommandTaskComplete:0]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      *buf = 138412546;
      v10 = v5;
      v11 = 2048;
      v12 = v3;
      v6 = v5;
      _os_log_impl(&dword_24A2EE000, v4, OS_LOG_TYPE_INFO, "%@ created [%p]", buf, 0x16u);
    }
  }

  return v3;
}

- (void)cancel
{
  task = [(FMCommandBase *)self task];
  [task cancel];

  v4.receiver = self;
  v4.super_class = FMCommandBase;
  [(FMCommandBase *)&v4 cancel];
}

- (void)sendRequest
{
  v54 = *MEMORY[0x277D85DE8];
  headers = [(FMCommandBase *)self headers];
  serverInteractionController = [(FMCommandBase *)self serverInteractionController];
  session = [serverInteractionController session];
  if (session)
  {
    currentQueue = [MEMORY[0x277CCABD8] currentQueue];
    objc_initWeak(&location, currentQueue);

    [(FMCommandBase *)self timeout];
    when = dispatch_time(0, (v5 * 1000000000.0));
    objc_initWeak(&from, self);
    v6 = MEMORY[0x277CCAB68];
    scheme = [(FMCommandBase *)self scheme];
    host = [(FMCommandBase *)self host];
    v36 = [v6 stringWithFormat:@"%@://%@", scheme, host];

    port = [(FMCommandBase *)self port];
    LOBYTE(currentQueue) = port == 0;

    if ((currentQueue & 1) == 0)
    {
      port2 = [(FMCommandBase *)self port];
      [v36 appendFormat:@":%@", port2];
    }

    path = [(FMCommandBase *)self path];
    [v36 appendString:path];

    v35 = [MEMORY[0x277CBEBC0] URLWithString:v36];
    v12 = LogCategory_Networking(v35);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v52 = 2112;
      v53 = v35;
      _os_log_impl(&dword_24A2EE000, v12, OS_LOG_TYPE_INFO, "[%p] request_url: %@", buf, 0x16u);
    }

    v13 = objc_alloc(MEMORY[0x277CCAB70]);
    [(FMCommandBase *)self timeout];
    task2 = [v13 initWithURL:v35 cachePolicy:4 timeoutInterval:?];
    method = [(FMCommandBase *)self method];
    [task2 setHTTPMethod:method];

    v16 = [headers mutableCopy];
    v17 = [v16 objectForKeyedSubscript:@"Authorization"];

    if (v17)
    {
      v18 = [v16 setObject:@"REDACTED" forKeyedSubscript:@"Authorization"];
    }

    v19 = LogCategory_NetworkingVerbose(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      selfCopy2 = self;
      v52 = 2112;
      v53 = v16;
      _os_log_impl(&dword_24A2EE000, v19, OS_LOG_TYPE_INFO, "[%p] request_headers: %@", buf, 0x16u);
    }

    v46 = 0u;
    v44 = 0u;
    v45 = 0u;
    v43 = 0u;
    allKeys = [headers allKeys];
    v21 = [allKeys countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v21)
    {
      v22 = *v44;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v44 != v22)
          {
            objc_enumerationMutation(allKeys);
          }

          v24 = *(*(&v43 + 1) + 8 * i);
          v25 = [headers objectForKeyedSubscript:v24];
          [task2 addValue:v25 forHTTPHeaderField:v24];
        }

        v21 = [allKeys countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v21);
    }

    body = [(FMCommandBase *)self body];
    [task2 setHTTPBody:body];

    connection = [(FMCommandBase *)self connection];
    [connection cancel];

    [(FMCommandBase *)self setConnection:0];
    v28 = [task2 copy];
    [(FMCommandBase *)self setRequest:v28];

    [(FMCommandBase *)self setResponse:0];
    [(FMCommandBase *)self setResponseData:0];
    v29 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__FMCommandBase_sendRequest__block_invoke;
    block[3] = &unk_278FD9708;
    objc_copyWeak(&v41, &location);
    objc_copyWeak(&v42, &from);
    dispatch_after(when, v29, block);

    request = [(FMCommandBase *)self request];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __28__FMCommandBase_sendRequest__block_invoke_32;
    v39[3] = &unk_278FD9730;
    v39[4] = self;
    v31 = [session dataTaskWithRequest:request completionHandler:v39];
    [(FMCommandBase *)self setTask:v31];

    task = [(FMCommandBase *)self task];
    [task resume];

    objc_destroyWeak(&v42);
    objc_destroyWeak(&v41);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  else
  {
    v33 = LogCategory_Unspecified(0);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [(FMCommandBase *)v33 sendRequest];
    }

    task2 = [(FMCommandBase *)self task];
    [task2 cancel];
  }
}

void __28__FMCommandBase_sendRequest__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __28__FMCommandBase_sendRequest__block_invoke_2;
  v3[3] = &unk_278FD96E0;
  objc_copyWeak(&v4, (a1 + 40));
  [WeakRetained addOperationWithBlock:v3];
  objc_destroyWeak(&v4);
}

void __28__FMCommandBase_sendRequest__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = LogCategory_Networking(WeakRetained);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [v2 request];
      v5 = [v4 URL];
      [v2 timeout];
      v8 = 138412546;
      v9 = v5;
      v10 = 2048;
      v11 = v6;
      _os_log_impl(&dword_24A2EE000, v3, OS_LOG_TYPE_DEFAULT, "Transaction %@ timed out after %.1f s", &v8, 0x16u);
    }

    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1001 userInfo:0];
    [v2 setError:v7];

    [v2 cancel];
  }
}

- (void)_dataTaskCompletionHandlerWithData:(id)data response:(id)response error:(id)error
{
  errorCopy = error;
  responseCopy = response;
  dataCopy = data;
  task = [(FMCommandBase *)self task];
  state = [task state];

  if (state != 3)
  {
    v14 = LogCategory_Networking(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [FMCommandBase _dataTaskCompletionHandlerWithData:v14 response:? error:?];
    }
  }

  [(FMCommandBase *)self setCommandTaskComplete:1];
  v15 = [dataCopy copy];

  [(FMCommandBase *)self setResponseData:v15];
  [(FMCommandBase *)self setError:errorCopy];

  [(FMCommandBase *)self setResponse:responseCopy];
  error = [(FMCommandBase *)self error];
  v17 = [(FMCommandBase *)self isTransactionCompleteWithError:error];

  if (v17)
  {
    [(FMCommandBase *)self willChangeValueForKey:@"isFinished"];
    [(FMCommandBase *)self didChangeValueForKey:@"isFinished"];
  }
}

- (id)headers
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  authHeaders = [(FMCommandBase *)self authHeaders];
  [dictionary addEntriesFromDictionary:authHeaders];

  return dictionary;
}

- (BOOL)wasSuccessful
{
  response = [(FMCommandBase *)self response];
  statusCode = [response statusCode];

  return (statusCode - 200) < 0x64;
}

- (id)valueForResponseHTTPHeader:(id)header
{
  headerCopy = header;
  response = [(FMCommandBase *)self response];
  allHeaderFields = [response allHeaderFields];
  v7 = [allHeaderFields valueForKey:headerCopy];

  return v7;
}

- (BOOL)isTransactionCompleteWithError:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  response = [(FMCommandBase *)self response];

  if (!response)
  {
    goto LABEL_11;
  }

  response2 = [(FMCommandBase *)self response];
  allHeaderFields = [response2 allHeaderFields];

  response3 = [(FMCommandBase *)self response];
  statusCode = [response3 statusCode];

  v11 = LogCategory_Networking(v10);
  v12 = v11;
  if (statusCode < 400)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      response4 = [(FMCommandBase *)self response];
      *buf = 134218240;
      selfCopy3 = self;
      v39 = 2048;
      statusCode2 = [response4 statusCode];
      v14 = v12;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_7;
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    response4 = [(FMCommandBase *)self response];
    *buf = 134218240;
    selfCopy3 = self;
    v39 = 2048;
    statusCode2 = [response4 statusCode];
    v14 = v12;
    v15 = OS_LOG_TYPE_DEFAULT;
LABEL_7:
    _os_log_impl(&dword_24A2EE000, v14, v15, "[%p] response_http_status : %ld", buf, 0x16u);
  }

  v17 = LogCategory_NetworkingVerbose(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    selfCopy3 = self;
    v39 = 2112;
    statusCode2 = allHeaderFields;
    _os_log_impl(&dword_24A2EE000, v17, OS_LOG_TYPE_INFO, "[%p] response_headers: %@", buf, 0x16u);
  }

LABEL_11:
  if (!error)
  {
    response5 = [(FMCommandBase *)self response];
    statusCode3 = [response5 statusCode];

    if (statusCode3 == 330)
    {
      request = [(FMCommandBase *)self request];
      v21 = [request URL];

      host = [v21 host];
      v23 = [(FMCommandBase *)self valueForResponseHTTPHeader:@"X-Apple-Mme-Host"];
      v24 = [host length];
      if (v24 && (v24 = [v23 length]) != 0)
      {
        if ([(FMCommandBase *)self redirectCount]<= 4)
        {
          [(FMCommandBase *)self setRedirectCount:[(FMCommandBase *)self redirectCount]+ 1];
          if (!self->_originalHostname)
          {
            v29 = [host copy];
            originalHostname = self->_originalHostname;
            self->_originalHostname = v29;
          }

          v31 = [v23 copy];
          redirectedHostname = self->_redirectedHostname;
          self->_redirectedHostname = v31;

          [(FMCommandBase *)self setHost:v23];
          v35[0] = @"originalHostname";
          v35[1] = @"redirectedHostname";
          v36[0] = host;
          v36[1] = v23;
          v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:FMCommandRedirectedNotification object:self userInfo:v33];

          [(FMCommandBase *)self sendRequest];
          v26 = 0;
          goto LABEL_23;
        }

        v25 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA738] code:-1007 userInfo:0];
        [(FMCommandBase *)self setError:v25];

        [(FMCommandBase *)self cancel];
      }

      else
      {
        v28 = LogCategory_ServerError(v24);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [FMCommandBase isTransactionCompleteWithError:v28];
        }
      }

      v26 = 1;
LABEL_23:

      return v26;
    }
  }

  return 1;
}

- (id)authHeaders
{
  v16[1] = *MEMORY[0x277D85DE8];
  username = [(FMCommandBase *)self username];
  if ([username length])
  {
    password = [(FMCommandBase *)self password];
    v5 = [password length];

    if (v5)
    {
      v6 = MEMORY[0x277CCACA8];
      username2 = [(FMCommandBase *)self username];
      password2 = [(FMCommandBase *)self password];
      v9 = [v6 stringWithFormat:@"%@:%@", username2, password2];
      v10 = [v9 dataUsingEncoding:1];

      v11 = [v10 base64EncodedStringWithOptions:0];
      v15 = @"Authorization";
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Basic %@", v11];
      v16[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v11 = 0;
  v13 = 0;
LABEL_6:

  return v13;
}

- (FMServerInteractionController)serverInteractionController
{
  WeakRetained = objc_loadWeakRetained(&self->_serverInteractionController);

  return WeakRetained;
}

- (void)_dataTaskCompletionHandlerWithData:(void *)a1 response:(NSObject *)a2 error:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 task];
  v4 = 134217984;
  v5 = [v3 state];
  _os_log_error_impl(&dword_24A2EE000, a2, OS_LOG_TYPE_ERROR, "BUG in NSURLSessionDataTask: self.task.state is %ld in completion handler <rdar://problem/16847465", &v4, 0xCu);
}

@end