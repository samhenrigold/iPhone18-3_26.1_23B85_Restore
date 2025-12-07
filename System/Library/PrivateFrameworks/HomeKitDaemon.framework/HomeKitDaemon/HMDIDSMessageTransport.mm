@interface HMDIDSMessageTransport
+ (_HMFRate)sendMessageRate;
+ (id)logCategory;
+ (id)queueOneIdentifierWithMessageName:(id)name target:(id)target collapseID:(id)d timeToLive:(double)live now:(id)now;
+ (id)stringFromHMDIDSResidentInfo:(int64_t)info;
+ (unint64_t)sendMessageLimit;
- (BOOL)_shouldAddLocalHandleToDevice:(id)device;
- (BOOL)_shouldProcessLegacyIDSMessageFromID:(id)d context:(id)context message:(id *)message service:(id)service;
- (BOOL)canSendMessage:(id)message;
- (BOOL)isSecure;
- (BOOL)isValidMessage:(id)message;
- (BOOL)shouldAcceptLegacyIDSMessage:(id)message;
- (HMDIDSMessageTransport)initWithAccountRegistry:(id)registry forServiceName:(id)name;
- (HMDIDSMessageTransport)initWithAccountRegistry:(id)registry service:(id)service serviceName:(id)name appleAccountManager:(id)manager remoteAccountManager:(id)accountManager featuresDataSource:(id)source;
- (double)defaultTimeout;
- (id)_identifierFromSerializedMessage:(void *)message;
- (id)deviceForSenderContext:(id)context;
- (id)logIdentifier;
- (id)sendMessage:(id)message fromHandle:(id)handle destination:(id)destination priority:(int64_t)priority timeout:(double)timeout options:(unint64_t)options queueOneID:(id)d senderResidentInfo:(int64_t)self0 destinationResidentInfo:(int64_t)self1 error:(id *)self2;
- (id)start;
- (unint64_t)maximumNumberOfRetries;
- (void)_pendingResponseTimeoutFor:(id)for;
- (void)_removePendingResponseTimerForTransaction:(id)transaction;
- (void)_removePendingResponseTransaction:(id)transaction;
- (void)_restartPendingResponseTimerFor:(id)for withReducedFactor:(unint64_t)factor;
- (void)_startPendingResponseTimer:(id)timer responseTimeout:(double)timeout identifier:(id)identifier;
- (void)legacyHandleIncomingRemoteMessage:(id)message sourceDevice:(id)device senderDeviceHandle:(id)handle isSecure:(BOOL)secure incomingMessage:(id)incomingMessage fromID:(id)d context:(id)context;
- (void)sendMessage:(id)message senderResidentInfo:(int64_t)info destinationResidentInfo:(int64_t)residentInfo completionHandler:(id)handler;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation HMDIDSMessageTransport

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  contextCopy = context;
  if (identifierCopy)
  {
    featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
    isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

    if (isTransportRetryEnabled)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543875;
        v30 = v19;
        v31 = 2114;
        v32 = identifierCopy;
        v33 = 2113;
        v34 = accountCopy;
        _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Receipt of message with IDS GUID %{public}@ from account: %{private}@ confirmed.", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v16);
      messageContexts = [(HMDIDSMessageTransport *)selfCopy messageContexts];
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __81__HMDIDSMessageTransport_service_account_identifier_hasBeenDeliveredWithContext___block_invoke;
      v27[3] = &unk_278674018;
      v28 = identifierCopy;
      v21 = [messageContexts hmf_objectPassingTest:v27];

      if (v21)
      {
        userInfo = [v21 userInfo];
        v23 = [userInfo objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

        v24 = _Block_copy(v23);
        v25 = v24;
        if (v24)
        {
          (*(v24 + 2))(v24, 0);
        }

        messageContexts2 = [(HMDIDSMessageTransport *)selfCopy messageContexts];
        [messageContexts2 removeObject:v21];
      }
    }
  }
}

uint64_t __81__HMDIDSMessageTransport_service_account_identifier_hasBeenDeliveredWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUIDString:*(a1 + 32)];

  return v4;
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error context:(id)context
{
  v70 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  identifierCopy = identifier;
  errorCopy = error;
  contextCopy = context;
  if (identifierCopy)
  {
    messageContexts = [(HMDIDSMessageTransport *)self messageContexts];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke;
    v60[3] = &unk_278674018;
    v20 = identifierCopy;
    v61 = v20;
    v21 = [messageContexts hmf_objectPassingTest:v60];

    if (v21)
    {
      v54 = serviceCopy;
      if (errorCopy)
      {
        v22 = MEMORY[0x277CCA9B8];
        v23 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3203 underlyingError:errorCopy];
        v57 = [v22 hmErrorWithCode:54 description:@"Communication failure." reason:0 suggestion:0 underlyingError:v23];
      }

      else
      {
        v57 = 0;
      }

      featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
      isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

      if ((isTransportRetryEnabled & 1) == 0)
      {
        userInfo = [v21 userInfo];
        v27 = [userInfo objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

        v28 = _Block_copy(v27);
        v29 = v28;
        if (v28)
        {
          (*(v28 + 2))(v28, v57);
        }
      }

      v56 = accountCopy;
      if (!success)
      {
        featuresDataSource2 = [(HMDIDSMessageTransport *)self featuresDataSource];
        isTransportRetryEnabled2 = [featuresDataSource2 isTransportRetryEnabled];

        if (isTransportRetryEnabled2)
        {
          userInfo2 = [v21 userInfo];
          v33 = [userInfo2 objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

          v34 = _Block_copy(v33);
          v35 = v34;
          if (v34)
          {
            (*(v34 + 2))(v34, v57);
          }
        }

        v36 = objc_autoreleasePoolPush();
        selfCopy = self;
        v38 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = HMFGetLogIdentifier();
          *buf = 138544131;
          v63 = v39;
          v64 = 2114;
          v65 = v20;
          v66 = 2113;
          v67 = v56;
          v68 = 2112;
          v69 = errorCopy;
          _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message with IDS GUID %{public}@ from account: %{private}@ with error: %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v36);
        destination = [v21 destination];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = destination;
        }

        else
        {
          v41 = 0;
        }

        v42 = v41;

        if (errorCopy && v42)
        {
          allRemoteDestinationStrings = [v42 allRemoteDestinationStrings];
          v58[0] = MEMORY[0x277D85DD0];
          v58[1] = 3221225472;
          v58[2] = __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke_140;
          v58[3] = &unk_278686270;
          v58[4] = selfCopy;
          v59 = errorCopy;
          [allRemoteDestinationStrings na_each:v58];
        }

        userInfo3 = [v21 userInfo];
        v45 = [userInfo3 objectForKeyedSubscript:@"HMDIDSMessageTransportTransactionIdentifierKey"];

        if (v45)
        {
          pendingResponses = [(HMDIDSMessageTransport *)selfCopy pendingResponses];
          v47 = [pendingResponses objectForKeyedSubscript:v45];

          if (v47)
          {
            (v47)[2](v47, v57, 0);
          }

          [(HMDIDSMessageTransport *)selfCopy _removePendingResponseTransaction:v45];
        }

        featuresDataSource3 = [(HMDIDSMessageTransport *)selfCopy featuresDataSource];
        isTransportRetryEnabled3 = [featuresDataSource3 isTransportRetryEnabled];

        if (isTransportRetryEnabled3)
        {
          messageContexts2 = [(HMDIDSMessageTransport *)selfCopy messageContexts];
          [messageContexts2 removeObject:v21];
        }
      }

      featuresDataSource4 = [(HMDIDSMessageTransport *)self featuresDataSource];
      isTransportRetryEnabled4 = [featuresDataSource4 isTransportRetryEnabled];

      if ((isTransportRetryEnabled4 & 1) == 0)
      {
        messageContexts3 = [(HMDIDSMessageTransport *)self messageContexts];
        [messageContexts3 removeObject:v21];
      }

      serviceCopy = v55;
      accountCopy = v56;
    }
  }
}

uint64_t __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUIDString:*(a1 + 32)];

  return v4;
}

void __86__HMDIDSMessageTransport_service_account_identifier_didSendWithSuccess_error_context___block_invoke_140(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 remoteAccountManager];
  [v5 __handleSendMessageFailureWithError:*(a1 + 40) destination:v4];
}

