@interface MGRemoteQueryServerTransaction
- (BOOL)_requestValidate;
- (MGRemoteQueryServerTransaction)initWithConnection:(id)connection delegate:(id)delegate dispatchQueue:(id)queue;
- (MGRemoteQueryServerTransactionDelegate)delegate;
- (id)_handlerForRequest:(id)request;
- (id)description;
- (void)_delegateNotifyActivityOccurred;
- (void)_delegateNotifyInvalidated;
- (void)_delegateNotifyTimeoutInterval:(unint64_t)interval;
- (void)_handleError:(id)error;
- (void)_handleNWError:(id)error;
- (void)_invalidate;
- (void)_invalidated;
- (void)_prepareConnection;
- (void)_requestParse:(id)parse;
- (void)_requestProcess:(id)process;
- (void)_requestRead;
- (void)_responseAppend:(id)append;
- (void)_responseEnd;
- (void)_responseHandlePayloadFromHandler:(id)handler error:(id)error;
- (void)_responseObtainPayloadFromHandler;
- (void)_responseStart;
- (void)_updateState:(unint64_t)state;
- (void)dealloc;
@end

@implementation MGRemoteQueryServerTransaction

- (MGRemoteQueryServerTransaction)initWithConnection:(id)connection delegate:(id)delegate dispatchQueue:(id)queue
{
  connectionCopy = connection;
  delegateCopy = delegate;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = MGRemoteQueryServerTransaction;
  v12 = [(MGRemoteQueryServerTransaction *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_dispatchQueue, queue);
    objc_storeStrong(&v13->_connection, connection);
    error = v13->_error;
    v13->_state = 0;
    v13->_error = 0;

    handler = v13->_handler;
    v13->_handler = 0;

    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.MediaGroups.RemoteQuery.Server-Transaction-%llu", nw_connection_get_id()];
    [v16 UTF8String];
    v17 = os_transaction_create();
    transaction = v13->_transaction;
    v13->_transaction = v17;

    dispatchQueue = [(MGRemoteQueryServerTransaction *)v13 dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__MGRemoteQueryServerTransaction_initWithConnection_delegate_dispatchQueue___block_invoke;
    block[3] = &unk_27989ED90;
    v22 = v13;
    dispatch_async(dispatchQueue, block);
  }

  return v13;
}

- (void)dealloc
{
  [(MGRemoteQueryServerTransaction *)self _invalidate];
  v3.receiver = self;
  v3.super_class = MGRemoteQueryServerTransaction;
  [(MGRemoteQueryServerTransaction *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  state = [(MGRemoteQueryServerTransaction *)self state];
  connection = [(MGRemoteQueryServerTransaction *)self connection];
  handler = [(MGRemoteQueryServerTransaction *)self handler];
  v9 = [v3 stringWithFormat:@"<%@: %p, _state = %lu, _connection = %@, _handler = %@>", v5, self, state, connection, handler];

  return v9;
}

- (void)_updateState:(unint64_t)state
{
  v18 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  state = [(MGRemoteQueryServerTransaction *)self state];
  v7 = MGLogForCategory(5);
  v8 = v7;
  if (state >= state)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = 134218496;
      selfCopy3 = self;
      v14 = 2048;
      stateCopy3 = state;
      v16 = 2048;
      state2 = [(MGRemoteQueryServerTransaction *)self state];
      v9 = "%p transaction invalid state change to %lu from %lu";
      v10 = v8;
      v11 = 32;
      goto LABEL_20;
    }

LABEL_10:

    return;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218496;
    selfCopy3 = self;
    v14 = 2048;
    stateCopy3 = state;
    v16 = 2048;
    state2 = [(MGRemoteQueryServerTransaction *)self state];
    _os_log_debug_impl(&dword_25863A000, v8, OS_LOG_TYPE_DEBUG, "%p transaction advancing to state %lu from %lu", &v12, 0x20u);
  }

  [(MGRemoteQueryServerTransaction *)self setState:state];
  if (state <= 2)
  {
    if (state == 1)
    {
      [(MGRemoteQueryServerTransaction *)self _prepareConnection];
    }

    else
    {
      if (state != 2)
      {
        goto LABEL_17;
      }

      [(MGRemoteQueryServerTransaction *)self _requestRead];
    }
  }

  else
  {
    switch(state)
    {
      case 3uLL:
        [(MGRemoteQueryServerTransaction *)self _responseStart];
        break;
      case 4uLL:
        [(MGRemoteQueryServerTransaction *)self _invalidate];
        break;
      case 5uLL:
        [(MGRemoteQueryServerTransaction *)self _invalidated];
        return;
      default:
LABEL_17:
        v8 = MGLogForCategory(5);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v12 = 134218240;
          selfCopy3 = self;
          v14 = 2048;
          stateCopy3 = state;
          v9 = "%p transaction unexpected state change %lu";
          v10 = v8;
          v11 = 22;
LABEL_20:
          _os_log_error_impl(&dword_25863A000, v10, OS_LOG_TYPE_ERROR, v9, &v12, v11);
          goto LABEL_10;
        }

        goto LABEL_10;
    }
  }
}

