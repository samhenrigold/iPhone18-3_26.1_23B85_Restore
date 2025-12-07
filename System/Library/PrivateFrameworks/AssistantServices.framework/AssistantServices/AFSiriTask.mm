@interface AFSiriTask
+ (void)initialize;
- (AFSiriTask)initWithBSXPCCoder:(id)coder;
- (AFSiriTask)initWithCoder:(id)coder;
- (NSString)description;
- (id)_initWithRequest:(id)request remoteResponseListenerEndpoint:(id)endpoint usageResultListenerEndpoint:(id)listenerEndpoint;
- (id)_responseHandlerConnection;
- (id)_usageResultHandlerConnection;
- (void)_invalidateConnectionAfterMessageSent:(id)sent;
- (void)completeWithResponse:(id)response;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)failWithError:(id)error;
- (void)reportUsageResult:(id)result;
@end

@implementation AFSiriTask

- (AFSiriTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Request"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemoteResponseListenerEndpoint"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RemoteUsageResultListenerEndpoint"];

  v8 = [(AFSiriTask *)self _initWithRequest:v5 remoteResponseListenerEndpoint:v6 usageResultListenerEndpoint:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  request = self->_request;
  coderCopy = coder;
  [coderCopy encodeObject:request forKey:@"Request"];
  [coderCopy encodeObject:self->_remoteResponseListenerEndpoint forKey:@"RemoteResponseListenerEndpoint"];
  [coderCopy encodeObject:self->_usageResultListenerEndpoint forKey:@"RemoteUsageResultListenerEndpoint"];
}

- (AFSiriTask)initWithBSXPCCoder:(id)coder
{
  v26 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Request"];
  if (!v5)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315138;
      *&v25[4] = "[AFSiriTask initWithBSXPCCoder:]";
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s the encoded request failed to decode", v25, 0xCu);
    }
  }

  v7 = MEMORY[0x1E69E9E90];
  v8 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:@"RemoteResponseListenerEndpoint"];
  v9 = v8;
  if (!v8)
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315394;
      *&v25[4] = "[AFSiriTask initWithBSXPCCoder:]";
      *&v25[12] = 2114;
      *&v25[14] = 0;
      v11 = "%s no encoded response endpoint: %{public}@";
      goto LABEL_20;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_11;
  }

  if (MEMORY[0x193AFBC20](v8) != v7)
  {
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315394;
      *&v25[4] = "[AFSiriTask initWithBSXPCCoder:]";
      *&v25[12] = 2114;
      *&v25[14] = v9;
      v11 = "%s the encoded response endpoint is in an unexpected format: %{public}@";
LABEL_20:
      _os_log_error_impl(&dword_1912FE000, v10, OS_LOG_TYPE_ERROR, v11, v25, 0x16u);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v13 = MEMORY[0x1E696B0E0];
  v14 = v9;
  v12 = objc_alloc_init(v13);
  [v12 _setEndpoint:v14];

LABEL_11:
  v15 = MEMORY[0x1E69E9E90];
  v16 = [coderCopy decodeXPCObjectOfType:MEMORY[0x1E69E9E90] forKey:{@"RemoteUsageResultListenerEndpoint", *v25, *&v25[8], v26}];
  v17 = v16;
  if (v16)
  {
    if (MEMORY[0x193AFBC20](v16) == v15)
    {
      v21 = MEMORY[0x1E696B0E0];
      v22 = v17;
      v20 = objc_alloc_init(v21);
      [v20 _setEndpoint:v22];

      goto LABEL_18;
    }

    v18 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315394;
      *&v25[4] = "[AFSiriTask initWithBSXPCCoder:]";
      *&v25[12] = 2114;
      *&v25[14] = v17;
      v19 = "%s the encoded usage results endpoint is in an unexpected format: %{public}@";
LABEL_22:
      _os_log_error_impl(&dword_1912FE000, v18, OS_LOG_TYPE_ERROR, v19, v25, 0x16u);
    }
  }

  else
  {
    v18 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v25 = 136315394;
      *&v25[4] = "[AFSiriTask initWithBSXPCCoder:]";
      *&v25[12] = 2114;
      *&v25[14] = 0;
      v19 = "%s no encoded usage results endpoint: %{public}@";
      goto LABEL_22;
    }
  }

  v20 = 0;
