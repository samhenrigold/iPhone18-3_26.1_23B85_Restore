@interface GEOProtobufSessionTask
- (GEOClientMetrics)clientMetrics;
- (NSString)description;
- (void)cancel;
- (void)start;
@end

@implementation GEOProtobufSessionTask

- (void)start
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = GEOGetDataSessionProtobufLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    selfCopy = self;
    v26 = 1040;
    v27 = 8;
    v28 = 2096;
    p_requestKind = &self->_requestKind;
    v30 = 1024;
    requestTypeCode = [(GEOProtobufSessionTask *)self requestTypeCode];
    _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_DEBUG, "Protobuf task %@ start %{geo:DataRequestKind}.*P %#x", buf, 0x22u);
  }

  dataTask = [(GEOProtobufSessionTask *)self dataTask];

  if (dataTask)
  {
    v5 = self->_throttleToken;
    v6 = +[GEOThrottlerRequester sharedRequester];
    auditToken = self->_auditToken;
    v21 = 0;
    v22 = v5;
    v8 = [v6 allowRequest:*&self->_requestKind forClient:auditToken throttlerToken:&v22 error:&v21];
    v9 = v22;
    v10 = v22;

    v11 = v21;
    if (v8)
    {
      objc_storeStrong(&self->_throttleToken, v9);
      dataTask2 = [(GEOProtobufSessionTask *)self dataTask];
      [dataTask2 start];
    }

    else
    {
      if (v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = [MEMORY[0x1E696ABC0] GEOErrorWithCode:-3];
      }

      v15 = v14;
      dataTask3 = [(GEOProtobufSessionTask *)self dataTask];
      requestCounterTicket = [dataTask3 requestCounterTicket];
      [requestCounterTicket requestCompleted:v15];

      delegateQueue = self->_delegateQueue;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __31__GEOProtobufSessionTask_start__block_invoke_2;
      v19[3] = &unk_1E70713F8;
      v19[4] = self;
      v20 = v15;
      dataTask2 = v15;
      dispatch_async(delegateQueue, v19);
    }
  }

  else
  {
    if (self)
    {
      v13 = self->_delegateQueue;
    }

    else
    {
      v13 = 0;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __31__GEOProtobufSessionTask_start__block_invoke;
    block[3] = &unk_1E7071900;
    block[4] = self;
    dispatch_async(v13, block);
  }
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  dataTask = [(GEOProtobufSessionTask *)self dataTask];
  v5 = [v3 stringWithFormat:@"<PBT %p> {%@}", self, dataTask];

  return v5;
}

- (GEOClientMetrics)clientMetrics
{
  dataTask = [(GEOProtobufSessionTask *)self dataTask];
  clientMetrics = [dataTask clientMetrics];

  return clientMetrics;
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = GEOGetDataSessionProtobufLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_18660C000, v3, OS_LOG_TYPE_DEBUG, "Protobuf task %@ cancel", &v5, 0xCu);
  }

  dataTask = [(GEOProtobufSessionTask *)self dataTask];
  [dataTask cancel];
}

@end