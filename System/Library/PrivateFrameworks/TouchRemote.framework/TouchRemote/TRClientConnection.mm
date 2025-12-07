@interface TRClientConnection
- (id)eventMessageHandler;
- (id)interruptionHandler;
- (id)invalidationHandler;
- (id)requestMessageHandler;
- (void)connectToNearbyDevice:(id)device withCompletion:(id)completion;
- (void)invalidate;
- (void)sendEvent:(id)event;
- (void)sendRequest:(id)request;
- (void)sendResponse:(id)response;
- (void)setEventMessageHandler:(id)handler;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
- (void)setRequestMessageHandler:(id)handler;
@end

@implementation TRClientConnection

- (id)interruptionHandler
{
  session = [(TRClientConnection *)self session];
  interruptionHandler = [session interruptionHandler];

  return interruptionHandler;
}

- (void)setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  session = [(TRClientConnection *)self session];
  [session setInterruptionHandler:handlerCopy];
}

- (id)invalidationHandler
{
  session = [(TRClientConnection *)self session];
  invalidationHandler = [session invalidationHandler];

  return invalidationHandler;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  objc_initWeak(&location, self);
  session = [(TRClientConnection *)self session];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__TRClientConnection_setInvalidationHandler___block_invoke;
  v7[3] = &unk_279DCEF18;
  objc_copyWeak(&v9, &location);
  v6 = handlerCopy;
  v8 = v6;
  [session setInvalidationHandler:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__TRClientConnection_setInvalidationHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setSession:0];
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }
}

- (id)eventMessageHandler
{
  session = [(TRClientConnection *)self session];
  eventMessageHandler = [session eventMessageHandler];

  return eventMessageHandler;
}

- (void)setEventMessageHandler:(id)handler
{
  handlerCopy = handler;
  session = [(TRClientConnection *)self session];
  [session setEventMessageHandler:handlerCopy];
}

- (id)requestMessageHandler
{
  session = [(TRClientConnection *)self session];
  requestMessageHandler = [session requestMessageHandler];

  return requestMessageHandler;
}

- (void)setRequestMessageHandler:(id)handler
{
  handlerCopy = handler;
  session = [(TRClientConnection *)self session];
  [session setRequestMessageHandler:handlerCopy];
}

- (void)sendEvent:(id)event
{
  v10 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  session = [(TRClientConnection *)self session];
  v6 = session;
  if (session)
  {
    [session sendEvent:eventCopy];
  }

  else if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[TRClientConnection sendEvent:]";
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s Unable to send event message. Connection not connected.", &v8, 0xCu);
    }
  }
}

- (void)sendRequest:(id)request
{
  v16 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  session = [(TRClientConnection *)self session];
  v6 = session;
  if (session)
  {
    [session sendRequest:requestCopy];
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v7 = TRLogHandle(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v15 = "[TRClientConnection sendRequest:]";
        _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s Unable to send request message. Connection not connected.", buf, 0xCu);
      }
    }

    v8 = *MEMORY[0x277CCA470];
    v12[0] = *MEMORY[0x277CCA450];
    v12[1] = v8;
    v13[0] = @"Unable to send request message.";
    v13[1] = @"The connection must be connected before sending messages";
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-9102 userInfo:v9];
    responseHandler = [requestCopy responseHandler];
    (responseHandler)[2](responseHandler, v10, 0);
  }
}

- (void)sendResponse:(id)response
{
  v10 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  session = [(TRClientConnection *)self session];
  v6 = session;
  if (session)
  {
    [session sendResponse:responseCopy];
  }

  else if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[TRClientConnection sendResponse:]";
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s Unable to send response message. Connection not connected.", &v8, 0xCu);
    }
  }
}

- (void)invalidate
{
  v7 = *MEMORY[0x277D85DE8];
  session = [(TRClientConnection *)self session];
  v3 = session;
  if (session)
  {
    [session invalidate];
  }

  else if (_TRLogEnabled == 1)
  {
    v4 = TRLogHandle(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315138;
      v6 = "[TRClientConnection invalidate]";
      _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Unable to invalidate. Connection not connected.", &v5, 0xCu);
    }
  }
}

- (void)connectToNearbyDevice:(id)device withCompletion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  v8 = objc_alloc_init(MEMORY[0x277D54CE8]);
  representedDevice = [deviceCopy representedDevice];
  [v8 setPeerDevice:representedDevice];

  v10 = dispatch_queue_create("com.apple.TRClientConnection.session.dispatchQ", 0);
  [v8 setDispatchQueue:v10];

  if ([deviceCopy supportedService] == 1)
  {
    [v8 setServiceIdentifier:*MEMORY[0x277D54D78]];
  }

  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __59__TRClientConnection_connectToNearbyDevice_withCompletion___block_invoke;
  v13[3] = &unk_279DCEF40;
  v11 = completionCopy;
  v15 = v11;
  objc_copyWeak(&v16, &location);
  v12 = v8;
  v14 = v12;
  [v12 activateWithCompletion:v13];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __59__TRClientConnection_connectToNearbyDevice_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (_TRLogEnabled == 1)
    {
      v5 = TRLogHandle(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315394;
        v9 = "[TRClientConnection connectToNearbyDevice:withCompletion:]_block_invoke";
        v10 = 2112;
        v11 = v4;
        _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%s Connection failed to activate with error: %@", &v8, 0x16u);
      }
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v6 = TRLogHandle(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315138;
        v9 = "[TRClientConnection connectToNearbyDevice:withCompletion:]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s Connection activated successfully", &v8, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setSession:*(a1 + 32)];
    (*(*(a1 + 40) + 16))();
  }
}

@end