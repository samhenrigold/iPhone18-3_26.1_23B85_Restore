@interface HAP2AccessoryServerTransportBase
+ (id)new;
- (BOOL)mergeWithNewTransport:(id)transport;
- (HAP2AccessoryServerTransportBase)init;
- (HAP2AccessoryServerTransportBase)initWithOperationQueue:(id)queue delegateQueue:(id)delegateQueue;
- (HAP2AccessoryServerTransportCommon)underlyingTransport;
- (double)maxRequestTimeout;
- (id)endpointForCharacteristic:(id)characteristic;
- (id)endpointForCharacteristics:(id)characteristics;
- (id)mimeTypeForCharacteristicRequests;
- (id)mimeTypeForWellKnownEndpoint:(unint64_t)endpoint;
- (id)queuedCloseOperation;
- (id)wellKnownEndpoint:(unint64_t)endpoint;
- (unint64_t)protocolFeaturesForVersion:(id)version;
- (unint64_t)state;
- (void)_closeWithError:(void *)error completion:;
- (void)closeWithError:(id)error completion:(id)completion;
- (void)didChangeStateWithError:(id)error;
- (void)didDisconnectWithError:(id)error;
- (void)doCloseWithError:(id)error completion:(id)completion;
- (void)doOpenWithCompletion:(id)completion;
- (void)doSendRequest:(id)request completion:(id)completion;
- (void)doUpdateMaxRequestTimeout:(double)timeout;
- (void)internalState;
- (void)openWithCompletion:(id)completion;
- (void)sendRequest:(id)request completion:(id)completion;
- (void)setInternalState:(void *)state;
- (void)setMaxRequestTimeout:(double)timeout;
- (void)setQueuedCloseOperation:(id *)operation;
- (void)updateMaxRequestTimeout:(double)timeout;
@end

@implementation HAP2AccessoryServerTransportBase

- (void)doUpdateMaxRequestTimeout:(double)timeout
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"%@ is unavailable", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)didDisconnectWithError:(id)error
{
  v10 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412546;
    selfCopy = self;
    v8 = 2112;
    v9 = errorCopy;
    _os_log_error_impl(&dword_22AADC000, v5, OS_LOG_TYPE_ERROR, "%@ (Base) Disconnected with error: %@", &v6, 0x16u);
  }

  [(HAP2AccessoryServerTransportBase *)self _closeWithError:errorCopy completion:&__block_literal_global_6709];
}

- (void)_closeWithError:(void *)error completion:
{
  if (self)
  {
    errorCopy = error;
    v6 = a2;
    v7 = [[HAP2AccessoryServerTransportBaseOperationClose alloc] initWithTransport:self desiredError:v6 completion:errorCopy];

    propertyLock = [self propertyLock];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __63__HAP2AccessoryServerTransportBase__closeWithError_completion___block_invoke;
    v14 = &unk_2786D7050;
    selfCopy = self;
    v16 = v7;
    v9 = v7;
    [propertyLock performWritingBlock:&v11];

    operationQueue = [self operationQueue];
    [operationQueue addOperation:v9];
  }
}

- (void)setQueuedCloseOperation:(id *)operation
{
  v5 = a2;
  if (operation)
  {
    propertyLock = [operation propertyLock];
    [propertyLock assertOwner];

    objc_storeStrong(operation + 2, a2);
  }
}

void *__56__HAP2AccessoryServerTransportBase__closeWithOperation___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [(HAP2AccessoryServerTransportBase *)*(a1 + 40) queuedCloseOperation];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    [(HAP2AccessoryServerTransportBase *)*(a1 + 40) setQueuedCloseOperation:?];
  }

  if ([(HAP2AccessoryServerTransportBase *)*(a1 + 40) internalState]- 1 <= 1)
  {
    [(HAP2AccessoryServerTransportBase *)*(a1 + 40) setInternalState:?];
  }

  result = [(HAP2AccessoryServerTransportBase *)*(a1 + 40) internalState];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void __56__HAP2AccessoryServerTransportBase__closeWithOperation___block_invoke_35(uint64_t a1, char a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v9 = hap2Log_accessory;
  if (v8)
  {
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138412546;
      v29 = v10;
      v30 = 2112;
      v31 = v8;
      _os_log_error_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%@ (Base) Failed to close: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138412290;
    v29 = v11;
    _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEFAULT, "%@ (Base) Closed", buf, 0xCu);
  }

  v12 = [*(a1 + 32) propertyLock];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __56__HAP2AccessoryServerTransportBase__closeWithOperation___block_invoke_36;
  v27[3] = &unk_2786D6CA0;
  v27[4] = *(a1 + 32);
  [v12 performWritingBlock:v27];

  v13 = *(a1 + 40);
  if (v13)
  {
    v13 = v13[37];
  }

  v15 = v13;
  v16 = *(a1 + 40);
  if (v16)
  {
    objc_setProperty_nonatomic_copy(v16, v14, 0, 296);
  }

  v17 = [*(a1 + 32) delegateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HAP2AccessoryServerTransportBase__closeWithOperation___block_invoke_2;
  block[3] = &unk_2786D5F70;
  v18 = v15;
  v25 = v18;
  v26 = a2;
  v19 = v7;
  v23 = v19;
  v20 = v8;
  v24 = v20;
  dispatch_async(v17, block);

  [*(a1 + 32) didChangeStateWithError:v20];
  v21 = *(a1 + 40);
  if (v8)
  {
    [v21 finishWithError:v20];
  }

  else
  {
    [v21 finish];
  }
}