- (void)legacyHandleIncomingRemoteMessage:(id)message sourceDevice:(id)device senderDeviceHandle:(id)handle isSecure:(BOOL)secure incomingMessage:(id)incomingMessage fromID:(id)d context:(id)context
{
  v101 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  deviceCopy = device;
  handleCopy = handle;
  incomingMessageCopy = incomingMessage;
  dCopy = d;
  contextCopy = context;
  name = [messageCopy name];
  destination = [messageCopy destination];
  transactionIdentifier = [messageCopy transactionIdentifier];
  objc_initWeak(&location, self);
  if (![messageCopy type])
  {
    v36 = aBlock;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke;
    aBlock[3] = &unk_278674068;
    v37 = &v92;
    objc_copyWeak(&v92, &location);
    aBlock[4] = name;
    v87 = destination;
    secureCopy = secure;
    v88 = transactionIdentifier;
    v89 = contextCopy;
    v90 = deviceCopy;
    v91 = handleCopy;
    v24 = _Block_copy(aBlock);

LABEL_14:
    objc_destroyWeak(v37);
    [messageCopy setInternalResponseHandler:v24];
    delegate = [(HMFMessageTransport *)self delegate];
    [delegate messageTransport:self didReceiveMessage:messageCopy];
LABEL_45:

    goto LABEL_46;
  }

  if ([messageCopy type] != 1)
  {
    v36 = v83;
    v83[0] = MEMORY[0x277D85DD0];
    v83[1] = 3221225472;
    v83[2] = __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke_136;
    v83[3] = &unk_278687F40;
    v37 = &v84;
    objc_copyWeak(&v84, &location);
    v83[4] = name;
    v24 = _Block_copy(v83);
    goto LABEL_14;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v21 = HMFGetLogIdentifier();
    uUIDString = [transactionIdentifier UUIDString];
    *buf = 138543618;
    v96 = v21;
    v97 = 2114;
    v98 = uUIDString;
    _os_log_impl(&dword_229538000, v20, OS_LOG_TYPE_INFO, "%{public}@Received response to IDS message with transaction ID: %{public}@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  pendingResponses = [(HMDIDSMessageTransport *)selfCopy pendingResponses];
  v24 = [pendingResponses objectForKeyedSubscript:transactionIdentifier];

  if (v24)
  {
    v25 = MEMORY[0x277CBEB38];
    v26 = [incomingMessageCopy hmf_dictionaryForKey:@"kIDSMessagePayloadKey"];
    delegate = [v25 dictionaryWithDictionary:v26];

    [delegate setObject:dCopy forKeyedSubscript:@"kIDSMessageSourceIDKey"];
    v28 = [incomingMessageCopy hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
    if (v28)
    {
      v29 = MEMORY[0x277CCAAC8];
      v30 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
      v85 = 0;
      v31 = [v29 _strictlyUnarchivedObjectOfClasses:v30 fromData:v28 error:&v85];
      v32 = v85;

      if (!v31)
      {
        context = objc_autoreleasePoolPush();
        v33 = selfCopy;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543618;
          v96 = v35;
          v97 = 2112;
          v98 = v32;
          v73 = v35;
          _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize error with error: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(context);
        v31 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52 description:@"Generic error." reason:@"Failed to deserialize remote error." suggestion:0 underlyingError:v32];
      }

      [delegate setObject:v31 forKeyedSubscript:{@"kIDSMessageResponseErrorDataKey", v73}];

      v74 = v31;
    }

    else
    {
      v74 = 0;
    }

    requestedCapabilities = [(HMDIDSMessageTransport *)selfCopy requestedCapabilities];
    v43 = [requestedCapabilities objectForKeyedSubscript:transactionIdentifier];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = v43;
    }

    else
    {
      v44 = 0;
    }

    contexta = v44;

    if ([contexta count])
    {
      destinationAddress = [(HMDIDSMessageTransport *)selfCopy destinationAddress];
      v46 = [destinationAddress objectForKeyedSubscript:transactionIdentifier];
      v47 = [v46 isEqualToString:dCopy];

      if (!v47)
      {
        receivedResponses = [(HMDIDSMessageTransport *)selfCopy receivedResponses];
        v55 = [receivedResponses objectForKeyedSubscript:transactionIdentifier];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        v57 = v56;

        if (!v57)
        {
          v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
          receivedResponses2 = [(HMDIDSMessageTransport *)selfCopy receivedResponses];
          [receivedResponses2 setObject:v55 forKeyedSubscript:transactionIdentifier];
        }

        [v55 addObject:{delegate, v74}];
        v59 = [v55 count];
        if ([(HMDRemoteMessageTransport *)selfCopy doesResponse:delegate matchAllCapabilities:contexta])
        {
          v60 = objc_autoreleasePoolPush();
          v61 = selfCopy;
          v62 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
          {
            v63 = HMFGetLogIdentifier();
            *buf = 138543362;
            v96 = v63;
            _os_log_impl(&dword_229538000, v62, OS_LOG_TYPE_INFO, "%{public}@Response Matched all capabilities", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v60);
          [(HMDIDSMessageTransport *)v61 _removePendingResponseTimerForTransaction:transactionIdentifier];
          [(HMDIDSMessageTransport *)v61 _pendingResponseTimeoutFor:transactionIdentifier];
        }

        else
        {
          [(HMDIDSMessageTransport *)selfCopy _restartPendingResponseTimerFor:transactionIdentifier withReducedFactor:v59 + 1];
          v64 = objc_autoreleasePoolPush();
          v65 = selfCopy;
          v66 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
          {
            v67 = HMFGetLogIdentifier();
            *buf = 138543618;
            v96 = v67;
            v97 = 2112;
            v98 = delegate;
            _os_log_impl(&dword_229538000, v66, OS_LOG_TYPE_INFO, "%{public}@Not Calling response handler with response %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v64);
          v68 = objc_autoreleasePoolPush();
          v69 = v65;
          v70 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            v71 = HMFGetLogIdentifier();
            v72 = [v55 count];
            *buf = 138543618;
            v96 = v71;
            v97 = 2048;
            v98 = v72;
            _os_log_impl(&dword_229538000, v70, OS_LOG_TYPE_INFO, "%{public}@Currently received responses = %lu", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v68);
        }

        goto LABEL_44;
      }

      v48 = objc_autoreleasePoolPush();
      v49 = selfCopy;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = HMFGetLogIdentifier();
        *buf = 138543874;
        v96 = v51;
        v97 = 2160;
        v98 = 1752392040;
        v99 = 2112;
        v100 = dCopy;
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@Received response to directed message - selecting response from %{mask.hash}@", buf, 0x20u);
      }
    }

    else
    {
      v48 = objc_autoreleasePoolPush();
      v52 = selfCopy;
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543362;
        v96 = v53;
        _os_log_impl(&dword_229538000, v50, OS_LOG_TYPE_INFO, "%{public}@No Capabilities were requested - selecting the first response", buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v48);
    (v24)[2](v24, v74, delegate);
    [(HMDIDSMessageTransport *)selfCopy _removePendingResponseTransaction:transactionIdentifier];
LABEL_44:

    goto LABEL_45;
  }

  v38 = objc_autoreleasePoolPush();
  v39 = selfCopy;
  v40 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    v41 = HMFGetLogIdentifier();
    *buf = 138543618;
    v96 = v41;
    v97 = 2112;
    v98 = messageCopy;
    _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_INFO, "%{public}@No response handler, dropping message: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v38);
  [(HMDRemoteMessageTransport *)v39 postDidReceiveRemoteMessageWithNoListenerFromDevice:deviceCopy];
  v24 = 0;
LABEL_46:

  objc_destroyWeak(&location);
}

void __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke_2;
    v10[3] = &unk_278674040;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = v6;
    v20 = *(a1 + 88);
    v14 = *(a1 + 48);
    v15 = v5;
    v16 = *(a1 + 56);
    v17 = v8;
    v18 = *(a1 + 64);
    v19 = *(a1 + 72);
    dispatch_async(v9, v10);
  }
}

void __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke_136(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = *(a1 + 32);
    v13 = 138543874;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Command %{public}@ completed with error: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
}

void __132__HMDIDSMessageTransport_legacyHandleIncomingRemoteMessage_sourceDevice_senderDeviceHandle_isSecure_incomingMessage_fromID_context___block_invoke_2(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  v2 = [[HMDRemoteMessage alloc] initWithName:*(a1 + 32) destination:*(a1 + 40) payload:*(a1 + 48) type:1 timeout:*(a1 + 104) secure:0.0];
  [(HMDRemoteMessage *)v2 setTransactionIdentifier:*(a1 + 56)];
  v42 = 0;
  v3 = [HMDRemoteMessageSerialization dictionaryForMessage:v2 error:&v42];
  v4 = v42;
  v5 = [v3 mutableCopy];

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    [v5 setObject:v7 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
  }

  if ([*(a1 + 72) fromServerStorage])
  {
    v8 = 0;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 80);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v14 = *(a1 + 56);
      *buf = 138543874;
      v44 = v12;
      v45 = 2114;
      v46 = v13;
      v47 = 2114;
      v48 = v14;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_INFO, "%{public}@Responding to non-server storage message, %{public}@ (%{public}@), as direct message", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v8 = 1;
  }

  v15 = [*(a1 + 72) toID];
  if ([v15 length])
  {
    v16 = [*(a1 + 88) account];
    v17 = [v16 isCurrentAccount];

    if (v17)
    {
      v18 = 0;
      goto LABEL_14;
    }

    v15 = [*(a1 + 72) toID];
    v18 = [HMDAccountHandle accountHandleForDestination:v15];
  }

  else
  {
    v18 = 0;
  }

LABEL_14:
  v19 = [HMDRemoteDeviceMessageDestination alloc];
  v20 = [*(a1 + 40) target];
  v21 = [(HMDRemoteDeviceMessageDestination *)v19 initWithTarget:v20 device:*(a1 + 88)];

  [(HMDRemoteDeviceMessageDestination *)v21 setPreferredHandle:*(a1 + 96)];
  v22 = *(a1 + 80);
  v41 = 0;
  v39 = v5;
  v23 = [v22 sendMessage:v5 fromHandle:v18 destination:v21 priority:300 timeout:v8 options:0 queueOneID:0.0 error:&v41];
  v40 = v41;
  v24 = objc_autoreleasePoolPush();
  v25 = *(a1 + 80);
  v26 = HMFGetOSLogHandle();
  v27 = v26;
  if (v23)
  {
    v28 = v2;
    v29 = v4;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v30;
      v45 = 2114;
      v46 = v23;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_INFO, "%{public}@IDS message response ack'd with identifier %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v31 = [HMDIDSMessageContext alloc];
    v32 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v23];
    v33 = [(HMDIDSMessageContext *)v31 initWithIdentifier:v32 destination:v21 userInfo:0];

    v34 = [*(a1 + 80) messageContexts];
    [v34 addObject:v33];

    v4 = v29;
    v2 = v28;
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      [(HMFObject *)v2 shortDescription];
      v36 = v2;
      v38 = v37 = v4;
      *buf = 138543874;
      v44 = v35;
      v45 = 2112;
      v46 = v38;
      v47 = 2112;
      v48 = v40;
      _os_log_impl(&dword_229538000, v27, OS_LOG_TYPE_ERROR, "%{public}@IDS message response, %@, failed with error: %@", buf, 0x20u);

      v4 = v37;
      v2 = v36;
    }

    objc_autoreleasePoolPop(v24);
  }
}

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v160 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  originalGUID = [contextCopy originalGUID];
  if (!originalGUID)
  {
LABEL_12:
    v145 = serviceCopy;
    if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v38 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_19;
      }

      v39 = HMFGetLogIdentifier();
      [messageCopy shortDescription];
      v44 = contextCopy;
      v46 = v45 = accountCopy;
      *buf = 138544130;
      v151 = v39;
      v152 = 2112;
      v153 = v46;
      v154 = 2160;
      v155 = 1752392040;
      v156 = 2112;
      v157 = dCopy;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_DEBUG, "%{public}@Received incoming IDS message: %@, from: %{mask.hash}@", buf, 0x2Au);

      accountCopy = v45;
      contextCopy = v44;
    }

    else
    {
      v36 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v38 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        goto LABEL_19;
      }

      v39 = HMFGetLogIdentifier();
      [messageCopy shortDescription];
      v40 = dCopy;
      v41 = contextCopy;
      v43 = v42 = accountCopy;
      *buf = 138544130;
      v151 = v39;
      v152 = 2112;
      v153 = v43;
      v154 = 2160;
      v155 = 1752392040;
      v156 = 2112;
      v157 = v40;
      _os_log_impl(&dword_229538000, v38, OS_LOG_TYPE_INFO, "%{public}@Received incoming IDS message: %@, from: %{mask.hash}@", buf, 0x2Au);

      accountCopy = v42;
      contextCopy = v41;
      dCopy = v40;
    }

