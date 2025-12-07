@interface HMDSecureRemoteStreamInternal
+ (id)logCategory;
- (HMDSecureRemoteStreamInternal)init;
- (HMDSecureRemoteStreamInternal)initWithType:(int64_t)type commitTimeout:(unint64_t)timeout clientIdleTimeout:(unint64_t)idleTimeout serverIdleTimeout:(unint64_t)serverIdleTimeout sendInternalTimeout:(unint64_t)internalTimeout sendUserTimeout:(unint64_t)userTimeout;
- (id)_encodeBinaryPlist:(void *)plist;
- (id)logIdentifier;
- (int)_clientHandleCommitResponse:(id)response options:(id)options;
- (int)_clientHandlePrepareResponse:(id)response options:(id)options;
- (int)_clientPairVerifyExchange:(id)exchange;
- (int)_clientSendCommitRequest:(id)request;
- (int)_clientSendPrepareRequest:(id)request;
- (int)_serverHandleCommitRequest:(id)request options:(id)options responseHandler:(id)handler;
- (int)_serverHandleDecryptedRequest:(id)request options:(id)options responseHandler:(id)handler;
- (int)_serverHandlePrepareRequest:(id)request options:(id)options responseHandler:(id)handler;
- (int)_setupEncryption;
- (int)_updateIdleTimer;
- (void)_clientRunStateMachine;
- (void)_completeTransaction:(id)transaction response:(id)response options:(id)options status:(int)status;
- (void)_completeUserTransaction:(id)transaction response:(id)response options:(id)options status:(int)status;
- (void)_runStateMachine;
- (void)_sendRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_sendUserRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)_serverCompletePrepareRequest:(id)request;
- (void)_serverHandleEncryptedRequest:(id)request options:(id)options;
- (void)_serverPairVerifyExchange:(id)exchange options:(id)options;
- (void)_serverRunStateMachine;
- (void)_start;
- (void)_stop:(int)_stop;
- (void)_transportReceivedMessage:(id)message options:(id)options;
- (void)dealloc;
- (void)sendRequest:(id)request options:(id)options responseHandler:(id)handler;
- (void)start;
- (void)stop;
- (void)transportReceivedMessage:(id)message options:(id)options;
@end

@implementation HMDSecureRemoteStreamInternal

- (id)logIdentifier
{
  dispatch_assert_queue_V2(self->_internalQueue);
  type = self->_type;
  if (type == 2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"S(%@)", self->_sessionID];
    goto LABEL_5;
  }

  if (type == 1)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"C(%@)", self->_sessionID];
    v4 = LABEL_5:;
    goto LABEL_7;
  }

  v4 = self->_sessionID;
LABEL_7:

  return v4;
}

- (void)_serverCompletePrepareRequest:(id)request
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [(NSMutableDictionary *)self->_prepareRequests objectForKeyedSubscript:requestCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"timer"];
    v8 = v7;
    if (v7)
    {
      dispatch_source_cancel(v7);
    }

    [(NSMutableDictionary *)self->_prepareRequests removeObjectForKey:requestCopy];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v12;
      v15 = 2112;
      v16 = requestCopy;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Missing prepare request, tid %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (int)_serverHandleCommitRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v75 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  v66 = 0;
  v49 = requestCopy;
  [requestCopy objectForKeyedSubscript:@"utid"];
  v52 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = 0;
    v51 = 0;
    source = 0;
    v10 = 0;
    goto LABEL_19;
  }

  v9 = [(NSMutableDictionary *)self->_prepareRequests objectForKeyedSubscript:*&v52];
  v10 = v9;
  if (!v9)
  {
    v13 = 0;
    v51 = 0;
    source = 0;
    v34 = -6727;
    goto LABEL_24;
  }

  v11 = [v9 objectForKeyedSubscript:@"processing"];
  bOOLValue = [v11 BOOLValue];

  if (bOOLValue)
  {
    v13 = 0;
    v51 = 0;
    source = 0;
    v34 = -6730;
    goto LABEL_24;
  }

  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"processing"];
  v13 = [v10 objectForKeyedSubscript:@"request"];
  if (!v13)
  {
    v51 = 0;
    source = 0;
    v34 = -6762;
    goto LABEL_24;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v70 = v17;
    v71 = 2112;
    v72 = v52;
    v73 = 2112;
    v74 = *&v49;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@Received commit request, utid %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v18 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:*&v52];
  logRemoteMessageEvent(v13, optionsCopy, v18);

  v19 = [v10 objectForKeyedSubscript:@"timer"];
  source = v19;
  if (v19)
  {
    dispatch_source_cancel(v19);
  }

  v51 = [v49 objectForKeyedSubscript:@"timeout"];
  if (!v51)
  {
    sendInternalTimeoutNanos = selfCopy->_sendInternalTimeoutNanos;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_19:
    v34 = -6756;
    goto LABEL_24;
  }

  sendInternalTimeoutNanos = 1000000000 * [v51 longLongValue];
LABEL_13:
  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  HMFGetOSLogHandle();
  v24 = v23 = sendInternalTimeoutNanos - 5000000000;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    *buf = 138543874;
    v70 = v25;
    v71 = 2048;
    v72 = (v23 / 1000000000.0);
    v73 = 2112;
    v74 = v52;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Starting commit response timeout of %.03f seconds for transaction: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v21);
  v26 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v22->_internalQueue);
  if (v26)
  {
    v27 = v26;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke;
    handler[3] = &unk_2797346B8;
    v64 = v65;
    handler[4] = v22;
    v28 = *&v52;
    v60 = v28;
    v29 = v13;
    v61 = v29;
    v30 = optionsCopy;
    v62 = v30;
    v31 = handlerCopy;
    v63 = v31;
    dispatch_source_set_event_handler(v27, handler);

    dispatch_source_set_cancel_handler(v27, &__block_literal_global_131_185862);
    v32 = dispatch_walltime(0, v23);
    dispatch_source_set_timer(v27, v32, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(v27);
    [v10 setObject:v27 forKeyedSubscript:@"timer"];
    userQueue = v22->_userQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke_2;
    block[3] = &unk_2797346B8;
    block[4] = v22;
    v13 = v29;
    v54 = v13;
    v55 = v30;
    v58 = v65;
    v56 = v28;
    v57 = v31;
    dispatch_async(userQueue, block);

    v34 = 0;
    goto LABEL_17;
  }

  v34 = -6700;
LABEL_24:
  context = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v44 = HMFGetLogIdentifier();
    v38 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA450];
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v40 = v39;
    v41 = @"?";
    if (v39)
    {
      v41 = v39;
    }

    v68 = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:{1, v44, context}];
    [v38 errorWithDomain:*MEMORY[0x277CCA590] code:v34 userInfo:v42];
    v43 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    *buf = 138543874;
    v70 = v45;
    v71 = 2112;
    v72 = v43;
    v73 = 2112;
    v74 = *&v49;
    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Commit failed: %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(context);
LABEL_17:

  _Block_object_dispose(v65, 8);
  return v34;
}

void __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      *buf = 138543618;
      v27 = v5;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@Transaction, %@, timed out, sending cancelled error", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 32) _serverCompletePrepareRequest:*(a1 + 40)];
    v24[0] = @"response";
    v22 = @"kIDSMessageResponseErrorDataKey";
    v7 = MEMORY[0x277CCAAB0];
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277CCA590];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DebugGetErrorString(), *MEMORY[0x277CCA450]}];
    v11 = v10;
    v12 = @"?";
    if (v10)
    {
      v12 = v10;
    }

    v21 = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v14 = [v8 errorWithDomain:v9 code:-6723 userInfo:v13];
    v15 = [v7 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
    v23 = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v24[1] = @"utid";
    v25[0] = v16;
    v25[1] = *(a1 + 40);
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

    v18 = [*(a1 + 48) hmf_stringForKey:@"kIDSMessageNameKey"];
    v19 = augmentResponseOptions(*(a1 + 56), v18);
    (*(*(a1 + 64) + 16))();
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

void __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 200);
  v5 = *(v2 + 104);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke_3;
  v8[3] = &unk_279734690;
  v6 = *(a1 + 72);
  v8[4] = v2;
  v12 = v6;
  v7 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 40);
  v11 = *(a1 + 64);
  (*(v4 + 16))(v4, v3, v5, v7, v8);
}