- (void)setInternalState:(void *)state
{
  if (state)
  {
    operationQueue = [state operationQueue];
    [operationQueue assertCurrentQueue];

    propertyLock = [state propertyLock];
    [propertyLock assertOwner];

    state[1] = a2;
  }
}

- (id)queuedCloseOperation
{
  if (self)
  {
    selfCopy = self;
    propertyLock = [self propertyLock];
    [propertyLock assertOwner];

    self = selfCopy[2];
    v1 = vars8;
  }

  return self;
}

- (void)internalState
{
  if (result)
  {
    v1 = result;
    propertyLock = [result propertyLock];
    [propertyLock assertOwner];

    return v1[1];
  }

  return result;
}

- (void)doCloseWithError:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)doSendRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"%@ is unavailable", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)doOpenWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)didChangeStateWithError:(id)error
{
  errorCopy = error;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)updateMaxRequestTimeout:(double)timeout
{
  v18 = *MEMORY[0x277D85DE8];
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v6 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = timeout;
    _os_log_impl(&dword_22AADC000, v6, OS_LOG_TYPE_INFO, "%@ (Base) Scheduling max request timeout change: %f", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = __Block_byref_object_copy__6734;
  v16 = __Block_byref_object_dispose__6735;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__HAP2AccessoryServerTransportBase_updateMaxRequestTimeout___block_invoke;
  v13[3] = &unk_2786D5778;
  *&v13[6] = timeout;
  v13[4] = self;
  v13[5] = buf;
  v7 = MEMORY[0x231885210](v13);
  v8 = [HAP2AsynchronousBlockOperation alloc];
  v9 = NSStringFromSelector(a2);
  v10 = [(HAP2AsynchronousBlockOperation *)v8 initWithName:v9 block:v7];
  v11 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v10;

  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue addOperation:*(*&buf[8] + 40)];

  _Block_object_dispose(buf, 8);
}

uint64_t __60__HAP2AccessoryServerTransportBase_updateMaxRequestTimeout___block_invoke(uint64_t a1)
{
  [*(a1 + 32) doUpdateMaxRequestTimeout:*(a1 + 48)];
  [*(a1 + 32) setMaxRequestTimeout:*(a1 + 48)];
  v2 = *(*(*(a1 + 40) + 8) + 40);

  return [v2 finish];
}

- (BOOL)mergeWithNewTransport:(id)transport
{
  transportCopy = transport;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)mimeTypeForWellKnownEndpoint:(unint64_t)endpoint
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"%@ is unavailable", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)mimeTypeForCharacteristicRequests
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)endpointForCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)endpointForCharacteristic:(id)characteristic
{
  characteristicCopy = characteristic;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (id)wellKnownEndpoint:(unint64_t)endpoint
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"%@ is unavailable", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (unint64_t)protocolFeaturesForVersion:(id)version
{
  versionCopy = version;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)closeWithError:(id)error completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  errorCopy = error;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v8 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%@ (Base) Scheduling close", &v9, 0xCu);
  }

  [(HAP2AccessoryServerTransportBase *)self _closeWithError:errorCopy completion:completionCopy];
}

- (void)sendRequest:(id)request completion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v8 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = requestCopy;
    _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_INFO, "%@ (Base) Scheduling send for request %@", &v11, 0x16u);
  }

  v9 = [[HAP2AccessoryServerTransportBaseOperationSendRequest alloc] initWithTransport:self request:requestCopy completion:completionCopy];

  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue addOperation:v9];
}

