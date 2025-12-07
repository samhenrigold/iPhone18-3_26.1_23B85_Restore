@interface TRActivationOperation
- (void)_handleResponse:(id)response;
- (void)execute;
@end

@implementation TRActivationOperation

- (void)execute
{
  v12 = *MEMORY[0x277D85DE8];
  isCancelled = [(TRActivationOperation *)self isCancelled];
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
        v11 = "[TRActivationOperation execute]";
        _os_log_impl(&dword_26F2A2000, v4, OS_LOG_TYPE_DEFAULT, "%s Send Activation Request", buf, 0xCu);
      }
    }

    v5 = objc_alloc_init(TRSetupActivationRequest);
    objc_initWeak(buf, self);
    session = [(TROperation *)self session];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__TRActivationOperation_execute__block_invoke;
    v8[3] = &unk_279DCECD0;
    objc_copyWeak(&v9, buf);
    [session sendRequest:v5 withResponseHandler:v8];

    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

void __32__TRActivationOperation_execute__block_invoke(uint64_t a1, void *a2, void *a3)
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
  v20 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v5 = responseCopy;
  if (_TRLogEnabled == 1)
  {
    v6 = TRLogHandle(responseCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[TRActivationOperation _handleResponse:]";
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_26F2A2000, v6, OS_LOG_TYPE_DEFAULT, "%s Handle Activation Response: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "activated", @"TRActivationOperationIsActivatedKey"}];
    v15 = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [v9 mutableCopy];

    error = [v7 error];

    if (error)
    {
      error2 = [v7 error];
      [v10 setObject:error2 forKeyedSubscript:@"TRActivationOperationErrorKey"];
    }

    v13 = [v10 copy];
    [(TROperation *)self finishWithResult:v13];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
    [(TROperation *)self finishWithError:v7];
  }
}

@end