LABEL_19:
    objc_autoreleasePoolPop(v36);
    v47 = [messageCopy objectForKeyedSubscript:@"kIDSMessageNameKey"];
    mEMORY[0x277D0F8C0] = [MEMORY[0x277D0F8C0] sharedPowerLogger];
    v143 = v47;
    [mEMORY[0x277D0F8C0] reportIncomingIDSPush:v47 fromToken:dCopy];

    if (!dCopy)
    {
      v119 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v121 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_FAULT))
      {
        HMFGetLogIdentifier();
        v122 = contextCopy;
        v124 = v123 = accountCopy;
        *buf = 138543362;
        v151 = v124;
        _os_log_impl(&dword_229538000, v121, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Received incoming message with nil fromID", buf, 0xCu);

        accountCopy = v123;
        contextCopy = v122;
        dCopy = 0;
      }

      objc_autoreleasePoolPop(v119);
      v125 = [[HMDAssertionLogEvent alloc] initWithReason:@"Received incoming message with nil fromID"];
      v126 = +[HMDMetricsManager sharedLogEventSubmitter];
      [v126 submitLogEvent:v125];

      v127 = objc_autoreleasePoolPush();
      v128 = selfCopy3;
      v129 = HMFGetOSLogHandle();
      serviceCopy = v145;
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v130 = v138 = accountCopy;
        originalGUID2 = [contextCopy originalGUID];
        *buf = 138543618;
        v151 = v130;
        v152 = 2114;
        v153 = originalGUID2;
        _os_log_impl(&dword_229538000, v129, OS_LOG_TYPE_ERROR, "%{public}@Received incoming message, %{public}@, with nil fromID", buf, 0x16u);

        serviceCopy = v145;
        accountCopy = v138;
      }

      objc_autoreleasePoolPop(v127);
      goto LABEL_71;
    }

    v49 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
    v50 = [HMDAccountHandle accountHandleForDestination:dCopy];
    v51 = [HMDAccountIdentifier accountIdentifierForMessageContext:contextCopy];
    v149 = messageCopy;
    v52 = [(HMDIDSMessageTransport *)self _shouldProcessLegacyIDSMessageFromID:dCopy context:contextCopy message:&v149 service:v145];
    v144 = v149;

    v142 = v50;
    if (!v52)
    {
      v56 = v49;
      v57 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v61 = v60 = accountCopy;
        senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
        *buf = 138543874;
        v151 = v61;
        v152 = 2114;
        v153 = v143;
        v154 = 2112;
        v155 = senderCorrelationIdentifier;
        _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Dropping incoming message %{public}@ from unknown mergeID %@", buf, 0x20u);

        accountCopy = v60;
      }

      objc_autoreleasePoolPop(v57);
      goto LABEL_70;
    }

    if (self)
    {
      v53 = [(HMDIDSMessageTransport *)self isLegacyTransport]^ 1;
    }

    else
    {
      v53 = 0;
    }

    v148 = 0;
    v54 = [HMDRemoteMessageSerialization remoteMessageWithDictionary:v144 isHH2Payload:v53 error:&v148];
    v140 = v148;
    v141 = v49;
    if (!v54)
    {
      v63 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v65 = HMFGetOSLogHandle();
      v66 = v140;
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v68 = v67 = accountCopy;
        *buf = 138544386;
        v151 = v68;
        v152 = 2112;
        v153 = v144;
        v154 = 2160;
        v155 = 1752392040;
        v156 = 2112;
        v157 = dCopy;
        v158 = 2112;
        v159 = v140;
        _os_log_impl(&dword_229538000, v65, OS_LOG_TYPE_ERROR, "%{public}@Dropping invalid IDS message payload, %@, from: %{mask.hash}@, error: %@", buf, 0x34u);

        accountCopy = v67;
      }

      objc_autoreleasePoolPop(v63);
      goto LABEL_69;
    }

    if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport]|| [(HMDIDSMessageTransport *)self shouldAcceptLegacyIDSMessage:v54])
    {
      if ([(HMDIDSMessageTransport *)self isSecure])
      {
        [v54 setSecure:1];
      }

      if (v49)
      {
        v137 = accountCopy;
        if ([v54 isSecure])
        {
          sourceVersion = [v54 sourceVersion];

          if (sourceVersion)
          {
            sourceVersion = [v54 sourceVersion];
          }
        }

        else
        {
          sourceVersion = 0;
        }

        v139 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v49 accountHandle:v50 accountIdentifier:v51 deviceVersion:sourceVersion pairingIdentityIdentifier:0];
        v80 = objc_alloc(MEMORY[0x277CCAD78]);
        v81 = [v144 hmf_stringForKey:@"idsId"];
        v82 = [v80 initWithUUIDString:v81];

        if (v82)
        {
          v83 = [HMDDeviceHandle deviceHandleForDeviceIdentifier:v82];
          if (v83)
          {
            [(HMDRemoteMessageSenderContext *)v139 setLocalDeviceHandle:v83];
          }
        }

        v84 = [(HMDIDSMessageTransport *)self deviceForSenderContext:v139];
        if (!v84)
        {
          v102 = objc_autoreleasePoolPush();
          selfCopy6 = self;
          v104 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
          {
            v136 = HMFGetLogIdentifier();
            *buf = 138543618;
            v151 = v136;
            v152 = 2112;
            v153 = v54;
            _os_log_impl(&dword_229538000, v104, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine source device, dropping message: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v102);
          accountCopy = v137;
          goto LABEL_68;
        }

        v85 = v84;

        v86 = MEMORY[0x277CBEB38];
        messagePayload = [v54 messagePayload];
        v88 = [v86 dictionaryWithDictionary:messagePayload];

        [v88 setObject:dCopy forKeyedSubscript:@"kIDSMessageSourceIDKey"];
        v133 = v88;
        [v54 setMessagePayload:v88];
        [v54 setRestriction:{objc_msgSend(objc_opt_class(), "restriction")}];
        isSecure = [v54 isSecure];
        v90 = [HMDRemoteDeviceMessageDestination alloc];
        destination = [v54 destination];
        target = [destination target];
        v135 = v85;
        v93 = [(HMDRemoteDeviceMessageDestination *)v90 initWithTarget:target device:v85];

        v134 = v93;
        [v54 setDestination:v93];
        if ((isSecure & 1) != 0 || ![HMDSecureRemoteSession isSecureRemoteSessionMessage:v54])
        {
          v94 = +[HMDMetricsManager sharedLogEventSubmitter];
          v95 = [HMDRemoteMessageLogEvent receivedRemoteMessage:v54 transportType:[(HMDIDSMessageTransport *)self transportType]];
          [v94 submitLogEvent:v95];
        }

        userInfo = [v54 userInfo];
        v97 = [userInfo mutableCopy];

        v98 = [MEMORY[0x277CCABB0] numberWithInt:{-[HMDIDSMessageTransport transportType](self, "transportType")}];
        [v97 setObject:v98 forKeyedSubscript:@"kRemoteMessageTransportAttributionKey"];

        accountCopy = v137;
        v99 = v139;
        v132 = v97;
        if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
        {
          deviceHandle = [(HMDRemoteMessageSenderContext *)v139 deviceHandle];
          [v134 setPreferredHandle:deviceHandle];

          [v97 setObject:dCopy forKeyedSubscript:@"kIDSMessageSourceIDKey"];
          toID = [contextCopy toID];
          [v97 setObject:toID forKeyedSubscript:@"kRemoteMessageIDSToIDKey"];

          v107 = [v144 hmf_dataForKey:@"kIDSMessageResponseErrorDataKey"];
          [v97 setObject:v107 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

          internal = [v54 internal];
          [internal setUserInfo:v97];

          [v54 setSenderContext:v139];
          delegate = [(HMFMessageTransport *)self delegate];
          [delegate messageTransport:self didReceiveMessage:v54];

          featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
          isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

          v99 = v139;
          if (!isTransportRetryEnabled)
          {
LABEL_67:

            goto LABEL_68;
          }

          messageContexts = [(HMDIDSMessageTransport *)self messageContexts];
          v146[0] = MEMORY[0x277D85DD0];
          v146[1] = 3221225472;
          v146[2] = __73__HMDIDSMessageTransport_service_account_incomingMessage_fromID_context___block_invoke;
          v146[3] = &unk_278674018;
          v147 = contextCopy;
          v113 = [messageContexts hmf_objectPassingTest:v146];

          if (v113)
          {
            userInfo2 = [v113 userInfo];
            v115 = [userInfo2 objectForKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];

            v116 = _Block_copy(v115);
            v117 = v116;
            if (v116)
            {
              (*(v116 + 2))(v116, 0);
            }

            messageContexts2 = [(HMDIDSMessageTransport *)self messageContexts];
            [messageContexts2 removeObject:v113];

            accountCopy = v137;
          }

          deviceHandle2 = v147;
          v99 = v139;
        }

        else
        {
          internal2 = [v54 internal];
          [internal2 setUserInfo:v97];

          [v54 setSenderContext:v139];
          deviceHandle2 = [(HMDRemoteMessageSenderContext *)v139 deviceHandle];
          [(HMDIDSMessageTransport *)self legacyHandleIncomingRemoteMessage:v54 sourceDevice:v135 senderDeviceHandle:deviceHandle2 isSecure:isSecure incomingMessage:v144 fromID:dCopy context:contextCopy];
        }

        goto LABEL_67;
      }

      v69 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v72 = dCopy;
        v73 = contextCopy;
        v75 = v74 = accountCopy;
        *buf = 138543874;
        v151 = v75;
        v152 = 2160;
        v153 = 1752392040;
        v154 = 2112;
        v155 = v72;
        v76 = "%{public}@Unable to create sender device handle from fromID: %{mask.hash}@";
        v77 = v71;
        v78 = OS_LOG_TYPE_ERROR;
        v79 = 32;
LABEL_43:
        _os_log_impl(&dword_229538000, v77, v78, v76, buf, v79);

        accountCopy = v74;
        contextCopy = v73;
        dCopy = v72;
      }
    }

    else
    {
      v69 = objc_autoreleasePoolPush();
      selfCopy8 = self;
      v71 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v72 = dCopy;
        v73 = contextCopy;
        v75 = v74 = accountCopy;
        *buf = 138543618;
        v151 = v75;
        v152 = 2112;
        v153 = v54;
        v76 = "%{public}@Dropping message from legacy transport: %@";
        v77 = v71;
        v78 = OS_LOG_TYPE_INFO;
        v79 = 22;
        goto LABEL_43;
      }
    }

    objc_autoreleasePoolPop(v69);
LABEL_68:
    v66 = v140;
LABEL_69:

    v56 = v141;
LABEL_70:

    messageCopy = v144;
    serviceCopy = v145;
