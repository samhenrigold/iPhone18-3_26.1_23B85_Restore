@interface TRSession
- (BOOL)isConnected;
- (TRConnection)connection;
- (TRSession)init;
- (TRSession)initWithNearbyDevice:(id)device;
- (id)_messageHandlerForMessageClass:(Class)class;
- (void)_handleEvent:(id)event;
- (void)_handleHeartbeatWithResponseHandler:(id)handler;
- (void)_handleRequest:(id)request;
- (void)_respondToRequest:(id)request withError:(id)error;
- (void)_sendHeartbeats;
- (void)_sendResponse:(id)response forRequest:(id)request;
- (void)_setMessageHandler:(id)handler forMessageClass:(Class)class;
- (void)disconnect;
- (void)sendEvent:(id)event;
- (void)sendHeartbeatWithResponseHandler:(id)handler;
- (void)sendRequest:(id)request withResponseHandler:(id)handler;
- (void)setConnection:(id)connection;
- (void)setEventHandler:(id)handler forEventClass:(Class)class;
- (void)setRequestHandler:(id)handler forRequestClass:(Class)class;
@end

@implementation TRSession

- (TRSession)init
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [v2 stringWithFormat:@"-init is not a valid initializer for the class %@", v4];

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:v5 userInfo:0];
  objc_exception_throw(v6);
}

- (TRSession)initWithNearbyDevice:(id)device
{
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = TRSession;
  v6 = [(TRSession *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_nearbyDevice, device);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    messageHandlerMap = v7->_messageHandlerMap;
    v7->_messageHandlerMap = dictionary;

    v10 = MEMORY[0x277D85CD8];
    v11 = dispatch_queue_create("com.apple.TRSession.messageHandlerMapQ", MEMORY[0x277D85CD8]);
    messageHandlerMapQ = v7->_messageHandlerMapQ;
    v7->_messageHandlerMapQ = v11;

    v13 = dispatch_queue_create("com.apple.TRSession.connectionQ", v10);
    connectionQ = v7->_connectionQ;
    v7->_connectionQ = v13;

    v15 = objc_alloc_init(TRAnisetteDataHandler);
    anisetteDataHandler = v7->_anisetteDataHandler;
    v7->_anisetteDataHandler = v15;

    [(TRAnisetteDataHandler *)v7->_anisetteDataHandler registerForAnisetteDataRequestsFromSession:v7];
  }

  return v7;
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  connectionQ = self->_connectionQ;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__TRSession_setConnection___block_invoke;
  v7[3] = &unk_279DCEC20;
  v7[4] = self;
  v8 = connectionCopy;
  v6 = connectionCopy;
  dispatch_barrier_async(connectionQ, v7);
}

void __27__TRSession_setConnection___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 8), *(a1 + 40));
  objc_initWeak(&location, *(a1 + 32));
  v2 = *(*(a1 + 32) + 8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __27__TRSession_setConnection___block_invoke_2;
  v12[3] = &unk_279DCEF68;
  objc_copyWeak(&v13, &location);
  [v2 setInvalidationHandler:v12];
  v3 = *(*(a1 + 32) + 8);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __27__TRSession_setConnection___block_invoke_2_8;
  v10[3] = &unk_279DCEF68;
  objc_copyWeak(&v11, &location);
  [v3 setInterruptionHandler:v10];
  v4 = *(*(a1 + 32) + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__TRSession_setConnection___block_invoke_9;
  v8[3] = &unk_279DCF528;
  objc_copyWeak(&v9, &location);
  [v4 setEventMessageHandler:v8];
  v5 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __27__TRSession_setConnection___block_invoke_2_11;
  v6[3] = &unk_279DCF550;
  objc_copyWeak(&v7, &location);
  [v5 setRequestMessageHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __27__TRSession_setConnection___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v2 = TRLogHandle(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[TRSession setConnection:]_block_invoke_2";
      _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "%s Connection invalidated", buf, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[7];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__TRSession_setConnection___block_invoke_6;
    block[3] = &unk_279DCEBF8;
    block[4] = v4;
    dispatch_barrier_async(v5, block);
    v6 = [v4 heartbeatRequestTimer];
    v7 = v6;
    if (v6)
    {
      dispatch_source_cancel(v6);
      [v4 setHeartbeatRequestTimer:0];
    }

    v8 = [v4 disconnectHandler];
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8);
    }
  }
}