- (void)_prepareConnection
{
  v22 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  objc_initWeak(&location, self);
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__5;
  v15 = __Block_byref_object_dispose__5;
  connection = [(MGRemoteQueryServerTransaction *)self connection];
  v4 = v12[5];
  dispatchQueue2 = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  nw_connection_set_queue(v4, dispatchQueue2);

  v6 = v12[5];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __52__MGRemoteQueryServerTransaction__prepareConnection__block_invoke;
  handler[3] = &unk_27989EDB8;
  objc_copyWeak(&v10, &location);
  handler[4] = &v11;
  nw_connection_set_state_changed_handler(v6, handler);
  v7 = MGLogForCategory(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = v12[5];
    *buf = 134218242;
    selfCopy = self;
    v20 = 2112;
    v21 = v8;
    _os_log_debug_impl(&dword_25863A000, v7, OS_LOG_TYPE_DEBUG, "%p transaction accepting connection %@", buf, 0x16u);
  }

  nw_connection_start(v12[5]);
  objc_destroyWeak(&v10);
  _Block_object_dispose(&v11, 8);

  objc_destroyWeak(&location);
}

void __52__MGRemoteQueryServerTransaction__prepareConnection__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  switch(a2)
  {
    case 5:
      [WeakRetained _updateState:5];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;

      break;
    case 4:
      if (v10)
      {
        [WeakRetained _handleNWError:?];
      }

      else
      {
        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:57 userInfo:0];
        [v6 _handleError:v9];
      }

      break;
    case 3:
      [WeakRetained _updateState:2];
      break;
  }
}

- (void)_handleError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]<= 3)
  {
    v6 = MGLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 134218242;
      selfCopy = self;
      v9 = 2112;
      v10 = errorCopy;
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction failed, error %@", &v7, 0x16u);
    }

    [(MGRemoteQueryServerTransaction *)self setError:errorCopy];
    [(MGRemoteQueryServerTransaction *)self _updateState:4];
  }
}

- (void)_handleNWError:(id)error
{
  errorCopy = error;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = nw_error_copy_cf_error(errorCopy);
  [(MGRemoteQueryServerTransaction *)self _handleError:v6];
}

- (void)_invalidate
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(MGRemoteQueryServerTransaction *)self state]<= 4)
  {
    v3 = MGLogForCategory(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      error = [(MGRemoteQueryServerTransaction *)self error];
      *buf = 134218242;
      selfCopy = self;
      v14 = 2112;
      v15 = error;
      _os_log_impl(&dword_25863A000, v3, OS_LOG_TYPE_DEFAULT, "%p transaction invalidating, error %@", buf, 0x16u);
    }

    [(MGRemoteQueryServerTransaction *)self setHandler:0];
    connection = [(MGRemoteQueryServerTransaction *)self connection];
    connection = self->_connection;
    self->_connection = 0;

    dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
    error2 = [(MGRemoteQueryServerTransaction *)self error];

    if (connection)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __45__MGRemoteQueryServerTransaction__invalidate__block_invoke;
      v9[3] = &unk_27989F468;
      v11 = error2 != 0;
      v10 = connection;
      dispatch_async(dispatchQueue, v9);
    }
  }
}

void __45__MGRemoteQueryServerTransaction__invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  if (v1 == 1)
  {
    nw_connection_force_cancel(v2);
  }

  else
  {
    nw_connection_cancel(v2);
  }
}

- (void)_invalidated
{
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  [(MGRemoteQueryServerTransaction *)self _delegateNotifyInvalidated];

  [(MGRemoteQueryServerTransaction *)self setTransaction:0];
}