LABEL_71:

    goto LABEL_72;
  }

  v18 = originalGUID;
  originalGUID3 = [contextCopy originalGUID];
  v20 = originalGUID3;
  if (!self || !originalGUID3)
  {
LABEL_11:

    goto LABEL_12;
  }

  messageDedupBuffer = [(HMDIDSMessageTransport *)self messageDedupBuffer];
  v22 = [messageDedupBuffer containsObject:v20];

  if ((v22 & 1) == 0)
  {
    messageDedupBuffer2 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
    v33 = [messageDedupBuffer2 count];

    if (v33 >= 0x1E)
    {
      messageDedupBuffer3 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
      [messageDedupBuffer3 removeObjectAtIndex:0];
    }

    messageDedupBuffer4 = [(HMDIDSMessageTransport *)self messageDedupBuffer];
    [messageDedupBuffer4 addObject:v20];

    goto LABEL_11;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy9 = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = HMFGetLogIdentifier();
    [contextCopy originalGUID];
    v27 = serviceCopy;
    v28 = dCopy;
    v29 = contextCopy;
    v31 = v30 = accountCopy;
    *buf = 138543618;
    v151 = v26;
    v152 = 2114;
    v153 = v31;
    _os_log_impl(&dword_229538000, v25, OS_LOG_TYPE_INFO, "%{public}@Received duplicate message with GUID: %{public}@", buf, 0x16u);

    accountCopy = v30;
    contextCopy = v29;
    dCopy = v28;
    serviceCopy = v27;
  }

  objc_autoreleasePoolPop(v23);
LABEL_72:
}

uint64_t __73__HMDIDSMessageTransport_service_account_incomingMessage_fromID_context___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) originalGUID];
  v5 = [v3 hmf_isEqualToUUIDString:v4];

  return v5;
}

- (BOOL)_shouldProcessLegacyIDSMessageFromID:(id)d context:(id)context message:(id *)message service:(id)service
{
  v79 = *MEMORY[0x277D85DE8];
  dCopy = d;
  contextCopy = context;
  serviceCopy = service;
  if ([(HMDIDSMessageTransport *)self transportType]== 4)
  {
    v13 = [serviceCopy deviceForFromID:dCopy];
    v14 = v13;
    if (v13)
    {
      isDefaultPairedDevice = [v13 isDefaultPairedDevice];
    }

    else
    {
      isDefaultPairedDevice = 0;
    }
  }

  else if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
  {
    isDefaultPairedDevice = 1;
  }

  else
  {
    appleAccountManager = [(HMDIDSMessageTransport *)self appleAccountManager];
    account = [appleAccountManager account];

    senderCorrelationIdentifier = [contextCopy senderCorrelationIdentifier];
    v19 = *message;
    v20 = [v19 objectForKeyedSubscript:@"kIDSMessagePayloadKey"];
    v70 = v19;
    v67 = [v19 objectForKeyedSubscript:@"kIDSMessageNameKey"];
    homeMembershipVerifier = [(HMDRemoteMessageTransport *)self homeMembershipVerifier];
    v68 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
    v21 = [HMDAccountHandle accountHandleForDestination:dCopy];
    senderCorrelationIdentifier2 = [account senderCorrelationIdentifier];
    if ([senderCorrelationIdentifier2 isEqual:senderCorrelationIdentifier])
    {

      isDefaultPairedDevice = 1;
    }

    else
    {
      v64 = v20;
      v65 = senderCorrelationIdentifier;
      v63 = account;
      handles = [account handles];
      v66 = v21;
      v24 = [handles containsObject:v21];

      if ((v24 & 1) != 0 || (-[HMDIDSMessageTransport pendingResponses](self, "pendingResponses"), v25 = objc_claimAutoreleasedReturnValue(), [v70 hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"], v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectForKey:", v26), v27 = objc_claimAutoreleasedReturnValue(), v27, v26, v25, v27))
      {
        isDefaultPairedDevice = 1;
        v20 = v64;
        senderCorrelationIdentifier = v65;
      }

      else
      {
        v62 = [HMDAccountIdentifier accountIdentifierForMessageContext:contextCopy];
        v29 = [[HMDRemoteMessageSenderContext alloc] initWithDeviceHandle:v68 accountHandle:v21 accountIdentifier:v62 deviceVersion:0 pairingIdentityIdentifier:0];
        remoteAccountManager = [(HMDIDSMessageTransport *)self remoteAccountManager];
        v61 = v29;
        v31 = [remoteAccountManager deviceForSenderContext:v29];

        senderCorrelationIdentifier = v65;
        v20 = v64;
        if ([homeMembershipVerifier userWithMergeIdIsMemberOfAHome:v65])
        {
          isDefaultPairedDevice = 1;
          v21 = v66;
        }

        else
        {
          v60 = [v64 hmf_UUIDForKey:@"kInvitationIdentifierKey"];
          if ([homeMembershipVerifier expectingInvitationResponseForIdentifier:?])
          {
            isDefaultPairedDevice = 1;
          }

          else if ([v67 isEqual:@"kAccessHomeInviteRequestKey"])
          {
            v32 = *MEMORY[0x277CD23D0];
            v33 = [v64 objectForKeyedSubscript:*MEMORY[0x277CD23D0]];
            v34 = [HMDNameValidator alloc];
            uUID = [MEMORY[0x277CCAD78] UUID];
            v36 = [(HMDNameValidator *)v34 initWithUUID:uUID];

            v58 = v33;
            v37 = [(HMDNameValidator *)v36 validateName:v33];
            isDefaultPairedDevice = v37 == 0;
            v59 = v37;
            if (v37)
            {
              v38 = v37;
              v39 = objc_autoreleasePoolPush();
              selfCopy = self;
              v41 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                HMFGetLogIdentifier();
                v43 = v42 = v36;
                *buf = 138543618;
                v76 = v43;
                v77 = 2112;
                v78 = v38;
                _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_ERROR, "%{public}@Received invite from invalid home name.  Validation Error %@", buf, 0x16u);

                v36 = v42;
              }

              objc_autoreleasePoolPop(v39);
              v20 = v64;
              v44 = v58;
            }

            else
            {
              v56 = v32;
              v57 = v36;
              uUID2 = [MEMORY[0x277CCAD78] UUID];
              v46 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v48 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v50 = v49 = selfCopy2;
                *buf = 138543618;
                v76 = v50;
                v77 = 2112;
                v78 = uUID2;
                _os_log_impl(&dword_229538000, v48, OS_LOG_TYPE_INFO, "%{public}@Replacing incoming HH1 invite with message id %@", buf, 0x16u);

                selfCopy2 = v49;
              }

              objc_autoreleasePoolPop(v46);
              v74[0] = @"kAccessHomeInviteRequestKey";
              v73[0] = @"kIDSMessageNameKey";
              v73[1] = @"kIDSMessageIdentifierKey";
              uUIDString = [uUID2 UUIDString];
              v74[1] = uUIDString;
              v74[2] = MEMORY[0x277CBEC38];
              v73[2] = @"kIDSMessageRequiresResponseKey";
              v73[3] = @"kIDSMessageRequestTransactionIDKey";
              uUID3 = [MEMORY[0x277CCAD78] UUID];
              uUIDString2 = [uUID3 UUIDString];
              v53 = *MEMORY[0x277CD23C8];
              v74[3] = uUIDString2;
              v74[4] = v53;
              v73[4] = @"kIDSMessageTargetKey";
              v73[5] = @"kIDSMessagePayloadKey";
              v44 = v58;
              v71 = v56;
              v72 = v58;
              v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
              v74[5] = v54;
              *message = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:6];

              v20 = v64;
              v36 = v57;
            }

            senderCorrelationIdentifier = v65;
          }

          else
          {
            isDefaultPairedDevice = 0;
          }

          v21 = v66;
          account = v63;
        }
      }
    }
  }

  return isDefaultPairedDevice;
}

- (BOOL)shouldAcceptLegacyIDSMessage:(id)message
{
  messageCopy = message;
  if (![messageCopy type] && (objc_msgSend(messageCopy, "name"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"kAccessHomeInviteRequestKey"), v4, (v5 & 1) != 0) || objc_msgSend(messageCopy, "type") == 1)
  {
    v6 = 1;
  }

  else
  {
    name = [messageCopy name];
    v6 = [name isEqualToString:@"kSecureServerIDSMessageRequestKey"];
  }

  return v6;
}

- (void)_removePendingResponseTransaction:(id)transaction
{
  transactionCopy = transaction;
  pendingResponses = [(HMDIDSMessageTransport *)self pendingResponses];
  [pendingResponses removeObjectForKey:transactionCopy];

  requestedCapabilities = [(HMDIDSMessageTransport *)self requestedCapabilities];
  [requestedCapabilities removeObjectForKey:transactionCopy];

  destinationAddress = [(HMDIDSMessageTransport *)self destinationAddress];
  [destinationAddress removeObjectForKey:transactionCopy];

  [(HMDIDSMessageTransport *)self _removePendingResponseTimerForTransaction:transactionCopy];
  featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
  isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

  if (isTransportRetryEnabled)
  {
    messageContexts = [(HMDIDSMessageTransport *)self messageContexts];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__HMDIDSMessageTransport__removePendingResponseTransaction___block_invoke;
    v13[3] = &unk_278674018;
    v14 = transactionCopy;
    v11 = [messageContexts hmf_objectPassingTest:v13];

    messageContexts2 = [(HMDIDSMessageTransport *)self messageContexts];
    [messageContexts2 removeObject:v11];
  }
}

uint64_t __60__HMDIDSMessageTransport__removePendingResponseTransaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)_removePendingResponseTimerForTransaction:(id)transaction
{
  v16 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2114;
    v15 = transactionCopy;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Cancelling timer for transaction: %{public}@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  pendingResponseTimers = [(HMDIDSMessageTransport *)selfCopy pendingResponseTimers];
  v10 = [pendingResponseTimers objectForKeyedSubscript:transactionCopy];

  if (v10)
  {
    dispatch_source_cancel(v10);
  }

  pendingResponseTimers2 = [(HMDIDSMessageTransport *)selfCopy pendingResponseTimers];
  [pendingResponseTimers2 removeObjectForKey:transactionCopy];
}

- (void)_startPendingResponseTimer:(id)timer responseTimeout:(double)timeout identifier:(id)identifier
{
  v32 = *MEMORY[0x277D85DE8];
  timerCopy = timer;
  identifierCopy = identifier;
  if (timeout < 2.22044605e-16 || timeout <= 0.0)
  {
    v11 = remotePendingResponseTimerNanoseconds;
  }

  else
  {
    v11 = (timeout * 1000000000.0);
  }

  workQueue = [(HMDIDSMessageTransport *)self workQueue];
  v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, workQueue);

  v14 = dispatch_time(0, v11);
  dispatch_source_set_timer(v13, v14, 0xFFFFFFFFFFFFFFFFLL, remotePendingResponseLeewayNanoseconds);
  objc_initWeak(&location, self);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __80__HMDIDSMessageTransport__startPendingResponseTimer_responseTimeout_identifier___block_invoke;
  handler[3] = &unk_278686B48;
  objc_copyWeak(&v24, &location);
  v15 = timerCopy;
  v23 = v15;
  dispatch_source_set_event_handler(v13, handler);
  dispatch_resume(v13);
  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    uUIDString = [v15 UUIDString];
    *buf = 138543874;
    v27 = v19;
    v28 = 2114;
    v29 = uUIDString;
    v30 = 2048;
    v31 = v11 / 0x3B9ACA00;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_INFO, "%{public}@Starting poll to track response for message with transaction %{public}@ for %lld secs", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v16);
  pendingResponseTimers = [(HMDIDSMessageTransport *)selfCopy pendingResponseTimers];
  [pendingResponseTimers setObject:v13 forKeyedSubscript:v15];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __80__HMDIDSMessageTransport__startPendingResponseTimer_responseTimeout_identifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _pendingResponseTimeoutFor:*(a1 + 32)];
}