void __27__TRSession_setConnection___block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

void __27__TRSession_setConnection___block_invoke_2_8(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v2 = TRLogHandle(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315138;
      v5 = "[TRSession setConnection:]_block_invoke_2";
      _os_log_impl(&dword_26F2A2000, v2, OS_LOG_TYPE_DEFAULT, "%s Connection interrupted", &v4, 0xCu);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained disconnect];
}

void __27__TRSession_setConnection___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleEvent:v3];
}

void __27__TRSession_setConnection___block_invoke_2_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRequest:v3];
}

- (TRConnection)connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  connectionQ = self->_connectionQ;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __23__TRSession_connection__block_invoke;
  v5[3] = &unk_279DCF578;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionQ, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isConnected
{
  connection = [(TRSession *)self connection];
  v3 = connection != 0;

  return v3;
}

- (void)disconnect
{
  v13 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      nearbyDevice = [(TRSession *)self nearbyDevice];
      identifier = [nearbyDevice identifier];
      *buf = 136315394;
      v10 = "[TRSession disconnect]";
      v11 = 2112;
      v12 = identifier;
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s Disconnect from device %@", buf, 0x16u);
    }
  }

  messageHandlerMapQ = self->_messageHandlerMapQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__TRSession_disconnect__block_invoke;
  block[3] = &unk_279DCEBF8;
  block[4] = self;
  dispatch_barrier_async(messageHandlerMapQ, block);
  connection = [(TRSession *)self connection];
  [connection invalidate];
}

void __23__TRSession_disconnect__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  *(v1 + 32) = 0;
}

- (void)sendEvent:(id)event
{
  v20 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = [TRMessageEncoder encodeMessage:eventCopy];
  v6 = v5;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v14 = 136315650;
      v15 = "[TRSession sendEvent:]";
      v16 = 2112;
      v17 = v9;
      v18 = 2048;
      v19 = [v6 length];
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s Sending event of class %@ (%lu bytes).", &v14, 0x20u);
    }
  }

  connection = [(TRSession *)self connection];
  if (connection)
  {
    v11 = objc_alloc_init(MEMORY[0x277D54CA8]);
    [v11 setBodyData:v6];
    nearbyDevice = [(TRSession *)self nearbyDevice];
    representedDevice = [nearbyDevice representedDevice];
    [v11 setPeerDevice:representedDevice];

    [connection sendEvent:v11];
  }

  else
  {
    if (_TRLogEnabled != 1)
    {
      goto LABEL_8;
    }

    v11 = TRLogHandle(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[TRSession sendEvent:]";
      _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "%s Unable to send event message. Session not connected.", &v14, 0xCu);
    }
  }

LABEL_8:
}

- (void)sendRequest:(id)request withResponseHandler:(id)handler
{
  v32 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  v8 = [TRMessageEncoder encodeMessage:requestCopy];
  v9 = v8;
  if (_TRLogEnabled == 1)
  {
    v10 = TRLogHandle(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 136315650;
      v27 = "[TRSession sendRequest:withResponseHandler:]";
      v28 = 2112;
      v29 = v12;
      v30 = 2048;
      v31 = [v9 length];
      _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "%s Sending request of class %@ (%lu bytes).", buf, 0x20u);
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__TRSession_sendRequest_withResponseHandler___block_invoke;
  v22[3] = &unk_279DCF5A0;
  v13 = handlerCopy;
  v23 = v13;
  v14 = MEMORY[0x27438C490](v22);
  connection = [(TRSession *)self connection];
  if (connection)
  {
    v16 = objc_alloc_init(MEMORY[0x277D54CD0]);
    [v16 setBodyData:v9];
    [v16 setResponseHandler:v14];
    nearbyDevice = [(TRSession *)self nearbyDevice];
    representedDevice = [nearbyDevice representedDevice];
    [v16 setPeerDevice:representedDevice];

    [connection sendRequest:v16];
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v19 = TRLogHandle(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v27 = "[TRSession sendRequest:withResponseHandler:]";
        _os_log_impl(&dword_26F2A2000, v19, OS_LOG_TYPE_DEFAULT, "%s Unable to send request message. Session not connected.", buf, 0xCu);
      }
    }

    v20 = *MEMORY[0x277CCA470];
    v24[0] = *MEMORY[0x277CCA450];
    v24[1] = v20;
    v25[0] = @"Unable to send request message.";
    v25[1] = @"The session must be connected before sending messages";
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9101 userInfo:v16];
    (*(v13 + 2))(v13, v21, 0);
  }
}