void __84__HMDSecureRemoteStreamInternal__serverHandleCommitRequest_options_responseHandler___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 104));
  if (*(*(*(a1 + 64) + 8) + 24))
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      HMFGetLogIdentifier();
      v14 = v13 = v8;
      v15 = *(a1 + 40);
      *buf = 138543618;
      v27 = v14;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Transaction, %@, has already been completed", buf, 0x16u);

      v8 = v13;
    }

    objc_autoreleasePoolPop(v10);
  }

  else
  {
    [*(a1 + 32) _serverCompletePrepareRequest:*(a1 + 40)];
    v32[0] = @"response";
    v32[1] = @"utid";
    v16 = *(a1 + 40);
    v33[0] = v7;
    v33[1] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v18 = [*(a1 + 48) hmf_stringForKey:@"kIDSMessageNameKey"];
    v19 = augmentResponseOptions(v8, v18);
    v20 = objc_autoreleasePoolPush();
    v21 = *(a1 + 32);
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v23 = v25 = v8;
      v24 = *(a1 + 40);
      *buf = 138543874;
      v27 = v23;
      v28 = 2112;
      v29 = v24;
      v30 = 2112;
      v31 = v7;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_DEBUG, "%{public}@sending commit response, utid %@ %@", buf, 0x20u);

      v8 = v25;
    }

    objc_autoreleasePoolPop(v20);
    (*(*(a1 + 56) + 16))();
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (int)_serverHandlePrepareRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = [requestCopy objectForKeyedSubscript:@"utid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    goto LABEL_9;
  }

  v12 = [requestCopy objectForKeyedSubscript:@"request"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_9:
    v24 = -6756;
    goto LABEL_7;
  }

  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543874;
    v35 = v16;
    v36 = 2112;
    v37 = v11;
    v38 = 2112;
    v39 = requestCopy;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Received prepare request, utid %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v11];
  logRemoteMessageEvent(v12, optionsCopy, v17);

  v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, selfCopy->_internalQueue);
  if (v18)
  {
    v19 = v18;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __85__HMDSecureRemoteStreamInternal__serverHandlePrepareRequest_options_responseHandler___block_invoke;
    handler[3] = &unk_2797359B0;
    handler[4] = selfCopy;
    v20 = v11;
    v33 = v20;
    dispatch_source_set_event_handler(v19, handler);

    dispatch_source_set_cancel_handler(v19, &__block_literal_global_124_185899);
    v21 = dispatch_walltime(0, selfCopy->_commitTimeoutNanos);
    dispatch_source_set_timer(v19, v21, 0xFFFFFFFFFFFFFFFFLL, selfCopy->_commitTimeoutNanos / 0xA);
    dispatch_resume(v19);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [dictionary setObject:v12 forKeyedSubscript:@"request"];
    [dictionary setObject:v19 forKeyedSubscript:@"timer"];
    [(NSMutableDictionary *)selfCopy->_prepareRequests setObject:dictionary forKey:v20];
    internalQueue = selfCopy->_internalQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HMDSecureRemoteStreamInternal__serverHandlePrepareRequest_options_responseHandler___block_invoke_3;
    block[3] = &unk_279734668;
    v12 = v12;
    v27 = v12;
    v28 = optionsCopy;
    v29 = selfCopy;
    v30 = v20;
    v31 = handlerCopy;
    dispatch_async(internalQueue, block);

    v24 = 0;
  }

  else
  {
    v24 = -6700;
  }

LABEL_7:

  return v24;
}

void __85__HMDSecureRemoteStreamInternal__serverHandlePrepareRequest_options_responseHandler___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hmf_stringForKey:@"kIDSMessageNameKey"];
  v3 = augmentResponseOptions(*(a1 + 40), v2);
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 48);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 56);
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Sending prepare response options %@, utid %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  (*(*(a1 + 64) + 16))();
}

- (int)_serverHandleDecryptedRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v11 = [requestCopy objectForKeyedSubscript:@"op"];
  if ([v11 isEqual:@"prepare"])
  {
    v12 = [(HMDSecureRemoteStreamInternal *)self _serverHandlePrepareRequest:requestCopy options:optionsCopy responseHandler:handlerCopy];
  }

  else
  {
    if (![v11 isEqual:@"commit"])
    {
      v13 = -6714;
      goto LABEL_7;
    }

    v12 = [(HMDSecureRemoteStreamInternal *)self _serverHandleCommitRequest:requestCopy options:optionsCopy responseHandler:handlerCopy];
  }

  v13 = v12;
LABEL_7:

  return v13;
}

- (void)_serverHandleEncryptedRequest:(id)request options:(id)options
{
  v52 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  if (!self->_sessionID)
  {
    v41 = 0;
    goto LABEL_25;
  }

  v8 = [requestCopy objectForKeyedSubscript:@"tid"];
  objc_opt_class();
  v41 = v8;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_25:
    v13 = 0;
    v17 = 0;
    v21 = 0;
    v20 = 4294960534;
    goto LABEL_18;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543874;
    v47 = v12;
    v48 = 2112;
    v49 = v8;
    v50 = 2112;
    v51 = requestCopy;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Received request, tid %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v13 = [requestCopy objectForKeyedSubscript:@"edata"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [v13 length];
    v15 = v14 - 16;
    if (v14 < 0x10)
    {
      v17 = 0;
      v21 = 0;
      v20 = 4294960553;
    }

    else
    {
      [v13 bytes];
      v16 = [MEMORY[0x277CBEB28] dataWithLength:v15];
      v17 = v16;
      if (v16)
      {
        [v16 mutableBytes];
        cipherReadNonce = selfCopy->_cipherReadNonce;
        v19 = chacha20_poly1305_decrypt_all_64x64();
        if (v19)
        {
          v20 = v19;
          v21 = 0;
        }

        else
        {
          v22 = 0;
          do
          {
            if (++cipherReadNonce[v22])
            {
              v24 = 1;
            }

            else
            {
              v24 = v22 == 7;
            }

            ++v22;
          }

          while (!v24);
          v21 = [MEMORY[0x277CCAC58] propertyListWithData:v17 options:0 format:0 error:0];
          if (v21)
          {
            v42[0] = MEMORY[0x277D85DD0];
            v42[1] = 3221225472;
            v42[2] = __71__HMDSecureRemoteStreamInternal__serverHandleEncryptedRequest_options___block_invoke;
            v42[3] = &unk_279734640;
            v42[4] = selfCopy;
            v41 = v41;
            v43 = v41;
            v20 = [(HMDSecureRemoteStreamInternal *)selfCopy _serverHandleDecryptedRequest:v21 options:optionsCopy responseHandler:v42];

            if (!v20)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v20 = 4294960564;
          }
        }
      }

      else
      {
        v21 = 0;
        v20 = 4294960568;
      }
    }
  }

  else
  {
    v17 = 0;
    v21 = 0;
    v20 = 4294960540;
  }

LABEL_18:
  v40 = optionsCopy;
  v25 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = HMFGetLogIdentifier();
    v39 = requestCopy;
    v35 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA590];
    v44 = *MEMORY[0x277CCA450];
    v37 = v25;
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v31 = v30;
    v32 = @"?";
    if (v30)
    {
      v32 = v30;
    }

    v45 = v32;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:{1, v35}];
    v33 = v38 = v21;
    v34 = [v36 errorWithDomain:v29 code:v20 userInfo:v33];
    *buf = 138543874;
    v47 = v28;
    v48 = 2112;
    v49 = v34;
    v50 = 2112;
    v51 = v39;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Request failed: %@, %@", buf, 0x20u);

    requestCopy = v39;
    v21 = v38;

    v25 = v37;
  }

  objc_autoreleasePoolPop(v25);
  [(HMDSecureRemoteStreamInternal *)selfCopy2 _stop:v20];
  optionsCopy = v40;
LABEL_23:
}

void __71__HMDSecureRemoteStreamInternal__serverHandleEncryptedRequest_options___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v63[4] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 104));
  v48 = v7;
  if (v9)
  {
    if ([v9 code])
    {
      v31 = [v9 code];
      if (!v31)
      {
        goto LABEL_20;
      }

      v30 = 0;
    }

    else
    {
      v30 = 0;
      v31 = 4294960596;
    }

    goto LABEL_28;
  }

  v10 = *(a1 + 32);
  if (*(v10 + 160) != 1)
  {
    v30 = 0;
    v31 = 4294960576;
    goto LABEL_28;
  }

  if (!*(v10 + 152) || !*(v10 + 224))
  {
LABEL_21:
    v30 = 0;
    v31 = 4294960534;
LABEL_28:
    v32 = objc_autoreleasePoolPush();
    v33 = *(a1 + 32);
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = HMFGetLogIdentifier();
      v45 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CCA590];
      v47 = v31;
      v54 = *MEMORY[0x277CCA450];
      v50 = v30;
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v37 = v36;
      v38 = @"?";
      if (v36)
      {
        v38 = v36;
      }

      v55 = v38;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:{1, v43, v45}];
      v39 = v32;
      v41 = v40 = v8;
      v42 = [v46 errorWithDomain:v44 code:v31 userInfo:v41];
      *buf = 138543874;
      v57 = v35;
      v58 = 2112;
      v59 = v42;
      v60 = 2112;
      v61 = v48;
      _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Response failed: %@, %@", buf, 0x20u);

      v31 = v47;
      v8 = v40;
      v32 = v39;

      v30 = v50;
    }

    objc_autoreleasePoolPop(v32);
    [*(a1 + 32) _stop:v31];
    v7 = v48;
    goto LABEL_19;
  }

  if (v7)
  {
    v11 = [(HMDSecureRemoteStreamInternal *)v10 _encodeBinaryPlist:v7];
    if (v11)
    {
      v49 = v11;
      v12 = [v11 length];
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  v12 = 0;
  v49 = 0;
LABEL_9:
  v13 = [MEMORY[0x277CBEB28] dataWithLength:v12 + 16];
  if (!v13)
  {
    v31 = 4294960568;
    v9 = 0;
    v30 = v49;
    goto LABEL_28;
  }

  v14 = v13;
  v15 = v8;
  [v13 mutableBytes];
  [v49 bytes];
  chacha20_poly1305_encrypt_all_64x64();
  v16 = 0;
  v17 = *(a1 + 32) + 80;
  do
  {
    if (++*(v17 + v16))
    {
      v19 = 1;
    }

    else
    {
      v19 = v16 == 7;
    }

    ++v16;
  }

  while (!v19);
  v63[0] = v14;
  v62[0] = @"edata";
  v62[1] = @"sid";
  v20 = *(a1 + 40);
  v63[1] = *(*(a1 + 32) + 152);
  v63[2] = v20;
  v62[2] = @"tid";
  v62[3] = @"type";
  v63[3] = @"response";
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:4];
  v22 = objc_autoreleasePoolPush();
  v23 = *(a1 + 32);
  v24 = HMFGetOSLogHandle();
  v9 = 0;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = HMFGetLogIdentifier();
    v26 = *(a1 + 40);
    *buf = 138543874;
    v57 = v25;
    v58 = 2112;
    v59 = v26;
    v60 = 2112;
    v61 = v21;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Sending response, tid %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v22);
  v27 = *(a1 + 32);
  v28 = *(v27 + 240);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__HMDSecureRemoteStreamInternal__serverHandleEncryptedRequest_options___block_invoke_122;
  block[3] = &unk_279734960;
  block[4] = v27;
  v52 = v21;
  v8 = v15;
  v53 = v15;
  v29 = v21;
  dispatch_async(v28, block);

  [*(a1 + 32) _updateIdleTimer];
  v7 = v48;
  v30 = v49;