- (void)_pendingResponseTimeoutFor:(id)for
{
  v30 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    uUIDString = [forCopy UUIDString];
    v26 = 138543618;
    v27 = v8;
    v28 = 2114;
    v29 = uUIDString;
    _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_INFO, "%{public}@Pending Response timeout for transaction: %{public}@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  pendingResponses = [(HMDIDSMessageTransport *)selfCopy pendingResponses];
  v11 = [pendingResponses objectForKeyedSubscript:forCopy];

  if (v11)
  {
    receivedResponses = [(HMDIDSMessageTransport *)selfCopy receivedResponses];
    v13 = [receivedResponses objectForKeyedSubscript:forCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    requestedCapabilities = [(HMDIDSMessageTransport *)selfCopy requestedCapabilities];
    v17 = [requestedCapabilities objectForKeyedSubscript:forCopy];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;

    if ([v15 count])
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v23;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_INFO, "%{public}@ Selecting response based on requested capabilities", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      v24 = [(HMDRemoteMessageTransport *)v21 matchResponse:v15 requestedCapabilities:v19];
      v25 = [v24 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
      (v11)[2](v11, v25, v24);
    }

    else
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:8 userInfo:0];
      (v11)[2](v11, v24, 0);
    }
  }

  [(HMDIDSMessageTransport *)selfCopy _removePendingResponseTransaction:forCopy];
}

- (void)_restartPendingResponseTimerFor:(id)for withReducedFactor:(unint64_t)factor
{
  v28 = *MEMORY[0x277D85DE8];
  forCopy = for;
  v7 = remotePendingResponseTimerNanoseconds;
  v8 = remotePendingResponseDecayScale;
  pendingResponseTimers = [(HMDIDSMessageTransport *)self pendingResponseTimers];
  v10 = [pendingResponseTimers objectForKeyedSubscript:forCopy];

  if (v10)
  {
    v11 = v7 / (v8 * factor);
    v12 = dispatch_time(0, v11);
    dispatch_source_set_timer(v10, v12, 0xFFFFFFFFFFFFFFFFLL, remotePendingResponseLeewayNanoseconds);
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = v11 / 0x3B9ACA00;
      uUIDString = [forCopy UUIDString];
      v22 = 138543874;
      v23 = v16;
      v24 = 2048;
      v25 = v17;
      v26 = 2114;
      v27 = uUIDString;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Restarted Pending response timer for %lld sec, for transaction: %{public}@", &v22, 0x20u);
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      uUIDString2 = [forCopy UUIDString];
      v22 = 138543618;
      v23 = v20;
      v24 = 2114;
      v25 = uUIDString2;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Timer already expired for transaction: %{public}@", &v22, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v13);
}

- (id)sendMessage:(id)message fromHandle:(id)handle destination:(id)destination priority:(int64_t)priority timeout:(double)timeout options:(unint64_t)options queueOneID:(id)d senderResidentInfo:(int64_t)self0 destinationResidentInfo:(int64_t)self1 error:(id *)self2
{
  optionsCopy = options;
  errorCopy3 = error;
  v133[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handleCopy = handle;
  destinationCopy = destination;
  dCopy = d;
  if (destinationCopy)
  {
    allRemoteDestinationStrings = [destinationCopy allRemoteDestinationStrings];
    if (![(__CFString *)allRemoteDestinationStrings count])
    {
      v34 = objc_autoreleasePoolPush();
      selfCopy = self;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v37 = HMFGetLogIdentifier();
        *buf = 138543618;
        v118 = v37;
        v119 = 2112;
        v120 = destinationCopy;
        _os_log_impl(&dword_229538000, v36, OS_LOG_TYPE_ERROR, "%{public}@No valid destination strings for destination: %@", buf, 0x16u);

        errorCopy3 = error;
      }

      objc_autoreleasePoolPop(v34);
      if (!errorCopy3)
      {
        v33 = 0;
LABEL_95:

        goto LABEL_96;
      }

      v38 = MEMORY[0x277CCA9B8];
      v132 = *MEMORY[0x277CCA7E8];
      [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3214];
      v24 = v39 = errorCopy3;
      v40 = [v38 hmInternalErrorWithCode:3203 underlyingError:v24];
      v133[0] = v40;
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:&v132 count:1];
      *v39 = [v38 hmErrorWithCode:54 userInfo:v33];
      goto LABEL_93;
    }

    priorityCopy = priority;
    v24 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    featuresDataSource = [(HMDIDSMessageTransport *)self featuresDataSource];
    isTransportRetryEnabled = [featuresDataSource isTransportRetryEnabled];

    if (isTransportRetryEnabled)
    {
      [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18678]];
      if ((optionsCopy & 1) == 0)
      {
LABEL_5:
        if ((optionsCopy & 2) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }
    }

    else if ((optionsCopy & 1) == 0)
    {
      goto LABEL_5;
    }

    v41 = MEMORY[0x277CBEC38];
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D185C0]];
    [v24 setObject:v41 forKeyedSubscript:*MEMORY[0x277D185E8]];
    if ((optionsCopy & 2) == 0)
    {
LABEL_6:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18600]];
    if ((optionsCopy & 8) == 0)
    {
LABEL_7:
      if ((optionsCopy & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_22:
    [v24 setObject:&unk_283E721E8 forKeyedSubscript:*MEMORY[0x277D18620]];
    if ((optionsCopy & 4) == 0)
    {
LABEL_9:
      if (timeout <= 0.0)
      {
        if ((optionsCopy & 2) == 0)
        {
          [v24 setObject:&unk_283E75E98 forKeyedSubscript:*MEMORY[0x277D18650]];
        }
      }

      else
      {
        v28 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
        [v24 setObject:v28 forKeyedSubscript:*MEMORY[0x277D18650]];
      }

      [v24 setObject:dCopy forKeyedSubscript:*MEMORY[0x277D18630]];
      [v24 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D18570]];
      v109 = messageCopy;
      v107 = dCopy;
      if (isInternalBuild())
      {
        v42 = [messageCopy objectForKeyedSubscript:@"kRemoteMessageQoSKey"];
        integerValue = [v42 integerValue];

        v44 = destinationCopy;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v46 = v44;
        }

        else
        {
          v46 = 0;
        }

        v106 = v46;

        if (isKindOfClass)
        {
          v47 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v49 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            HMFGetLogIdentifier();
            v50 = v104 = integerValue;
            device = [v44 device];
            [device productInfo];
            v51 = v105 = v47;
            [v51 productPlatform];
            v52 = HMFProductPlatformToString();
            *buf = 138543618;
            v118 = v50;
            v119 = 2112;
            v120 = v52;
            _os_log_impl(&dword_229538000, v49, OS_LOG_TYPE_DEFAULT, "%{public}@destination device's platform: %@", buf, 0x16u);

            v47 = v105;
            integerValue = v104;
          }

          objc_autoreleasePoolPop(v47);
          messageCopy = v109;
        }

        v53 = (integerValue > 24) << 31;
        v54 = [messageCopy objectForKeyedSubscript:@"kIDSMessageRequiresResponseKey"];
        v55 = [v54 isEqual:MEMORY[0x277CBEC38]];

        if (v55)
        {
          v56 = 100;
          infoCopy2 = info;
        }

        else
        {
          v58 = [messageCopy objectForKeyedSubscript:@"kIDSMessageIsResponseToRequest"];
          v59 = [v58 isEqual:MEMORY[0x277CBEC38]];

          infoCopy2 = info;
          if (v59)
          {
            v56 = 200;
          }

          else
          {
            v60 = [messageCopy objectForKeyedSubscript:@"kIDSMessageIsNotificationKey"];
            v61 = [v60 isEqual:MEMORY[0x277CBEC38]];

            v56 = 400;
            if (v61)
            {
              v56 = 300;
            }
          }
        }

        v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(residentInfo + 10 * infoCopy2 + v53 + v56)];
        [v24 setObject:v62 forKeyedSubscript:*MEMORY[0x277D18618]];
      }

      if (handleCopy)
      {
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        service = [(HMDIDSMessageTransport *)self service];
        accounts = [service accounts];

        v65 = [accounts countByEnumeratingWithState:&v113 objects:v131 count:16];
        if (v65)
        {
          v66 = v65;
          v110 = destinationCopy;
          v67 = *v114;
          while (2)
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v114 != v67)
              {
                objc_enumerationMutation(accounts);
              }

              v69 = *(*(&v113 + 1) + 8 * i);
              hmd_handles = [v69 hmd_handles];
              v71 = [hmd_handles containsObject:handleCopy];

              if (v71)
              {
                v72 = [handleCopy URI];
                prefixedURI = [v72 prefixedURI];
                [v24 setObject:prefixedURI forKeyedSubscript:*MEMORY[0x277D185E0]];

                v40 = v69;
                goto LABEL_54;
              }
            }

            v66 = [accounts countByEnumeratingWithState:&v113 objects:v131 count:16];
            if (v66)
            {
              continue;
            }

            break;
          }

          v40 = 0;