void __45__TRSession_sendRequest_withResponseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v14 = [v6 bodyData];
    v38 = 0;
    v15 = [TRMessageDecoder decodeMessage:v14 error:&v38];
    v9 = v38;

    if (v15)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        if (_TRLogEnabled == 1)
        {
          v26 = TRLogHandle(isKindOfClass);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            *buf = 136315650;
            v42 = "[TRSession sendRequest:withResponseHandler:]_block_invoke";
            v43 = 2112;
            v44 = v28;
            v45 = 2112;
            v46 = v15;
            _os_log_impl(&dword_26F2A2000, v26, OS_LOG_TYPE_DEFAULT, "%s Decoded something other than a subclass of %@: %@", buf, 0x20u);
          }
        }

        v29 = *MEMORY[0x277CCA450];
        v40[0] = @"Invalid response message class.";
        v30 = *MEMORY[0x277CCA470];
        v39[0] = v29;
        v39[1] = v30;
        v31 = MEMORY[0x277CCACA8];
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = [v31 stringWithFormat:@"Decoded class is not a subclass of %@: %@.", v33, v35];
        v40[1] = v36;
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];

        v23 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9201 userInfo:v37];

        (*(*(a1 + 32) + 16))();
        goto LABEL_27;
      }

      if (_TRLogEnabled == 1)
      {
        v18 = TRLogHandle(isKindOfClass);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = [v7 bodyData];
          v22 = [v21 length];
          *buf = 136315650;
          v42 = "[TRSession sendRequest:withResponseHandler:]_block_invoke";
          v43 = 2112;
          v44 = v20;
          v45 = 2048;
          v46 = v22;
          _os_log_impl(&dword_26F2A2000, v18, OS_LOG_TYPE_DEFAULT, "%s Received response message of class: %@ (%lu bytes).", buf, 0x20u);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v15 error];

        (*(*(a1 + 32) + 16))();
LABEL_27:
        v9 = v23;
LABEL_30:

        goto LABEL_31;
      }

      v25 = *(*(a1 + 32) + 16);
    }

    else
    {
      if (_TRLogEnabled == 1)
      {
        v24 = TRLogHandle(v16);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v42 = "[TRSession sendRequest:withResponseHandler:]_block_invoke";
          v43 = 2112;
          v44 = v9;
          _os_log_impl(&dword_26F2A2000, v24, OS_LOG_TYPE_DEFAULT, "%s Failed to decode response message: %@", buf, 0x16u);
        }
      }

      v25 = *(*(a1 + 32) + 16);
    }

    v25();
    goto LABEL_30;
  }

  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[TRSession sendRequest:withResponseHandler:]_block_invoke";
      v43 = 2112;
      v44 = v5;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s Received empty response with error: %@", buf, 0x16u);
    }
  }

  v9 = v5;
  v10 = [v9 domain];

  if (v10 != @"TRNearbyDeviceErrorDomain")
  {
    v11 = *MEMORY[0x277CCA470];
    v47[0] = *MEMORY[0x277CCA450];
    v47[1] = v11;
    v48[0] = @"Communication failure.";
    v48[1] = @"Received an error in response to a request.";
    v47[2] = *MEMORY[0x277CCA7E8];
    v48[2] = v9;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9104 userInfo:v12];

    v9 = v13;
  }

  (*(*(a1 + 32) + 16))();
LABEL_31:
}

- (void)_sendResponse:(id)response forRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  requestCopy = request;
  v8 = [TRMessageEncoder encodeMessage:responseCopy];
  v9 = v8;
  if (_TRLogEnabled == 1)
  {
    v10 = TRLogHandle(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v15 = 136315650;
      v16 = "[TRSession _sendResponse:forRequest:]";
      v17 = 2112;
      v18 = v12;
      v19 = 2048;
      v20 = [v9 length];
      _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "%s Sending response of class %@ (%lu bytes).", &v15, 0x20u);
    }
  }

  v13 = [objc_alloc(MEMORY[0x277D54CD8]) initWithRequestMessage:requestCopy];

  [v13 setBodyData:v9];
  connection = [(TRSession *)self connection];
  [connection sendResponse:v13];
}

