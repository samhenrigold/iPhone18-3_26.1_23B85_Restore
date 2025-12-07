@interface CRKIDSSendMessageOperation
- (CRKIDSSendMessageOperation)initWithIDSLocalPrimitives:(id)primitives message:(id)message destinationAddress:(id)address sourceAppleID:(id)d options:(id)options;
- (void)cancel;
- (void)didSendMessageWithIdentifier:(id)identifier sendSuccess:(BOOL)success error:(id)error;
- (void)main;
@end

@implementation CRKIDSSendMessageOperation

- (CRKIDSSendMessageOperation)initWithIDSLocalPrimitives:(id)primitives message:(id)message destinationAddress:(id)address sourceAppleID:(id)d options:(id)options
{
  primitivesCopy = primitives;
  messageCopy = message;
  addressCopy = address;
  dCopy = d;
  optionsCopy = options;
  v29.receiver = self;
  v29.super_class = CRKIDSSendMessageOperation;
  v18 = [(CRKIDSSendMessageOperation *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_IDSLocalPrimitives, primitives);
    v20 = [messageCopy copy];
    message = v19->_message;
    v19->_message = v20;

    v22 = [addressCopy copy];
    destinationAddress = v19->_destinationAddress;
    v19->_destinationAddress = v22;

    v24 = [dCopy copy];
    sourceAppleID = v19->_sourceAppleID;
    v19->_sourceAppleID = v24;

    v26 = [optionsCopy copy];
    options = v19->_options;
    v19->_options = v26;
  }

  return v19;
}

- (void)cancel
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = _CRKLogASM_3(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v9 = v5;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Canceled", buf, 0x16u);
  }

  v7.receiver = self;
  v7.super_class = CRKIDSSendMessageOperation;
  [(CRKIDSSendMessageOperation *)&v7 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__CRKIDSSendMessageOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __36__CRKIDSSendMessageOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [*(a1 + 32) messageSendSubscription];
    [v2 cancel];

    v3 = *(a1 + 32);
    v4 = CATErrorWithCodeAndUserInfo();
    [v3 endOperationWithError:v4];
  }
}

- (void)main
{
  v39 = *MEMORY[0x277D85DE8];
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  if (isMainThread)
  {
    v5 = _CRKLogASM_3(isMainThread);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543618;
      v32 = v7;
      v33 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Creating listener validate message send success", buf, 0x16u);
    }

    objc_initWeak(&location, self);
    iDSLocalPrimitives = [(CRKIDSSendMessageOperation *)self IDSLocalPrimitives];
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __34__CRKIDSSendMessageOperation_main__block_invoke;
    v28[3] = &unk_278DC1230;
    objc_copyWeak(&v29, &location);
    v9 = [iDSLocalPrimitives subscribeToMessageSendsWithHandler:v28];
    [(CRKIDSSendMessageOperation *)self setMessageSendSubscription:v9];

    messageSendSubscription = [(CRKIDSSendMessageOperation *)self messageSendSubscription];
    [messageSendSubscription resume];

    iDSLocalPrimitives2 = [(CRKIDSSendMessageOperation *)self IDSLocalPrimitives];
    message = [(CRKIDSSendMessageOperation *)self message];
    destinationAddress = [(CRKIDSSendMessageOperation *)self destinationAddress];
    sourceAppleID = [(CRKIDSSendMessageOperation *)self sourceAppleID];
    options = [(CRKIDSSendMessageOperation *)self options];
    v26 = 0;
    v27 = 0;
    v16 = [iDSLocalPrimitives2 sendMessage:message toAddress:destinationAddress fromID:sourceAppleID options:options identifier:&v27 error:&v26];
    v17 = v27;
    v18 = v26;

    if (v16)
    {
      v20 = _CRKLogASM_3(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        destinationAddress2 = [(CRKIDSSendMessageOperation *)self destinationAddress];
        *buf = 138544130;
        v32 = v22;
        v33 = 2048;
        selfCopy2 = self;
        v35 = 2114;
        v36 = destinationAddress2;
        v37 = 2114;
        v38 = v17;
        _os_log_impl(&dword_243550000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Sent message to %{public}@ and received identifier %{public}@", buf, 0x2Au);
      }

      [(CRKIDSSendMessageOperation *)self setMessageSendIdentifier:v17];
      v24 = objc_opt_new();
      [(CRKIDSSendMessageOperation *)self setInitialSendDate:v24];
    }

    else
    {
      messageSendSubscription2 = [(CRKIDSSendMessageOperation *)self messageSendSubscription];
      [messageSendSubscription2 cancel];

      [(CRKIDSSendMessageOperation *)self endOperationWithError:v18];
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {

    [(CRKIDSSendMessageOperation *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

void __34__CRKIDSSendMessageOperation_main__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained didSendMessageWithIdentifier:v8 sendSuccess:a3 error:v7];
}

- (void)didSendMessageWithIdentifier:(id)identifier sendSuccess:(BOOL)success error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__CRKIDSSendMessageOperation_didSendMessageWithIdentifier_sendSuccess_error___block_invoke;
  v12[3] = &unk_278DC1258;
  v12[4] = self;
  v13 = identifierCopy;
  successCopy = success;
  v14 = errorCopy;
  v10 = errorCopy;
  v11 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v12);
}

void __77__CRKIDSSendMessageOperation_didSendMessageWithIdentifier_sendSuccess_error___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) isExecuting])
  {
    v2 = [*(a1 + 32) messageSendIdentifier];
    v3 = [v2 isEqualToString:*(a1 + 40)];

    if (v3)
    {
      v4 = objc_opt_new();
      v5 = [*(a1 + 32) initialSendDate];
      [v4 timeIntervalSinceDate:v5];
      v7 = v6;

      v9 = _CRKLogASM_3(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v14 = [v12 destinationAddress];
        if (*(a1 + 56))
        {
          v15 = @"YES";
        }

        else
        {
          v15 = @"NO";
        }

        v16 = v15;
        v18 = 138544642;
        v19 = v11;
        v20 = 2048;
        v21 = v12;
        v22 = 2114;
        v23 = v13;
        v24 = 2114;
        v25 = v14;
        v26 = 2114;
        v27 = v16;
        v28 = 2048;
        v29 = v7;
        _os_log_impl(&dword_243550000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Received message send status for message %{public}@ to %{public}@. Did succeed = %{public}@, duration = %.2f", &v18, 0x3Eu);
      }

      v17 = *(a1 + 32);
      if (*(a1 + 56))
      {
        [v17 endOperationWithResultObject:0];
      }

      else
      {
        [v17 endOperationWithError:*(a1 + 48)];
      }
    }
  }
}

@end