LABEL_19:

LABEL_20:
}

- (id)_encodeBinaryPlist:(void *)plist
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (plist)
  {
    v11 = 0;
    v4 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:200 options:0 error:&v11];
    v5 = v11;
    if (!v4)
    {
      v6 = objc_autoreleasePoolPush();
      plistCopy = plist;
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = HMFGetLogIdentifier();
        *buf = 138543618;
        v13 = v9;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode payload as binary PList: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v6);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_serverPairVerifyExchange:(id)exchange options:(id)options
{
  v61 = *MEMORY[0x277D85DE8];
  exchangeCopy = exchange;
  optionsCopy = options;
  v51 = 0;
  v52 = 0;
  v8 = [exchangeCopy objectForKeyedSubscript:@"op"];
  v9 = [v8 isEqual:@"pv"];

  v44 = optionsCopy;
  if (!v9)
  {
    v23 = 0;
    v13 = 0;
    v47 = 0;
    v10 = 0;
    v15 = 4294960560;
    goto LABEL_20;
  }

  v10 = [exchangeCopy objectForKeyedSubscript:@"tid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = 0;
    v13 = 0;
    v47 = 0;
    v15 = 4294960588;
    goto LABEL_20;
  }

  v11 = [exchangeCopy objectForKeyedSubscript:@"data"];
  objc_opt_class();
  v47 = v11;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = 0;
    v13 = 0;
    v15 = 4294960540;
    goto LABEL_20;
  }

  if (self->_sessionID)
  {
    v12 = exchangeCopy;
    v13 = 0;
  }

  else
  {
    v13 = [exchangeCopy objectForKeyedSubscript:@"sid"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = 0;
      v15 = 4294960540;
      goto LABEL_20;
    }

    v12 = exchangeCopy;
    objc_storeStrong(&self->_sessionID, v13);
  }

  if (self->_pairVerifySession)
  {
    goto LABEL_9;
  }

  v60 = 0u;
  v59 = 0u;
  v58 = 0u;
  *&buf[8] = 0u;
  *buf = self;
  if (self->_findPeerHandler)
  {
    *&v59 = _pairingFindPeer;
  }

  *(&v58 + 1) = _pairingCopyIdentity;
  v24 = PairingSessionCreate();
  if (v24)
  {
    v15 = v24;
    v23 = 0;
    exchangeCopy = v12;
    optionsCopy = v44;
LABEL_20:
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = HMFGetLogIdentifier();
      v43 = v13;
      v29 = v10;
      v30 = MEMORY[0x277CCA9B8];
      v42 = v23;
      v31 = *MEMORY[0x277CCA590];
      v32 = exchangeCopy;
      v33 = v15;
      v53 = *MEMORY[0x277CCA450];
      v46 = v15;
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v35 = v34;
      v36 = @"?";
      if (v34)
      {
        v36 = v34;
      }

      v54 = v36;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v37 = v41 = v25;
      v38 = v30;
      v10 = v29;
      v39 = v33;
      exchangeCopy = v32;
      v13 = v43;
      optionsCopy = v44;
      v40 = [v38 errorWithDomain:v31 code:v39 userInfo:v37];
      *buf = 138543874;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = v40;
      *&buf[22] = 2112;
      *&v58 = exchangeCopy;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@Pair-verify failed: %@, %@", buf, 0x20u);

      v23 = v42;
      v25 = v41;

      v15 = v46;
    }

    objc_autoreleasePoolPop(v25);
    [(HMDSecureRemoteStreamInternal *)selfCopy _stop:v15];
    goto LABEL_25;
  }

  PairingSessionSetLogging();
LABEL_9:
  [v11 bytes];
  [v11 length];
  v14 = PairingSessionExchange();
  v15 = v14;
  if (v14)
  {
    v23 = 0;
    exchangeCopy = v12;
    optionsCopy = v44;
  }

  else
  {
    v45 = v14;
    v55[0] = @"data";
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:v52 length:v51];
    v56[0] = v16;
    v56[1] = @"pv";
    v55[1] = @"op";
    v55[2] = @"sid";
    v56[2] = self->_sessionID;
    v56[3] = v10;
    v55[3] = @"tid";
    v55[4] = @"type";
    v56[4] = @"response";
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:5];

    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    exchangeCopy = v12;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Sending pair-verify response %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    userQueue = selfCopy2->_userQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HMDSecureRemoteStreamInternal__serverPairVerifyExchange_options___block_invoke;
    block[3] = &unk_279734960;
    block[4] = selfCopy2;
    v23 = v17;
    v49 = v23;
    optionsCopy = v44;
    v50 = v44;
    dispatch_async(userQueue, block);

    [(HMDSecureRemoteStreamInternal *)selfCopy2 _updateIdleTimer];
    v15 = v45;
    if (v52)
    {
      free(v52);
    }
  }

  if (v15)
  {
    goto LABEL_20;
  }

LABEL_25:
}

- (void)_serverRunStateMachine
{
  v25 = *MEMORY[0x277D85DE8];
  while (1)
  {
    while (1)
    {
      state = self->_state;
      if (state <= 12)
      {
        break;
      }

      switch(state)
      {
        case 13:
          if (!self->_pairVerifyDone)
          {
            return;
          }

          self->_state = 14;
          break;
        case 14:
          _setupEncryption = [(HMDSecureRemoteStreamInternal *)self _setupEncryption];
          if (_setupEncryption)
          {
            v15 = _setupEncryption;
            goto LABEL_21;
          }

          selfCopy = self;
          v17[0] = MEMORY[0x277D85DD0];
          v17[1] = 3221225472;
          v17[2] = __55__HMDSecureRemoteStreamInternal__serverRunStateMachine__block_invoke_2;
          v17[3] = &unk_279734618;
          v18 = selfCopy;
          v5 = selfCopy;
          [(HMDSecureRemoteStreamInternal *)v5 setInternalRequestHandler:v17];
          self->_state = 15;
          userQueue = v5->_userQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __55__HMDSecureRemoteStreamInternal__serverRunStateMachine__block_invoke_3;
          block[3] = &unk_279735D00;
          block[4] = v5;
          dispatch_async(userQueue, block);
          v6 = v18;
LABEL_10:

          break;
        case 15:
          return;
        default:
          goto LABEL_17;
      }
    }

    if (state != 10)
    {
      break;
    }

    self->_state = 12;
  }

  if (state == 12)
  {
    selfCopy2 = self;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __55__HMDSecureRemoteStreamInternal__serverRunStateMachine__block_invoke;
    v19[3] = &unk_279734618;
    v20 = selfCopy2;
    v5 = selfCopy2;
    [(HMDSecureRemoteStreamInternal *)v5 setInternalRequestHandler:v19];
    self->_state = 13;
    v6 = v20;
    goto LABEL_10;
  }

  if (state == 11)
  {
    return;
  }

LABEL_17:
  v10 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v13 = HMFGetLogIdentifier();
    v14 = self->_state;
    *buf = 138543618;
    v22 = v13;
    v23 = 1024;
    v24 = v14;
    _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Bad state: %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v10);
  v15 = 4294960587;
LABEL_21:
  [(HMDSecureRemoteStreamInternal *)self _stop:v15];
}

void __55__HMDSecureRemoteStreamInternal__serverRunStateMachine__block_invoke_3(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 208));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 208);
    *(v3 + 208) = 0;
    v5 = v2;

    v5[2](v5, 0);
    v2 = v5;
  }
}

- (int)_clientHandleCommitResponse:(id)response options:(id)options
{
  v36 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  optionsCopy = options;
  v8 = [responseCopy objectForKeyedSubscript:@"edata"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_24;
  }

  v9 = [v8 length];
  v10 = v9 - 16;
  if (v9 < 0x10)
  {
    v12 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v15 = -6743;
    goto LABEL_18;
  }

  [v8 bytes];
  v11 = [MEMORY[0x277CBEB28] dataWithLength:v10];
  v12 = v11;
  if (!v11)
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v15 = -6728;
    goto LABEL_18;
  }

  [v11 mutableBytes];
  cipherReadNonce = self->_cipherReadNonce;
  v14 = chacha20_poly1305_decrypt_all_64x64();
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    goto LABEL_18;
  }

  v19 = 0;
  do
  {
    if (++cipherReadNonce[v19])
    {
      v21 = 1;
    }

    else
    {
      v21 = v19 == 7;
    }

    ++v19;
  }

  while (!v21);
  v22 = [MEMORY[0x277CCAC58] propertyListWithData:v12 options:0 format:0 error:0];
  v16 = v22;
  if (!v22)
  {
    v17 = 0;
    v18 = 0;
    v15 = -6732;
    goto LABEL_18;
  }

  v18 = [v22 objectForKeyedSubscript:@"utid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_24;
  }

  v17 = [v16 objectForKeyedSubscript:@"response"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_24:
    v15 = -6756;
    goto LABEL_18;
  }

  v29 = optionsCopy;
  self->_commitResponded = 1;
  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = HMFGetLogIdentifier();
    *buf = 138543874;
    v31 = v26;
    v32 = 2112;
    v33 = v18;
    v34 = 2112;
    v35 = v16;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEBUG, "%{public}@Received commit response, utid %@ %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v23);
  optionsCopy = v29;
  [(HMDSecureRemoteStreamInternal *)selfCopy _completeUserTransaction:v18 response:v17 options:v29 status:0];
  v27 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v18];
  logRemoteMessageEvent(responseCopy, v29, v27);

  v15 = 0;
