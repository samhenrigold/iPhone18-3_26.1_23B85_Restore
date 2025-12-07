@interface TRHandshakeOperation
- (void)_handleResponse:(id)response;
- (void)execute;
@end

@implementation TRHandshakeOperation

- (void)execute
{
  v12 = *MEMORY[0x277D85DE8];
  isCancelled = [(TRHandshakeOperation *)self isCancelled];
  if (isCancelled)
  {
    userCancelledError = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:userCancelledError];
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v4 = TRLogHandle(isCancelled);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v11 = "[TRHandshakeOperation execute]";
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Send Handshake Request", buf, 0xCu);
      }
    }

    v5 = objc_alloc_init(TRHandshakeRequest);
    [(TRHandshakeRequest *)v5 setProtocolVersion:[(TRHandshakeOperation *)self protocolVersion]];
    objc_initWeak(buf, self);
    session = [(TROperation *)self session];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __31__TRHandshakeOperation_execute__block_invoke;
    v8[3] = &unk_279DCECD0;
    objc_copyWeak(&v9, buf);
    [session sendRequest:v5 withResponseHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

void __31__TRHandshakeOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isCancelled])
  {
    v7 = [objc_opt_class() userCancelledError];
    [WeakRetained finishWithError:v7];
  }

  else if (v5)
  {
    [WeakRetained _handleResponse:v5];
  }

  else
  {
    [WeakRetained finishWithError:v8];
  }
}

- (void)_handleResponse:(id)response
{
  v17 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = responseCopy;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle(responseCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[TRHandshakeOperation _handleResponse:]";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s Handle Handshake Response: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    protocolVersion = [v7 protocolVersion];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{protocolVersion, @"TRHandshakeOperationProtocolVersionKey"}];
    v12 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    [(TROperation *)self finishWithResult:v10];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
    [(TROperation *)self finishWithError:v10];
  }
}

@end