- (void)_respondToRequest:(id)request withError:(id)error
{
  errorCopy = error;
  requestCopy = request;
  v8 = objc_alloc_init(TRErrorResponse);
  [(TRErrorResponse *)v8 setError:errorCopy];

  [(TRSession *)self _sendResponse:v8 forRequest:requestCopy];
}

- (void)_handleEvent:(id)event
{
  v28 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  bodyData = [eventCopy bodyData];
  v21 = 0;
  v6 = [TRMessageDecoder decodeMessage:bodyData error:&v21];
  v7 = v21;

  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if (_TRLogEnabled == 1)
      {
        v10 = TRLogHandle(isKindOfClass);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          bodyData2 = [eventCopy bodyData];
          v14 = [bodyData2 length];
          *buf = 136315650;
          v23 = "[TRSession _handleEvent:]";
          v24 = 2112;
          v25 = v12;
          v26 = 2048;
          v27 = v14;
          _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "%s Received event message of class: %@ (%lu bytes).", buf, 0x20u);
        }
      }

      v15 = [(TRSession *)self _handlerForEventClass:objc_opt_class()];
      v16 = v15;
      if (v15)
      {
        (*(v15 + 16))(v15, v6);
LABEL_19:

        goto LABEL_20;
      }

      if (_TRLogEnabled != 1)
      {
        goto LABEL_19;
      }

      v18 = TRLogHandle(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 136315394;
        v23 = "[TRSession _handleEvent:]";
        v24 = 2112;
        v25 = v20;
        _os_log_impl(&dword_26F2A2000, v18, OS_LOG_TYPE_DEFAULT, "%s No handler registered for message class: %@", buf, 0x16u);
      }

LABEL_18:

      goto LABEL_19;
    }

    if (_TRLogEnabled == 1)
    {
      v16 = TRLogHandle(isKindOfClass);
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 136315650;
      v23 = "[TRSession _handleEvent:]";
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "%s Unarchived something other than a subclass of %@: %@", buf, 0x20u);
      goto LABEL_18;
    }
  }

  else if (_TRLogEnabled == 1)
  {
    v16 = TRLogHandle(v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "[TRSession _handleEvent:]";
      v24 = 2112;
      v25 = v7;
      _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "%s Failed to decode event message: %@", buf, 0x16u);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)_handleRequest:(id)request
{
  v49 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  bodyData = [requestCopy bodyData];
  v40 = 0;
  v6 = [TRMessageDecoder decodeMessage:bodyData error:&v40];
  v7 = v40;

  if (v6)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      if (_TRLogEnabled == 1)
      {
        v10 = TRLogHandle(isKindOfClass);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          bodyData2 = [requestCopy bodyData];
          v14 = [bodyData2 length];
          *buf = 136315650;
          v44 = "[TRSession _handleRequest:]";
          v45 = 2112;
          v46 = v12;
          v47 = 2048;
          v48 = v14;
          _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "%s Received request message of class: %@ (%lu bytes).", buf, 0x20u);
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __28__TRSession__handleRequest___block_invoke;
        v38[3] = &unk_279DCF5C8;
        v38[4] = self;
        v39 = requestCopy;
        [(TRSession *)self _handleHeartbeatWithResponseHandler:v38];
      }

      else
      {
        v31 = [(TRSession *)self _handlerForRequestClass:objc_opt_class()];
        if (v31)
        {
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __28__TRSession__handleRequest___block_invoke_48;
          v36[3] = &unk_279DCF5C8;
          v36[4] = self;
          v37 = requestCopy;
          (v31)[2](v31, v6, v36);
        }

        else
        {
          if (_TRLogEnabled == 1)
          {
            v32 = TRLogHandle(0);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = objc_opt_class();
              v34 = NSStringFromClass(v33);
              *buf = 136315394;
              v44 = "[TRSession _handleRequest:]";
              v45 = 2112;
              v46 = v34;
              _os_log_impl(&dword_26F2A2000, v32, OS_LOG_TYPE_DEFAULT, "%s No handler registered for message class: %@", buf, 0x16u);
            }
          }

          v35 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9001 userInfo:0];
          [(TRSession *)self _respondToRequest:requestCopy withError:v35];
        }
      }
    }

    else
    {
      if (_TRLogEnabled == 1)
      {
        v16 = TRLogHandle(isKindOfClass);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = objc_opt_class();
          v18 = NSStringFromClass(v17);
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          *buf = 136315650;
          v44 = "[TRSession _handleRequest:]";
          v45 = 2112;
          v46 = v18;
          v47 = 2112;
          v48 = v20;
          _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "%s Decoded something other than a subclass of %@: %@", buf, 0x20u);
        }
      }

      v21 = *MEMORY[0x277CCA450];
      v42[0] = @"Unknown message decoded.";
      v22 = *MEMORY[0x277CCA470];
      v41[0] = v21;
      v41[1] = v22;
      v23 = MEMORY[0x277CCACA8];
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = [v23 stringWithFormat:@"Decoded class is not a subclass of %@: %@.", v25, v27];
      v42[1] = v28;
      v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

      v30 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9200 userInfo:v29];

      [(TRSession *)self _respondToRequest:requestCopy withError:v30];
      v7 = v30;
    }
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v15 = TRLogHandle(v8);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v44 = "[TRSession _handleRequest:]";
        v45 = 2112;
        v46 = v7;
        _os_log_impl(&dword_26F2A2000, v15, OS_LOG_TYPE_DEFAULT, "%s Failed to decode request message: %@", buf, 0x16u);
      }
    }

    [(TRSession *)self _respondToRequest:requestCopy withError:v7];
  }
}

