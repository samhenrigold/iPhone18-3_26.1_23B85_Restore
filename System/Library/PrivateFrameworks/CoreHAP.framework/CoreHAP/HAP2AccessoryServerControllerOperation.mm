@interface HAP2AccessoryServerControllerOperation
- (HAP2AccessoryServerControllerOperation)initWithName:(id)name controller:(id)controller encoding:(id)encoding transport:(id)transport request:(id)request endpoint:(id)endpoint mimeType:(id)type timeout:(double)self0 options:(unint64_t)self1 dscpPriority:(int64_t)self2;
- (NSString)description;
- (id)controller;
- (uint64_t)_maybeRefreshSessionAfterError:(uint64_t)error;
- (void)_cancelTimer;
- (void)_closeSessionWithCompletion:(uint64_t)completion;
- (void)_handleSendRequestError:(_BYTE *)error;
- (void)_openTransport:(BOOL)transport;
- (void)_parseResponseData:(id)data;
- (void)_refreshSession;
- (void)_sendRequest;
- (void)_startTimerWithInterval:(uint64_t)interval;
- (void)cancel;
- (void)cancelWithError:(id)error;
- (void)finish;
- (void)finishWithError:(id)error;
- (void)main;
- (void)setRequest:(uint64_t)request;
- (void)setResponse:(uint64_t)response;
- (void)timerDidFire:(id)fire;
@end

@implementation HAP2AccessoryServerControllerOperation

- (NSString)description
{
  controller = [(HAP2AccessoryServerControllerOperation *)&self->super.super.super.isa controller];
  accessoryServer = [controller accessoryServer];

  if (accessoryServer)
  {
    v5 = MEMORY[0x277CCACA8];
    name = [accessoryServer name];
    deviceID = [accessoryServer deviceID];
    v8 = [v5 stringWithFormat:@" [%@/%@]", name, deviceID];
  }

  else
  {
    v8 = &stru_283E79C60;
  }

  v9 = MEMORY[0x277CCACA8];
  v13.receiver = self;
  v13.super_class = HAP2AccessoryServerControllerOperation;
  v10 = [(HAP2AccessoryServerControllerOperation *)&v13 description];
  v11 = [v9 stringWithFormat:@"%@%@", v10, v8];

  return v11;
}

- (id)controller
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 37);
    v1 = vars8;
  }

  return WeakRetained;
}

- (void)timerDidFire:(id)fire
{
  v7 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v4 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_error_impl(&dword_22AADC000, v4, OS_LOG_TYPE_ERROR, "%@ Timeout happened, attempting to cancel", &v5, 0xCu);
  }

  [(HAP2AccessoryServerControllerOperation *)self cancel];
}

- (void)_parseResponseData:(id)data
{
  dataCopy = data;
  if (![(HAP2AsynchronousOperation *)self isCancelled])
  {
    if (self)
    {
      v5 = self->_encoding;
      request = self->_request;
    }

    else
    {
      v5 = 0;
      request = 0;
    }

    v10 = 0;
    v7 = request;
    v8 = [(HAP2AccessoryServerEncoding *)v5 responseForRequest:v7 bodyData:dataCopy error:&v10];
    v9 = v10;

    if (v8)
    {
      [(HAP2AccessoryServerControllerOperation *)self setResponse:v8];
      [(HAP2AccessoryServerControllerOperation *)self finish];
    }

    else
    {
      [(HAP2AccessoryServerControllerOperation *)self finishWithError:v9];
    }
  }
}

- (void)setResponse:(uint64_t)response
{
  if (response)
  {
    objc_storeStrong((response + 368), a2);
  }
}