- (void)_requestRead
{
  v11 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]== 2)
  {
    objc_initWeak(location, self);
    connection = [(MGRemoteQueryServerTransaction *)self connection];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__MGRemoteQueryServerTransaction__requestRead__block_invoke;
    v6[3] = &unk_27989F490;
    objc_copyWeak(&v7, location);
    v6[4] = self;
    nw_connection_receive(connection, 1u, 0x100000u, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = MGLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *location = 134218240;
      *&location[4] = self;
      v9 = 2048;
      state = [(MGRemoteQueryServerTransaction *)self state];
      _os_log_error_impl(&dword_25863A000, v5, OS_LOG_TYPE_ERROR, "%p transaction not reading in state %lu", location, 0x16u);
    }
  }
}

void __46__MGRemoteQueryServerTransaction__requestRead__block_invoke(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v27 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] != 2)
    {
      v15 = MGLogForCategory(5);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        v24 = v13;
        v25 = 2048;
        v26 = [v13 state];
        _os_log_error_impl(&dword_25863A000, v15, OS_LOG_TYPE_ERROR, "%p transaction discarding read result in state %lu", buf, 0x16u);
      }

      goto LABEL_24;
    }

    [*(a1 + 32) _delegateNotifyActivityOccurred];
    if (v9 && dispatch_data_get_size(v9))
    {
      v14 = MGLogForCategory(5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        v24 = v13;
        _os_log_error_impl(&dword_25863A000, v14, OS_LOG_TYPE_ERROR, "%p transaction received body payload", buf, 0xCu);
      }

      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:40 userInfo:0];
      [v13 _handleError:v15];
      goto LABEL_24;
    }

    if ((a4 & 1) == 0)
    {
      v19 = MGLogForCategory(5);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v24 = v13;
        _os_log_impl(&dword_25863A000, v19, OS_LOG_TYPE_DEFAULT, "%p transaction read incomplete, repeating", buf, 0xCu);
      }

      v15 = [v13 dispatchQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__MGRemoteQueryServerTransaction__requestRead__block_invoke_12;
      block[3] = &unk_27989ED90;
      block[4] = v13;
      dispatch_async(v15, block);
      goto LABEL_24;
    }

    if (v10)
    {
      v16 = nw_protocol_copy_http_definition();
      v15 = nw_content_context_copy_protocol_metadata(v10, v16);

      if (v15)
      {
        v17 = nw_http_metadata_copy_request();
        if (v17)
        {
          v18 = v17;
          [v13 _requestProcess:v17];
          if (v11)
          {
            [v13 _handleNWError:v11];
          }

LABEL_23:

LABEL_24:
          goto LABEL_25;
        }
      }
    }

    else
    {
      v15 = 0;
    }

    v20 = MGLogForCategory(5);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v24 = v13;
      _os_log_error_impl(&dword_25863A000, v20, OS_LOG_TYPE_ERROR, "%p transaction received malformed data", buf, 0xCu);
    }

    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:100 userInfo:0];
    [v13 _handleError:v21];

    v18 = 0;
    goto LABEL_23;
  }

LABEL_25:
}

- (void)_requestProcess:(id)process
{
  [(MGRemoteQueryServerTransaction *)self _requestParse:process];
  if ([(MGRemoteQueryServerTransaction *)self _requestValidate])
  {
    request = [(MGRemoteQueryServerTransaction *)self request];
    rq_timeout = [request rq_timeout];

    [(MGRemoteQueryServerTransaction *)self _delegateNotifyTimeoutInterval:rq_timeout];
    dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __50__MGRemoteQueryServerTransaction__requestProcess___block_invoke;
    block[3] = &unk_27989ED90;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:94 userInfo:0];
    [(MGRemoteQueryServerTransaction *)self _handleError:v7];
  }
}

- (void)_requestParse:(id)parse
{
  parseCopy = parse;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  v6 = nw_http_request_copy_url();
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0x277CBEBC0];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    v10 = [v8 URLWithString:v9];

    if (v10)
    {
      v11 = [MEMORY[0x277CBAB50] requestWithURL:v10];
    }

    else
    {
      v11 = 0;
    }

    free(v7);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v15 = v11;
  nw_http_request_access_method();
  v12 = nw_http_request_copy_header_fields();
  v14 = MEMORY[0x277D85DD0];
  v13 = v15;
  nw_http_fields_enumerate();
  [(MGRemoteQueryServerTransaction *)self setRequest:v13, v14, 3221225472, __48__MGRemoteQueryServerTransaction__requestParse___block_invoke_2, &unk_27989F4E0];
}

void __48__MGRemoteQueryServerTransaction__requestParse___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
  [v2 setHTTPMethod:v3];
}