LABEL_54:
          messageCopy = v109;
          destinationCopy = v110;
        }

        else
        {
          v40 = 0;
        }
      }

      else
      {
        v40 = 0;
      }

      if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
      {
        shortDescription = [(HMDIDSMessageTransport *)self _identifierFromSerializedMessage:messageCopy];
      }

      else
      {
        shortDescription = [messageCopy shortDescription];
      }

      v75 = shortDescription;
      if (shouldLogPrivateInformation())
      {
        v76 = v24;
      }

      else
      {
        v77 = [v24 mutableCopy];
        v78 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277D185E0]];
        [v77 removeObjectsForKeys:v78];

        v76 = objc_msgSend_copy(v77);
      }

      v79 = isInternalBuild();
      v80 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v82 = HMFGetOSLogHandle();
      v83 = os_log_type_enabled(v82, OS_LOG_TYPE_INFO);
      if (v79)
      {
        if (v83)
        {
          v84 = HMFGetLogIdentifier();
          v85 = v84;
          switch(priorityCopy)
          {
            case 100:
              v86 = @"Sync";
              break;
            case 200:
              v86 = @"Default";
              break;
            case 300:
              v86 = @"Urgent";
              break;
            default:
              v86 = @"Unknown";
              break;
          }

          *buf = 138544899;
          v118 = v84;
          v119 = 2114;
          v120 = v75;
          v121 = 2160;
          v122 = 1752392040;
          v123 = 2112;
          v124 = allRemoteDestinationStrings;
          v125 = 2113;
          v126 = v40;
          v127 = 2114;
          v128 = v86;
          v129 = 2114;
          v130 = v76;
          v89 = "%{public}@Sending IDS message %{public}@ to %{mask.hash}@, from account %{private}@ with priority, %{public}@, options: %{public}@";
          v90 = v82;
          v91 = 72;
LABEL_84:
          _os_log_impl(&dword_229538000, v90, OS_LOG_TYPE_INFO, v89, buf, v91);
        }
      }

      else if (v83)
      {
        v87 = HMFGetLogIdentifier();
        v85 = v87;
        switch(priorityCopy)
        {
          case 100:
            v88 = @"Sync";
            break;
          case 200:
            v88 = @"Default";
            break;
          case 300:
            v88 = @"Urgent";
            break;
          default:
            v88 = @"Unknown";
            break;
        }

        *buf = 138544643;
        v118 = v87;
        v119 = 2114;
        v120 = v75;
        v121 = 2117;
        v122 = allRemoteDestinationStrings;
        v123 = 2113;
        v124 = v40;
        v125 = 2114;
        v126 = v88;
        v127 = 2114;
        v128 = v76;
        v89 = "%{public}@Sending IDS message %{public}@ to %{sensitive}@, from account %{private}@ with priority, %{public}@, options: %{public}@";
        v90 = v82;
        v91 = 62;
        goto LABEL_84;
      }

      objc_autoreleasePoolPop(v80);
      service2 = [(HMDIDSMessageTransport *)selfCopy3 service];
      v93 = [MEMORY[0x277CBEB98] setWithArray:allRemoteDestinationStrings];
      v112 = 0;
      messageCopy = v109;
      v94 = [service2 sendMessage:v109 fromAccount:v40 toDestinations:v93 priority:priorityCopy options:v24 identifier:&v112 error:error];
      v33 = v112;

      if (v94)
      {
        dCopy = v107;
LABEL_94:

        goto LABEL_95;
      }

      v95 = objc_autoreleasePoolPush();
      v96 = selfCopy3;
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = HMFGetLogIdentifier();
        v99 = [(HMDIDSMessageTransport *)v96 _identifierFromSerializedMessage:v109];
        v100 = v99;
        if (error)
        {
          v101 = *error;
        }

        else
        {
          v101 = @"<nil>";
        }

        *buf = 138543874;
        v118 = v98;
        v119 = 2114;
        v120 = v99;
        v121 = 2112;
        v122 = v101;
        _os_log_impl(&dword_229538000, v97, OS_LOG_TYPE_INFO, "%{public}@Failed to send IDS message %{public}@ due to error: %@", buf, 0x20u);

        messageCopy = v109;
      }

      objc_autoreleasePoolPop(v95);
      dCopy = v107;
LABEL_93:

      v33 = 0;
      goto LABEL_94;
    }

LABEL_8:
    v27 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D188A8]];
    [v24 setObject:v27 forKeyedSubscript:*MEMORY[0x277D18638]];

    goto LABEL_9;
  }

  v29 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v31 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v32 = HMFGetLogIdentifier();
    *buf = 138543362;
    v118 = v32;
    _os_log_impl(&dword_229538000, v31, OS_LOG_TYPE_ERROR, "%{public}@Destination is required", buf, 0xCu);

    errorCopy3 = error;
  }

  objc_autoreleasePoolPop(v29);
  if (errorCopy3)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    *errorCopy3 = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_96:

  return v33;
}

- (id)_identifierFromSerializedMessage:(void *)message
{
  v3 = a2;
  if (message)
  {
    if ([message isLegacyTransport])
    {
      v4 = @"kIDSMessageIdentifierKey";
    }

    else
    {
      v4 = @"id";
    }

    message = [v3 hmf_stringForKey:v4];
  }

  return message;
}