uint64_t __28__TRSession__handleRequest___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 _sendResponse:a3 forRequest:*(a1 + 40)];
  }

  else
  {
    return [v4 _respondToRequest:*(a1 + 40) withError:a2];
  }
}

uint64_t __28__TRSession__handleRequest___block_invoke_48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    return [v4 _sendResponse:a3 forRequest:*(a1 + 40)];
  }

  else
  {
    return [v4 _respondToRequest:*(a1 + 40) withError:a2];
  }
}

- (void)setEventHandler:(id)handler forEventClass:(Class)class
{
  handlerCopy = handler;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"msgClass must be a subclass of %@", v9];

    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  v6 = MEMORY[0x27438C490](handlerCopy);
  [(TRSession *)self _setMessageHandler:v6 forMessageClass:class];
}

- (void)setRequestHandler:(id)handler forRequestClass:(Class)class
{
  handlerCopy = handler;
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"msgClass must be a subclass of %@", v9];

    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  v6 = MEMORY[0x27438C490](handlerCopy);
  [(TRSession *)self _setMessageHandler:v6 forMessageClass:class];
}

- (void)_setMessageHandler:(id)handler forMessageClass:(Class)class
{
  handlerCopy = handler;
  messageHandlerMapQ = self->_messageHandlerMapQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__TRSession__setMessageHandler_forMessageClass___block_invoke;
  block[3] = &unk_279DCF5F0;
  block[4] = self;
  v10 = handlerCopy;
  classCopy = class;
  v8 = handlerCopy;
  dispatch_barrier_async(messageHandlerMapQ, block);
}

void __48__TRSession__setMessageHandler_forMessageClass___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v4 = [*(a1 + 40) copy];
  v3 = NSStringFromClass(*(a1 + 48));
  [v2 setObject:v4 forKey:v3];
}

- (id)_messageHandlerForMessageClass:(Class)class
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  messageHandlerMapQ = self->_messageHandlerMapQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TRSession__messageHandlerForMessageClass___block_invoke;
  block[3] = &unk_279DCF618;
  block[4] = self;
  block[5] = &v7;
  block[6] = class;
  dispatch_sync(messageHandlerMapQ, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __44__TRSession__messageHandlerForMessageClass___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v6 = NSStringFromClass(*(a1 + 48));
  v3 = [v2 objectForKey:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_sendHeartbeats
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __28__TRSession__sendHeartbeats__block_invoke;
  v2[3] = &unk_279DCF640;
  v2[4] = self;
  [(TRSession *)self sendHeartbeatWithResponseHandler:v2];
}

void __28__TRSession__sendHeartbeats__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = *(a1 + 32);
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v8 = *(a1 + 32);
  if ((isKindOfClass & 1) == 0)
  {
LABEL_6:
    [v8 disconnect];
    goto LABEL_7;
  }

  if ([v8 isConnected])
  {
    objc_initWeak(&location, *(a1 + 32));
    v9 = dispatch_time(0, 5000000000);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __28__TRSession__sendHeartbeats__block_invoke_2;
    v10[3] = &unk_279DCEF68;
    objc_copyWeak(&v11, &location);
    dispatch_after(v9, MEMORY[0x277D85CD0], v10);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }

LABEL_7:
}