uint64_t __48__MGRemoteQueryServerTransaction__requestParse___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a2 length:a3 encoding:4];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:a4 length:a5 encoding:4];
  [*(a1 + 32) addValue:v9 forHTTPHeaderField:v8];

  return 1;
}

- (BOOL)_requestValidate
{
  v18 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  request = [(MGRemoteQueryServerTransaction *)self request];
  hTTPMethod = [request HTTPMethod];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:*MEMORY[0x277CD9290]];
  v7 = v6;
  v8 = hTTPMethod && v6 && ![hTTPMethod caseInsensitiveCompare:v6];
  v9 = [request rq_protocolVersion] == 1 && v8;
  v10 = [(MGRemoteQueryServerTransaction *)self _handlerForRequest:request];
  if (!v10)
  {
    goto LABEL_14;
  }

  [(MGRemoteQueryServerTransaction *)self setHandler:v10];
  v11 = MGLogForCategory(5);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 134218242;
    selfCopy = self;
    v16 = 2112;
    v17 = v10;
    _os_log_debug_impl(&dword_25863A000, v11, OS_LOG_TYPE_DEBUG, "%p transaction using handler %@", &v14, 0x16u);
  }

  if (v9)
  {
    if (objc_opt_respondsToSelector())
    {
      validateRequest = [v10 validateRequest];
    }

    else
    {
      validateRequest = 1;
    }
  }

  else
  {
LABEL_14:
    validateRequest = 0;
  }

  return validateRequest;
}

- (void)_responseStart
{
  v23 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]== 3)
  {
    responseContext = [(MGRemoteQueryServerTransaction *)self responseContext];

    if (!responseContext)
    {
      v9 = MEMORY[0x277CCACA8];
      request = [(MGRemoteQueryServerTransaction *)self request];
      v5 = [v9 stringWithFormat:@"%lu", objc_msgSend(request, "rq_protocolVersion")];

      v11 = MEMORY[0x259C85B40]();
      [@"no-store no-transform"];
      nw_http_fields_append();
      [@"x-apple-mediagroups-version" UTF8String];
      [v5 UTF8String];
      nw_http_fields_append();
      handler = [(MGRemoteQueryServerTransaction *)self handler];
      [handler prepareResponse:v11];

      well_known = nw_http_response_create_well_known();
      nw_http_response_set_header_fields();
      metadata_for_response = nw_http_create_metadata_for_response();
      v15 = nw_content_context_create("response");
      nw_content_context_set_metadata_for_protocol(v15, metadata_for_response);
      [(MGRemoteQueryServerTransaction *)self setResponseContext:v15];
      objc_initWeak(buf, self);
      connection = [(MGRemoteQueryServerTransaction *)self connection];
      completion[0] = MEMORY[0x277D85DD0];
      completion[1] = 3221225472;
      completion[2] = __48__MGRemoteQueryServerTransaction__responseStart__block_invoke;
      completion[3] = &unk_27989F508;
      objc_copyWeak(&v18, buf);
      completion[4] = self;
      nw_connection_send(connection, MEMORY[0x277D85CC8], v15, 0, completion);

      [(MGRemoteQueryServerTransaction *)self _responseObtainPayloadFromHandler];
      objc_destroyWeak(&v18);
      objc_destroyWeak(buf);

      goto LABEL_9;
    }

    v5 = MGLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      selfCopy2 = self;
      v6 = "%p transaction already started response";
      v7 = v5;
      v8 = 12;
LABEL_7:
      _os_log_error_impl(&dword_25863A000, v7, OS_LOG_TYPE_ERROR, v6, buf, v8);
    }
  }

  else
  {
    v5 = MGLogForCategory(5);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      selfCopy2 = self;
      v21 = 2048;
      state = [(MGRemoteQueryServerTransaction *)self state];
      v6 = "%p transaction not starting response in state %lu";
      v7 = v5;
      v8 = 22;
      goto LABEL_7;
    }
  }

LABEL_9:
}

void __48__MGRemoteQueryServerTransaction__responseStart__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] == 3)
    {
      [*(a1 + 32) _delegateNotifyActivityOccurred];
      if (v3)
      {
        [v5 _handleNWError:v3];
      }
    }

    else
    {
      v6 = MGLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 134218240;
        v8 = v5;
        v9 = 2048;
        v10 = [v5 state];
        _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction discarding send result in state %lu", &v7, 0x16u);
      }
    }
  }
}