- (void)sendMessage:(id)message senderResidentInfo:(int64_t)info destinationResidentInfo:(int64_t)residentInfo completionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  workQueue = [(HMDIDSMessageTransport *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__HMDIDSMessageTransport_sendMessage_senderResidentInfo_destinationResidentInfo_completionHandler___block_invoke;
  block[3] = &unk_27867C1E0;
  v16 = messageCopy;
  selfCopy = self;
  v18 = handlerCopy;
  infoCopy = info;
  residentInfoCopy = residentInfo;
  v13 = messageCopy;
  v14 = handlerCopy;
  dispatch_async(workQueue, block);
}

void __99__HMDIDSMessageTransport_sendMessage_senderResidentInfo_destinationResidentInfo_completionHandler___block_invoke(uint64_t a1)
{
  v177 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__HMDIDSMessageTransport_sendMessage_senderResidentInfo_destinationResidentInfo_completionHandler___block_invoke_2;
  aBlock[3] = &unk_278689A68;
  v168 = *(a1 + 48);
  v167 = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = *(a1 + 40);
  if (!v3 || ([v3 isLegacyTransport] & 1) != 0)
  {
    goto LABEL_6;
  }

  v4 = [*(a1 + 32) responseHandler];

  if (v4)
  {
    v130 = objc_autoreleasePoolPush();
    v131 = *(a1 + 40);
    v132 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_FAULT))
    {
      v133 = HMFGetLogIdentifier();
      *buf = 138543362;
      v170 = v133;
      _os_log_impl(&dword_229538000, v132, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Response handler should not be set in modern transport", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v130);
    v134 = [[HMDAssertionLogEvent alloc] initWithReason:@"Response handler should not be set in modern transport"];
    v135 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v135 submitLogEvent:v134];
  }

  v5 = [*(a1 + 32) responseHandler];

  if (!v5)
  {
LABEL_6:
    v7 = [*(a1 + 32) destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v6 = v8;

    if (!v6)
    {
      v15 = objc_autoreleasePoolPush();
      v16 = *(a1 + 40);
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v19 = [*(a1 + 32) identifier];
        v20 = [v19 UUIDString];
        v21 = [*(a1 + 32) destination];
        *buf = 138543874;
        v170 = v18;
        v171 = 2114;
        v172 = v20;
        v173 = 2112;
        v174 = v21;
        _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to send message %{public}@ invalid destination: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v15);
      v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3 description:@"Invalid parameter." reason:@"Invalid destination." suggestion:0];
      v2[2](v2, v9);
      goto LABEL_100;
    }

    v9 = [*(a1 + 40) remoteMessageFromMessage:*(a1 + 32)];
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = [v10 isLegacyTransport] ^ 1;
    }

    else
    {
      v11 = 0;
    }

    v165 = 0;
    v12 = [HMDRemoteMessageSerialization dictionaryForMessage:v9 isHH2Payload:v11 error:&v165];
    v13 = v165;
    if (!v12)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = *(a1 + 40);
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        v26 = [*(a1 + 32) identifier];
        *buf = 138543874;
        v170 = v25;
        v171 = 2114;
        v172 = v26;
        v173 = 2112;
        v174 = v13;
        _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize message %{public}@ with error: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      v2[2](v2, v13);
      goto LABEL_99;
    }

    v14 = *(a1 + 40);
    v153 = v13;
    if (!v14 || ([v14 isLegacyTransport] & 1) != 0)
    {
      context = 0;
LABEL_61:
      v148 = v2;
      [v9 timeout];
      v61 = 0.0;
      if (v62 > 0.0)
      {
        [v9 timeout];
        v61 = v63;
      }

      v64 = [v9 collapseID];
      if (v64)
      {
        v65 = objc_opt_class();
        v66 = [v9 name];
        v67 = [v6 target];
        v68 = [MEMORY[0x277CBEAA8] now];
        v163 = [v65 queueOneIdentifierWithMessageName:v66 target:v67 collapseID:v64 timeToLive:v68 now:v61];
      }

      else
      {
        v163 = 0;
      }

      if ([v9 sendOptions])
      {
        v69 = 8;
      }

      else
      {
        v69 = *(a1 + 40);
        v70 = v9;
        v71 = v163;
        if (v69)
        {
          v72 = [v69 isLegacyTransport];
          v69 = 0;
          if (v72)
          {
            if (!v71)
            {
              v69 = [v70 type] == 3;
            }
          }
        }
      }

      v73 = [*(a1 + 32) destination];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v74 = v73;
      }

      else
      {
        v74 = 0;
      }

      v75 = v74;

      if (v75 && [v75 restrictToResidentCapable])
      {
        v69 |= 4uLL;
      }

      v147 = v75;
      v76 = [objc_opt_class() priorityForMessage:v9];
      v77 = *(a1 + 40);
      v78 = *(a1 + 56);
      v79 = *(a1 + 64);
      v164 = 0;
      v80 = [v77 sendMessage:v12 fromHandle:context destination:v6 priority:v76 timeout:v69 options:v163 queueOneID:v61 senderResidentInfo:v78 destinationResidentInfo:v79 error:&v164];
      v144 = v64;
      v145 = v164;
      v155 = v80;
      if (v80)
      {
        v81 = +[HMDMetricsManager sharedLogEventSubmitter];
        v82 = +[HMDRemoteMessageLogEvent sentRemoteMessage:transportType:](HMDRemoteMessageLogEvent, "sentRemoteMessage:transportType:", v9, [*(a1 + 40) transportType]);
        [v81 submitLogEvent:v82];

        v83 = objc_autoreleasePoolPush();
        v84 = *(a1 + 40);
        v85 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v86 = HMFGetLogIdentifier();
          [*(a1 + 32) identifier];
          v88 = v87 = v12;
          *buf = 138543874;
          v170 = v86;
          v171 = 2114;
          v172 = v88;
          v173 = 2114;
          v174 = v155;
          _os_log_impl(&dword_229538000, v85, OS_LOG_TYPE_INFO, "%{public}@Message %{public}@ ack'd with IDS GUID %{public}@", buf, 0x20u);

          v12 = v87;
        }

        objc_autoreleasePoolPop(v83);
        v89 = [MEMORY[0x277CBEB38] dictionary];
        v90 = *(a1 + 48);
        if (v90)
        {
          v91 = objc_msgSend_copy(v90);
          [v89 setObject:v91 forKeyedSubscript:@"HMDIDSMessageTransportCompletionHandlerKey"];
        }

        v151 = v12;
        v92 = [*(a1 + 32) responseHandler];

        v2 = v148;
        if (v92)
        {
          v93 = [v9 transactionIdentifier];
          [v89 setObject:v93 forKeyedSubscript:@"HMDIDSMessageTransportTransactionIdentifierKey"];
          v94 = [*(a1 + 32) responseHandler];
          v95 = _Block_copy(v94);
          v96 = [*(a1 + 40) pendingResponses];
          [v96 setObject:v95 forKeyedSubscript:v93];

          v97 = [v9 messagePayload];
          v98 = [v97 objectForKeyedSubscript:@"kRequestedCapabilitiesKey"];
          v99 = [*(a1 + 40) requestedCapabilities];
          [v99 setObject:v98 forKeyedSubscript:v93];

          v100 = [v6 remoteDestinationString];
          v101 = [*(a1 + 40) destinationAddress];
          [v101 setObject:v100 forKeyedSubscript:v93];

          v102 = *(a1 + 40);
          [v9 timeout];
          [v102 _startPendingResponseTimer:v93 responseTimeout:v155 identifier:?];
        }

        v103 = [HMDIDSMessageContext alloc];
        v104 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v155];
        v105 = [*(a1 + 32) destination];
        v106 = [(HMDIDSMessageContext *)v103 initWithIdentifier:v104 destination:v105 userInfo:v89];

        v107 = [*(a1 + 40) messageContexts];
        [v107 addObject:v106];

        v108 = [*(a1 + 40) sendMessageBudget];
        LODWORD(v104) = [v108 decrement];

        if (v104)
        {
          v109 = [*(a1 + 40) sendMessageBudget];
          v110 = [v109 isEmpty];

          v12 = v151;
          v111 = v145;
          if (v110)
          {
            v143 = objc_autoreleasePoolPush();
            v112 = *(a1 + 40);
            v113 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              v114 = HMFGetLogIdentifier();
              *buf = 138543362;
              v170 = v114;
              _os_log_impl(&dword_229538000, v113, OS_LOG_TYPE_ERROR, "%{public}@Exceeded send message budget", buf, 0xCu);

              v12 = v151;
            }

            objc_autoreleasePoolPop(v143);
            v115 = [*(a1 + 40) sendMessageBudget];
            v116 = [v115 rate];
            v118 = [HMDRemoteMessageExceedBudgetLogEvent eventWithBudgetRate:v116, v117];

            v119 = +[HMDMetricsManager sharedLogEventSubmitter];
            [v119 submitLogEvent:v118];
          }
        }

        else
        {
          v126 = objc_autoreleasePoolPush();
          v127 = *(a1 + 40);
          v128 = HMFGetOSLogHandle();
          v111 = v145;
          if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
          {
            v129 = HMFGetLogIdentifier();
            *buf = 138543362;
            v170 = v129;
            _os_log_impl(&dword_229538000, v128, OS_LOG_TYPE_INFO, "%{public}@Over send message budget", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v126);
          v12 = v151;
        }

        v13 = v153;
      }

      else
      {
        v120 = objc_autoreleasePoolPush();
        v121 = *(a1 + 40);
        v122 = HMFGetOSLogHandle();
        v111 = v145;
        if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
        {
          v123 = HMFGetLogIdentifier();
          [*(a1 + 32) identifier];
          v124 = v152 = v12;
          v125 = [*(a1 + 32) name];
          *buf = 138544130;
          v170 = v123;
          v171 = 2114;
          v172 = v124;
          v173 = 2112;
          v174 = v125;
          v175 = 2112;
          v176 = v145;
          _os_log_impl(&dword_229538000, v122, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to send message %{public}@ / %@ with error: %@", buf, 0x2Au);

          v12 = v152;
          v13 = v153;
        }

        objc_autoreleasePoolPop(v120);
        v2 = v148;
        v148[2](v148, v145);
      }

LABEL_99:
LABEL_100:

      goto LABEL_101;
    }

    v27 = [v12 mutableCopy];
    v28 = *(a1 + 40);
    v29 = v27;
    if (v28)
    {
      v30 = [v28 appleAccountManager];
      v31 = [v30 device];

      if (v31)
      {
        v32 = [v31 idsIdentifier];
        v33 = v32;
        if (v32)
        {
          v34 = [v32 UUIDString];
          [v29 setObject:v34 forKeyedSubscript:@"idsId"];
        }

        else
        {
          v149 = v12;
          v40 = objc_autoreleasePoolPush();
          v41 = v28;
          v42 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v43 = v161 = v40;
            *buf = 138543618;
            v170 = v43;
            v171 = 2112;
            v172 = v31;
            _os_log_impl(&dword_229538000, v42, OS_LOG_TYPE_ERROR, "%{public}@Cannot set the source IDS device identifier because IDS identifier is unknown for current device: %@", buf, 0x16u);

            v40 = v161;
          }

          objc_autoreleasePoolPop(v40);
          v12 = v149;
        }
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = v28;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v160 = v29;
          v39 = v38 = v12;
          *buf = 138543362;
          v170 = v39;
          _os_log_impl(&dword_229538000, v37, OS_LOG_TYPE_ERROR, "%{public}@Cannot set the source IDS device identifier because current device is unknown", buf, 0xCu);

          v12 = v38;
          v29 = v160;
        }

        objc_autoreleasePoolPop(v35);
      }
    }

    if ([v9 type] != 1)
    {
      context = 0;
      v13 = v153;
LABEL_60:
      v60 = objc_msgSend_copy(v29);

      v12 = v60;
      goto LABEL_61;
    }

    v44 = [*(a1 + 32) userInfo];
    v45 = [v44 objectForKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];

    if (v45)
    {
      [v29 setObject:v45 forKeyedSubscript:@"kIDSMessageResponseErrorDataKey"];
    }

    v46 = *(a1 + 40);
    v47 = v9;
    v48 = v47;
    if (!v46 || [v47 type] != 1)
    {
      context = 0;
      v13 = v153;
LABEL_59:

      goto LABEL_60;
    }

    v49 = [v48 remoteToID];
    v50 = v49;
    if (!v49)
    {
      context = 0;
      v13 = v153;
LABEL_58:

      goto LABEL_59;
    }

    v162 = v49;
    v150 = v12;
    v51 = [v48 destination];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;

    v154 = v53;
    if (v53)
    {
      v54 = [v53 device];
      v55 = [v54 account];

      if (v55)
      {
        v50 = v162;
        if (([(HMDAssertionLogEvent *)v55 isCurrentAccount]& 1) != 0)
        {
          context = 0;
          v13 = v153;
LABEL_57:

          v12 = v150;
          goto LABEL_58;
        }

        v56 = [HMDAccountHandle accountHandleForDestination:v162];
        if (v56)
        {
          v57 = v56;
          context = v57;
LABEL_56:
          v13 = v153;

          v50 = v162;
          goto LABEL_57;
        }

        contexta = objc_autoreleasePoolPush();
        v58 = v46;
        v59 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          v146 = HMFGetLogIdentifier();
          *buf = 138543618;
          v170 = v146;
          v171 = 2112;
          v172 = v162;
          _os_log_impl(&dword_229538000, v59, OS_LOG_TYPE_ERROR, "%{public}@Invalid toID to create an account handle: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(contexta);
        v57 = 0;
      }

      else
      {
        contextc = objc_autoreleasePoolPush();
        v139 = v46;
        v140 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v140, OS_LOG_TYPE_FAULT))
        {
          v141 = HMFGetLogIdentifier();
          *buf = 138543362;
          v170 = v141;
          _os_log_impl(&dword_229538000, v140, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Destination device does not have an associated account", buf, 0xCu);
        }

        objc_autoreleasePoolPop(contextc);
        v57 = [[HMDAssertionLogEvent alloc] initWithReason:@"Destination device does not have an associated account"];
        v142 = +[HMDMetricsManager sharedLogEventSubmitter];
        [v142 submitLogEvent:v57];

        v55 = 0;
      }
    }

    else
    {
      contextb = objc_autoreleasePoolPush();
      v136 = v46;
      v137 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v137, OS_LOG_TYPE_FAULT))
      {
        v138 = HMFGetLogIdentifier();
        *buf = 138543362;
        v170 = v138;
        _os_log_impl(&dword_229538000, v137, OS_LOG_TYPE_FAULT, "%{public}@Submitting ABC event for failure: Response message is not a device destination", buf, 0xCu);
      }

      objc_autoreleasePoolPop(contextb);
      v55 = [[HMDAssertionLogEvent alloc] initWithReason:@"Response message is not a device destination"];
      v57 = +[HMDMetricsManager sharedLogEventSubmitter];
      [(HMDAssertionLogEvent *)v57 submitLogEvent:v55];
    }

    context = 0;
    goto LABEL_56;
  }

  v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Not supported." reason:@"Response handler should not be set when using IDS transport for modern transport" suggestion:0];
  v2[2](v2, v6);
LABEL_101:
}

void __99__HMDIDSMessageTransport_sendMessage_senderResidentInfo_destinationResidentInfo_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = _Block_copy(*(a1 + 40));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }

  [*(a1 + 32) respondWithPayload:0 error:v5];
}

- (BOOL)isValidMessage:(id)message
{
  messageCopy = message;
  destination = [messageCopy destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_4;
  }

  destination2 = [messageCopy destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

LABEL_4:
    goto LABEL_5;
  }

  destination3 = [messageCopy destination];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if (([messageCopy restriction] & 1) == 0 || (!self || -[HMDIDSMessageTransport isLegacyTransport](self, "isLegacyTransport")) && (objc_msgSend(messageCopy, "restriction") == -1 || (objc_msgSend(messageCopy, "restriction") & 0x10) == 0))
  {
    goto LABEL_12;
  }

  v7 = 1;
LABEL_13:

  return v7;
}

- (BOOL)canSendMessage:(id)message
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  if (![(HMDIDSMessageTransport *)self isValidMessage:messageCopy])
  {
    goto LABEL_13;
  }

  if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
  {
    goto LABEL_6;
  }

  appleAccountManager = [(HMDIDSMessageTransport *)self appleAccountManager];
  device = [appleAccountManager device];

  if (!device)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v13;
      v14 = "%{public}@Cannot send message, not currently registered";
LABEL_11:
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_INFO, v14, &v17, 0xCu);
    }