void __62__HAP2AccessoryServerTransportBase__sendRequestWithOperation___block_invoke(uint64_t a1)
{
  v2 = [(HAP2AccessoryServerTransportBase *)*(a1 + 32) queuedCloseOperation];
  v6 = v2;
  if (!v2)
  {
    v5 = [(HAP2AccessoryServerTransportBase *)*(a1 + 32) internalState];
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        goto LABEL_14;
      }

      if (v5 != 3)
      {
        goto LABEL_14;
      }
    }

    else if (v5 >= 2)
    {
      goto LABEL_14;
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_14;
  }

  v3 = *(v2 + 288);
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
  if (!v3)
  {
  }

LABEL_14:
}

void __62__HAP2AccessoryServerTransportBase__sendRequestWithOperation___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if ([*(a1 + 32) isCancelled])
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v8 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *v17 = 138412290;
      *&v17[4] = v9;
      _os_log_debug_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEBUG, "%@ (Base) Operation was canceled", v17, 0xCu);
    }
  }

  else
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v10 = hap2Log_accessory;
    if (v6)
    {
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 32);
        v11 = *(a1 + 40);
        if (v12)
        {
          v12 = *(v12 + 288);
        }

        *v17 = 138412546;
        *&v17[4] = v11;
        *&v17[12] = 2112;
        *&v17[14] = v12;
        v13 = v10;
        _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_INFO, "%@ (Base) Received response for request %@", v17, 0x16u);
      }

      v14 = *(a1 + 32);
      if (v14)
      {
        objc_storeStrong((v14 + 296), a2);
        v15 = *(a1 + 32);
      }

      else
      {
        v15 = 0;
      }

      [v15 finish];
    }

    else
    {
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 40);
        *v17 = 138412546;
        *&v17[4] = v16;
        *&v17[12] = 2112;
        *&v17[14] = v7;
        _os_log_error_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%@ (Base) Failed to send: %@", v17, 0x16u);
      }

      [*(a1 + 32) finishWithError:v7];
    }
  }
}

- (void)openWithCompletion:(id)completion
{
  v10 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (hap2LogInitialize_onceToken != -1)
  {
    dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
  }

  v5 = hap2Log_accessory;
  if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_22AADC000, v5, OS_LOG_TYPE_INFO, "%@ (Base) Scheduling open", &v8, 0xCu);
  }

  v6 = [[HAP2AccessoryServerTransportBaseOperationOpen alloc] initWithTransport:self completion:completionCopy];

  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue addOperation:v6];
}

void __55__HAP2AccessoryServerTransportBase__openWithOperation___block_invoke(uint64_t a1)
{
  v2 = [(HAP2AccessoryServerTransportBase *)*(a1 + 32) queuedCloseOperation];
  v7 = v2;
  if (v2)
  {
    v3 = *(v2 + 288);
    v4 = v3;
    if (!v3)
    {
      v4 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4);
    if (!v3)
    {
    }
  }

  else
  {
    v5 = [(HAP2AccessoryServerTransportBase *)*(a1 + 32) internalState];
    if (v5 <= 3 && v5 != 2)
    {
      [(HAP2AccessoryServerTransportBase *)*(a1 + 32) setInternalState:?];
    }

    *(*(*(a1 + 48) + 8) + 24) = [(HAP2AccessoryServerTransportBase *)*(a1 + 32) internalState];
  }
}