- (void)_responseAppend:(id)append
{
  v18 = *MEMORY[0x277D85DE8];
  appendCopy = append;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]!= 3)
  {
    _createDispatchData = MGLogForCategory(5);
    if (!os_log_type_enabled(_createDispatchData, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *location = 134218240;
    *&location[4] = self;
    v16 = 2048;
    state = [(MGRemoteQueryServerTransaction *)self state];
    v10 = "%p transaction not appending response in state %lu";
    v11 = _createDispatchData;
    v12 = 22;
LABEL_9:
    _os_log_error_impl(&dword_25863A000, v11, OS_LOG_TYPE_ERROR, v10, location, v12);
    goto LABEL_7;
  }

  responseContext = [(MGRemoteQueryServerTransaction *)self responseContext];

  if (!responseContext)
  {
    _createDispatchData = MGLogForCategory(5);
    if (!os_log_type_enabled(_createDispatchData, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *location = 134217984;
    *&location[4] = self;
    v10 = "%p transaction has not started response";
    v11 = _createDispatchData;
    v12 = 12;
    goto LABEL_9;
  }

  _createDispatchData = [appendCopy _createDispatchData];
  objc_initWeak(location, self);
  connection = [(MGRemoteQueryServerTransaction *)self connection];
  responseContext2 = [(MGRemoteQueryServerTransaction *)self responseContext];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__MGRemoteQueryServerTransaction__responseAppend___block_invoke;
  v13[3] = &unk_27989F508;
  objc_copyWeak(&v14, location);
  v13[4] = self;
  nw_connection_send(connection, _createDispatchData, responseContext2, 0, v13);

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);
LABEL_7:
}

void __50__MGRemoteQueryServerTransaction__responseAppend___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] == 3)
    {
      [*(a1 + 32) _delegateNotifyActivityOccurred];
      if (v3)
      {
        [v5 _handleNWError:v3];
      }

      else
      {
        [*(a1 + 32) _responseObtainPayloadFromHandler];
      }
    }

    else
    {
      v6 = MGLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 134218240;
        v8 = v5;
        v9 = 2048;
        v10 = [v5 state];
        _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction discarding send append result in state %lu", &v7, 0x16u);
      }
    }
  }
}

- (void)_responseEnd
{
  v14 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]== 3)
  {
    responseContext = [(MGRemoteQueryServerTransaction *)self responseContext];

    if (responseContext)
    {
      responseContext2 = [(MGRemoteQueryServerTransaction *)self responseContext];
      nw_content_context_set_is_final(responseContext2, 1);

      objc_initWeak(location, self);
      connection = [(MGRemoteQueryServerTransaction *)self connection];
      responseContext3 = [(MGRemoteQueryServerTransaction *)self responseContext];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __46__MGRemoteQueryServerTransaction__responseEnd__block_invoke;
      v9[3] = &unk_27989F508;
      objc_copyWeak(&v10, location);
      v9[4] = self;
      nw_connection_send(connection, MEMORY[0x277D85CC8], responseContext3, 1, v9);

      objc_destroyWeak(&v10);
      objc_destroyWeak(location);
      return;
    }

    v8 = MGLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *location = 134217984;
      *&location[4] = self;
      _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p transaction not ending response when it has not started response", location, 0xCu);
    }
  }

  else
  {
    v8 = MGLogForCategory(5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *location = 134218240;
      *&location[4] = self;
      v12 = 2048;
      state = [(MGRemoteQueryServerTransaction *)self state];
      _os_log_error_impl(&dword_25863A000, v8, OS_LOG_TYPE_ERROR, "%p transaction not ending response in state %lu", location, 0x16u);
    }
  }
}

void __46__MGRemoteQueryServerTransaction__responseEnd__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained state] == 3)
    {
      [*(a1 + 32) _delegateNotifyActivityOccurred];
      if (v3)
      {
        [v5 _handleNWError:v3];
      }

      else
      {
        [*(a1 + 32) _invalidate];
      }
    }

    else
    {
      v6 = MGLogForCategory(5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = 134218240;
        v8 = v5;
        v9 = 2048;
        v10 = [v5 state];
        _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction discarding send end result in state %lu", &v7, 0x16u);
      }
    }
  }
}

