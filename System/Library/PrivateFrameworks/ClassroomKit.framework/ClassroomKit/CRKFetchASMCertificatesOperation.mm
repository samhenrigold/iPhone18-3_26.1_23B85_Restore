@interface CRKFetchASMCertificatesOperation
- (CRKFetchASMCertificatesOperation)initWithIDSPrimitives:(id)primitives addressTranslator:(id)translator controlGroupIdentifier:(id)identifier destinationAppleID:(id)d sourceAppleID:(id)iD destinationDeviceIdentifier:(id)deviceIdentifier sourceRole:(int64_t)role destinationRole:(int64_t)self0 requesterCertificate:(id)self1;
- (void)cancel;
- (void)didSendMessage:(id)message;
- (void)main;
- (void)operationWillFinish;
- (void)processMessage:(id)message senderAppleID:(id)d requestIdentifier:(id)identifier;
@end

@implementation CRKFetchASMCertificatesOperation

- (CRKFetchASMCertificatesOperation)initWithIDSPrimitives:(id)primitives addressTranslator:(id)translator controlGroupIdentifier:(id)identifier destinationAppleID:(id)d sourceAppleID:(id)iD destinationDeviceIdentifier:(id)deviceIdentifier sourceRole:(int64_t)role destinationRole:(int64_t)self0 requesterCertificate:(id)self1
{
  primitivesCopy = primitives;
  translatorCopy = translator;
  identifierCopy = identifier;
  dCopy = d;
  iDCopy = iD;
  deviceIdentifierCopy = deviceIdentifier;
  certificateCopy = certificate;
  v36.receiver = self;
  v36.super_class = CRKFetchASMCertificatesOperation;
  v22 = [(CRKFetchASMCertificatesOperation *)&v36 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_IDSPrimitives, primitives);
    objc_storeStrong(&v23->_addressTranslator, translator);
    objc_storeStrong(&v23->_controlGroupIdentifier, identifier);
    v24 = [dCopy copy];
    destinationAppleID = v23->_destinationAppleID;
    v23->_destinationAppleID = v24;

    v26 = [iDCopy copy];
    sourceAppleID = v23->_sourceAppleID;
    v23->_sourceAppleID = v26;

    v28 = [deviceIdentifierCopy copy];
    destinationDeviceIdentifier = v23->_destinationDeviceIdentifier;
    v23->_destinationDeviceIdentifier = v28;

    v23->_sourceRole = role;
    v23->_destinationRole = destinationRole;
    v30 = [certificateCopy copy];
    requesterCertificate = v23->_requesterCertificate;
    v23->_requesterCertificate = v30;
  }

  return v23;
}

- (void)operationWillFinish
{
  messageReceiveSubscription = [(CRKFetchASMCertificatesOperation *)self messageReceiveSubscription];
  [messageReceiveSubscription cancel];
}

- (void)cancel
{
  v4.receiver = self;
  v4.super_class = CRKFetchASMCertificatesOperation;
  [(CRKFetchASMCertificatesOperation *)&v4 cancel];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CRKFetchASMCertificatesOperation_cancel__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __42__CRKFetchASMCertificatesOperation_cancel__block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isExecuting])
  {
    v2 = *(a1 + 32);
    v3 = CATErrorWithCodeAndUserInfo();
    [v2 endOperationWithError:v3];
  }
}