- (void)_sendRequest
{
  v37 = *MEMORY[0x277D85DE8];
  if (![(HAP2AsynchronousOperation *)self isCancelled])
  {
    if (self)
    {
      request = self->_request;
    }

    else
    {
      request = 0;
    }

    serialize = [(HAP2EncodedRequest *)request serialize];
    if (self)
    {
      v5 = self->_request;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if ([(HAP2EncodedRequest *)v6 type])
    {
      if (self)
      {
        v7 = self->_request;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      if ([(HAP2EncodedRequest *)v8 type]== 2)
      {
        v9 = 1;
      }

      else
      {
        if (self)
        {
          v10 = self->_request;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        if ([(HAP2EncodedRequest *)v11 type]== 5)
        {
          v9 = 1;
        }

        else
        {
          if (self)
          {
            v12 = self->_request;
          }

          else
          {
            v12 = 0;
          }

          v9 = [(HAP2EncodedRequest *)v12 type]== 9;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v13 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      if (self)
      {
        v28 = self->_request;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;
      v30 = v13;
      v31 = [HAP2EncodedRequestThread stringFromHAP2EncodedRequestType:[(HAP2EncodedRequest *)v29 type]];
      *buf = 138412546;
      selfCopy = self;
      v35 = 2112;
      v36 = v31;
      _os_log_debug_impl(&dword_22AADC000, v30, OS_LOG_TYPE_DEBUG, "%@ requestType: %@", buf, 0x16u);
    }

    v14 = [HAP2AccessoryServerTransportRequest alloc];
    if (v9)
    {
      if (self)
      {
        v15 = self->_endpoint;
        v16 = self->_request;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }

      v17 = v16;
      isEncrypted = [(HAP2EncodedRequest *)v17 isEncrypted];
      if (self)
      {
        v19 = self->_mimeType;
        dscpPriority = self->_dscpPriority;
      }

      else
      {
        v19 = 0;
        dscpPriority = 0;
      }

      v21 = [(HAP2AccessoryServerTransportRequest *)v14 initForReadingWithEndpoint:v15 data:serialize encrypted:isEncrypted mimeType:v19 dscpPriority:dscpPriority];
    }

    else
    {
      if (self)
      {
        v15 = self->_endpoint;
        v22 = self->_request;
      }

      else
      {
        v15 = 0;
        v22 = 0;
      }

      v17 = v22;
      isEncrypted2 = [(HAP2EncodedRequest *)v17 isEncrypted];
      if (self)
      {
        v19 = self->_mimeType;
        v24 = self->_dscpPriority;
      }

      else
      {
        v19 = 0;
        v24 = 0;
      }

      v21 = [(HAP2AccessoryServerTransportRequest *)v14 initForWritingWithEndpoint:v15 data:serialize encrypted:isEncrypted2 mimeType:v19 dscpPriority:v24];
    }

    v25 = v21;

    if (self)
    {
      timeout = self->_timeout;
      if (timeout > 0.0)
      {
        [(HAP2AccessoryServerControllerOperation *)self _startTimerWithInterval:?];
      }

      transport = self->_transport;
    }

    else
    {
      transport = 0;
    }

    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __54__HAP2AccessoryServerControllerOperation__sendRequest__block_invoke;
    v32[3] = &unk_2786D3968;
    v32[4] = self;
    [(HAP2AccessoryServerTransportCommon *)transport sendRequest:v25 completion:v32];
  }
}

- (void)_startTimerWithInterval:(uint64_t)interval
{
  if (interval)
  {
    v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:0 options:a2];
    [v3 setDelegate:interval];
    v4 = *(interval + 288);
    *(interval + 288) = v3;
    v5 = v3;

    [v5 resume];
  }
}

void __54__HAP2AccessoryServerControllerOperation__sendRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [(HAP2AccessoryServerControllerOperation *)*(a1 + 32) _cancelTimer];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __54__HAP2AccessoryServerControllerOperation__sendRequest__block_invoke_2;
  v15[3] = &unk_2786D7078;
  v7 = *(a1 + 32);
  v16 = v6;
  v17 = v7;
  v18 = v5;
  v8 = v5;
  v9 = v6;
  v10 = MEMORY[0x231885210](v15);
  v11 = [(HAP2AccessoryServerControllerOperation *)*(a1 + 32) controller];
  v12 = v11;
  if (v11)
  {
    v13 = *(v11 + 88);
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;
  [v14 addConcurrentBlock:v10];
}

- (void)_cancelTimer
{
  if (self)
  {
    v1 = *(self + 288);
    *(self + 288) = 0;
    v2 = v1;

    [v2 cancel];
  }
}

void __54__HAP2AccessoryServerControllerOperation__sendRequest__block_invoke_2(void *a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    v4 = [(HAP2AccessoryServerControllerOperation *)v2 controller];
    if (v4)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v5 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v4;
        _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%@ Forcing session expired", &v12, 0xCu);
      }

      [(HAP2AccessoryServerController *)v4 setSessionStartTime:?];
    }

    if (([(HAP2AccessoryServerControllerOperation *)a1[5] _maybeRefreshSessionAfterError:?]& 1) == 0)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v6 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v8 = a1[5];
        if (v8)
        {
          v9 = v8[45];
        }

        else
        {
          v9 = 0;
        }

        v10 = a1[4];
        v12 = 138412802;
        v13 = v8;
        v14 = 2112;
        v15 = v9;
        v16 = 2112;
        v17 = v10;
        v11 = v6;
        _os_log_error_impl(&dword_22AADC000, v11, OS_LOG_TYPE_ERROR, "%@ Failed to send request %@: %@", &v12, 0x20u);
      }

      [(HAP2AccessoryServerControllerOperation *)a1[5] _handleSendRequestError:?];
    }
  }

  else
  {
    v7 = a1[6];

    [v2 _parseResponseData:v7];
  }
}