- (void)_responseObtainPayloadFromHandler
{
  v15 = *MEMORY[0x277D85DE8];
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]== 3)
  {
    responseContext = [(MGRemoteQueryServerTransaction *)self responseContext];

    if (responseContext)
    {
      objc_initWeak(&location, self);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v12 = __Block_byref_object_copy__25;
      v13 = __Block_byref_object_dispose__26;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __67__MGRemoteQueryServerTransaction__responseObtainPayloadFromHandler__block_invoke;
      v8[3] = &unk_27989F530;
      objc_copyWeak(&v9, &location);
      v14 = MEMORY[0x259C85F90](v8);
      handler = [(MGRemoteQueryServerTransaction *)self handler];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __67__MGRemoteQueryServerTransaction__responseObtainPayloadFromHandler__block_invoke_3;
      v7[3] = &unk_27989F558;
      v7[4] = buf;
      [handler provideResponseData:v7];

      _Block_object_dispose(buf, 8);
      objc_destroyWeak(&v9);
      objc_destroyWeak(&location);
      return;
    }

    v6 = MGLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = self;
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction not requesting payload without having started response", buf, 0xCu);
    }
  }

  else
  {
    v6 = MGLogForCategory(5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = [(MGRemoteQueryServerTransaction *)self state];
      _os_log_error_impl(&dword_25863A000, v6, OS_LOG_TYPE_ERROR, "%p transaction not requesting payload in state %lu", buf, 0x16u);
    }
  }
}

void __67__MGRemoteQueryServerTransaction__responseObtainPayloadFromHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained dispatchQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__MGRemoteQueryServerTransaction__responseObtainPayloadFromHandler__block_invoke_2;
    block[3] = &unk_27989F010;
    block[4] = v8;
    v11 = v5;
    v12 = v6;
    dispatch_async(v9, block);
  }
}

void __67__MGRemoteQueryServerTransaction__responseObtainPayloadFromHandler__block_invoke_3(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

- (void)_responseHandlePayloadFromHandler:(id)handler error:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  errorCopy = error;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([(MGRemoteQueryServerTransaction *)self state]!= 3)
  {
    v10 = MGLogForCategory(5);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_8:

      goto LABEL_9;
    }

    v14 = 134218240;
    selfCopy2 = self;
    v16 = 2048;
    state = [(MGRemoteQueryServerTransaction *)self state];
    v11 = "%p transaction not accepting payload in state %lu";
    v12 = v10;
    v13 = 22;
LABEL_14:
    _os_log_error_impl(&dword_25863A000, v12, OS_LOG_TYPE_ERROR, v11, &v14, v13);
    goto LABEL_8;
  }

  responseContext = [(MGRemoteQueryServerTransaction *)self responseContext];

  if (!responseContext)
  {
    v10 = MGLogForCategory(5);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    v14 = 134217984;
    selfCopy2 = self;
    v11 = "%p transaction not accepting payload without having started response";
    v12 = v10;
    v13 = 12;
    goto LABEL_14;
  }

  if (errorCopy)
  {
    [(MGRemoteQueryServerTransaction *)self _handleError:errorCopy];
  }

  else if (handlerCopy)
  {
    [(MGRemoteQueryServerTransaction *)self _responseAppend:handlerCopy];
  }

  else
  {
    [(MGRemoteQueryServerTransaction *)self _responseEnd];
  }

LABEL_9:
}

- (void)_delegateNotifyTimeoutInterval:(unint64_t)interval
{
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(MGRemoteQueryServerTransaction *)self delegate];
  if (delegate)
  {
    v7 = delegate;
    [delegate transaction:self receivedTimeoutInterval:interval];
    delegate = v7;
  }
}

- (void)_delegateNotifyActivityOccurred
{
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(MGRemoteQueryServerTransaction *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    [delegate transactionActivityOccurred:self];
    delegate = v5;
  }
}

- (void)_delegateNotifyInvalidated
{
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  delegate = [(MGRemoteQueryServerTransaction *)self delegate];
  if (delegate)
  {
    v5 = delegate;
    [delegate transactionInvalidated:self];
    delegate = v5;
  }
}

- (id)_handlerForRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  dispatchQueue = [(MGRemoteQueryServerTransaction *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if (qword_27F956DE0 != -1)
  {
    dispatch_once(&qword_27F956DE0, &__block_literal_global_3);
  }

  v6 = [requestCopy URL];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = _MergedGlobals_0;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        urlPath = [v11 urlPath];
        path = [v6 path];
        v14 = [urlPath isEqual:path];

        if (v14)
        {
          v8 = [v11 handlerForRequest:requestCopy];
          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v8;
}

void __53__MGRemoteQueryServerTransaction__handlerForRequest___block_invoke(uint64_t a1, uint64_t a2)
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  v4 = [v2 setWithArray:v3];
  v5 = _MergedGlobals_0;
  _MergedGlobals_0 = v4;
}

- (MGRemoteQueryServerTransactionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end