LABEL_18:

  return v15;
}

- (int)_clientSendCommitRequest:(id)request
{
  v50[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy objectForKeyedSubscript:@"utid"];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sendInternalTimeoutNanos / 1000000000.0];
    v49[0] = @"op";
    v49[1] = @"utid";
    v50[0] = @"commit";
    v50[1] = v5;
    v49[2] = @"timeout";
    v50[2] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
    v8 = [(HMDSecureRemoteStreamInternal *)self _encodeBinaryPlist:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 length];
      v11 = [MEMORY[0x277CBEB28] dataWithLength:v10 + 16];
      if (v11)
      {
        v12 = v11;
        [v11 mutableBytes];
        cipherWriteNonce = self->_cipherWriteNonce;
        [v9 bytes];
        chacha20_poly1305_encrypt_all_64x64();
        v14 = 0;
        do
        {
          if (++cipherWriteNonce[v14])
          {
            v16 = 1;
          }

          else
          {
            v16 = v14 == 7;
          }

          ++v14;
        }

        while (!v16);
        v17 = objc_autoreleasePoolPush();
        selfCopy = self;
        v19 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v20 = HMFGetLogIdentifier();
          *buf = 138543874;
          v44 = v20;
          v45 = 2112;
          v46 = v5;
          v47 = 2112;
          v48 = v7;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Sending commit request, utid %@ %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v17);
        v41 = @"edata";
        v42 = v12;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v22 = [requestCopy objectForKeyedSubscript:@"options"];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __58__HMDSecureRemoteStreamInternal__clientSendCommitRequest___block_invoke;
        v38[3] = &unk_2797345F0;
        v38[4] = selfCopy;
        [(HMDSecureRemoteStreamInternal *)selfCopy _sendRequest:v21 options:v22 responseHandler:v38];

        v23 = 0;
        goto LABEL_13;
      }

      v23 = -6728;
    }

    else
    {
      v23 = -6732;
    }
  }

  else
  {
    v9 = 0;
    v6 = 0;
    v7 = 0;
    v23 = -6762;
  }

  v25 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = HMFGetLogIdentifier();
    v34 = MEMORY[0x277CCA9B8];
    v35 = v28;
    v33 = *MEMORY[0x277CCA590];
    v39 = *MEMORY[0x277CCA450];
    v37 = v25;
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v36 = v29;
    v30 = @"?";
    if (v29)
    {
      v30 = v29;
    }

    v40 = v30;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v31 = [v34 errorWithDomain:v33 code:v23 userInfo:v32];
    *buf = 138543618;
    v44 = v35;
    v45 = 2112;
    v46 = v31;
    _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Send commit request failed: %@", buf, 0x16u);

    v25 = v37;
  }

  objc_autoreleasePoolPop(v25);
LABEL_13:

  return v23;
}

void __58__HMDSecureRemoteStreamInternal__clientSendCommitRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (![v9 code])
  {
    v11 = 4294960596;
    goto LABEL_7;
  }

  v11 = [v10 code];
  if (!v11)
  {
LABEL_4:
    v11 = [*(a1 + 32) _clientHandleCommitResponse:v7 options:v8];
    if (!v11)
    {
      [*(a1 + 32) _runStateMachine];
      goto LABEL_13;
    }
  }

LABEL_7:
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v23 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v24 = v12;
    v25 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v16 = v15;
    v17 = @"?";
    if (v15)
    {
      v17 = v15;
    }

    v26 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:{1, v20}];
    v19 = [v23 errorWithDomain:v21 code:v11 userInfo:v18];
    *buf = 138543618;
    v28 = v22;
    v29 = 2112;
    v30 = v19;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Commit response failed: %@", buf, 0x16u);

    v12 = v24;
  }

  objc_autoreleasePoolPop(v12);
  if (v11 != -6752)
  {
    [*(a1 + 32) _stop:v11];
  }

LABEL_13:
}

- (int)_clientHandlePrepareResponse:(id)response options:(id)options
{
  v26 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  optionsCopy = options;
  v8 = [responseCopy objectForKeyedSubscript:@"edata"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = 0;
    v12 = -6756;
    goto LABEL_18;
  }

  v9 = [v8 length];
  if (v9 < 0x10)
  {
    v11 = 0;
    v12 = -6743;
    goto LABEL_18;
  }

  v10 = v9;
  [v8 bytes];
  if (v10 == 16)
  {
    v11 = 0;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB28] dataWithLength:v10 - 16];
    if (!v11)
    {
      v12 = -6728;
      goto LABEL_18;
    }
  }

  cipherReadNonce = self->_cipherReadNonce;
  [v11 mutableBytes];
  v14 = chacha20_poly1305_decrypt_all_64x64();
  if (v14)
  {
    v12 = v14;
  }

  else
  {
    v15 = 0;
    do
    {
      if (++cipherReadNonce[v15])
      {
        v17 = 1;
      }

      else
      {
        v17 = v15 == 7;
      }

      ++v15;
    }

    while (!v17);
    self->_prepareResponded = 1;
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Received prepare response", &v24, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [optionsCopy hmf_UUIDForKey:@"kIDSMessageRequestTransactionIDKey"];
    logRemoteMessageEvent(responseCopy, optionsCopy, v22);

    v12 = 0;
  }

LABEL_18:

  return v12;
}

- (int)_clientSendPrepareRequest:(id)request
{
  v50[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy objectForKeyedSubscript:@"utid"];
  if (!v5)
  {
    v10 = 0;
    v8 = 0;
    v7 = 0;
LABEL_17:
    v24 = -6762;
    goto LABEL_20;
  }

  v6 = [requestCopy objectForKeyedSubscript:@"request"];
  v7 = v6;
  if (!v6)
  {
    v10 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v49[0] = @"op";
  v49[1] = @"request";
  v50[0] = @"prepare";
  v50[1] = v6;
  v49[2] = @"utid";
  v50[2] = v5;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
  v9 = [(HMDSecureRemoteStreamInternal *)self _encodeBinaryPlist:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 length];
    v12 = [MEMORY[0x277CBEB28] dataWithLength:v11 + 16];
    if (v12)
    {
      v13 = v12;
      [v12 mutableBytes];
      cipherWriteNonce = self->_cipherWriteNonce;
      [v10 bytes];
      chacha20_poly1305_encrypt_all_64x64();
      v15 = 0;
      do
      {
        if (++cipherWriteNonce[v15])
        {
          v17 = 1;
        }

        else
        {
          v17 = v15 == 7;
        }

        ++v15;
      }

      while (!v17);
      v18 = objc_autoreleasePoolPush();
      selfCopy = self;
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543874;
        v44 = v21;
        v45 = 2112;
        v46 = v5;
        v47 = 2112;
        v48 = v8;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Sending prepare request, utid %@ %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v18);
      v41 = @"edata";
      v42 = v13;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v23 = [requestCopy objectForKeyedSubscript:@"options"];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __59__HMDSecureRemoteStreamInternal__clientSendPrepareRequest___block_invoke;
      v38[3] = &unk_2797345F0;
      v38[4] = selfCopy;
      [(HMDSecureRemoteStreamInternal *)selfCopy _sendRequest:v22 options:v23 responseHandler:v38];

      v24 = 0;
      goto LABEL_14;
    }

    v24 = -6728;
  }

  else
  {
    v24 = -6732;
  }

LABEL_20:
  v26 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = HMFGetLogIdentifier();
    v35 = MEMORY[0x277CCA9B8];
    v34 = *MEMORY[0x277CCA590];
    v39 = *MEMORY[0x277CCA450];
    v37 = v26;
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v36 = v30;
    v31 = @"?";
    if (v30)
    {
      v31 = v30;
    }

    v40 = v31;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v32 = [v35 errorWithDomain:v34 code:v24 userInfo:v33];
    *buf = 138543618;
    v44 = v29;
    v45 = 2112;
    v46 = v32;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Send prepare request failed: %@", buf, 0x16u);

    v26 = v37;
  }

  objc_autoreleasePoolPop(v26);
LABEL_14:

  return v24;
}

void __59__HMDSecureRemoteStreamInternal__clientSendPrepareRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v9)
  {
    goto LABEL_4;
  }

  if (![v9 code])
  {
    v11 = 4294960596;
    goto LABEL_7;
  }

  v11 = [v10 code];
  if (!v11)
  {
LABEL_4:
    v11 = [*(a1 + 32) _clientHandlePrepareResponse:v7 options:v8];
    if (!v11)
    {
      [*(a1 + 32) _runStateMachine];
      goto LABEL_13;
    }
  }

LABEL_7:
  v12 = objc_autoreleasePoolPush();
  v13 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    v23 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v24 = v12;
    v25 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v16 = v15;
    v17 = @"?";
    if (v15)
    {
      v17 = v15;
    }

    v26 = v17;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:{1, v20}];
    v19 = [v23 errorWithDomain:v21 code:v11 userInfo:v18];
    *buf = 138543618;
    v28 = v22;
    v29 = 2112;
    v30 = v19;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Prepare response failed: %@", buf, 0x16u);

    v12 = v24;
  }

  objc_autoreleasePoolPop(v12);
  if (v11 != -6752)
  {
    [*(a1 + 32) _stop:v11];
  }