- (uint64_t)_maybeRefreshSessionAfterError:(uint64_t)error
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (!error)
  {
    goto LABEL_14;
  }

  if ((*(error + 344) & 2) != 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v19 = 138412290;
    errorCopy4 = error;
    v7 = "%@ Session refresh not allowed for this operation";
    v8 = v6;
    goto LABEL_12;
  }

  if (*(error + 280) == 1)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v5 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v19 = 138412290;
      errorCopy4 = error;
      _os_log_debug_impl(&dword_22AADC000, v5, OS_LOG_TYPE_DEBUG, "%@ Session refresh already attempted once, not attempting again", &v19, 0xCu);
    }

    goto LABEL_13;
  }

  v10 = v3;
  userInfo = [v10 userInfo];
  v12 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  domain = [v10 domain];
  v16 = [domain isEqualToString:@"HAPErrorDomain"];

  v17 = v16 && ([v10 code] == 17 || objc_msgSend(v10, "code") == 8 && objc_msgSend(v14, "code") == 1);
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v18 = hap2Log_accessory;
  if (!v17)
  {
    if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    v19 = 138412290;
    errorCopy4 = error;
    v7 = "%@ Session refresh wouldn't help with this error, not attempting";
    v8 = v18;
LABEL_12:
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, v7, &v19, 0xCu);
LABEL_13:
    error = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    errorCopy4 = error;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_DEFAULT, "%@ Refreshing session due to error: %@", &v19, 0x16u);
  }

  [(HAP2AccessoryServerControllerOperation *)error _refreshSession];
  error = 1;
LABEL_14:

  return error;
}

- (void)_handleSendRequestError:(_BYTE *)error
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (error)
  {
    if ((error[344] & 1) != 0 && [v3 code] == 17 && (objc_msgSend(v4, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"HAPErrorDomain"), v5, v6))
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v7 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        errorCopy = error;
        _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_INFO, "%@ Allowing expired session to stay open", buf, 0xCu);
      }

      [error finishWithError:v4];
    }

    else
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __66__HAP2AccessoryServerControllerOperation__handleSendRequestError___block_invoke;
      v8[3] = &unk_2786D7050;
      v8[4] = error;
      v9 = v4;
      [(HAP2AccessoryServerControllerOperation *)error _closeSessionWithCompletion:v8];
    }
  }
}

- (void)_closeSessionWithCompletion:(uint64_t)completion
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (completion)
  {
    WeakRetained = objc_loadWeakRetained((completion + 296));
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = *(WeakRetained + 11);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    [v7 assertCurrentQueue];

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v8 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      completionCopy = completion;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%@ Closing session", buf, 0xCu);
    }

    v9 = *(completion + 312);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __70__HAP2AccessoryServerControllerOperation__closeSessionWithCompletion___block_invoke;
    v10[3] = &unk_2786D5D70;
    v10[4] = completion;
    v11 = v3;
    [v9 closeWithError:0 completion:v10];
  }
}

void __70__HAP2AccessoryServerControllerOperation__closeSessionWithCompletion___block_invoke(uint64_t a1)
{
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __70__HAP2AccessoryServerControllerOperation__closeSessionWithCompletion___block_invoke_2;
  v11 = &unk_2786D65D8;
  v2 = *(a1 + 40);
  v12 = *(a1 + 32);
  v13 = v2;
  v3 = MEMORY[0x231885210](&v8);
  v4 = [(HAP2AccessoryServerControllerOperation *)*(a1 + 32) controller];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 88);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  [v7 addConcurrentBlock:{v3, v8, v9, v10, v11, v12}];
}