void __28__TRSession__sendHeartbeats__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendHeartbeats];
}

- (void)sendHeartbeatWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(0, 0);
  v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);

  v7 = dispatch_time(0, 25000000000);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __46__TRSession_sendHeartbeatWithResponseHandler___block_invoke;
  handler[3] = &unk_279DCF668;
  v8 = v6;
  v17 = v8;
  objc_copyWeak(&v19, &location);
  v9 = handlerCopy;
  v18 = v9;
  dispatch_source_set_event_handler(v8, handler);
  dispatch_resume(v8);
  v10 = objc_alloc_init(TRHeartbeatRequest);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__TRSession_sendHeartbeatWithResponseHandler___block_invoke_54;
  v13[3] = &unk_279DCF368;
  v11 = v8;
  v14 = v11;
  v12 = v9;
  v15 = v12;
  [(TRSession *)self sendRequest:v10 withResponseHandler:v13];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __46__TRSession_sendHeartbeatWithResponseHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (_TRLogEnabled == 1)
    {
      v4 = TRLogHandle(WeakRetained);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "[TRSession sendHeartbeatWithResponseHandler:]_block_invoke";
        v8 = 2048;
        v9 = 0x4039000000000000;
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Failed to receive heartbeat response within %f seconds.", &v6, 0x16u);
      }
    }

    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9103 userInfo:0];
    (*(*(a1 + 40) + 16))();
  }
}

void __46__TRSession_sendHeartbeatWithResponseHandler___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  dispatch_source_cancel(*(a1 + 32));
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = *MEMORY[0x277CCA450];
      v18[0] = @"Invalid response message class.";
      v8 = *MEMORY[0x277CCA470];
      v17[0] = v7;
      v17[1] = v8;
      v9 = MEMORY[0x277CCACA8];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = [v9 stringWithFormat:@"Response class is not a subclass of %@: %@.", v11, v13];
      v18[1] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9201 userInfo:v15];

      v6 = 0;
      v5 = v16;
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_handleHeartbeatWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  heartbeatRequestTimer = [(TRSession *)self heartbeatRequestTimer];
  v6 = heartbeatRequestTimer;
  if (heartbeatRequestTimer)
  {
    dispatch_source_cancel(heartbeatRequestTimer);
    [(TRSession *)self setHeartbeatRequestTimer:0];
  }

  v7 = objc_alloc_init(TRHeartbeatResponse);
  handlerCopy[2](handlerCopy, 0, v7);
  v8 = dispatch_get_global_queue(0, 0);
  v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);

  v10 = dispatch_time(0, 30000000000);
  dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __49__TRSession__handleHeartbeatWithResponseHandler___block_invoke;
  handler[3] = &unk_279DCF690;
  v11 = v9;
  v13 = v11;
  objc_copyWeak(&v14, &location);
  dispatch_source_set_event_handler(v11, handler);
  dispatch_resume(v11);
  [(TRSession *)self setHeartbeatRequestTimer:v11];
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void __49__TRSession__handleHeartbeatWithResponseHandler___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  dispatch_source_cancel(*(a1 + 32));
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (_TRLogEnabled == 1)
    {
      v4 = TRLogHandle(WeakRetained);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = 136315394;
        v6 = "[TRSession _handleHeartbeatWithResponseHandler:]_block_invoke";
        v7 = 2048;
        v8 = 0x403E000000000000;
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Failed to receive heartbeat request within %f seconds.", &v5, 0x16u);
      }
    }

    [v3 setHeartbeatRequestTimer:0];
    [v3 disconnect];
  }
}

@end