LABEL_12:

    objc_autoreleasePoolPop(v10);
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  service = [(HMDIDSMessageTransport *)self service];
  hmd_isActive = [service hmd_isActive];

  if ((hmd_isActive & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v13;
      v14 = "%{public}@Cannot send message, service is inactive";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_6:
  v9 = 1;
LABEL_14:

  return v9;
}

- (BOOL)isSecure
{
  if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = HMDIDSMessageTransport;
  return [(HMDRemoteMessageTransport *)&v4 isSecure];
}

- (id)deviceForSenderContext:(id)context
{
  v54 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  appleAccountManager = [(HMDIDSMessageTransport *)self appleAccountManager];
  account = [appleAccountManager account];

  if (account)
  {
    handles = [account handles];
    accountHandle = [contextCopy accountHandle];
    v9 = [handles containsObject:accountHandle];

    if (!v9)
    {
      remoteAccountManager = [(HMDIDSMessageTransport *)self remoteAccountManager];
      v11 = [remoteAccountManager deviceForSenderContext:contextCopy];
      goto LABEL_11;
    }

    deviceHandle = [contextCopy deviceHandle];
    v11 = [account deviceForHandle:deviceHandle];

    if (v11)
    {
      if (![(HMDIDSMessageTransport *)self _shouldAddLocalHandleToDevice:v11])
      {
        goto LABEL_18;
      }

      localDeviceHandle = [contextCopy localDeviceHandle];

      if (!localDeviceHandle)
      {
        goto LABEL_18;
      }

      localDeviceHandle2 = [contextCopy localDeviceHandle];
      [(HMDDevice *)v11 addHandle:localDeviceHandle2];
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v47 = v22;
        _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_INFO, "%{public}@Received message from unknown device on our account, creating placeholder device", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = MEMORY[0x277CBEB18];
      deviceHandle2 = [contextCopy deviceHandle];
      localDeviceHandle2 = [v23 arrayWithObject:deviceHandle2];

      localDeviceHandle3 = [contextCopy localDeviceHandle];

      if (localDeviceHandle3)
      {
        localDeviceHandle4 = [contextCopy localDeviceHandle];
        [localDeviceHandle2 addObject:localDeviceHandle4];
      }

      v27 = [HMDDevice alloc];
      deviceHandle3 = [contextCopy deviceHandle];
      identifier = [deviceHandle3 identifier];
      v30 = objc_msgSend_copy(localDeviceHandle2);
      deviceVersion = [contextCopy deviceVersion];
      v11 = [(HMDDevice *)v27 initWithIdentifier:identifier handles:v30 name:0 productInfo:0 version:deviceVersion capabilities:0 account:account];

      [account addDevice:v11];
    }

LABEL_18:
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v47 = v35;
      v48 = 2112;
      v49 = v11;
      _os_log_impl(&dword_229538000, v34, OS_LOG_TYPE_DEBUG, "%{public}@Authenticated sender on our account: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    senderCorrelationIdentifier = [account senderCorrelationIdentifier];

    if (senderCorrelationIdentifier)
    {
      goto LABEL_21;
    }

    accountIdentifier = [contextCopy accountIdentifier];
    remoteAccountManager = [accountIdentifier senderCorrelationIdentifier];

    if (remoteAccountManager)
    {
      v39 = objc_autoreleasePoolPush();
      v40 = selfCopy2;
      v41 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = HMFGetLogIdentifier();
        identifier2 = [account identifier];
        shortDescription = [identifier2 shortDescription];
        *buf = 138544130;
        v47 = v42;
        v48 = 2114;
        v49 = shortDescription;
        v50 = 2160;
        v51 = 1752392040;
        v52 = 2112;
        v53 = remoteAccountManager;
        _os_log_impl(&dword_229538000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Updating account %{public}@ with inferred mergeID %{mask.hash}@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v39);
      appleAccountManager2 = [(HMDIDSMessageTransport *)v40 appleAccountManager];
      [appleAccountManager2 updateSenderCorrelationIdentifier:remoteAccountManager];
    }

LABEL_11:

    goto LABEL_21;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v47 = v17;
    _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_INFO, "%{public}@Received a message but no current account is available to authenticate it", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  v11 = 0;
LABEL_21:

  return v11;
}

- (BOOL)_shouldAddLocalHandleToDevice:(id)device
{
  deviceCopy = device;
  localHandles = [deviceCopy localHandles];
  hmf_isEmpty = [localHandles hmf_isEmpty];

  if (hmf_isEmpty)
  {
    globalHandles = [deviceCopy globalHandles];
    v7 = [globalHandles count] == 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)logIdentifier
{
  service = [(HMDIDSMessageTransport *)self service];
  serviceIdentifier = [service serviceIdentifier];

  return serviceIdentifier;
}

- (id)start
{
  v15 = *MEMORY[0x277D85DE8];
  if (self && ![(HMDIDSMessageTransport *)self isLegacyTransport])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    v7 = "%{public}@Starting using modern transport";
  }

  else
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v5 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    v6 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v6;
    v7 = "%{public}@Starting using legacy service";
  }

  _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, v7, &v13, 0xCu);

LABEL_8:
  objc_autoreleasePoolPop(v3);
  service = [(HMDIDSMessageTransport *)self service];
  workQueue = [(HMDIDSMessageTransport *)self workQueue];
  [service addDelegate:self queue:workQueue];

  startPromise = [(HMDRemoteMessageTransport *)self startPromise];
  [startPromise fulfillWithValue:0];

  startFuture = [(HMDRemoteMessageTransport *)self startFuture];

  return startFuture;
}

- (HMDIDSMessageTransport)initWithAccountRegistry:(id)registry service:(id)service serviceName:(id)name appleAccountManager:(id)manager remoteAccountManager:(id)accountManager featuresDataSource:(id)source
{
  serviceCopy = service;
  nameCopy = name;
  managerCopy = manager;
  accountManagerCopy = accountManager;
  sourceCopy = source;
  v50.receiver = self;
  v50.super_class = HMDIDSMessageTransport;
  v19 = [(HMDRemoteMessageTransport *)&v50 initWithAccountRegistry:registry];
  v20 = v19;
  if (v19)
  {
    v47 = managerCopy;
    v48 = serviceCopy;
    if (nameCopy == @"com.apple.private.alloy.willow")
    {
      v19->_legacyTransport = 1;
    }

    v21 = HMDispatchQueueNameString();
    uTF8String = [v21 UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(uTF8String, v23);
    workQueue = v20->_workQueue;
    v20->_workQueue = v24;

    objc_storeStrong(&v20->_service, service);
    objc_storeStrong(&v20->_appleAccountManager, manager);
    objc_storeStrong(&v20->_remoteAccountManager, accountManager);
    objc_storeStrong(&v20->_featuresDataSource, source);
    v26 = objc_alloc(MEMORY[0x277D0F8A0]);
    sendMessageLimit = [objc_opt_class() sendMessageLimit];
    sendMessageRate = [objc_opt_class() sendMessageRate];
    v30 = [v26 initWithLimit:sendMessageLimit rate:{sendMessageRate, v29}];
    sendMessageBudget = v20->_sendMessageBudget;
    v20->_sendMessageBudget = v30;

    array = [MEMORY[0x277CBEB18] array];
    messageContexts = v20->_messageContexts;
    v20->_messageContexts = array;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingResponses = v20->_pendingResponses;
    v20->_pendingResponses = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    receivedResponses = v20->_receivedResponses;
    v20->_receivedResponses = dictionary2;

    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    requestedCapabilities = v20->_requestedCapabilities;
    v20->_requestedCapabilities = dictionary3;

    dictionary4 = [MEMORY[0x277CBEB38] dictionary];
    destinationAddress = v20->_destinationAddress;
    v20->_destinationAddress = dictionary4;

    dictionary5 = [MEMORY[0x277CBEB38] dictionary];
    pendingResponseTimers = v20->_pendingResponseTimers;
    v20->_pendingResponseTimers = dictionary5;

    v44 = [objc_alloc(MEMORY[0x277CBEB40]) initWithCapacity:30];
    messageDedupBuffer = v20->_messageDedupBuffer;
    v20->_messageDedupBuffer = v44;

    managerCopy = v47;
    serviceCopy = v48;
  }

  return v20;
}

- (HMDIDSMessageTransport)initWithAccountRegistry:(id)registry forServiceName:(id)name
{
  nameCopy = name;
  registryCopy = registry;
  v8 = +[HMDIDSServiceManager sharedManager];
  v9 = [v8 serviceWithName:nameCopy];
  v10 = +[HMDAppleAccountManager sharedManager];
  v11 = +[HMDRemoteAccountManager sharedManager];
  v12 = +[HMDFeaturesDataSource defaultDataSource];
  v13 = [(HMDIDSMessageTransport *)self initWithAccountRegistry:registryCopy service:v9 serviceName:nameCopy appleAccountManager:v10 remoteAccountManager:v11 featuresDataSource:v12];

  return v13;
}

- (unint64_t)maximumNumberOfRetries
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDIDSMessageTransportSendMessageNumberOfRetriesKey"];
  numberValue = [v3 numberValue];
  unsignedIntegerValue = [numberValue unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (double)defaultTimeout
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"HMDIDSMessageTransportSendMessageDefaultTimeoutKey"];
  numberValue = [v3 numberValue];
  [numberValue doubleValue];
  v6 = v5;

  return v6;
}

+ (id)queueOneIdentifierWithMessageName:(id)name target:(id)target collapseID:(id)d timeToLive:(double)live now:(id)now
{
  nameCopy = name;
  targetCopy = target;
  dCopy = d;
  nowCopy = now;
  if (!nameCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!dCopy)
  {
LABEL_9:
    v40 = _HMFPreconditionFailure();
    return sha256(v40, v41, v42, v43, v44, v45, v46, v47, v51);
  }

  v15 = nowCopy;
  v23 = objc_autoreleasePoolPush();
  v24 = fmax(live * 3.0, 28800.0);
  if (v24 > 604800.0)
  {
    v24 = 604800.0;
  }

  v25 = v24;
  v49 = 0;
  v26 = sha256(@"Q1Offset", v16, v17, v18, v19, v20, v21, v22, nameCopy);
  [v26 getBytes:&v49 length:8];

  v27 = v49 % v25;
  [v15 timeIntervalSinceReferenceDate];
  v48 = (v27 + v28) / v25;
  v29 = [MEMORY[0x277CBEA90] dataWithBytes:&v48 length:8];
  v37 = sha256(@"Q1Id", v30, v31, v32, v33, v34, v35, v36, v29);
  hmf_hexadecimalRepresentation = [v37 hmf_hexadecimalRepresentation];

  objc_autoreleasePoolPop(v23);

  return hmf_hexadecimalRepresentation;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_51449 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_51449, &__block_literal_global_51450);
  }

  v3 = logCategory__hmf_once_v3_51451;

  return v3;
}

void __37__HMDIDSMessageTransport_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v3_51451;
  logCategory__hmf_once_v3_51451 = v0;
}

+ (_HMFRate)sendMessageRate
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v4 = [mEMORY[0x277D0F8D0] preferenceForKey:@"remoteSendMessageRate"];

  numberValue = [v4 numberValue];
  [numberValue doubleValue];
  v7 = v6;

  if (v7 <= 0.0)
  {
    v10 = 60.0;
  }

  else
  {
    numberValue2 = [v4 numberValue];
    [numberValue2 doubleValue];
    v10 = v9;
  }

  v11 = ([self sendMessageLimit] / v10);

  v12 = v11;
  v13 = v10;
  result.period = v13;
  result.value = v12;
  return result;
}

+ (unint64_t)sendMessageLimit
{
  mEMORY[0x277D0F8D0] = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [mEMORY[0x277D0F8D0] preferenceForKey:@"remoteSendMessageLimit"];

  numberValue = [v3 numberValue];
  unsignedIntegerValue = [numberValue unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    numberValue2 = [v3 numberValue];
    unsignedIntegerValue2 = [numberValue2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 1800;
  }

  return unsignedIntegerValue2;
}

+ (id)stringFromHMDIDSResidentInfo:(int64_t)info
{
  if (info >= 4)
  {
    info = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown residentInfo: %lu", info];
  }

  else
  {
    info = off_278674088[info];
  }

  return info;
}

@end