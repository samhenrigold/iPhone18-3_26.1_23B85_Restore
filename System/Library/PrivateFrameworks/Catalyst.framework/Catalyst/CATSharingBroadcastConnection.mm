@interface CATSharingBroadcastConnection
- (CATSharingBroadcastConnection)initWithBroadcastPrimitives:(id)primitives timerSource:(id)source;
- (CATSharingConnectionDelegate)delegate;
- (void)_close;
- (void)_sendData:(id)data completion:(id)completion;
- (void)addBroadcastPrimitiveHandlers;
- (void)close;
- (void)closeWithError:(id)error reportToRemote:(BOOL)remote;
- (void)handleCloseMessage:(id)message;
- (void)handleSentMessage:(id)message;
- (void)handleUnparsableMessageDictionary:(id)dictionary;
- (void)messageReceived:(id)received;
- (void)removeBroadcastPrimitiveHandlers;
- (void)sendData:(id)data completion:(id)completion;
- (void)sendMessage:(id)message completion:(id)completion;
- (void)sendTearDownMessageWithError:(id)error;
- (void)tombstoneWithError:(id)error;
@end

@implementation CATSharingBroadcastConnection

- (CATSharingBroadcastConnection)initWithBroadcastPrimitives:(id)primitives timerSource:(id)source
{
  primitivesCopy = primitives;
  sourceCopy = source;
  v18.receiver = self;
  v18.super_class = CATSharingBroadcastConnection;
  v9 = [(CATSharingBroadcastConnection *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mBroadcastPrimitives, primitives);
    objc_storeStrong(&v10->mTimerSource, source);
    [(CATSharingBroadcastConnection *)v10 addBroadcastPrimitiveHandlers];
    v11 = objc_opt_new();
    mOutgoingQueue = v10->mOutgoingQueue;
    v10->mOutgoingQueue = v11;

    v13 = objc_opt_new();
    mCatalystQueue = v10->mCatalystQueue;
    v10->mCatalystQueue = v13;

    v16 = CATGetCatalystQueue(v15);
    [(CATOperationQueue *)v10->mCatalystQueue setUnderlyingQueue:v16];
  }

  return v10;
}

- (void)sendData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__CATSharingBroadcastConnection_sendData_completion___block_invoke;
  v12[3] = &unk_278DA7420;
  objc_copyWeak(&v15, &location);
  v8 = dataCopy;
  v13 = v8;
  v9 = completionCopy;
  v14 = v9;
  v10 = v12;
  v11 = CATGetCatalystQueue(v10);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_1;
  block[3] = &unk_278DA7208;
  v18 = v10;
  dispatch_async(v11, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __53__CATSharingBroadcastConnection_sendData_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _sendData:*(a1 + 32) completion:*(a1 + 40)];
}

- (void)close
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__CATSharingBroadcastConnection_close__block_invoke;
  v4[3] = &unk_278DA7120;
  objc_copyWeak(&v5, &location);
  v2 = v4;
  v3 = CATGetCatalystQueue(v2);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __CATPerformBlock_block_invoke_1;
  block[3] = &unk_278DA7208;
  v8 = v2;
  dispatch_async(v3, block);

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __38__CATSharingBroadcastConnection_close__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _close];
}

- (void)_sendData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v7 = CATGetCatalystQueue(completionCopy);
  CATAssertIsQueue(v7);

  if (self->mIsClosing || [(CATSharingBroadcastConnection *)self isClosed])
  {
    v8 = CATErrorWithCodeAndUserInfo(100, 0);
    completionCopy[2](completionCopy, v8);
  }

  else
  {
    v8 = [[CATSharingSentMessage alloc] initWithContent:dataCopy];
    v9 = [[CATSharingMessage alloc] initWithContentMessage:v8];
    [(CATSharingBroadcastConnection *)self sendMessage:v9 completion:completionCopy];
  }
}

- (void)_close
{
  v3 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v3);

  if (![(CATSharingBroadcastConnection *)self isClosed]&& !self->mIsClosing)
  {

    [(CATSharingBroadcastConnection *)self closeWithError:0 reportToRemote:1];
  }
}