uint64_t __70__HAP2AccessoryServerControllerOperation__closeSessionWithCompletion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v2 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_22AADC000, v2, OS_LOG_TYPE_INFO, "%@ Session closed", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)_refreshSession
{
  if (self)
  {
    *(self + 280) = 1;
    v1[0] = MEMORY[0x277D85DD0];
    v1[1] = 3221225472;
    v1[2] = __57__HAP2AccessoryServerControllerOperation__refreshSession__block_invoke;
    v1[3] = &unk_2786D6CA0;
    v1[4] = self;
    [(HAP2AccessoryServerControllerOperation *)self _closeSessionWithCompletion:v1];
  }
}

- (void)_openTransport:(BOOL)transport
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(HAP2AsynchronousOperation *)self isCancelled])
  {
    return;
  }

  if (self)
  {
    options = self->_options;
    WeakRetained = objc_loadWeakRetained(&self->_controller);
    if (options)
    {
LABEL_14:
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __57__HAP2AccessoryServerControllerOperation__openTransport___block_invoke;
      v13[3] = &unk_2786D3208;
      v13[4] = self;
      [(HAP2AccessoryServerController *)WeakRetained openTransportWithResume:transport completion:v13];

      return;
    }
  }

  else
  {
    WeakRetained = 0;
  }

  isSessionExpired = [(HAP2AccessoryServerController *)WeakRetained isSessionExpired];

  if (!isSessionExpired)
  {
    WeakRetained = [(HAP2AccessoryServerControllerOperation *)&self->super.super.super.isa controller];
    goto LABEL_14;
  }

  if (self)
  {
    if ((self->_options & 2) != 0)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v10 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_error_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%@ Session has expired and operation is not allowed to refresh", buf, 0xCu);
      }

      v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:1];
      goto LABEL_20;
    }

    if (self->_attemptedSessionRefresh)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v8 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_error_impl(&dword_22AADC000, v8, OS_LOG_TYPE_ERROR, "%@ Session refresh has already been attempted", buf, 0xCu);
      }

      v9 = [MEMORY[0x277CCA9B8] hapErrorWithCode:8 marker:2105];
LABEL_20:
      v11 = v9;
      [(HAP2AccessoryServerControllerOperation *)self finishWithError:v9];

      return;
    }
  }

  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v12 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_22AADC000, v12, OS_LOG_TYPE_DEFAULT, "%@ Session has expired, refreshing", buf, 0xCu);
  }

  [(HAP2AccessoryServerControllerOperation *)self _refreshSession];
}

void __57__HAP2AccessoryServerControllerOperation__openTransport___block_invoke(uint64_t a1, int a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(HAP2AccessoryServerControllerOperation *)*(a1 + 32) controller];
  v7 = v6;
  if (v6)
  {
    v8 = *(v6 + 88);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v9 assertCurrentQueue];

  v10 = *(a1 + 32);
  if (!v5)
  {
    [v10 _sendRequest];
    goto LABEL_29;
  }

  if (([(HAP2AccessoryServerControllerOperation *)v10 _maybeRefreshSessionAfterError:v5]& 1) == 0)
  {
    v11 = *(a1 + 32);
    v12 = v5;
    v13 = v12;
    if (v11)
    {
      v14 = [v12 userInfo];
      v15 = [v14 objectForKeyedSubscript:*MEMORY[0x277CCA7E8]];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;

      if (a2)
      {
        v18 = [v13 domain];
        if (![v18 isEqualToString:@"HAPErrorDomain"])
        {
          goto LABEL_22;
        }

        if ([v13 code] == 19)
        {

LABEL_13:
          if (hap2LogInitialize_onceToken != -1)
          {
            dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
          }

          v19 = hap2Log_accessory;
          if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = v11;
            _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEFAULT, "%@ Failed to connect - will try the next IP address for the accessory", buf, 0xCu);
          }

          *v26 = MEMORY[0x277D85DD0];
          *&v26[8] = 3221225472;
          *&v26[16] = __71__HAP2AccessoryServerControllerOperation__retryNextIPAddress_rtnError___block_invoke;
          v27 = &unk_2786D6CA0;
          v28 = v11;
          [(HAP2AccessoryServerControllerOperation *)v11 _closeSessionWithCompletion:v26];

          goto LABEL_29;
        }

        if ([v13 code] == 8)
        {
          v20 = [v17 code];

          if (v20 == 24)
          {
            goto LABEL_13;
          }
        }

        else
        {
LABEL_22:
        }
      }
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v21 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v23 = *(a1 + 32);
      *v26 = 138412546;
      *&v26[4] = v23;
      *&v26[12] = 2112;
      *&v26[14] = v13;
      _os_log_error_impl(&dword_22AADC000, v21, OS_LOG_TYPE_ERROR, "%@ Open failed: %@", v26, 0x16u);
    }

    v22 = *(a1 + 32);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __57__HAP2AccessoryServerControllerOperation__openTransport___block_invoke_9;
    v24[3] = &unk_2786D7050;
    v24[4] = v22;
    v25 = v13;
    [(HAP2AccessoryServerControllerOperation *)v22 _closeSessionWithCompletion:v24];
  }