LABEL_13:
}

- (int)_clientPairVerifyExchange:(id)exchange
{
  v33 = *MEMORY[0x277D85DE8];
  exchangeCopy = exchange;
  v23 = 0;
  v24 = 0;
  if (!self->_pairVerifySession)
  {
    v32 = 0u;
    v31 = 0u;
    v30 = 0u;
    *&buf[8] = 0u;
    *buf = self;
    if (self->_findPeerHandler)
    {
      *&v31 = _pairingFindPeer;
    }

    *(&v30 + 1) = _pairingCopyIdentity;
    v8 = PairingSessionCreate();
    if (v8)
    {
      v5 = v8;
      goto LABEL_10;
    }

    PairingSessionSetLogging();
  }

  [exchangeCopy bytes];
  [exchangeCopy length];
  v5 = PairingSessionExchange();
  if (!v5)
  {
    if (!self->_pairVerifyDone)
    {
      v27[0] = @"data";
      v6 = [MEMORY[0x277CBEA90] dataWithBytes:v24 length:v23];
      v27[1] = @"op";
      v28[0] = v6;
      v28[1] = @"pv";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __59__HMDSecureRemoteStreamInternal__clientPairVerifyExchange___block_invoke;
      v22[3] = &unk_2797345F0;
      v22[4] = self;
      [(HMDSecureRemoteStreamInternal *)self _sendRequest:v7 options:0 responseHandler:v22];
    }

    v5 = 0;
  }

LABEL_10:
  if (v24)
  {
    free(v24);
  }

  if (v5)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277CCA590];
      v25 = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v15 = v14;
      v16 = @"?";
      if (v14)
      {
        v16 = v14;
      }

      v26 = v16;
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:{1, v20}];
      v18 = [v12 errorWithDomain:v13 code:v5 userInfo:v17];
      *buf = 138543618;
      *&buf[4] = v21;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Pair-verify failed: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  return v5;
}

void __59__HMDSecureRemoteStreamInternal__clientPairVerifyExchange___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    if ([v9 code])
    {
      v13 = [v10 code];
      v11 = 0;
      if (!v13)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
      v13 = 4294960596;
    }
  }

  else
  {
    v11 = [v7 objectForKeyedSubscript:@"data"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [*(a1 + 32) _clientPairVerifyExchange:v11];
      if (!v12)
      {
        [*(a1 + 32) _runStateMachine];
        goto LABEL_12;
      }

      v13 = v12;
    }

    else
    {
      v13 = 4294960540;
    }
  }

  v14 = objc_autoreleasePoolPush();
  v15 = *(a1 + 32);
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v23 = HMFGetLogIdentifier();
    v24 = MEMORY[0x277CCA9B8];
    v22 = *MEMORY[0x277CCA590];
    v26 = v8;
    v27 = *MEMORY[0x277CCA450];
    v25 = v14;
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v18 = v17;
    v19 = @"?";
    if (v17)
    {
      v19 = v17;
    }

    v28 = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v21 = [v24 errorWithDomain:v22 code:v13 userInfo:v20];
    *buf = 138543618;
    v30 = v23;
    v31 = 2112;
    v32 = v21;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Pair-verify response failed: %@", buf, 0x16u);

    v8 = v26;
    v14 = v25;
  }

  objc_autoreleasePoolPop(v14);
  if (v13 != -6752)
  {
    [*(a1 + 32) _stop:v13];
  }

LABEL_12:
}

- (void)_clientRunStateMachine
{
  v19 = *MEMORY[0x277D85DE8];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          state = self->_state;
          if (state <= 4)
          {
            break;
          }

          if (state <= 6)
          {
            if (state == 5)
            {
              if (![(NSMutableArray *)self->_userTransactions count])
              {
                return;
              }

              self->_state = 6;
            }

            else
            {
              self->_prepareResponded = 0;
              firstObject = [(NSMutableArray *)self->_userTransactions firstObject];
              v7 = [(HMDSecureRemoteStreamInternal *)self _clientSendPrepareRequest:firstObject];

              if (v7)
              {
                goto LABEL_35;
              }

              self->_state = 7;
            }
          }

          else
          {
            switch(state)
            {
              case 7:
                if (!self->_prepareResponded)
                {
                  return;
                }

                self->_state = 8;
                break;
              case 8:
                self->_commitResponded = 0;
                firstObject2 = [(NSMutableArray *)self->_userTransactions firstObject];
                v7 = [(HMDSecureRemoteStreamInternal *)self _clientSendCommitRequest:firstObject2];

                if (v7)
                {
                  goto LABEL_35;
                }

                self->_state = 9;
                break;
              case 9:
                if (!self->_commitResponded)
                {
                  return;
                }

                goto LABEL_17;
              default:
                goto LABEL_32;
            }
          }
        }

        if (state <= 2)
        {
          break;
        }

        if (state == 3)
        {
          if (!self->_pairVerifyDone)
          {
            return;
          }

          self->_state = 4;
        }

        else
        {
          _setupEncryption = [(HMDSecureRemoteStreamInternal *)self _setupEncryption];
          if (_setupEncryption)
          {
LABEL_30:
            v7 = _setupEncryption;
            goto LABEL_35;
          }

          userQueue = self->_userQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __55__HMDSecureRemoteStreamInternal__clientRunStateMachine__block_invoke;
          block[3] = &unk_279735D00;
          block[4] = self;
          dispatch_async(userQueue, block);
LABEL_17:
          self->_state = 5;
        }
      }

      if (state)
      {
        break;
      }

      self->_state = 2;
    }

    if (state != 2)
    {
      break;
    }

    _setupEncryption = [(HMDSecureRemoteStreamInternal *)self _clientPairVerifyExchange:0];
    if (_setupEncryption)
    {
      goto LABEL_30;
    }

    self->_state = 3;
  }

  if (state == 1)
  {
    return;
  }

LABEL_32:
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v13 = self->_state;
    *buf = 138543618;
    v16 = v12;
    v17 = 1024;
    v18 = v13;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Bad state: %d", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v9);
  v7 = 4294960587;
LABEL_35:
  [(HMDSecureRemoteStreamInternal *)self _stop:v7];
}

void __55__HMDSecureRemoteStreamInternal__clientRunStateMachine__block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 208));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 208);
    *(v3 + 208) = 0;
    v5 = v2;

    v5[2](v5, 0);
    v2 = v5;
  }
}

- (void)_transportReceivedMessage:(id)message options:(id)options
{
  v45 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  optionsCopy = options;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v40 = v11;
    v41 = 2112;
    v42 = messageCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Transport received message %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (!selfCopy->_started)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v21 = -6703;
    goto LABEL_19;
  }

  v12 = [messageCopy objectForKeyedSubscript:@"sid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || selfCopy->_sessionID && ![v12 isEqual:?])
  {
    v14 = 0;
    v13 = 0;
LABEL_28:
    v21 = -6708;
    goto LABEL_19;
  }

  v13 = [messageCopy objectForKeyedSubscript:@"tid"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = 0;
    goto LABEL_28;
  }

  v14 = [messageCopy objectForKeyedSubscript:@"type"];
  if ([v14 isEqual:@"request"])
  {
    v15 = [(NSMutableDictionary *)selfCopy->_transactions objectForKeyedSubscript:v13];

    if (v15)
    {
      goto LABEL_24;
    }

    internalRequestHandler = selfCopy->_internalRequestHandler;
    if (internalRequestHandler)
    {
      internalRequestHandler[2](internalRequestHandler, messageCopy, optionsCopy);
LABEL_17:
      [(HMDSecureRemoteStreamInternal *)selfCopy _runStateMachine];
      goto LABEL_24;
    }

    v21 = -6714;
  }

  else if ([v14 isEqual:@"response"])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = selfCopy;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v20 = v35 = optionsCopy;
      *buf = 138543874;
      v40 = v20;
      v41 = 2112;
      v42 = v13;
      v43 = 2112;
      v44 = messageCopy;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEBUG, "%{public}@Received response, tid %@, %@", buf, 0x20u);

      optionsCopy = v35;
    }

    objc_autoreleasePoolPop(v17);
    if (selfCopy->_sessionID)
    {
      [(HMDSecureRemoteStreamInternal *)v18 _completeTransaction:v13 response:messageCopy options:optionsCopy status:0];
      goto LABEL_17;
    }

    v21 = -6736;
  }

  else
  {
    v21 = -6702;
  }

LABEL_19:
  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = HMFGetLogIdentifier();
    v32 = MEMORY[0x277CCA9B8];
    v33 = v25;
    v31 = *MEMORY[0x277CCA590];
    v36 = v22;
    v37 = *MEMORY[0x277CCA450];
    v26 = optionsCopy;
    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v34 = v27;
    v28 = @"?";
    if (v27)
    {
      v28 = v27;
    }

    v38 = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
    v30 = [v32 errorWithDomain:v31 code:v21 userInfo:v29];
    *buf = 138543874;
    v40 = v33;
    v41 = 2112;
    v42 = v30;
    v43 = 2112;
    v44 = messageCopy;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@Transport message error: %@, %@", buf, 0x20u);

    optionsCopy = v26;
    v22 = v36;
  }

  objc_autoreleasePoolPop(v22);
LABEL_24:
}

- (void)transportReceivedMessage:(id)message options:(id)options
{
  messageCopy = message;
  optionsCopy = options;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__HMDSecureRemoteStreamInternal_transportReceivedMessage_options___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = messageCopy;
  v13 = optionsCopy;
  v9 = optionsCopy;
  v10 = messageCopy;
  dispatch_async(internalQueue, block);
}