void __55__HAP2AccessoryServerTransportBase__openWithOperation___block_invoke_23(uint64_t a1, char a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if ([*(a1 + 32) isCancelled])
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v9 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEBUG))
    {
      v26 = *(a1 + 40);
      *buf = 138412290;
      v39 = v26;
      _os_log_debug_impl(&dword_22AADC000, v9, OS_LOG_TYPE_DEBUG, "%@ (Base) Operation was canceled", buf, 0xCu);
    }

    [*(a1 + 48) invalidate];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v11 = [WeakRetained operationQueue];
    [v11 assertCurrentQueue];

    v12 = *(a1 + 32);
    if (v12)
    {
      v12 = v12[36];
    }

    v14 = v12;
    v15 = *(a1 + 32);
    if (v15)
    {
      objc_setProperty_nonatomic_copy(v15, v13, 0, 288);
    }

    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v16 = hap2Log_accessory;
    if (v8)
    {
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v39 = WeakRetained;
        v40 = 2112;
        v41 = v8;
        _os_log_error_impl(&dword_22AADC000, v16, OS_LOG_TYPE_ERROR, "%@ (Base) Failed to open: %@", buf, 0x16u);
      }

      v17 = [WeakRetained propertyLock];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __55__HAP2AccessoryServerTransportBase__openWithOperation___block_invoke_24;
      v37[3] = &unk_2786D6CA0;
      v37[4] = WeakRetained;
      [v17 performWritingBlock:v37];

      [WeakRetained didChangeStateWithError:v8];
      v18 = [WeakRetained propertyLock];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __55__HAP2AccessoryServerTransportBase__openWithOperation___block_invoke_2;
      v36[3] = &unk_2786D6CA0;
      v36[4] = WeakRetained;
      [v18 performWritingBlock:v36];

      v19 = [WeakRetained delegateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __55__HAP2AccessoryServerTransportBase__openWithOperation___block_invoke_3;
      block[3] = &unk_2786D5F70;
      v34 = v14;
      v35 = a2;
      v32 = v7;
      v20 = v8;
      v33 = v20;
      v21 = v14;
      dispatch_async(v19, block);

      [WeakRetained didChangeStateWithError:v20];
      [*(a1 + 32) finishWithError:v20];
      [*(a1 + 48) invalidate];

      v22 = v34;
    }

    else
    {
      if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = WeakRetained;
        _os_log_impl(&dword_22AADC000, v16, OS_LOG_TYPE_DEFAULT, "%@ (Base) Opened", buf, 0xCu);
      }

      v23 = [WeakRetained propertyLock];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __55__HAP2AccessoryServerTransportBase__openWithOperation___block_invoke_25;
      v30[3] = &unk_2786D6CA0;
      v30[4] = WeakRetained;
      [v23 performWritingBlock:v30];

      v24 = [WeakRetained delegateQueue];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __55__HAP2AccessoryServerTransportBase__openWithOperation___block_invoke_2_26;
      v27[3] = &unk_2786D65D8;
      v29 = v14;
      v28 = v7;
      v25 = v14;
      dispatch_async(v24, v27);

      [WeakRetained didChangeStateWithError:0];
      [*(a1 + 32) finish];
      [*(a1 + 48) invalidate];

      v22 = v29;
    }
  }
}

- (HAP2AccessoryServerTransportCommon)underlyingTransport
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)setMaxRequestTimeout:(double)timeout
{
  operationQueue = [(HAP2AccessoryServerTransportBase *)self operationQueue];
  [operationQueue assertCurrentQueue];

  propertyLock = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HAP2AccessoryServerTransportBase_setMaxRequestTimeout___block_invoke;
  v7[3] = &unk_2786D63C8;
  v7[4] = self;
  *&v7[5] = timeout;
  [propertyLock performWritingBlock:v7];
}

double __57__HAP2AccessoryServerTransportBase_setMaxRequestTimeout___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 24) = result;
  return result;
}

- (double)maxRequestTimeout
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  propertyLock = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__HAP2AccessoryServerTransportBase_maxRequestTimeout__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [propertyLock performReadingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

double __53__HAP2AccessoryServerTransportBase_maxRequestTimeout__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)state
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  propertyLock = [(HAP2AccessoryServerTransportBase *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__HAP2AccessoryServerTransportBase_state__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [propertyLock performReadingBlock:v6];

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__41__HAP2AccessoryServerTransportBase_state__block_invoke(uint64_t a1)
{
  result = [(HAP2AccessoryServerTransportBase *)*(a1 + 32) internalState];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (HAP2AccessoryServerTransportBase)initWithOperationQueue:(id)queue delegateQueue:(id)delegateQueue
{
  queueCopy = queue;
  delegateQueueCopy = delegateQueue;
  v17.receiver = self;
  v17.super_class = HAP2AccessoryServerTransportBase;
  v9 = [(HAP2AccessoryServerTransportBase *)&v17 init];
  if (v9)
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"%@.propertyLock", v12];

    v14 = [HAP2PropertyLock lockWithName:v13];
    propertyLock = v9->_propertyLock;
    v9->_propertyLock = v14;

    objc_storeStrong(&v9->_operationQueue, queue);
    objc_storeStrong(&v9->_delegateQueue, delegateQueue);
    v9->_internalState = 0;
  }

  return v9;
}

- (HAP2AccessoryServerTransportBase)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

@end