LABEL_29:
}

- (void)cancelWithError:(id)error
{
  errorCopy = error;
  [(HAP2AccessoryServerControllerOperation *)self _cleanUp];
  v5.receiver = self;
  v5.super_class = HAP2AccessoryServerControllerOperation;
  [(HAP2AsynchronousOperation *)&v5 cancelWithError:errorCopy];
}

- (void)cancel
{
  [(HAP2AccessoryServerControllerOperation *)self _cleanUp];
  v3.receiver = self;
  v3.super_class = HAP2AccessoryServerControllerOperation;
  [(HAP2AsynchronousOperation *)&v3 cancel];
}

- (void)finishWithError:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    selfCopy = self;
    v9 = 2112;
    v10 = errorCopy;
    _os_log_error_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "%@ Finishing: %@", buf, 0x16u);
  }

  [(HAP2AccessoryServerControllerOperation *)self _cleanUp];
  v6.receiver = self;
  v6.super_class = HAP2AccessoryServerControllerOperation;
  [(HAP2AsynchronousOperation *)&v6 finishWithError:errorCopy];
}

- (void)finish
{
  v7 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v3 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_INFO, "%@ Finishing", buf, 0xCu);
  }

  [(HAP2AccessoryServerControllerOperation *)self _cleanUp];
  v4.receiver = self;
  v4.super_class = HAP2AccessoryServerControllerOperation;
  [(HAP2AsynchronousOperation *)&v4 finish];
}

- (void)main
{
  v6 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v3 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v3, OS_LOG_TYPE_DEFAULT, "%@ Starting", &v4, 0xCu);
  }

  [(HAP2AccessoryServerControllerOperation *)self _openTransport:0];
}

- (HAP2AccessoryServerControllerOperation)initWithName:(id)name controller:(id)controller encoding:(id)encoding transport:(id)transport request:(id)request endpoint:(id)endpoint mimeType:(id)type timeout:(double)self0 options:(unint64_t)self1 dscpPriority:(int64_t)self2
{
  controllerCopy = controller;
  encodingCopy = encoding;
  transportCopy = transport;
  requestCopy = request;
  endpointCopy = endpoint;
  typeCopy = type;
  v28.receiver = self;
  v28.super_class = HAP2AccessoryServerControllerOperation;
  v22 = [(HAP2AsynchronousOperation *)&v28 initWithName:name];
  v23 = v22;
  if (v22)
  {
    objc_storeWeak(&v22->_controller, controllerCopy);
    objc_storeStrong(&v23->_encoding, encoding);
    objc_storeStrong(&v23->_transport, transport);
    objc_storeStrong(&v23->_request, request);
    objc_storeStrong(&v23->_endpoint, endpoint);
    objc_storeStrong(&v23->_mimeType, type);
    v23->_timeout = timeout;
    v23->_options = options;
    v23->_dscpPriority = priority;
  }

  return v23;
}

- (void)setRequest:(uint64_t)request
{
  if (request)
  {
    objc_storeStrong((request + 360), a2);
  }
}

@end