LABEL_18:
  v23 = [(AFSiriTask *)self _initWithRequest:v5 remoteResponseListenerEndpoint:v12 usageResultListenerEndpoint:v20, *v25, *&v25[8]];

  return v23;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  request = self->_request;
  v11 = coderCopy;
  if (request)
  {
    [coderCopy encodeObject:request forKey:@"Request"];
  }

  remoteResponseListenerEndpoint = self->_remoteResponseListenerEndpoint;
  if (remoteResponseListenerEndpoint)
  {
    _endpoint = [(NSXPCListenerEndpoint *)remoteResponseListenerEndpoint _endpoint];
    [v11 encodeXPCObject:_endpoint forKey:@"RemoteResponseListenerEndpoint"];
  }

  usageResultListenerEndpoint = self->_usageResultListenerEndpoint;
  v9 = v11;
  if (usageResultListenerEndpoint)
  {
    _endpoint2 = [(NSXPCListenerEndpoint *)usageResultListenerEndpoint _endpoint];
    [v11 encodeXPCObject:_endpoint2 forKey:@"RemoteUsageResultListenerEndpoint"];

    v9 = v11;
  }
}

- (void)reportUsageResult:(id)result
{
  v15 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[AFSiriTask reportUsageResult:]";
    v13 = 2112;
    v14 = resultCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  _usageResultHandlerConnection = [(AFSiriTask *)self _usageResultHandlerConnection];
  objc_initWeak(buf, self);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __32__AFSiriTask_reportUsageResult___block_invoke;
  v9[3] = &unk_1E7349738;
  objc_copyWeak(&v10, buf);
  v7 = [_usageResultHandlerConnection remoteObjectProxyWithErrorHandler:v9];
  [v7 handleSiriTaskUsageResult:resultCopy fromRequest:self->_request];
  [(AFSiriTask *)self _invalidateConnectionAfterMessageSent:_usageResultHandlerConnection];
  usageResultListenerEndpoint = self->_usageResultListenerEndpoint;
  self->_usageResultListenerEndpoint = 0;

  objc_destroyWeak(&v10);
  objc_destroyWeak(buf);
}

void __32__AFSiriTask_reportUsageResult___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 136315650;
    v8 = "[AFSiriTask reportUsageResult:]_block_invoke";
    v9 = 2112;
    v10 = WeakRetained;
    v11 = 2114;
    v12 = v3;
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Task %@ unable to communicate usage results to handler: %{public}@", &v7, 0x20u);
  }
}

- (id)_usageResultHandlerConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_usageResultListenerEndpoint];
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F059A298];
  [v2 setRemoteObjectInterface:v3];

  [v2 resume];

  return v2;
}

- (void)completeWithResponse:(id)response
{
  v16 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  v5 = mach_absolute_time();
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[AFSiriTask completeWithResponse:]";
    v14 = 2112;
    v15 = responseCopy;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s %@", buf, 0x16u);
  }

  _responseHandlerConnection = [(AFSiriTask *)self _responseHandlerConnection];
  objc_initWeak(buf, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__AFSiriTask_completeWithResponse___block_invoke;
  v10[3] = &unk_1E7349738;
  objc_copyWeak(&v11, buf);
  v8 = [_responseHandlerConnection remoteObjectProxyWithErrorHandler:v10];
  [v8 handleSiriResponse:responseCopy atTime:v5];
  [(AFSiriTask *)self _invalidateConnectionAfterMessageSent:_responseHandlerConnection];
  remoteResponseListenerEndpoint = self->_remoteResponseListenerEndpoint;
  self->_remoteResponseListenerEndpoint = 0;

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);
}

void __35__AFSiriTask_completeWithResponse___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = 136315650;
    v8 = "[AFSiriTask completeWithResponse:]_block_invoke";
    v9 = 2112;
    v10 = WeakRetained;
    v11 = 2114;
    v12 = v3;
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Task %@ completed, but was unable to communicate that to the response handler: %{public}@", &v7, 0x20u);
  }
}