- (void)main
{
  v29 = *MEMORY[0x277D85DE8];
  isMainThread = [MEMORY[0x277CCACC8] isMainThread];
  if (isMainThread)
  {
    v5 = _CRKLogASM_4(isMainThread);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543618;
      v26 = v7;
      v27 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_243550000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Fetching ASM certificate", buf, 0x16u);
    }

    controlGroupIdentifier = [(CRKFetchASMCertificatesOperation *)self controlGroupIdentifier];
    destinationDeviceIdentifier = [(CRKFetchASMCertificatesOperation *)self destinationDeviceIdentifier];
    sourceRole = [(CRKFetchASMCertificatesOperation *)self sourceRole];
    destinationRole = [(CRKFetchASMCertificatesOperation *)self destinationRole];
    requesterCertificate = [(CRKFetchASMCertificatesOperation *)self requesterCertificate];
    v13 = [CRKRequestCertificatesIDSMessage messageWithControlGroupIdentifier:controlGroupIdentifier destinationDeviceIdentifier:destinationDeviceIdentifier sourceRole:sourceRole destinationRole:destinationRole requesterCertificate:requesterCertificate];

    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __40__CRKFetchASMCertificatesOperation_main__block_invoke;
    v23[3] = &unk_278DC12A8;
    v23[4] = self;
    v14 = v13;
    v24 = v14;
    v15 = MEMORY[0x245D3AAD0](v23);
    v16 = _CRKLogASM_4(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543618;
      v26 = v18;
      v27 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_243550000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Preparing to receive response before sending request", buf, 0x16u);
    }

    iDSPrimitives = [(CRKFetchASMCertificatesOperation *)self IDSPrimitives];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __40__CRKFetchASMCertificatesOperation_main__block_invoke_5;
    v21[3] = &unk_278DC12F8;
    v21[4] = self;
    v22 = v14;
    v20 = v14;
    [iDSPrimitives subscribeToMessagesWithHandler:v15 completion:v21];
  }

  else
  {

    [(CRKFetchASMCertificatesOperation *)self performSelectorOnMainThread:a2 withObject:0 waitUntilDone:0];
  }
}

void __40__CRKFetchASMCertificatesOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = a2;
  v8 = [v5 requestIdentifier];
  [v4 processMessage:v7 senderAppleID:v6 requestIdentifier:v8];
}

void __40__CRKFetchASMCertificatesOperation_main__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__CRKFetchASMCertificatesOperation_main__block_invoke_2;
  v10[3] = &unk_278DC12D0;
  v7 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v6;
  v12 = v5;
  v13 = v7;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v10);
}

void __40__CRKFetchASMCertificatesOperation_main__block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isExecuting];
  if (v2)
  {
    if (*(a1 + 40))
    {
      v3 = *(a1 + 32);

      [v3 endOperationWithError:?];
    }

    else
    {
      v4 = _CRKLogASM_4(v2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v7 = *(a1 + 32);
        *buf = 138543618;
        v25 = v6;
        v26 = 2048;
        v27 = v7;
        _os_log_impl(&dword_243550000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Ready to receive certificate response", buf, 0x16u);
      }

      [*(a1 + 32) setMessageReceiveSubscription:*(a1 + 48)];
      v8 = [CRKIDSMessageCannon alloc];
      v9 = [*(a1 + 32) IDSPrimitives];
      v10 = [(CRKIDSMessageCannon *)v8 initWithIDSPrimitives:v9];

      v12 = _CRKLogASM_4(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = *(a1 + 32);
        v16 = [v15 destinationAppleID];
        *buf = 138543874;
        v25 = v14;
        v26 = 2048;
        v27 = v15;
        v28 = 2114;
        v29 = v16;
        _os_log_impl(&dword_243550000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Sending cert request to (%{public}@)", buf, 0x20u);
      }

      v17 = [*(a1 + 32) addressTranslator];
      v18 = [*(a1 + 32) destinationAppleID];
      v19 = [v17 destinationAddressForAppleID:v18];

      v20 = objc_opt_new();
      [v20 setFireAndForget:1];
      v21 = *(a1 + 56);
      v22 = [*(a1 + 32) sourceAppleID];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __40__CRKFetchASMCertificatesOperation_main__block_invoke_8;
      v23[3] = &unk_278DC0F68;
      v23[4] = *(a1 + 32);
      [(CRKIDSMessageCannon *)v10 sendIDSMessage:v21 destinationAddress:v19 sourceAppleID:v22 options:v20 completion:v23];
    }
  }
}

- (void)didSendMessage:(id)message
{
  messageCopy = message;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CRKFetchASMCertificatesOperation_didSendMessage___block_invoke;
  v6[3] = &unk_278DC1320;
  v6[4] = self;
  v7 = messageCopy;
  v5 = messageCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void *__51__CRKFetchASMCertificatesOperation_didSendMessage___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  result = [*(a1 + 32) isExecuting];
  if (result)
  {
    v5 = *(a1 + 40);
    v4 = (a1 + 40);
    if (v5)
    {
      v6 = _CRKLogASM_4(result);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __51__CRKFetchASMCertificatesOperation_didSendMessage___block_invoke_cold_1(v2, v4, v6);
      }

      return [*v2 endOperationWithError:*v4];
    }
  }

  return result;
}

