@interface HAP2AccessoryServerTransportBaseOperationSendRequest
- (HAP2AccessoryServerTransportBaseOperationSendRequest)initWithTransport:(id)transport request:(id)request completion:(id)completion;
- (void)main;
@end

@implementation HAP2AccessoryServerTransportBaseOperationSendRequest

- (void)main
{
  v38 = *MEMORY[0x277D85DE8];
  if (self && (v3 = self->super._transport) != 0)
  {
    v18 = v3;
    selfCopy = self;
    operationQueue = [(HAP2AccessoryServerTransportBase *)v18 operationQueue];
    [operationQueue assertCurrentQueue];

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__6734;
    v28 = __Block_byref_object_dispose__6735;
    v29 = 0;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    propertyLock = [(HAP2AccessoryServerTransportBase *)v18 propertyLock];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __62__HAP2AccessoryServerTransportBase__sendRequestWithOperation___block_invoke;
    v19[3] = &unk_2786D4688;
    v19[4] = v18;
    v19[5] = &v24;
    v19[6] = &v20;
    [propertyLock performReadingBlock:v19];

    if (v25[5])
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v7 = hap2Log_accessory;
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v18;
        _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%@ (Base) Not sending while a close is enqueued", buf, 0xCu);
      }

      [(HAP2AsynchronousOperation *)selfCopy cancelWithError:v25[5], v18];
    }

    else
    {
      if (v21[3])
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v8 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
        {
          request = selfCopy->_request;
          *buf = 138412546;
          *&buf[4] = v18;
          *&buf[12] = 2112;
          *&buf[14] = request;
          v10 = v8;
          _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_INFO, "%@ (Base) Sending request %@", buf, 0x16u);
        }

        v11 = selfCopy->_request;
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __62__HAP2AccessoryServerTransportBase__sendRequestWithOperation___block_invoke_33;
        v35 = &unk_2786D3DA0;
        v12 = selfCopy;
        v36 = v12;
        v37 = v18;
        [(HAP2AccessoryServerTransportBase *)v18 doSendRequest:v11 completion:buf];

        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v13 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
        {
          v16 = v12->_request;
          *v30 = 138412546;
          v31 = v18;
          v32 = 2112;
          v33 = v16;
          v17 = v13;
          _os_log_debug_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%@ (Base) Sent request %@", v30, 0x16u);
        }

        v14 = v36;
      }

      else
      {
        if (hap2LogInitialize_onceToken != -1)
        {
          dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
        }

        v15 = hap2Log_accessory;
        if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v18;
          _os_log_error_impl(&dword_22AADC000, v15, OS_LOG_TYPE_ERROR, "%@ (Base) Cannot send when not open", buf, 0xCu);
        }

        v14 = [MEMORY[0x277CCA9B8] hapErrorWithCode:19 description:@"HAP2AccessoryServer cannot send request when transport not open" reason:@"HAP2AccessoryServerTransport state != HAP2AccessoryServerTransportStateOpen when calling sendRequestWithOperation" suggestion:0 underlyingError:0 marker:{104, v18}];
        [(HAP2AsynchronousOperation *)selfCopy cancelWithError:v14];
      }
    }

    _Block_object_dispose(&v20, 8);
    _Block_object_dispose(&v24, 8);
  }

  else
  {

    [(HAP2AsynchronousOperation *)self cancel];
  }
}

- (HAP2AccessoryServerTransportBaseOperationSendRequest)initWithTransport:(id)transport request:(id)request completion:(id)completion
{
  transportCopy = transport;
  requestCopy = request;
  completionCopy = completion;
  v11 = MEMORY[0x277CCACA8];
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  v14 = [v11 stringWithFormat:@"%@.sendRequest", v13];
  v26.receiver = self;
  v26.super_class = HAP2AccessoryServerTransportBaseOperationSendRequest;
  v15 = [(HAP2AccessoryServerTransportBaseOperation *)&v26 initWithName:v14 transport:transportCopy];

  if (v15)
  {
    objc_storeStrong(&v15->_request, request);
    v16 = MEMORY[0x231885210](completionCopy);
    clientCompletion = v15->_clientCompletion;
    v15->_clientCompletion = v16;

    delegateQueue = [transportCopy delegateQueue];
    objc_initWeak(&location, v15);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __93__HAP2AccessoryServerTransportBaseOperationSendRequest_initWithTransport_request_completion___block_invoke;
    v21[3] = &unk_2786D6BE0;
    objc_copyWeak(&v24, &location);
    v19 = delegateQueue;
    v22 = v19;
    v23 = completionCopy;
    [(HAP2AccessoryServerTransportBaseOperationSendRequest *)v15 setCompletionBlock:v21];

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __93__HAP2AccessoryServerTransportBaseOperationSendRequest_initWithTransport_request_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[38];
    objc_setProperty_nonatomic_copy(v3, v5, 0, 304);
    if (v4)
    {
      v6 = *(a1 + 32);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __93__HAP2AccessoryServerTransportBaseOperationSendRequest_initWithTransport_request_completion___block_invoke_2;
      v7[3] = &unk_2786D65D8;
      v8 = v3;
      v9 = *(a1 + 40);
      dispatch_async(v6, v7);
    }
  }
}

void __93__HAP2AccessoryServerTransportBaseOperationSendRequest_initWithTransport_request_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) error];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = [v3 error];
    (*(v4 + 16))(v4, 0, v5);
  }

  else
  {
    if (v3)
    {
      v6 = v3[37];
    }

    else
    {
      v6 = 0;
    }

    (*(v4 + 16))(*(a1 + 40), v6, 0);
  }

  v7 = *(a1 + 32);

  [HAP2AccessoryServerTransportBaseOperation setTransport:v7];
}

@end