void __66__HMDSecureRemoteStreamInternal_transportReceivedMessage_options___block_invoke(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = objc_msgSend_copy(*(a1 + 48), a2);
  [v3 _transportReceivedMessage:v4 options:v5];
}

- (void)_completeTransaction:(id)transaction response:(id)response options:(id)options status:(int)status
{
  v62 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  responseCopy = response;
  optionsCopy = options;
  v13 = [(NSMutableDictionary *)self->_transactions objectForKeyedSubscript:transactionCopy];
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  v17 = v16;
  if (v13)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v44 = v14;
      v46 = responseCopy;
      v48 = optionsCopy;
      v18 = HMFGetLogIdentifier();
      if (status)
      {
        v42 = MEMORY[0x277CCA9B8];
        v40 = *MEMORY[0x277CCA590];
        v52 = *MEMORY[0x277CCA450];
        v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
        responseCopy = v19;
        v20 = @"?";
        if (v19)
        {
          v20 = v19;
        }

        v53 = v20;
        v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v22 = v42;
        v41 = v21;
        v23 = [v22 errorWithDomain:v40 code:status userInfo:?];
      }

      else
      {
        v23 = 0;
      }

      v26 = &stru_286509E58;
      *buf = 138544130;
      if (v46)
      {
        v26 = v46;
      }

      v55 = v18;
      v56 = 2112;
      v57 = transactionCopy;
      v58 = 2112;
      v59 = v23;
      v60 = 2112;
      v61 = v26;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Completed request, tid %@, status %@\n%@", buf, 0x2Au);
      if (status)
      {
      }

      responseCopy = v46;
      optionsCopy = v48;
      v14 = v44;
    }

    objc_autoreleasePoolPop(v14);
    v27 = [v13 objectForKeyedSubscript:@"timer"];
    v28 = v27;
    if (v27)
    {
      dispatch_source_cancel(v27);
    }

    [(NSMutableDictionary *)self->_transactions removeObjectForKey:transactionCopy];
    v29 = [v13 objectForKeyedSubscript:@"responseHandler"];
    if (v29)
    {
      v30 = [v13 hmf_dictionaryForKey:@"options"];
      v31 = [v30 hmf_stringForKey:@"kRemoteMessageAttributedMessageNameKey"];
      v32 = augmentResponseOptions(optionsCopy, v31);
      if (status)
      {
        v45 = MEMORY[0x277CCA9B8];
        v43 = *MEMORY[0x277CCA590];
        v49 = optionsCopy;
        statusCopy = status;
        v50 = *MEMORY[0x277CCA450];
        v47 = v30;
        v34 = responseCopy;
        v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
        v36 = v35;
        v37 = @"?";
        if (v35)
        {
          v37 = v35;
        }

        v51 = v37;
        v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v39 = [v45 errorWithDomain:v43 code:statusCopy userInfo:v38];
        (v29)[2](v29, v34, v32, v39);

        optionsCopy = v49;
        responseCopy = v34;
        v30 = v47;
      }

      else
      {
        (v29)[2](v29, responseCopy, v32, 0);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v25 = v24 = optionsCopy;
      *buf = 138543618;
      v55 = v25;
      v56 = 2112;
      v57 = transactionCopy;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Missing, tid %@", buf, 0x16u);

      optionsCopy = v24;
    }

    objc_autoreleasePoolPop(v14);
  }
}

- (void)_sendRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v47[3] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
  if (v12)
  {
    v13 = v12;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __70__HMDSecureRemoteStreamInternal__sendRequest_options_responseHandler___block_invoke;
    handler[3] = &unk_2797359B0;
    handler[4] = self;
    v14 = uUIDString;
    v39 = v14;
    dispatch_source_set_event_handler(v13, handler);

    dispatch_source_set_cancel_handler(v13, &__block_literal_global_80_185972);
    v15 = dispatch_walltime(0, self->_sendInternalTimeoutNanos);
    dispatch_source_set_timer(v13, v15, 0xFFFFFFFFFFFFFFFFLL, self->_sendInternalTimeoutNanos / 0xA);
    dispatch_resume(v13);
    v16 = objc_msgSend_copy(handlerCopy);
    v17 = v16;
    v18 = MEMORY[0x277CBEC10];
    if (optionsCopy)
    {
      v18 = optionsCopy;
    }

    v47[0] = v18;
    v46[0] = @"options";
    v46[1] = @"responseHandler";
    v19 = _Block_copy(v16);
    v46[2] = @"timer";
    v47[1] = v19;
    v47[2] = v13;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];

    v30 = v20;
    [(NSMutableDictionary *)self->_transactions setObject:v20 forKey:v14];
    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:requestCopy];
    [v21 setObject:self->_sessionID forKeyedSubscript:@"sid"];
    [v21 setObject:v14 forKeyedSubscript:@"tid"];
    [v21 setObject:@"request" forKeyedSubscript:@"type"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v25 = v29 = optionsCopy;
      *buf = 138543874;
      v41 = v25;
      v42 = 2112;
      v43 = v14;
      v44 = 2112;
      v45 = v21;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Sending request, tid %@\n%@", buf, 0x20u);

      optionsCopy = v29;
    }

    objc_autoreleasePoolPop(v22);
    userQueue = selfCopy->_userQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __70__HMDSecureRemoteStreamInternal__sendRequest_options_responseHandler___block_invoke_90;
    block[3] = &unk_279734960;
    block[4] = selfCopy;
    v36 = v21;
    v37 = optionsCopy;
    v27 = v21;
    dispatch_async(userQueue, block);

    [(HMDSecureRemoteStreamInternal *)selfCopy _updateIdleTimer];
  }

  else
  {
    internalQueue = self->_internalQueue;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __70__HMDSecureRemoteStreamInternal__sendRequest_options_responseHandler___block_invoke_2_91;
    v32[3] = &unk_2797345A0;
    v33 = handlerCopy;
    v34 = -6700;
    dispatch_async(internalQueue, v32);
    v17 = v33;
  }
}

void __70__HMDSecureRemoteStreamInternal__sendRequest_options_responseHandler___block_invoke_2_91(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277CCA590];
    v12 = *MEMORY[0x277CCA450];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v6 = v5;
    v7 = @"?";
    if (v5)
    {
      v7 = v5;
    }

    v13[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:{1, v1 + 16}];
    v9 = [v3 errorWithDomain:v4 code:v2 userInfo:v8];
    (*(v1 + 16))(v1, 0, 0, v9);
  }

  else
  {
    v10 = *(v1 + 16);
    v11 = *(a1 + 32);

    v10(v11, 0, 0, 0);
  }
}

- (void)_completeUserTransaction:(id)transaction response:(id)response options:(id)options status:(int)status
{
  v59 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  responseCopy = response;
  optionsCopy = options;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v41 = responseCopy;
    v16 = HMFGetLogIdentifier();
    if (status)
    {
      v40 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277CCA590];
      v49 = *MEMORY[0x277CCA450];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      responseCopy = v18;
      v19 = @"?";
      if (v18)
      {
        v19 = v18;
      }

      v50 = v19;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v20 = [v40 errorWithDomain:v17 code:status userInfo:v6];
    }

    else
    {
      v20 = 0;
    }

    v21 = &stru_286509E58;
    *buf = 138544130;
    if (v41)
    {
      v21 = v41;
    }

    v52 = v16;
    v53 = 2112;
    v54 = transactionCopy;
    v55 = 2112;
    v56 = v20;
    v57 = 2112;
    v58 = v21;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Completed user request, utid %@, status %@\n%@", buf, 0x2Au);
    if (status)
    {
    }

    responseCopy = v41;
  }

  objc_autoreleasePoolPop(v13);
  v22 = [(NSMutableArray *)selfCopy->_userTransactions count];
  if (!v22)
  {
    v25 = 0;
LABEL_24:
    v36 = objc_autoreleasePoolPush();
    v37 = selfCopy;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543874;
      v52 = v39;
      v53 = 2112;
      v54 = transactionCopy;
      v55 = 2112;
      v56 = responseCopy;
      _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Missing, utid %@ for response %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v36);
    goto LABEL_27;
  }

  v23 = v22;
  statusCopy = status;
  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = v25;
    v25 = [(NSMutableArray *)selfCopy->_userTransactions objectAtIndexedSubscript:v24];

    v27 = [v25 objectForKeyedSubscript:@"utid"];
    v28 = [v27 isEqual:transactionCopy];

    if (v28)
    {
      break;
    }

    if (v23 == ++v24)
    {
      goto LABEL_24;
    }
  }

  v29 = v25;
  v25 = v29;
  if (!v29)
  {
    goto LABEL_24;
  }

  v30 = responseCopy;
  v31 = [v29 objectForKeyedSubscript:@"timer"];
  v32 = v31;
  if (v31)
  {
    dispatch_source_cancel(v31);
  }

  v33 = [v25 objectForKeyedSubscript:@"responseHandler"];
  v34 = v33;
  if (v33)
  {
    userQueue = selfCopy->_userQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__HMDSecureRemoteStreamInternal__completeUserTransaction_response_options_status___block_invoke;
    block[3] = &unk_2797345C8;
    v47 = v33;
    v45 = v30;
    v46 = optionsCopy;
    v48 = statusCopy;
    dispatch_async(userQueue, block);
  }

  [(NSMutableArray *)selfCopy->_userTransactions removeObjectAtIndex:v24];

  responseCopy = v30;
LABEL_27:
}