- (void)processMessage:(id)message senderAppleID:(id)d requestIdentifier:(id)identifier
{
  messageCopy = message;
  dCopy = d;
  identifierCopy = identifier;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__CRKFetchASMCertificatesOperation_processMessage_senderAppleID_requestIdentifier___block_invoke;
  v14[3] = &unk_278DC12D0;
  v14[4] = self;
  v15 = dCopy;
  v16 = messageCopy;
  v17 = identifierCopy;
  v11 = identifierCopy;
  v12 = messageCopy;
  v13 = dCopy;
  dispatch_async(MEMORY[0x277D85CD0], v14);
}

void __83__CRKFetchASMCertificatesOperation_processMessage_senderAppleID_requestIdentifier___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isExecuting];
  if (v2)
  {
    v3 = _CRKLogASM_4(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v28 = 138543874;
      v29 = v5;
      v30 = 2048;
      v31 = v6;
      v32 = 2114;
      v33 = v7;
      _os_log_impl(&dword_243550000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Processing message response from (%{public}@)", &v28, 0x20u);
    }

    v8 = [*(a1 + 32) destinationAppleID];
    v9 = [v8 isEqualToString:*(a1 + 40)];

    if (v9)
    {
      v10 = [CRKIDSMessagePayload instanceWithDictionary:*(a1 + 48)];
      v11 = v10;
      if (v10)
      {
        v12 = [v10 messageMetadata];
        v13 = [v12 messageType];

        if (v13 == 2)
        {
          v14 = [v11 messageContent];
          v15 = [CRKRequestCertificatesResponseIDSMessage instanceWithDictionary:v14];

          if (v15)
          {
            v16 = [v15 requestIdentifier];
            v17 = [v16 isEqual:*(a1 + 56)];

            if (v17)
            {
              v18 = [v15 error];

              if (v18)
              {
                v20 = *(a1 + 32);
                v21 = [v15 error];
                [v20 endOperationWithError:v21];
              }

              else
              {
                v22 = _CRKLogASM_4(v19);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = objc_opt_class();
                  v24 = NSStringFromClass(v23);
                  v25 = *(a1 + 32);
                  v26 = *(a1 + 40);
                  v28 = 138543874;
                  v29 = v24;
                  v30 = 2048;
                  v31 = v25;
                  v32 = 2114;
                  v33 = v26;
                  _os_log_impl(&dword_243550000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ - %p: Valid cert response from (%{public}@)", &v28, 0x20u);
                }

                v27 = *(a1 + 32);
                v21 = [v15 certificateDataCollection];
                [v27 endOperationWithResultObject:v21];
              }
            }
          }
        }
      }
    }
  }
}

void __51__CRKFetchASMCertificatesOperation_didSendMessage___block_invoke_cold_1(uint64_t *a1, id *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = *a1;
  v9 = [*a2 verboseDescription];
  v10 = 138543874;
  v11 = v7;
  v12 = 2048;
  v13 = v8;
  v14 = 2114;
  v15 = v9;
  _os_log_error_impl(&dword_243550000, a3, OS_LOG_TYPE_ERROR, "%{public}@ - %p: Failed to send cert request. Error = %{public}@", &v10, 0x20u);
}

@end