- (void)sendMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  v8 = CATGetCatalystQueue(completionCopy);
  CATAssertIsQueue(v8);

  if ([(CATSharingBroadcastConnection *)self isClosed])
  {
    v9 = CATErrorWithCodeAndUserInfo(100, 0);
    completionCopy[2](completionCopy, v9);
  }

  else
  {
    v10 = [[CATSendBroadcastMessageOperation alloc] initWithBroadcastPrimitive:self->mBroadcastPrimitives message:messageCopy];
    objc_initWeak(&location, self);
    v11 = MEMORY[0x277CCA8C8];
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __56__CATSharingBroadcastConnection_sendMessage_completion___block_invoke;
    v17 = &unk_278DA7448;
    v12 = v10;
    v18 = v12;
    v19 = completionCopy;
    objc_copyWeak(&v20, &location);
    v13 = [v11 blockOperationWithBlock:&v14];
    [v13 addDependency:{v12, v14, v15, v16, v17}];
    [(CATOperationQueue *)self->mOutgoingQueue addOperation:v12];
    [(CATOperationQueue *)self->mCatalystQueue addOperation:v13];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }
}

void __56__CATSharingBroadcastConnection_sendMessage_completion___block_invoke(uint64_t a1)
{
  v2 = CATGetCatalystQueue(a1);
  CATAssertIsQueue(v2);

  v4 = [*(a1 + 32) error];
  (*(*(a1 + 40) + 16))();
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained closeWithError:v4 reportToRemote:0];
  }
}

- (void)closeWithError:(id)error reportToRemote:(BOOL)remote
{
  errorCopy = error;
  v6 = CATGetCatalystQueue(errorCopy);
  CATAssertIsQueue(v6);

  if (![(CATSharingBroadcastConnection *)self isClosed]&& !self->mIsClosing)
  {
    self->mIsClosing = 1;
    if (remote)
    {
      [(CATSharingBroadcastConnection *)self sendTearDownMessageWithError:errorCopy];
    }

    else
    {
      [(CATSharingBroadcastConnection *)self tombstoneWithError:errorCopy];
    }
  }
}

- (void)tombstoneWithError:(id)error
{
  errorCopy = error;
  v4 = CATGetCatalystQueue(errorCopy);
  CATAssertIsQueue(v4);

  if (![(CATSharingBroadcastConnection *)self isClosed])
  {
    [(CATSharingBroadcastConnection *)self setClosed:1];
    self->mIsClosing = 0;
    [(CATOperationQueue *)self->mOutgoingQueue cancelAllOperations];
    [(CATSharingBroadcastConnection *)self removeBroadcastPrimitiveHandlers];
    [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitives deactivate];
    [(CATSharingBroadcastConnection *)self setClosedError:errorCopy];
    delegate = [(CATSharingBroadcastConnection *)self delegate];
    [delegate connectionClosed:self];
  }
}

- (void)addBroadcastPrimitiveHandlers
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke;
  v5[3] = &unk_278DA7498;
  objc_copyWeak(&v6, &location);
  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitives setInvalidationHandler:v5];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke_3;
  v3[3] = &unk_278DA74C0;
  objc_copyWeak(&v4, &location);
  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitives setMessageReceivedHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained isClosed] & 1) == 0 && (v5[2] & 1) == 0)
  {
    v6 = v5[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke_2;
    v7[3] = &unk_278DA7470;
    v7[4] = v5;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

void __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && ([WeakRetained isClosed] & 1) == 0)
  {
    v6 = v5[6];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __62__CATSharingBroadcastConnection_addBroadcastPrimitiveHandlers__block_invoke_4;
    v7[3] = &unk_278DA7470;
    v7[4] = v5;
    v8 = v3;
    [v6 addOperationWithBlock:v7];
  }
}

- (void)removeBroadcastPrimitiveHandlers
{
  v3 = CATGetCatalystQueue(self);
  CATAssertIsQueue(v3);

  [(CATSharingBroadcastPrimitives *)self->mBroadcastPrimitives setInvalidationHandler:0];
  mBroadcastPrimitives = self->mBroadcastPrimitives;

  [(CATSharingBroadcastPrimitives *)mBroadcastPrimitives setMessageReceivedHandler:0];
}

- (void)messageReceived:(id)received
{
  receivedCopy = received;
  v5 = CATGetCatalystQueue(receivedCopy);
  CATAssertIsQueue(v5);

  v6 = [CATSharingMessage instanceWithDictionary:receivedCopy];
  v7 = v6;
  if (v6)
  {
    messageType = [v6 messageType];
    contentDictionaryValue = [v7 contentDictionaryValue];
    v10 = contentDictionaryValue;
    if (messageType == 1)
    {
      [(CATSharingBroadcastConnection *)self handleSentMessage:contentDictionaryValue];
    }

    else if (messageType == 2)
    {
      [(CATSharingBroadcastConnection *)self handleCloseMessage:contentDictionaryValue];
    }

    else
    {
      v11 = _CATLogGeneral_0(contentDictionaryValue);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CATSharingBroadcastConnection *)messageType messageReceived:v11];
      }

      [(CATSharingBroadcastConnection *)self handleUnparsableMessageDictionary:v10];
    }
  }

  else
  {
    [(CATSharingBroadcastConnection *)self handleUnparsableMessageDictionary:receivedCopy];
  }
}