void __82__HMDSecureRemoteStreamInternal__completeUserTransaction_response_options_status___block_invoke(uint64_t a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = *MEMORY[0x277CCA590];
    v14 = *MEMORY[0x277CCA450];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v8 = v7;
    v9 = @"?";
    if (v7)
    {
      v9 = v7;
    }

    v15[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:{1, v1 + 16}];
    v11 = [v5 errorWithDomain:v6 code:v4 userInfo:v10];
    (*(v1 + 16))(v1, v3, v2, v11);
  }

  else
  {
    v12 = *(v1 + 16);
    v13 = *(a1 + 48);

    v12(v13, v3, v2, 0);
  }
}

- (void)_sendUserRequest:(id)request options:(id)options responseHandler:(id)handler
{
  v58[5] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  if (self->_started)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v13 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
    if (v13)
    {
      v14 = v13;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __74__HMDSecureRemoteStreamInternal__sendUserRequest_options_responseHandler___block_invoke;
      handler[3] = &unk_279735D00;
      handler[4] = self;
      dispatch_source_set_event_handler(v13, handler);
      dispatch_source_set_cancel_handler(v14, &__block_literal_global_62_185977);
      v15 = dispatch_walltime(0, self->_sendUserTimeoutNanos);
      dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, self->_sendUserTimeoutNanos / 0xA);
      dispatch_resume(v14);
      v16 = objc_msgSend_copy(handlerCopy);
      v17 = v16;
      userTransactions = self->_userTransactions;
      v57[0] = @"options";
      v57[1] = @"request";
      v19 = MEMORY[0x277CBEC10];
      if (optionsCopy)
      {
        v19 = optionsCopy;
      }

      v58[0] = v19;
      v58[1] = requestCopy;
      v57[2] = @"responseHandler";
      v20 = _Block_copy(v16);
      v58[2] = v20;
      v58[3] = v14;
      v57[3] = @"timer";
      v57[4] = @"utid";
      v58[4] = uUIDString;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:5];
      [(NSMutableArray *)userTransactions addObject:v21];

      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543874;
        v52 = v25;
        v53 = 2112;
        v54 = uUIDString;
        v55 = 2112;
        v56 = requestCopy;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_DEBUG, "%{public}@Scheduled user request, utid %@\n%@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDSecureRemoteStreamInternal *)selfCopy _runStateMachine];

      goto LABEL_8;
    }

    v26 = -6700;
  }

  else
  {
    uUIDString = 0;
    v26 = -6703;
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    v40 = MEMORY[0x277CCA9B8];
    v42 = v30;
    v38 = *MEMORY[0x277CCA590];
    v31 = v26;
    v49 = *MEMORY[0x277CCA450];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v43 = v32;
    v33 = @"?";
    if (v32)
    {
      v33 = v32;
    }

    v50 = v33;
    [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:{1, v38, v40}];
    v44 = v26;
    v35 = v34 = v27;
    v36 = [v41 errorWithDomain:v39 code:v31 userInfo:v35];
    *buf = 138543618;
    v52 = v42;
    v53 = 2112;
    v54 = v36;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_ERROR, "%{public}@Send user request failed: %@", buf, 0x16u);

    v27 = v34;
    v26 = v44;
  }

  objc_autoreleasePoolPop(v27);
  userQueue = selfCopy2->_userQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__HMDSecureRemoteStreamInternal__sendUserRequest_options_responseHandler___block_invoke_75;
  block[3] = &unk_2797345A0;
  v46 = handlerCopy;
  v47 = v26;
  dispatch_async(userQueue, block);
  v14 = v46;
LABEL_8:
}

void __74__HMDSecureRemoteStreamInternal__sendUserRequest_options_responseHandler___block_invoke_75(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *MEMORY[0x277CCA590];
    v12 = *MEMORY[0x277CCA450];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v6 = v5;
    v7 = @"?";
    if (v5)
    {
      v7 = v5;
    }

    v13[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:{1, v1 + 16}];
    v9 = [v3 errorWithDomain:v4 code:v2 userInfo:v8];
    (*(v1 + 16))(v1, 0, 0, v9);
  }

  else
  {
    v10 = *(v1 + 16);
    v11 = *(a1 + 32);

    v10(v11, 0, 0, 0);
  }
}

- (void)sendRequest:(id)request options:(id)options responseHandler:(id)handler
{
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__HMDSecureRemoteStreamInternal_sendRequest_options_responseHandler___block_invoke;
  v15[3] = &unk_279734578;
  v15[4] = self;
  v16 = requestCopy;
  v17 = optionsCopy;
  v18 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = requestCopy;
  dispatch_async(internalQueue, v15);
}

- (int)_updateIdleTimer
{
  v30 = *MEMORY[0x277D85DE8];
  idleTimer = self->_idleTimer;
  v4 = idleTimer;
  if (idleTimer)
  {
LABEL_4:
    if (self->_type == 1)
    {
      v8 = &OBJC_IVAR___HMDSecureRemoteStreamInternal__clientIdleTimeoutNanos;
    }

    else
    {
      v8 = &OBJC_IVAR___HMDSecureRemoteStreamInternal__serverIdleTimeoutNanos;
    }

    v9 = *(&self->super.super.isa + *v8);
    v10 = dispatch_walltime(0, v9);
    dispatch_source_set_timer(v4, v10, 0xFFFFFFFFFFFFFFFFLL, v9 / 0xA);
    if (!idleTimer)
    {
      dispatch_resume(self->_idleTimer);
    }

    return 0;
  }

  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_internalQueue);
  v6 = self->_idleTimer;
  self->_idleTimer = v5;

  v7 = self->_idleTimer;
  if (v7)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49__HMDSecureRemoteStreamInternal__updateIdleTimer__block_invoke;
    handler[3] = &unk_279735D00;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_source_set_cancel_handler(self->_idleTimer, &__block_literal_global_60_185981);
    v4 = self->_idleTimer;
    goto LABEL_4;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = HMFGetLogIdentifier();
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA590];
    v24 = *MEMORY[0x277CCA450];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v19 = v18;
    v20 = @"?";
    if (v18)
    {
      v20 = v18;
    }

    v25 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v22 = [v16 errorWithDomain:v17 code:-6700 userInfo:v21];
    *buf = 138543618;
    v27 = v15;
    v28 = 2112;
    v29 = v22;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@idle timer failed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v12);
  return -6700;
}

- (int)_setupEncryption
{
  if (!self->_pairVerifySession)
  {
    return -6745;
  }

  v3 = PairingSessionDeriveKey();
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = PairingSessionDeriveKey();
    if (!v4)
    {
      *self->_cipherReadNonce = 0;
      *self->_cipherWriteNonce = 0;
    }
  }

  pairVerifySession = self->_pairVerifySession;
  if (pairVerifySession)
  {
    CFRelease(pairVerifySession);
    self->_pairVerifySession = 0;
  }

  return v4;
}

- (void)_runStateMachine
{
  if (self->_type == 1)
  {
    [(HMDSecureRemoteStreamInternal *)self _clientRunStateMachine];
  }

  else
  {
    [(HMDSecureRemoteStreamInternal *)self _serverRunStateMachine];
  }
}

- (void)_stop:(int)_stop
{
  v5 = *&_stop;
  v77 = *MEMORY[0x277D85DE8];
  started = self->_started;
  if (started)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = HMFGetLogIdentifier();
      if (v5)
      {
        v53 = MEMORY[0x277CCA9B8];
        v52 = *MEMORY[0x277CCA590];
        v71 = *MEMORY[0x277CCA450];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
        v3 = v11;
        v12 = @"?";
        if (v11)
        {
          v12 = v11;
        }

        v72 = v12;
        v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v13 = [v53 errorWithDomain:v52 code:v5 userInfo:v4];
      }

      else
      {
        v13 = 0;
      }

      *buf = 138543618;
      v74 = v10;
      v75 = 2112;
      v76 = v13;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEBUG, "%{public}@Stopping: %@", buf, 0x16u);
      if (v5)
      {
      }
    }

    objc_autoreleasePoolPop(v7);
  }

  self->_started = 0;
  if (self->_type == 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = 11;
  }

  self->_state = v14;
  userQueue = self->_userQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HMDSecureRemoteStreamInternal__stop___block_invoke;
  block[3] = &unk_279734550;
  block[4] = self;
  v66 = v5;
  dispatch_async(userQueue, block);
  v16 = self->_userQueue;
  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __39__HMDSecureRemoteStreamInternal__stop___block_invoke_2;
  v63[3] = &unk_279734550;
  v63[4] = self;
  v64 = v5;
  dispatch_async(v16, v63);
  idleTimer = self->_idleTimer;
  if (idleTimer)
  {
    v18 = idleTimer;
    dispatch_source_cancel(v18);
    v19 = self->_idleTimer;
    self->_idleTimer = 0;
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  allKeys = [(NSMutableDictionary *)self->_prepareRequests allKeys];
  v21 = [allKeys countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v3 = *v60;
    do
    {
      v24 = 0;
      v25 = v23;
      do
      {
        if (*v60 != v3)
        {
          objc_enumerationMutation(allKeys);
        }

        v23 = *(*(&v59 + 1) + 8 * v24);

        [(HMDSecureRemoteStreamInternal *)self _serverCompletePrepareRequest:v23];
        ++v24;
        v25 = v23;
      }

      while (v22 != v24);
      v22 = [allKeys countByEnumeratingWithState:&v59 objects:v70 count:16];
    }

    while (v22);
  }

  prepareRequests = self->_prepareRequests;
  self->_prepareRequests = 0;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  allKeys2 = [(NSMutableDictionary *)self->_transactions allKeys];
  v28 = [allKeys2 countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = 0;
    v3 = *v56;
    do
    {
      v31 = 0;
      v32 = v30;
      do
      {
        if (*v56 != v3)
        {
          objc_enumerationMutation(allKeys2);
        }

        v30 = *(*(&v55 + 1) + 8 * v31);

        [(HMDSecureRemoteStreamInternal *)self _completeTransaction:v30 response:0 options:0 status:4294960544];
        ++v31;
        v32 = v30;
      }

      while (v29 != v31);
      v29 = [allKeys2 countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v29);
  }

  transactions = self->_transactions;
  self->_transactions = 0;

  v34 = 176;
  firstObject = [(NSMutableArray *)self->_userTransactions firstObject];
  if (firstObject)
  {
    v36 = firstObject;
    do
    {
      v37 = [v36 objectForKeyedSubscript:@"utid"];
      [(HMDSecureRemoteStreamInternal *)self _completeUserTransaction:v37 response:0 options:0 status:v5];

      firstObject2 = [(NSMutableArray *)self->_userTransactions firstObject];

      v36 = firstObject2;
    }

    while (firstObject2);
  }

  userTransactions = self->_userTransactions;
  self->_userTransactions = 0;

  memset_s(self->_cipherReadKey, 0x20uLL, 0, 0x20uLL);
  memset_s(self->_cipherWriteKey, 0x20uLL, 0, 0x20uLL);
  internalRequestHandler = self->_internalRequestHandler;
  self->_internalRequestHandler = 0;

  pairVerifySession = self->_pairVerifySession;
  if (pairVerifySession)
  {
    CFRelease(pairVerifySession);
    self->_pairVerifySession = 0;
  }

  self->_pairVerifyDone = 0;
  sessionID = self->_sessionID;
  self->_sessionID = 0;

  if (started)
  {
    v43 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v45 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      v46 = HMFGetLogIdentifier();
      if (v5)
      {
        v47 = MEMORY[0x277CCA9B8];
        v48 = *MEMORY[0x277CCA590];
        v67 = *MEMORY[0x277CCA450];
        v49 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
        v34 = v49;
        v50 = @"?";
        if (v49)
        {
          v50 = v49;
        }

        v68 = v50;
        v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        v51 = [v47 errorWithDomain:v48 code:v5 userInfo:v3];
      }

      else
      {
        v51 = 0;
      }

      *buf = 138543618;
      v74 = v46;
      v75 = 2112;
      v76 = v51;
      _os_log_impl(&dword_2531F8000, v45, OS_LOG_TYPE_DEBUG, "%{public}@Stopped: %@", buf, 0x16u);
      if (v5)
      {
      }
    }

    objc_autoreleasePoolPop(v43);
  }
}