- (void)failWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = mach_absolute_time();
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *location = 136315394;
    *&location[4] = "[AFSiriTask failWithError:]";
    v18 = 2114;
    v19 = errorCopy;
    _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s %{public}@", location, 0x16u);
  }

  _responseHandlerConnection = [(AFSiriTask *)self _responseHandlerConnection];
  objc_initWeak(location, self);
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __28__AFSiriTask_failWithError___block_invoke;
  v14 = &unk_1E7349710;
  objc_copyWeak(&v16, location);
  v8 = errorCopy;
  v15 = v8;
  v9 = [_responseHandlerConnection remoteObjectProxyWithErrorHandler:&v11];
  [v9 handleFailureOfRequest:self->_request error:v8 atTime:{v5, v11, v12, v13, v14}];
  [(AFSiriTask *)self _invalidateConnectionAfterMessageSent:_responseHandlerConnection];
  remoteResponseListenerEndpoint = self->_remoteResponseListenerEndpoint;
  self->_remoteResponseListenerEndpoint = 0;

  objc_destroyWeak(&v16);
  objc_destroyWeak(location);
}

void __28__AFSiriTask_failWithError___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v7 = *(a1 + 32);
    v8 = 136315906;
    v9 = "[AFSiriTask failWithError:]_block_invoke";
    v10 = 2112;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = v7;
    v14 = 2114;
    v15 = v3;
    _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Task %@ failed with error %{public}@, but was unable to communicate that to the response handler: %{public}@", &v8, 0x2Au);
  }
}

- (void)_invalidateConnectionAfterMessageSent:(id)sent
{
  sentCopy = sent;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __52__AFSiriTask__invalidateConnectionAfterMessageSent___block_invoke;
  v5[3] = &unk_1E73497C8;
  v6 = sentCopy;
  v4 = sentCopy;
  [v4 addBarrierBlock:v5];
}

- (id)_responseHandlerConnection
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_remoteResponseListenerEndpoint];
  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F0578F48];
  [v3 setRemoteObjectInterface:v4];

  [v3 resume];
  if (!v3)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      remoteResponseListenerEndpoint = self->_remoteResponseListenerEndpoint;
      v8 = 136315394;
      v9 = "[AFSiriTask _responseHandlerConnection]";
      v10 = 2112;
      v11 = remoteResponseListenerEndpoint;
      _os_log_error_impl(&dword_1912FE000, v5, OS_LOG_TYPE_ERROR, "%s Fatal error sending response - couldn't make XPC connection from endpoint: %@", &v8, 0x16u);
    }
  }

  return v3;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"<"];
  v4 = [objc_opt_class() description];
  [v3 appendString:v4];

  [v3 appendFormat:@": %p;", self];
  [v3 appendString:@" request="];
  v5 = [(AFSiriRequest *)self->_request description];
  [v3 appendString:v5];

  [v3 appendString:@">"];

  return v3;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[AFSiriTask dealloc]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s <AFSiriTask %p>", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = AFSiriTask;
  [(AFSiriTask *)&v4 dealloc];
}

- (id)_initWithRequest:(id)request remoteResponseListenerEndpoint:(id)endpoint usageResultListenerEndpoint:(id)listenerEndpoint
{
  v21 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  endpointCopy = endpoint;
  listenerEndpointCopy = listenerEndpoint;
  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[AFSiriTask _initWithRequest:remoteResponseListenerEndpoint:usageResultListenerEndpoint:]";
    v19 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s <AFSiriTask %p>", buf, 0x16u);
  }

  v16.receiver = self;
  v16.super_class = AFSiriTask;
  v13 = [(AFSiriTask *)&v16 init];
  p_isa = &v13->super.isa;
  if (v13)
  {
    objc_storeStrong(&v13->_request, request);
    objc_storeStrong(p_isa + 2, endpoint);
    objc_storeStrong(p_isa + 3, listenerEndpoint);
  }

  return p_isa;
}

+ (void)initialize
{
  if (AFLogInitIfNeeded_once != -1)
  {
    dispatch_once(&AFLogInitIfNeeded_once, &__block_literal_global_2942);
  }
}

@end