- (void)handleUnparsableMessageDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = CATGetCatalystQueue(dictionaryCopy);
  CATAssertIsQueue(v5);

  isClosed = [(CATSharingBroadcastConnection *)self isClosed];
  if ((isClosed & 1) == 0)
  {
    v7 = _CATLogGeneral_0(isClosed);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CATSharingBroadcastConnection *)dictionaryCopy handleUnparsableMessageDictionary:v7];
    }

    v8 = CATErrorWithCodeAndUserInfo(300, 0);
    [(CATSharingBroadcastConnection *)self closeWithError:v8 reportToRemote:!self->mIsClosing];
  }
}

- (void)handleCloseMessage:(id)message
{
  messageCopy = message;
  v4 = CATGetCatalystQueue(messageCopy);
  CATAssertIsQueue(v4);

  v5 = [CATSharingCloseMessage instanceWithDictionary:messageCopy];
  v6 = v5;
  if (v5)
  {
    if (!self->mIsClosing)
    {
      closeError = [v5 closeError];
      [(CATSharingBroadcastConnection *)self closeWithError:closeError reportToRemote:0];
    }
  }

  else
  {
    [(CATSharingBroadcastConnection *)self handleUnparsableMessageDictionary:messageCopy];
  }
}

- (void)handleSentMessage:(id)message
{
  messageCopy = message;
  v4 = CATGetCatalystQueue(messageCopy);
  CATAssertIsQueue(v4);

  v5 = [CATSharingSentMessage instanceWithDictionary:messageCopy];
  if (v5)
  {
    delegate = [(CATSharingBroadcastConnection *)self delegate];
    content = [v5 content];
    [delegate connection:self receivedData:content];
  }

  else
  {
    [(CATSharingBroadcastConnection *)self handleUnparsableMessageDictionary:messageCopy];
  }
}

- (void)sendTearDownMessageWithError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (errorCopy)
  {
    v6 = errorCopy;
  }

  else
  {
    v6 = CATErrorWithCodeAndUserInfo(103, 0);
  }

  v7 = v6;
  v8 = [[CATSharingCloseMessage alloc] initWithError:v6];
  v9 = [[CATSharingMessage alloc] initWithContentMessage:v8];
  [(CATSharingBroadcastConnection *)self sendMessage:v9 completion:&__block_literal_global_4];
  objc_initWeak(&location, self);
  mTimerSource = self->mTimerSource;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = CATGetCatalystQueue(v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__CATSharingBroadcastConnection_sendTearDownMessageWithError___block_invoke_9;
  v17[3] = &unk_278DA72F8;
  objc_copyWeak(&v19, &location);
  v14 = v5;
  v18 = v14;
  v15 = [(CATTimerSource *)mTimerSource scheduleOneShotTimerWithIdentifier:v12 timeInterval:v13 queue:v17 fireHandler:0.5];
  mTombstoneTimer = self->mTombstoneTimer;
  self->mTombstoneTimer = v15;

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __62__CATSharingBroadcastConnection_sendTearDownMessageWithError___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    v4 = _CATLogGeneral_0(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__CATSharingBroadcastConnection_sendTearDownMessageWithError___block_invoke_cold_1(v3, v4);
    }
  }
}

uint64_t __62__CATSharingBroadcastConnection_sendTearDownMessageWithError___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
    WeakRetained = [WeakRetained isClosed];
    v3 = v5;
    if ((WeakRetained & 1) == 0)
    {
      WeakRetained = [v5 tombstoneWithError:*(a1 + 32)];
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](WeakRetained, v3);
}

- (CATSharingConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)messageReceived:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "Unknown message type: %{public}@", &v4, 0xCu);
}

- (void)handleUnparsableMessageDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "Unable to decode message: %{public}@", &v2, 0xCu);
}

void __62__CATSharingBroadcastConnection_sendTearDownMessageWithError___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_24329F000, a2, OS_LOG_TYPE_ERROR, "Error sending close message: %{public}@", &v2, 0xCu);
}

@end