void __39__HMDSecureRemoteStreamInternal__stop___block_invoke(uint64_t a1)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = _Block_copy(*(*(a1 + 32) + 208));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 208);
    *(v3 + 208) = 0;

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = MEMORY[0x277CCA9B8];
      v7 = *MEMORY[0x277CCA590];
      v13 = *MEMORY[0x277CCA450];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v9 = v8;
      v10 = @"?";
      if (v8)
      {
        v10 = v8;
      }

      v14[0] = v10;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v12 = [v6 errorWithDomain:v7 code:v5 userInfo:v11];
      v2[2](v2, v12);
    }

    else
    {
      v2[2](v2, 0);
    }
  }
}

void __39__HMDSecureRemoteStreamInternal__stop___block_invoke_2(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = _Block_copy(*(*(a1 + 32) + 216));
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 216);
    *(v3 + 216) = 0;

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = v5 == -6752;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      v2[2](v2, 0);
    }

    else
    {
      v7 = v5;
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277CCA590];
      v15 = *MEMORY[0x277CCA450];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v11 = v10;
      v12 = @"?";
      if (v10)
      {
        v12 = v10;
      }

      v16[0] = v12;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
      v14 = [v8 errorWithDomain:v9 code:v7 userInfo:v13];
      (v2)[2](v2, v14);
    }
  }
}

- (void)stop
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDSecureRemoteStreamInternal_stop__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_start
{
  v48 = *MEMORY[0x277D85DE8];
  started = self->_started;
  if (!started)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Starting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    self->_started = 1;
  }

  state = self->_state;
  if (state == 11 || state == 1)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v13;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Start failed, attempt to restart session", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    _updateIdleTimer = 4294960593;
    goto LABEL_13;
  }

  if (!self->_transportSendMessage)
  {
    goto LABEL_38;
  }

  sessionID = self->_sessionID;
  self->_sessionID = 0;

  type = self->_type;
  if (type == 2)
  {
    if (self->_requestHandler)
    {
      v31 = 10;
      goto LABEL_25;
    }

LABEL_38:
    _updateIdleTimer = 4294960551;
    goto LABEL_13;
  }

  if (type != 1)
  {
    _updateIdleTimer = 4294960591;
    goto LABEL_13;
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v30 = self->_sessionID;
  self->_sessionID = uUIDString;

  v31 = 0;
LABEL_25:
  self->_state = v31;
  if (!self->_prepareRequests)
  {
    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    prepareRequests = self->_prepareRequests;
    self->_prepareRequests = v32;
  }

  if (!self->_transactions)
  {
    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transactions = self->_transactions;
    self->_transactions = v34;
  }

  if (!self->_userTransactions)
  {
    v36 = objc_alloc_init(MEMORY[0x277CBEB18]);
    userTransactions = self->_userTransactions;
    self->_userTransactions = v36;
  }

  _updateIdleTimer = [(HMDSecureRemoteStreamInternal *)self _updateIdleTimer];
  if (!_updateIdleTimer)
  {
    if (!started)
    {
      v38 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v41;
        _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_DEBUG, "%{public}@Started", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
    }

    [(HMDSecureRemoteStreamInternal *)self _runStateMachine];
    return;
  }

LABEL_13:
  v15 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = HMFGetLogIdentifier();
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:{DebugGetErrorString(), *MEMORY[0x277CCA450]}];
    v22 = v21;
    v23 = @"?";
    if (v21)
    {
      v23 = v21;
    }

    v43 = v23;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v25 = [v19 errorWithDomain:v20 code:_updateIdleTimer userInfo:v24];
    *buf = 138543618;
    v45 = v18;
    v46 = 2112;
    v47 = v25;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Start failed: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  [(HMDSecureRemoteStreamInternal *)selfCopy4 _stop:_updateIdleTimer];
}

- (void)start
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDSecureRemoteStreamInternal_start__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)dealloc
{
  internalQueue = self->_internalQueue;
  if (internalQueue)
  {
    self->_internalQueue = 0;
  }

  requestHandler = self->_requestHandler;
  self->_requestHandler = 0;

  startedHandler = self->_startedHandler;
  self->_startedHandler = 0;

  stoppedHandler = self->_stoppedHandler;
  self->_stoppedHandler = 0;

  transportSendMessage = self->_transportSendMessage;
  self->_transportSendMessage = 0;

  userQueue = self->_userQueue;
  if (userQueue)
  {
    self->_userQueue = 0;
  }

  v9.receiver = self;
  v9.super_class = HMDSecureRemoteStreamInternal;
  [(HMDSecureRemoteStreamInternal *)&v9 dealloc];
}

- (HMDSecureRemoteStreamInternal)initWithType:(int64_t)type commitTimeout:(unint64_t)timeout clientIdleTimeout:(unint64_t)idleTimeout serverIdleTimeout:(unint64_t)serverIdleTimeout sendInternalTimeout:(unint64_t)internalTimeout sendUserTimeout:(unint64_t)userTimeout
{
  v27.receiver = self;
  v27.super_class = HMDSecureRemoteStreamInternal;
  v14 = [(HMDSecureRemoteStreamInternal *)&v27 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_10;
  }

  if (type != 1)
  {
    if (type == 2)
    {
      v16 = 10;
      goto LABEL_6;
    }

LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  v16 = 0;
LABEL_6:
  v14->_state = v16;
  v14->_type = type;
  if (initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___hmf_once_t0 != -1)
  {
    dispatch_once(&initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___hmf_once_t0, &__block_literal_global_185997);
  }

  v17 = MEMORY[0x277CCACA8];
  v18 = initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___hmf_once_v1;
  v19 = [v17 stringWithFormat:@"HMDSecureRemoteStream.Internal.%tu", -[HMDSecureRemoteStreamInternal hash](v15, "hash")];
  uTF8String = [v19 UTF8String];
  v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v22 = dispatch_queue_create_with_target_V2(uTF8String, v21, v18);
  internalQueue = v15->_internalQueue;
  v15->_internalQueue = v22;

  v24 = v15->_internalQueue;
  if (!v24)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v15->_userQueue, MEMORY[0x277D85CD0]);
  v15->_commitTimeoutNanos = timeout;
  v15->_clientIdleTimeoutNanos = idleTimeout;
  v15->_serverIdleTimeoutNanos = serverIdleTimeout;
  v15->_sendInternalTimeoutNanos = internalTimeout;
  v15->_sendUserTimeoutNanos = userTimeout;
  v25 = v15;
LABEL_11:

  return v25;
}

uint64_t __132__HMDSecureRemoteStreamInternal_initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___block_invoke()
{
  v0 = dispatch_workloop_create("HMDSecureRemoteStream.Internal");
  v1 = initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___hmf_once_v1;
  initWithType_commitTimeout_clientIdleTimeout_serverIdleTimeout_sendInternalTimeout_sendUserTimeout___hmf_once_v1 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HMDSecureRemoteStreamInternal)init
{
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE648] format:@"-init is not a valid initializer for HMDSecureRemoteStream"];

  return 0;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t49 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t49, &__block_literal_global_133_186010);
  }

  v3 = logCategory__hmf_once_v50;

  return v3;
}

uint64_t __44__HMDSecureRemoteStreamInternal_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v50;
  logCategory__hmf_once_v50 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end